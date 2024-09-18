require("Envir/Market_Def/zh.lua") --���˷�װ����
function show1(actor)
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=��ң��>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ax=0|ay=0.5|x=22.0|y=82.5|color=255|size=18|text=�����ƺ��Ǻӣ�����귨��½��ÿ���˶���Ѱ�ң��ڽ���һ��>
		<RText|ay=0.5|x=22.0|y=107.5|color=255|size=18|text=������Ʒ��Ϊ���귨����ʿ��һֱ���Ĵ�Ѱ�Ҹ���ϡ����ϲ�>
		<RText|ay=0.5|x=22.0|y=132.5|color=255|size=18|text=ϧ�����գ�����Ұ�����������У����������һ������Ϊ<��>>
		<RText|ay=0.5|x=22.0|y=157.5|color=255|size=18|text=<ɫ>�Ĺ�Ʒװ�����Ϸ�Ϳ���Ϊ��̽�����еİ���>
		<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
		<Text|ay=0.5|x=227.0|y=214.5|color=250|size=18|text=��װ̽��|link=@show>

	]]
	say(actor,msg)
end

function show(actor,wyid,xianshi)
	local isyou = false
	local baglist = getbaglist(actor)
	for i = 1,#baglist do
		if getitemaddvalue(actor,baglist[i],2,2) == 249 then
			isyou = true
			break
		end
	end
	
	local keshengxing = {{0,"�·�"},{4,"ͷ��"},{3,"����"},{5,"����"},{6,"����"},{7,"��ָ"},{8,"��ָ"},{10,"����"},{11,"ѥ��"}} --��̽����װ��
	local shengxing_t = {}
	for i=1,#keshengxing do
		local item = linkbodyitem(actor,keshengxing[i][1])
		if item ~= "0" and getitemaddvalue(actor,item,2,2) == 249 then
		  table.insert(shengxing_t,{item,keshengxing[i][2]})  ----{item,"ͷ��"}
		end
	end
	if #shengxing_t == 0 then
		isyou = true
	end
	if not isyou then
		sendmsg9(actor,"���Ȼ�ȡ��ɫװ�����������Ϸ�̽��")
		return
	end
	
	xianshi = tonumber(xianshi) or 0
	wyid = tonumber(wyid) or 0
	local msg = [[
		<Img|x=0|width=643|height=457|reset=0|bg=1|img=zhangheng/1.png|move=1|esc=1|show=4>
<Button|x=639.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
<Img|x=195.5|y=38.5|width=428|height=393|esc=0|img=zhangheng/41.png>
<Img|x=18.5|y=40.5|img=zhangheng/86.png|esc=0>
<Img|x=17.5|y=79.5|height=352|img=zhangheng/42.png|esc=0>
<Img|x=376.5|y=85.5|width=70|height=70|scale9t=30|scale9b=30|img=zhangheng/43.png|scale9r=30|scale9l=30|esc=0>
<Img|x=193.5|y=37.5|img=zhangheng/128.png|esc=0>
<Img|x=261.5|y=45.5|width=300|img=zhangheng/71.png|esc=0>
<RText|x=296.5|y=52.5|color=254|size=18|text=��Ҫ��̽����װ������������>

	]]
	
	msg=msg..'<Button|x=588.5|y=42.5|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@show,'..wyid..',1>'
	msg=msg..'<ListView|children={2000}|x=17.5|y=79.5|width=176|height=352>'
	

	local ziids = ""
	for i = 2002,2200 do
		ziids = ziids .. i .. ","
	end
	
	local ziid = 2002
	local ysxx = -2
	local ysyy = -6
	local gaodu = (math.floor((#shengxing_t-1)/1) + 1) * 66 + 3
	msg = msg ..'<Layout|id=2000|children={2001}|height='.. gaodu ..'>' --���õ׿�� ��
	msg = msg ..'<Layout|id=2001|children={'.. ziids ..'}|height='.. gaodu ..'>' --���õ׿�� ��

	for i = 1,#shengxing_t do
		local item = shengxing_t[i][1]
		local makeid = getiteminfo(actor,shengxing_t[i][1],1) --Ψһid
		msg = msg ..'<Img|id='.. ziid ..'|x=1.0|y='.. 3 + (i-1)*66 ..'|img=zhangheng/44.png|esc=0|link=@show,'.. makeid ..'>'
		ziid = ziid + 1
		msg = msg ..'<Img|id='.. ziid ..'|x=1.0|y='.. 3 + (i-1)*66 ..'|img=zhangheng/40.png|esc=0>'
		ziid = ziid + 1
		msg = msg ..'<DBItemShow|id='.. ziid ..'|x=0.0|y='.. 1 + (i-1)*66 ..'|makeindex='..makeid..'|showtips=1|showstar=1>'
		ziid = ziid + 1
		msg = msg ..'<Text|ay=0.5|id='.. ziid ..'|x=65.0|y='.. 24 + (i-1)*66 ..'|color=255|size=16|text='.. getitemname(actor,shengxing_t[i][1],1) ..'>'
		ziid = ziid + 1
		msg = msg ..'<Text|ay=0.5|id='.. ziid ..'|x=65.0|y='.. 46 + (i-1)*66 ..'|color=7|size=16|text='..shengxing_t[i][2]..'>'
		ziid = ziid + 1
		if wyid == makeid then
			msg = msg ..'<Img|id='.. ziid ..'|x=0.0|y='.. 1 + (i-1)*66 ..'|img=zhangheng/45.png|esc=0>'
			ziid = ziid + 1
			msg = msg ..'<DBItemShow|x=380.0|y=88.0|makeindex='..makeid..'|showtips=1|bgtype=0|showstar=1>'	--�ұ�չʾ��Ʒ
			msg = msg ..'<Text|ax=0.5|ay=0.5|x=414.0|y=181.0|color=254|size=18|text=�ɹ��ʣ�100%>'
			msg = msg ..'<Img|x=327.5|y=199.5|height=130|scale9r=0|scale9t=40|esc=0|img=zhangheng/6.png|scale9b=0|scale9l=0>'
			msg = msg ..'<Text|ay=0.5|x=376.5|y=215.0|color=250|size=18|text=̽������>'
			
			local text ={[0]="�������ޣ�",[1]="ħ�����ޣ�",[2]="�������ޣ�", [3]="ħ�����ޣ�", [4]="�������ޣ�", }
			local xh = 0
			for k,v in pairs(text) do
				if getitemaddvalue(actor,item,1,k) > 0 then
					msg = msg ..'<Text|ay=0.5|x=358.0|y='.. 265+xh*30 ..'|color=104|size=18|text='.. v ..'+'..getitemaddvalue(actor,item,1,k)..'>'
					xh = xh + 1
				end
			end
		end
	end
	
	if wyid == 0 then
		msg = msg ..'<Text|ax=0.5|ay=0.5|x=414.0|y=181.0|color=254|size=18|text=�ɹ��ʣ�100%>'
		msg = msg ..'<Img|x=327.5|y=199.5|height=130|scale9r=0|scale9t=40|esc=0|img=zhangheng/6.png|scale9b=0|scale9l=0>'
		msg = msg ..'<Text|ay=0.5|x=376.5|y=215.0|color=250|size=18|text=̽������>'
	end
	msg = msg ..'<Text|x=262.0|y=351.5|color=255|size=18|text=���ģ�>'
	msg = msg ..'<ItemShow|x=303.0|y=327.0|width=70|height=70|itemid='.. getidbyname("����ˮ��") ..'|itemcount=1|showtips=1|bgtype=0|scale=0.8>'
	msg = msg ..'<RText|x=353.0|y=350.5|color=250|size=18|text=<'.. itemcount(actor,"����ˮ��") ..'/FCOLOR=249>/1>'
	msg = msg ..'<ItemShow|x=443.0|y=327.0|width=70|height=70|itemid='.. getidbyname("����") ..'|itemcount=1|showtips=1|bgtype=0|scale=0.8>'
	msg = msg ..'<RText|x=493.0|y=350.5|color=250|size=18|text=<'.. itemcount(actor,"����") ..'/FCOLOR=249>/2>'
	
	msg = msg ..'<Button|x=368.0|y=385.0|color=10051|size=18|nimg=zhangheng/13.png|text=̽����|link=@kaifeng,'.. wyid ..'>'
	
	if xianshi == 1 then
		msg = msg..	'<Layout|x=-999.0|y=-996.5|width=3000|height=3000|color=255>|link=@show,'..wyid..'>'
		msg = msg..[[
		<Img|ay=0.5|x=215.0|y=163.0|width=370|height=240|scale9t=10|scale9b=10|img=zh/7.png|scale9r=10|esc=0|scale9l=10>
		<RText|x=226.0|y=56.0|width=344|color=251|size=16|text=��̽�����ԣ�>
		<RText|x=242.0|y=76.0|width=344|color=255|size=16|text=<��ɫװ��/FCOLOR=249>�ſ���̽��ÿ��������<1-4��/FCOLOR=250>>
		<RText|x=226.0|y=141.0|width=344|color=251|size=16|text=�����Լ��>
		<RText|x=242.0|y=96.0|width=344|color=255|size=16|text=������ħ����������������ħ��ְҵ��ͬ>
		<RText|x=226.0|y=206.0|width=344|color=251|size=16|text=����ܰ��ʾ��>
		<RText|x=242.0|y=226.0|width=344|color=255|size=16|text=ȫ��װ�������ﵽϵͳҪ�󼴿ɼ�������>
		<RText|x=242.0|y=116.0|width=344|color=255|size=16|text=̽�������Բ�ͬ>
		<RText|x=243.0|y=161.0|color=255|size=16|text=װ�������ﵽ<27��/FCOLOR=250>����ȫ�����˺�����<5%/FCOLOR=254>��>
		<RText|x=243.0|y=181.0|color=255|size=16|text=<36��/FCOLOR=250>������˺�����<5%/FCOLOR=254>>
		<RText|x=243.0|y=246.0|color=255|size=16|text=����<"������ħ����������������ħ��"/FCOLOR=253>>
		]]
		
	end
	
	say(actor,msg)
	
end

local xilian_t = {
	--ս��
	----------ְҵ�ж� ���ʵ���
	["����ս��(��)"]={0,1},["����ս��(Ů)"]={0,1},["ս��ͷ��"]={0,1},["ս������"]={4,1},["ս������"]={0,1},["ս���ָ"]={0,1},["ս������"]={0,1},["ս��ʥѥ"]={0,1},
	["ŭ��ħ��(��)"]={1,1},["ŭ��ħ��(Ů)"]={1,1},["ʥħͷ��"]={1,1},["ʥħ����"]={4,1},["ʥħ����"]={1,1},["ʥħ��ָ"]={1,1},["ʥħ����"]={1,1},["ʥħ��ѥ"]={1,1},
	["�������(��)"]={2,1},["�������(Ů)"]={2,1},["���ͷ��"]={2,1},["�������"]={4,1},["�������"]={2,1},["����ָ"]={2,1},["�������"]={2,1},["����ѥ"]={2,1},
	--��ս
	["����ս��"]={0,2},["����ս��"]={0,2},["��սͷ��"]={0,2},["��ս����"]={4,2},["��ս����"]={0,2},["��ս��ָ"]={0,2},["��ս����"]={0,2},["��սʥѥ"]={0,2},
	["��ħ����"]={1,2},["��ħ����"]={1,2},["����ͷ��"]={1,2},["��������"]={4,2},["��������"]={1,2},["������ָ"]={1,2},["��������"]={1,2},["������ѥ"]={1,2},
	["������"]={2,2},["�����"]={2,2},["̫��ͷ��"]={2,2},["̫������"]={4,2},["̫������"]={2,2},["̫����ָ"]={2,2},["̫������"]={2,2},["̫����ѥ"]={2,2},
	--����
	["ʥ��ս��"]={0,3},["ʥ��ս��"]={0,3},["����ս��"]={0,3},["��������"]={4,3},["��������"]={0,3},["������ָ"]={0,3},["��������"]={0,3},["����սѥ"]={0,3},
	["ħ������"]={1,3},["ħ������"]={1,3},["����ħ��"]={1,3},["��������"]={4,3},["��������"]={1,3},["���׽�ָ"]={1,3},["��������"]={1,3},["����ħѥ"]={1,3},
	["��������"]={2,3},["��������"]={2,3},["�������"]={2,3},["��������"]={4,3},["��������"]={2,3},["�����ָ"]={2,3},["��������"]={2,3},["�����ѥ"]={2,3},
	--����
	["��Ұս��"]={0,4},["��Ұս��"]={0,4},["���졩ʥ��"]={0,4},["���졩ʥ��"]={4,4},["���졩ʥ��"]={0,4},["���졩ʥ��"]={0,4},["���졩ʥ��"]={0,4},["���졩ʥѥ"]={0,4},
	["���֮��"]={1,4},["���֮��"]={1,4},["���졩ħ��"]={1,4},["���졩ħ��"]={4,4},["���졩ħ��"]={1,4},["���졩ħ��"]={1,4},["���졩ħ��"]={1,4},["���졩ħѥ"]={1,4},
	["��ʹ֮��"]={2,4},["��ʹ֮��"]={2,4},["���졩����"]={2,4},["���졩����"]={4,4},["���졩����"]={2,4},["���졩����"]={2,4},["���졩����"]={2,4},["���졩��ѥ"]={2,4},
	--��Ӱ
	["����(��)"]={0,5},["����(Ů)"]={0,5},["��Ӱ��ʥ��"]={0,5},["��Ӱ��ʥ��"]={4,5},["��Ӱ��ʥ��"]={0,5},["��Ӱ��ʥ��"]={0,5},["��Ӱ��ʥ��"]={0,5},["��Ӱ��ʥѥ"]={0,5},
	["ڤ��(��)"]={1,5},["ڤ��(Ů)"]={1,5},["�����ħ��"]={1,5},["�����ħ��"]={4,5},["�����ħ��"]={1,5},["�����ħ��"]={1,5},["�����ħ��"]={1,5},["�����ħѥ"]={1,5},
	["�췣(��)"]={2,5},["�췣(Ů)"]={2,5},["Զ�š����"]={2,5},["Զ�š����"]={4,5},["Զ�š����"]={2,5},["Զ�š����"]={2,5},["Զ�š����"]={2,5},["Զ�š��ѥ"]={2,5},
	--����
	["������׶�ļ�"]={0,6},["������׶����"]={0,6},["������׶�Ŀ�"]={0,6},["������׶����"]={4,6},["������׶����"]={0,6},["������׶�Ľ�"]={0,6},["������׶�Ĵ�"]={0,6},["������׶��ѥ"]={0,6},
	["������ŭ���"]={1,6},["������ŭ����"]={1,6},["������ŭ���"]={1,6},["������ŭ����"]={4,6},["������ŭ����"]={1,6},["������ŭ���"]={1,6},["������ŭ���"]={1,6},["������ŭ��ѥ"]={1,6},
	["��Լ���񷣼�"]={2,6},["��Լ������"]={2,6},["��Լ���񷣿�"]={2,6},["��Լ������"]={4,6},["��Լ������"]={2,6},["��Լ���񷣽�"]={2,6},["��Լ���񷣴�"]={2,6},["��Լ����ѥ"]={2,6},
	--������
	["�����ޤ����"]={0,7},["�����ޤ�����"]={0,7},["�����ޤ����"]={0,7},["�����ޤ�����"]={4,7},["�����ޤ�����"]={0,7},["�����ޤ����"]={0,7},["�����ޤ����"]={0,7},["�����ޤ���ѥ"]={0,7},
	["����������"]={1,7},["�����������"]={1,7},["����������"]={1,7},["�����������"]={4,7},["�����������"]={1,7},["����������"]={1,7},["����������"]={1,7},["���������ѥ"]={1,7},
	["��¥�ޤ����"]={2,7},["��¥�ޤ�����"]={2,7},["��¥�ޤ����"]={2,7},["��¥�ޤ�����"]={4,7},["��¥�ޤ�����"]={2,7},["��¥�ޤ����"]={2,7},["��¥�ޤ����"]={2,7},["��¥�ޤ���ѥ"]={2,7},
	--����
	["��ħ��ָ"]={4,8,1},["��ħ����"]={4,8,1},["��ħ����"]={4,8,1},["��Ѫ��ָ"]={4,8,1},["��Ѫ����"]={4,8,1},["��Ѫ����"]={4,8,1},["ŭѪ��ָ"]={4,8,1},["ŭѪ����"]={4,8,1},
	["ŭѪ����"]={4,8,1},	["�ػ�ͷ��"]={4,8,1},["�ػ�ѥ��"]={4,8,1},["�ػ�����"]={4,8,1},["��̵���������"]={4,8,1},["1.1��������"]={4,8,1},["1.2��������"]={4,8,1},["�Ƽ�ָ��"]={4,8,1},
	["��Ұ��"]={4,8,1},["����ͷ��"]={4,8},	["��������"]={4,8,1},["����ѥ��"]={4,8,1},["ף������(��ӡ)"]={4,8,1},["�ϵ�֮��"]={4,8,1},["����֮��"]={4,8,1},["�����ָ"]={4,8,1},
	["��Ԩ��ָ"]={4,8,1},["�������"]={4,8,1},["����ָ"]={4,8,1},["��������(��ӡ)"]={4,8,1},["�����ָ(��ӡ)"]={4,8,1},["��ɫ��������"]={4,8,1},["��а����"]={4,8,1},["�������"]={4,8,1},
	["���ն�����"]={4,8,1},["�����ָ"]={4,8,1},	["��ħ֮ѥ(��ӡ)"]={4,8,1},	["��ħ֮��(��ӡ)"]={4,8,1},["����ͷ��"]={4,8,1},["��������"]={4,8,1},["���ؽ�ָ"]={4,8,1},
	["��������"]={4,8,1},["��������"]={4,8,1},["��ħ����"]={4,8,1},["��������"]={4,8,1},["������ħ��"]={4,8,1},
	["��������Դ��"]={4,8,1},["��������Դ��"]={4,8,1},["��������Դѥ"]={4,8,1},	["��������Դ��"]={4,8,1},["��������Դ��"]={4,8,1},["��������Դ��"]={4,8,1},
	["������������"]={4,8,1},["������������"]={4,8,1},["����������ѥ"]={4,8,1},	["������������"]={4,8,1},["������������"]={4,8,1},["������������"]={4,8,1},
	["������޳���"]={4,8,1},["������޳���"]={4,8,1},["������޳�ѥ"]={4,8,1},["������޳���"]={4,8,1},["������޳���"]={4,8,1},["������޳���"]={4,8,1},
	["���������"]={4,8,1},["����������"]={4,8,1},["��������ѥ"]={4,8,1},["���������"]={4,8,1},["���������"]={4,8,1},["����������"]={4,8,1},
	["��ħ���ѽ�"]={4,8,1},["��ħ������"]={4,8,1},["��ħ����ѥ"]={4,8,1},["��ħ���Ѵ�"]={4,8,1},["��ħ���ѿ�"]={4,8,1},["��ħ������"]={4,8,1},

}

local job_pd = {
	[0] = {0,1,2},
	[1] = {0,1,3},
	[2] = {0,1,4},
	[3] = {0,1,2,3,4},
	[4] = {2,3,4},
}

local dianshujl = {
	{90,10},
	{80,20},
	{70,30},
	{60,40},
	{50,50},
	{50,50},
	{50,50},
	{70,30},
}

function kaifeng(actor,wyid)
	wyid = tonumber(wyid)
	if wyid == 0 then
		sendmsg9(actor,"��ѡ��Ҫ̽����װ��")
		return
	end
	local item = getitembymakeindex(actor,wyid) --��Ʒ����
	if item == "0" then
		sendmsg9(actor,"��û�����װ��")
		return
	end
	--sendmsg6(actor,"��Ʒ����"..tostring(item))
	if not isinrole(actor,wyid) then
		sendmsg9(actor,"��Ʒ�Ѿ���������")
		return
	end
	
	local name = getitemname(actor,item) --��Ʒ����
	if xilian_t[name] == nil then
		sendmsg9(actor,"����̽��")
		return
	end
	
	for i = 0,4 do
		if getitemaddvalue(actor,item,1,i) > 0 then
			sendmsg9(actor,"��װ���Ѿ�̽������")
			return
		end
	end
	
	if getitemaddvalue(actor,item,2,2) ~= 249 then
		sendmsg9(actor,"ֻ�к�ɫװ������̽��")
		return
	end
	if itemcount(actor,"����") < 2 or itemcount(actor,"����ˮ��") < 1 then
		sendmsg9(actor,"����������ˮ������")
		return
	end
	takeitem(actor,"����",2)
	takeitem(actor,"����ˮ��",1)
	
	local dianshu = 3
	local jpt = job_pd[xilian_t[name][1]] --�ӵļ�Ʒ���Ա�
	local dianshujilv = dianshujl[xilian_t[name][2]] --��������
	local suijizhi = math.random(1,100)
	if suijizhi <= dianshujilv[2] then
		dianshu = 4
	end
	
	local zuigaodian = 3 --����������ߵ���
	if xilian_t[name][3] == 1 then --����װ��
		zuigaodian = 2
	end
	local shuxing = math.random(1,#jpt)
	for i = 1,dianshu do
		if getitemaddvalue(actor,item,1,jpt[shuxing]) < zuigaodian then 
			setitemaddvalue(actor,item,1,jpt[shuxing],getitemaddvalue(actor,item,1,jpt[shuxing])+1)
		else
			for j = 1,1000 do
				local shuxing1 = math.random(1,#jpt)
				if shuxing1 ~= shuxing then
					setitemaddvalue(actor,item,1,jpt[shuxing1],getitemaddvalue(actor,item,1,jpt[shuxing1])+(dianshu-zuigaodian))
					break
				end
			end
			break
		end
	end
	
	sendmsg9(actor,"̽���ɹ�")
	refreshitem(actor,item)
	kaifeng_sz(actor) --̽����������
	return show(actor,wyid)
end

---------̽����������------------
local sx_zbtab = {4,3,5,6,7,8,10,11,0}
function kaifeng_sz(actor) --̽����������
	---------̽������---------
	local zongdianshu = 0 --�ܵ���

	for i = 1,#sx_zbtab do
		local item = linkbodyitem(actor,sx_zbtab[i])
		if item ~= "0" then
			for j=0,4 do
				zongdianshu = zongdianshu + getitemaddvalue(actor,item,1,j)
			end
		end
	end
	sendmsg9(actor,"̽���ܵ�����"..zongdianshu)
	if zongdianshu >= 36 then
		if not hasbuff(actor,10036) then
			addbuff(actor,10036)
			sendmsg9(actor,"̽�����ԣ�����buff��"..10036)
		end
	elseif zongdianshu >= 27 then
		if not hasbuff(actor,10035) then
			addbuff(actor,10035)
			sendmsg9(actor,"̽�����ԣ�����buff��"..10035)
		end
	else
		if hasbuff(actor,10035) then
			delbuff(actor,10035)
			sendmsg9(actor,"̽�����ԣ�ɾ��buff��"..10035)
		end
		if hasbuff(actor,10036) then
			delbuff(actor,10036)
			sendmsg9(actor,"̽�����ԣ�ɾ��buff��"..10036)
		end
	end
end