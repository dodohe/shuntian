require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor)
	local zslv = getbaseinfo(actor,39) --ת���ȼ�
	if zslv < 10 then
		sendmsg9(actor,"С���ӣ��㿴������ص�ˮ�ǲ��ǿ�û����...")
		return
	end
	
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|size=18|color=251|text=�ɽ�Īа>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ax=0|ay=0.5|x=22.0|y=86.5|size=18|color=255|text=��������ɽ�С������������ν�������ɽ����������ֽ�֮��>
		<RText|ay=0.5|x=22.0|y=116.5|color=255|size=18|text=�����츳��������ӵ�������������Ȼ��ע��Ҫ�ֽ���������>
		<RText|ay=0.5|x=22.0|y=146.5|color=255|size=18|text=��Ը�����ְ������һ�����>
		<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
		<Text|ay=0.5|x=227.0|y=214.5|color=250|size=18|text=�������|link=@shenbing>

	]]
	say(actor,msg)
end


local anniu_t = {"�����ޤ�����֮��","�����������֮��","��¥�ޤ��򽣹���",}
local xiaohao = {
	{{"������׶��ն",1},{"������׶��ն",1},{"������׶��ն",1},{"����֮��",1000}},
	{{"������ŭ����",1},{"������ŭ����",1},{"������ŭ����",1},{"����֮��",1000}},
	{{"��Լ���񷣽�",1},{"��Լ���񷣽�",1},{"��Լ���񷣽�",1},{"����֮��",1000}},

}

local tuzhi = {
	{"001��ͼֽ","002��ͼֽ","003��ͼֽ","004��ͼֽ"},
	{"005��ͼֽ","006��ͼֽ","007��ͼֽ","008��ͼֽ"},
	{"009��ͼֽ","010��ͼֽ","011��ͼֽ","012��ͼֽ"},
}

local sm = {"������","��Ѫ��","������"}

function shenbing(actor,anniu,zhuwuqiid,xianshi)
	anniu = tonumber(anniu) or 1
	zhuwuqiid = tonumber(zhuwuqiid) or 1
	xianshi = tonumber(xianshi) or 0
	local msg = [[
		<Img|move=1|reset=0|img=zhangheng/166.png|bg=1|esc=1|show=4>
		<Button|x=590.0|y=1.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=18.0|y=39.0|img=zhangheng/165.png|esc=0>
		<Img|x=196.0|y=38.0|img=zhangheng/167.png|esc=0>
		<Img|x=248.0|y=52.0|img=zhangheng/201.png|esc=0>
		<Img|x=251.0|y=162.0|img=zhangheng/74.png|esc=0>
	]]
	msg=msg.."<Img|x=18.0|y=408.0|img=zhangheng/8.png||link=@shenbing,"..anniu..","..zhuwuqiid..",1>"

	local tuzhit = tuzhi[anniu]
	msg = msg ..'<Img|x='.. 222+(4-1)*90 ..'|y=196.0|img=zhangheng/73.png|esc=0>'
	local zuobiaot = {{475,179},{503,179},{475,207},{503,207}}
	for i = 1,4 do
		if itemcount(actor,tuzhit[i]) > 0 then
			msg=msg..'<ItemShow|x='..zuobiaot[i][1]..'|y='..zuobiaot[i][2]..'|width=70|height=70|itemid='.. getidbyname(tuzhit[i]) ..'|itemcount=1|showtips=1|bgtype=0>'
		else	
			msg=msg..'<ItemShow|x='..zuobiaot[i][1]..'|y='..zuobiaot[i][2]..'|width=70|height=70|itemid='.. getidbyname(tuzhit[i]) ..'|itemcount=1|showtips=1|bgtype=0|grey=1>'
		end
	end
	
	
	for i = 1,#anniu_t do
		if anniu == i then --���ఴť
			msg=msg.."<Button|x=20.0|y=".. 40.5 + (i-1)*40 .."|size=18|color=150|nimg=zh/66.png|text="..anniu_t[i]..">"
		else
			msg=msg.."<Button|x=20.0|y=".. 40.5 + (i-1)*40 .."|size=18|color=7|nimg=zh/67.png|pimg=zh/67.png|text="..anniu_t[i].."|link=@shenbing,"..i..">"
		end
	end
	msg = msg ..'<Img|x=357.0|y=90.0|img=zhangheng/73.png|esc=0>'
	msg = msg ..'<ItemShow|x=354.0|y=87.0|width=70|height=70|itemid='.. getidbyname(anniu_t[anniu]) ..'|itemcount=1|showtips=1|bgtype=0>'
	local t = xiaohao[anniu]
	for i = 1,3 do
		msg = msg ..'<Img|x='.. 222+(i-1)*90 ..'|y=196.0|img=zhangheng/73.png|esc=0>'
		msg = msg ..'<ItemShow|x='.. 219+(i-1)*90 ..'|y=193.0|width=70|height=70|itemid='..getidbyname(t[i][1])..'|itemcount='..t[i][2]..'|showtips=1|bgtype=0>'
	end
	for i = 1,3 do	
		msg = msg ..'<Text|x='.. 248+(i-1)*90 ..'|y=262.0|color=255|size=14|text='.. sm[i] ..'>'
		if zhuwuqiid == i then
			msg = msg ..'<Img|x='.. 224+(i-1)*90 ..'|y=198.0|img=zhangheng/168.png|esc=0>'
			msg = msg ..'<Img|x='.. 218+(i-1)*90 ..'|y=256.0|img=zhangheng/170.png|esc=0>'
		else
			msg = msg ..'<Img|x='.. 218+(i-1)*90 ..'|y=256.0|img=zhangheng/169.png|esc=0|link=@shenbing,'.. anniu ..','.. i ..'>'
		end
	end
	msg = msg ..'<Text|x='.. 248+254 ..'|y=262.0|color=255|size=14|text=ͼֽ��>'

	msg = msg ..'<Text|x=253.0|y=310.0|color=255|size=18|text=���ģ�>'
	
	msg = msg ..'<RText|x=313.0|y=310.0|color=250|size=18|text=Ԫ��200��>'
	msg = msg ..'<ItemShow|x=418.0|y=286.0|width=70|height=70|itemid='.. getidbyname(t[4][1]) ..'|itemcount=1|showtips=1|scale=0.7|bgtype=0>'
	msg = msg ..'<RText|x=473.0|y=310.0|color=250|size=18|text=<'.. itemcount(actor,t[4][1]) ..'/FCOLOR=249>/'.. t[4][2] ..'>'
	msg = msg ..'<Text|x=325.0|y=349.0|color=254|size=18|text=�ɹ����ʣ�100%>'

	msg = msg ..'<Button|x=348.0|y=385.0|size=18|nimg=zhangheng/13.png|color=10051|text=ȷ������|link=@duanzao,'.. anniu ..','..zhuwuqiid..'>'
	
	if xianshi == 1 then
		msg = msg.."<Layout|x=-1000.0|y=-1001.0|width=3000|height=3000|color=255>|link=@shenbing,"..anniu..","..zhuwuqiid..">"
		msg = msg..[[
		<Img|ay=0.5|x=50.0|y=356.0|width=300|height=160|scale9r=10|scale9l=10|esc=0|img=zh/7.png|scale9b=10|scale9t=10>
		<RText|ay=0.5|x=58.0|y=318.5|color=255|size=16|text=ʹ��3�Ѳ�ͬ���͵�������100%�����>
		<RText|ay=0.5|x=58.0|y=343.5|color=255|size=16|text=<"������, ������, ��¥��"/FCOLOR=250>ϵ����������>
		<RText|ay=0.5|x=58.0|y=368.5|color=255|size=16|text=��ѡ�������������ͣ���<ѡ����Ѫ��/FCOLOR=250>��>
		<RText|ay=0.5|x=58.0|y=393.5|color=255|size=16|text=��������Ϊ<������/FCOLOR=250>����ô�����������>
		<RText|ay=0.5|x=58.0|y=418.5|color=255|size=16|text=��������<������Ѫ����/FCOLOR=250>>
		<RText|ay=0.5|x=58.0|y=293.5|color=251|size=16|text=������ܣ�>
		]]
	end
	say(actor,msg)
end
local sx_t = {
	{28,11,1016}, --����˫��+11%
	{34,1100,1017}, --��Ѫ+11% ��ֱ�
	{25,11,1018}, --����+11%
}
function duanzao(actor,par,zhuwuqiid)
	par = tonumber(par)
	zhuwuqiid = tonumber(zhuwuqiid)
	local t = xiaohao[par]
	local wuqiname = t[1][1]
	local baglist = getbaglist(actor) --������Ʒ�б�
	local wuqimanzu = 0
	local sct = {} --Ҫɾ��������T
	for j = 1,3 do
		for i = 1,#baglist do
			if getitemname(actor, baglist[i]) == wuqiname then
				local jsonstr = getitemcustomabil(actor,baglist[i])
				if jsonstr ~= "" then
					local json_t = json2tbl(jsonstr)
					--release_print(tbl2json(json_t.abil[3].v[1]))
					if json_t.abil[3].v[1][2] == sx_t[j][1] then
						table.insert(sct,baglist[i])
						break
					end
				end
			end
		end
	end
	
	if #sct < 3 then --��������������
		sendmsg9(actor,"��������")
		return
	end
	
	if getingot(actor) < 2000000 then
		sendmsg9(actor,"��������")
		return
	end
	
	for i = 4,#t do
		if itemcount(actor,t[i][1]) < t[i][2] then
			sendmsg9(actor,"��������")
			return
		end
	end
	
	for i = 1,4 do
		if itemcount(actor,tuzhi[par][i]) < 1 then
			sendmsg9(actor,"��������")
			return
		end
	end
	
	for i = 1,4 do
		takeitem(actor,tuzhi[par][i],1)
	end
	
	for i = 1,#sct do
		delitem(actor,sct[i],1)
	end
	
	for i = 4,#t do
		takeitem(actor,t[i][1],t[i][2])
	end
	
	subingot(actor,2000000)
	local item = giveitem(actor,anniu_t[par])
	local sj = zhuwuqiid
	changecustomitemtext(actor,item,"[��������]��",2) --��������
	changecustomitemtextcolor(actor,item,154,2) --��ɫ
	changecustomitemabil(actor,item,0,1,sx_t[sj][1],2) --����4  1Ϊ��att���� 
	changecustomitemabil(actor,item,0,2,sx_t[sj][3],2) --����4  2Ϊ���Զ����Ա� ��ʾ��
	changecustomitemabil(actor,item,0,3,1,2) --����4  3Ϊ�󶨵�ֵ�Ƿ�Ϊ�ٷֱ� 0���� 1��
	changecustomitemabil(actor,item,0,4,0,2) --����4  4Ϊ��������ʾλ����һ��
	changecustomitemvalue(actor,item,0,"=",sx_t[sj][2],2) --���ð�att���Ե�ֵ

	sendmsg9(actor,"����ɹ�")
	sendmsg6(actor,"����ɹ�")
	shenbing(actor,par,zhuwuqiid)
end
