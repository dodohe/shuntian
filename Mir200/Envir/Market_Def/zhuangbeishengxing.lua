require("Envir/Market_Def/zh.lua") --���˷�װ����
local shengxingdata = {
	{jinbi=50000,cailiao={"�귨�ᾧ",10},chenggonglv=100,zsjl=100},
	{jinbi=100000,cailiao={"�귨�ᾧ",20},chenggonglv=80,zsjl=60},
	{jinbi=150000,cailiao={"�귨�ᾧ",30},chenggonglv=60,zsjl=40},
	{jinbi=200000,cailiao={"�귨�ᾧ",40},chenggonglv=40,zsjl=20},
	{jinbi=250000,cailiao={"�귨�ᾧ",60},chenggonglv=20,zsjl=10},
	{jinbi=300000,cailiao={"�귨�ᾧ",80},chenggonglv=20,zsjl=10},
	--{jinbi=350000,cailiao={"�귨�ᾧ",70},chenggonglv=35},
	--{jinbi=400000,cailiao={"�귨�ᾧ",80},chenggonglv=30},
}
function show(actor,wyid,xianshi)
	xianshi = tonumber(xianshi) or 0
	wyid = tonumber(wyid) or 0
	local msg = [[
		<Img|x=0|width=643|height=457|reset=0|bg=1|img=zhangheng/1.png|move=1|esc=1|show=4>
		<Button|x=639.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=195.5|y=38.5|width=428|height=393|esc=0|img=zhangheng/41.png>
		<Img|x=18.5|y=40.5|img=zhangheng/48.png|esc=0>
		<Img|x=17.5|y=79.5|height=352|img=zhangheng/42.png|esc=0>
		<Img|x=376.5|y=81.5|width=70|height=70|scale9t=30|scale9b=30|img=zhangheng/43.png|scale9r=30|scale9l=30|esc=0>
		<Img|x=193.5|y=37.5|img=zhangheng/128.png|esc=0>
	]]
	
	msg=msg..'<Button|x=588.5|y=42.5|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@show,'..wyid..',1>'
	msg=msg..'<ListView|children={2000}|x=17.5|y=79.5|width=176|height=352>'
	local keshengxing = {{4,"ͷ��"},{3,"����"},{5,"����"},{6,"����"},{7,"��ָ"},{8,"��ָ"},{10,"����"},{11,"ѥ��"}} --�����ǵ�װ��
	local shengxing_t = {}
	for i=1,#keshengxing do
		local item = linkbodyitem(actor,keshengxing[i][1])
		if item ~= "0" then
		  table.insert(shengxing_t,{item,keshengxing[i][2]})  ----{item,"ͷ��"}
		end
	end

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
	for j = 1,6 do
		msg = msg ..'<Img|x='.. 331-30 + (j-1)*40 ..'|y=320.0|img=zhangheng/49.png|esc=0>' --����
	end

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
			msg = msg ..'<DBItemShow|x=380.0|y=84.0|makeindex='..makeid..'|showtips=1|bgtype=0|showstar=1>'	--�ұ�չʾ��Ʒ
			local xxshu = getitemaddvalue(actor,item,2,3) --��������
			local sx1 = getitem_sxzsx(actor,item) --����������
			local sx2 = getitem_sxfy(actor,item) --���Ƿ���
			local sx3 = getitem_sxmf(actor,item) --����ħ��
			local showpar = xxshu + 1
			if showpar > 6 then
				showpar = 6
			end 
			msg = msg ..'<Text|ax=0.5|ay=0.5|x=412.5|y=165.5|color=254|size=18|text=�ɹ��ʣ�'.. shengxingdata[showpar].chenggonglv ..'%>'
			msg = msg ..'<Img|x=326.0|y=184|height=130|scale9r=0|scale9t=40|esc=0|img=zhangheng/6.png|scale9b=0|scale9l=0>'
			msg = msg ..'<Text|ay=0.5|x=375.0|y=199.5|color=250|size=18|text=��������>'
			msg = msg ..'<Text|ay=0.5|x=363.0|y=233.5|color=104|size=18|text=�����ԣ�+'..sx1..'>'
			msg = msg ..'<Text|ay=0.5|x=363.0|y=263.5|color=104|size=18|text=��������+'..sx2..'>'
			msg = msg ..'<Text|ay=0.5|x=363.0|y=293.5|color=104|size=18|text=ħ������+'..sx3..'>'
			
			msg = msg .."<Text|x=219.5|y=360.5|size=18|color=116|text=".. shengxingdata[showpar].cailiao[1] .."��>"
			msg = msg .."<ItemShow|x=290.0|y=337.0|width=70|height=70|itemid="..getidbyname(shengxingdata[showpar].cailiao[1]).."|itemcount=1|showtips=1|bgtype=0|scale=0.7>"
			msg = msg .."<RText|x=344.0|y=359.0|color=250|size=18|text=<".. itemcount(actor,shengxingdata[showpar].cailiao[1]) .."/FCOLOR=249>/"..shengxingdata[showpar].cailiao[2]..">"
			
			msg = msg .."<Text|x=432.0|y=359.0|size=18|color=251|text=��ң�>"
			msg = msg .."<ItemShow|x=460.0|y=337.0|width=70|height=70|itemid="..getidbyname("���").."|itemcount=1|showtips=0|bgtype=0|scale=0.75>"
			msg = msg .."<RText|x=514.0|y=359.0|color=250|size=18|text=<".. jianhuanum(getbindgold(actor)) .."/FCOLOR=249>/".. jianhuanum(shengxingdata[showpar].jinbi) ..">"
			
			for j = 1,6 do
				if xxshu >= j then
					msg = msg ..'<Img|x='.. 331 - 30 + (j-1)*40 ..'|y=320.0|img=zhangheng/50.png|esc=0>' --������
				end
			end
			
		end
	end
	
	if wyid == 0 then
		msg=msg..[[
		<Text|ax=0.5|ay=0.5|x=412.5|y=165.5|color=254|size=18|text=�ɹ��ʣ�100%>
		<Img|x=326.0|y=184.0|height=130|scale9r=0|scale9l=0|esc=0|img=zhangheng/6.png|scale9b=0|scale9t=40>
		<Text|ay=0.5|x=375.0|y=199.5|color=250|size=18|text=��������>
		<Text|ay=0.5|x=363.0|y=233.5|color=104|size=18|text=�����ԣ�+0>
		<Text|ay=0.5|x=363.0|y=263.5|color=104|size=18|text=��������+0>
		<Text|ay=0.5|x=363.0|y=293.5|color=104|size=18|text=ħ������+0>

		]]
		msg = msg .."<Text|x=219.5|y=360.5|size=18|color=116|text=�귨�ᾧ��>"
		msg = msg .."<ItemShow|x=290.0|y=337.0|width=70|height=70|itemid="..getidbyname("�귨�ᾧ").."|itemcount=1|showtips=1|bgtype=0|scale=0.7>"
		msg = msg .."<RText|x=344.0|y=359.0|color=250|size=18|text=<0/FCOLOR=249>/0>"
		
		msg = msg .."<Text|x=432.0|y=359.0|size=18|color=251|text=��ң�>"
		msg = msg .."<ItemShow|x=460.0|y=337.0|width=70|height=70|itemid="..getidbyname("���").."|itemcount=1|showtips=0|bgtype=0|scale=0.75>"
		msg = msg .."<RText|x=514.0|y=359.0|color=250|size=18|text=<0/FCOLOR=249>/0>"
	end
	
	msg = msg ..'<Button|x=372.0|y=390.0|color=10051|size=18|nimg=zhangheng/13.png|text=����|link=@shengxing,'.. wyid ..'>'
	if getsysint("��������") > 0 then
		msg = msg .."<Text|x=542.0|y=405.0|size=18|color=250|text=��ϴװ��|link=@qingxixx,".. wyid ..">"
	end
	
	if xianshi == 1 then
		msg = msg..	'<Layout|x=-999.0|y=-996.5|width=3000|height=3000|color=255>|link=@show,'..wyid..'>'
		msg = msg..[[
		<Img|ay=0.5|x=211.5|y=163.5|width=370|height=240|scale9t=10|scale9b=10|img=zh/7.png|scale9r=10|esc=0|scale9l=10>
		<RText|x=358.5|y=54.5|color=251|size=16|text=װ�����ǽ���>
		<RText|x=222.5|y=83.5|width=344|color=255|size=16|text=��װ����߿�����<6��/FCOLOR=253>,ÿ�����ǳɹ���������>
		<RText|x=228.5|y=103.5|width=344|color=255|size=16|text=<��������+1 ����+1 ħ��+1��/FCOLOR=250>����һ�����ԣ�>
		<RText|x=222.5|y=133.5|width=344|color=255|size=16|text=��ȫ��װ���ﵽ<24��/FCOLOR=254>���>
		<RText|x=238.5|y=153.5|width=344|color=255|size=16|text=<����ֵ������+5%/FCOLOR=250>>
		<RText|x=222.5|y=183.5|width=344|color=255|size=16|text=��ȫ��װ���ﵽ<48��/FCOLOR=254>���>
		<RText|x=238.5|y=203.5|width=344|color=255|size=16|text=<����ֵ������+10%/FCOLOR=250>>
		<RText|x=222.5|y=233.5|width=344|color=255|size=16|text=����װ�������Դﵽ<24��/FCOLOR=254>�ɻ��<3%�����˺�/FCOLOR=250>>
		
		]]
		msg = msg..	'<RText|x=238.5|y=253.5|width=344|color=255|size=16|text=<��ǰ�������ԣ�'..getzhushuxing(actor)..'��/FCOLOR=250>>'
	end
	
	say(actor,msg)
	
end

function qingxixx(actor,wyid)
	wyid = tonumber(wyid)
	if wyid == 0 then
		sendmsg9(actor,"��ѡ��Ҫ��ϴ��װ��")
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
	
	local xxshu = getitemaddvalue(actor,item,2,3) --��������
	if xxshu < 6 then
		sendmsg9(actor,"6��װ���ſ���ϴ")
		return
	end
	messagebox(actor,"\\\\�Ƿ�ȷ����ϴ��","@func_ok,"..wyid,"@func_no")
end

function func_no(actor)
	--sendmsg9(actor,"����")
end

function func_ok(actor,wyid)
	wyid = tonumber(wyid)
	if wyid == 0 then
		sendmsg9(actor,"��ѡ��Ҫ��ϴ��װ��")
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
	
	local xxshu = getitemaddvalue(actor,item,2,3) --��������
	if xxshu < 6 then
		sendmsg9(actor,"6��װ���ſ���ϴ")
		return
	end
	
	setitem_sxzsx(actor,item,0)
	setitem_sxfy(actor,item,0)
	setitem_sxmf(actor,item,0)
	setitemaddvalue(actor,item,2,3,0) --������������
	refreshitem(actor,item)
	sendmsg9(actor,"��ϴ�ɹ�")
	shengxing_sz(actor)
	return show(actor,wyid)
end

function shengxing(actor,wyid)
	wyid = tonumber(wyid)
	if wyid == 0 then
		sendmsg9(actor,"��ѡ��Ҫ���ǵ�װ��")
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
	
	local xxshu = getitemaddvalue(actor,item,2,3) --��������
	if xxshu >= 6 then
		sendmsg9(actor,"��װ���Ѿ����ǵ���ߵȼ�")
		return
	end
		
	local t = shengxingdata[xxshu+1]
	if xxshu < 3 then
		if getbindgold(actor) < t.jinbi then
			sendmsg9(actor,"��Ҳ���")
			return
		end
	else
		if getgold(actor) < t.jinbi then
			sendmsg9(actor,"�ǰ󶨽�Ҳ���")
			return
		end
	end
	
	if itemcount(actor, t.cailiao[1]) < t.cailiao[2] then
		sendmsg9(actor,"�귨�ᾧ����")
		return
	end
	
	takeitem(actor, t.cailiao[1], t.cailiao[2],0)
	
	if xxshu < 3 then
		subbindgold(actor,t.jinbi)
	else
		subgold(actor,t.jinbi)
	end
	
	if math.random(1,100) > t.zsjl then
		sendmsg9(actor,"����ʧ��")
		return show(actor,wyid)
	end

	local shuxingbls = {34,35,36}
	local shuxingbl = 0
	if getitem_sxzsx(actor,item) >= 3 then
		shuxingbl = shuxingbls[math.random(2,3)]
	else
		if math.random(1,100) < 80 then
			shuxingbl = shuxingbls[math.random(1,3)]
		else
			shuxingbl = shuxingbls[math.random(2,3)]
		end
	end
	setitemaddvalue(actor,item,1,shuxingbl,getitemaddvalue(actor,item,1,shuxingbl)+1)
	
	setitemaddvalue(actor,item,2,3,xxshu+1) --������������
	sendmsg9(actor,"���ǳɹ�")
	refreshitem(actor,item)
	shengxing_sz(actor)
	return show(actor,wyid)
end

---------������������------------
local sx_zbtab = {4,3,5,6,7,8,10,11,0}

function getzhushuxing(actor)
	---------��������---------
	local zhushuxing = 0
	local shengxinglv = 0
	for i = 1,#sx_zbtab do
		local item = linkbodyitem(actor,sx_zbtab[i])
		if item ~= "0" then
			zhushuxing = zhushuxing + getitem_sxzsx(actor,item)
		end
	end
	return zhushuxing
end

function shengxing_sz(actor)
	---------��������---------
	local zhushuxing = 0
	local fangyu = 0
	local moyu = 0
	local shengxinglv = 0
	for i = 1,#sx_zbtab do
		local item = linkbodyitem(actor,sx_zbtab[i])
		if item ~= "0" then
			zhushuxing = zhushuxing + getitem_sxzsx(actor,item)
			fangyu = fangyu + getitem_sxfy(actor,item)
			moyu = moyu + getitem_sxmf(actor,item)
			shengxinglv = shengxinglv + getitemaddvalue(actor,item,2,3)
		end
	end
	--6#0|10#0|14#0|18#0|22#0|56#0
	--sendmsg9(actor,"���������ԣ�"..zhushuxing .."  "..fangyu .."  "..moyu)
	local att_tab = {[4]=0,[6]=0,[8]=0,[10]=0,[12]=0,[25]=0,}
	local job = getjob(actor)
	if job == 0 then
		att_tab[4] = zhushuxing
	elseif job == 1 then
		att_tab[6] = zhushuxing
	else
		att_tab[8] = zhushuxing
	end
	att_tab[10] = fangyu
	att_tab[12] = moyu
	if zhushuxing >= 24 then
		att_tab[25] = 3
	end
	sendmsg0(actor, "���������ԣ�"..tostring(zhushuxing).."������"..tostring(fangyu).."ħ����"..tostring(moyu))
	if hasbuff(actor,10008) then	
		delbuff(actor,10008)
	end
	addbuff(actor,10008,0,1,actor,att_tab,true)
	if shengxinglv < 24 then
		if hasbuff(actor,10009) then
			delbuff(actor,10009)
		end
		if hasbuff(actor,10010) then
			delbuff(actor,10010)
		end
	elseif shengxinglv < 48 then
		if not hasbuff(actor,10009) then
			addbuff(actor,10009)
		end
		if hasbuff(actor,10010) then
			delbuff(actor,10010)
		end
	else
		if hasbuff(actor,10009) then
			delbuff(actor,10009)
		end
		if not hasbuff(actor,10010) then
			addbuff(actor,10010)
		end
	end
end