require("Envir/Market_Def/zh.lua") --���˷�װ����

local chakan = {"����������","����Ȩ��","̫������","��˵:��Ӱ��","��˵:��ˮ��","��˵:̫����","������׶��ն","������ŭ����","��Լ���񷣽�"}

function show(actor)
	if getint(actor,"�鿴���ռ�����") == 0 then
		local you = false
		for i = 1,#chakan do
			if isyongyou(actor,chakan[i],1) then
				setint(actor,"�鿴���ռ�����",1)
				you = true
				break
			end
		end
		if not you then
			sendmsg9(actor,"��ʿ,��̫���������Ȱݷù���ұ���������Ϸ��..")
			return
		end
	end
	
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=����>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ax=0|ay=0.5|x=22.0|y=81.5|color=255|size=18|text=���ƾޱ䣬һ��Ѫ���ȷ缴�����٣����������������������>
		<RText|ay=0.5|x=22.0|y=106.5|color=255|size=18|text=���Ɐ��ķ������Ǻ���ŷұ�����ֽ�����ϣ���ҵ�һ������>
		<RText|ay=0.5|x=22.0|y=131.5|color=255|size=18|text=ֹ�ⳡս�����ˣ�����������������������������귨��½��>
		<RText|ay=0.5|x=22.0|y=156.5|color=255|size=18|text=δ���Ϳ�����ˡ����������𣿸Ͻ������԰ɣ�>
		<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
		<Text|ay=0.5|x=227.0|y=214.5|size=18|color=250|text=��������|link=@jueshi>
	]]
	say(actor,msg)
end


local anniu_t = {"��˵:��Ӱ��","��˵:��ˮ��","��˵:̫����","������׶��ն","������ŭ����","��Լ���񷣽�"}
local xiaohao = {
	{{"����������",1},{"����������",1},{"����������",1},	{"���",50},{"����֮��",2000}},
	{{"����Ȩ��",1},{"����Ȩ��",1},{"����Ȩ��",1},			{"���",50},{"����֮��",2000}},
	{{"̫������",1},{"̫������",1},{"̫������",1},			{"���",50},{"����֮��",2000}},
	{{"��˵:��Ӱ��",1},{"��˵:��Ӱ��",1},{"��˵:��Ӱ��",1},{"���ߵ�����",1},{"���",100},{"����֮��",3000}},
	{{"��˵:��ˮ��",1},{"��˵:��ˮ��",1},{"��˵:��ˮ��",1},{"����������",1},{"���",100},{"����֮��",3000}},
	{{"��˵:̫����",1},{"��˵:̫����",1},{"��˵:̫����",1},{"��ħ����Լ",1},{"���",100},{"����֮��",3000}},
}

local sm = {"������","��Ѫ��","������","������",}

function jueshi(actor,anniu,zhuwuqiid,xianshi)
	local zsdj = getbaseinfo(actor,39)
	local sl = 3
	if zsdj >= 10 then
		sl = 6
	end
	anniu = tonumber(anniu) or 1
	zhuwuqiid = tonumber(zhuwuqiid) or 3
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
	msg=msg.."<Img|x=18.0|y=408.0|img=zhangheng/8.png||link=@jueshi,"..anniu..","..zhuwuqiid..",1>"
	for i = 1,sl do
		if anniu == i then --���ఴť
			msg=msg.."<Button|x=20.0|y=".. 40.5 + (i-1)*40 .."|size=18|color=150|nimg=zh/66.png|text="..anniu_t[i]..">"
		else
			msg=msg.."<Button|x=20.0|y=".. 40.5 + (i-1)*40 .."|size=18|color=7|nimg=zh/67.png|pimg=zh/67.png|text="..anniu_t[i].."|link=@jueshi,"..i..">"
		end
	end
	msg = msg ..'<Img|x=357.0|y=90.0|img=zhangheng/73.png|esc=0>'
	msg = msg ..'<ItemShow|x=354.0|y=87.0|width=70|height=70|itemid='.. getidbyname(anniu_t[anniu]) ..'|itemcount=1|showtips=1|bgtype=0>'
	--��Ʒչʾ
	local t = xiaohao[anniu]
	if anniu < 4 then
		for i = 1,3 do
			msg = msg ..'<Img|x='.. 222+26+(i-1)*110 ..'|y=196.0|img=zhangheng/73.png|esc=0>'
			msg = msg ..'<ItemShow|x='.. 219+26+(i-1)*110 ..'|y=193.0|width=70|height=70|itemid='..getidbyname(t[i][1])..'|itemcount='..t[i][2]..'|showtips=1|bgtype=0>'
			msg = msg ..'<Text|x='.. 230+26+(i-1)*110 ..'|y=262.0|color=255|size=14|text='.. sm[i] ..'>'
			
		end
	else
		for i = 1,4 do
			msg = msg ..'<Img|x='.. 222+(i-1)*90 ..'|y=196.0|img=zhangheng/73.png|esc=0>'
			msg = msg ..'<ItemShow|x='.. 219+(i-1)*90 ..'|y=193.0|width=70|height=70|itemid='..getidbyname(t[i][1])..'|itemcount='..t[i][2]..'|showtips=1|bgtype=0>'
			
			msg = msg ..'<Text|x='.. 230+(i-1)*90 ..'|y=262.0|color=255|size=14|text='.. sm[i] ..'>'
		end
		
		for i = 1,3 do
			if zhuwuqiid == i then
				msg = msg ..'<Img|x=260|y='.. 76+(i-1)*30 ..'|img=zhangheng/170.png|esc=0>' --���˵Ŀ��
			else
				msg = msg ..'<Img|x=260|y='.. 76+(i-1)*30 ..'|img=zhangheng/169.png|esc=0|link=@jueshi,'.. anniu ..','.. i ..'>' --û���Ŀ��
			end
			msg = msg ..'<Text|x=290|y='.. 82+(i-1)*30 ..'|color=255|size=14|text='.. sm[i] ..'>'
		end
	end

	if anniu < 4 then
		msg = msg ..'<Text|x=253.0|y=310.0|color=255|size=18|text=���ģ�>'
		msg = msg ..'<ItemShow|x=298.0|y=286.0|width=70|height=70|itemid='.. getidbyname(t[4][1]) ..'|itemcount=1|scale=0.8|showtips=1|bgtype=0>'
		msg = msg ..'<RText|x=353.0|y=310.0|color=250|size=18|text=<'.. itemcount(actor,t[4][1]) ..'/FCOLOR=249>/'.. t[4][2] ..'>'
		msg = msg ..'<ItemShow|x=418.0|y=286.0|width=70|height=70|itemid='.. getidbyname(t[5][1]) ..'|itemcount=1|scale=0.7|showtips=1|bgtype=0>'
		msg = msg ..'<RText|x=473.0|y=310.0|color=250|size=18|text=<'.. itemcount(actor,t[5][1]) ..'/FCOLOR=249>/'.. t[5][2] ..'>'
		msg = msg ..'<Text|x=325.0|y=349.0|color=254|size=18|text=�ɹ����ʣ�100%>'
	else
		msg = msg ..'<Text|x=253.0|y=310.0|color=255|size=18|text=���ģ�>'
		msg = msg ..'<ItemShow|x=298.0|y=286.0|width=70|height=70|itemid='.. getidbyname(t[5][1]) ..'|itemcount=1|scale=0.8|showtips=1|bgtype=0>'
		msg = msg ..'<RText|x=353.0|y=310.0|color=250|size=18|text=<'.. itemcount(actor,t[5][1]) ..'/FCOLOR=249>/'.. t[5][2] ..'>'
		msg = msg ..'<ItemShow|x=418.0|y=286.0|width=70|height=70|itemid='.. getidbyname(t[6][1]) ..'|itemcount=1|scale=0.7|showtips=1|bgtype=0>'
		msg = msg ..'<RText|x=473.0|y=310.0|color=250|size=18|text=<'.. itemcount(actor,t[6][1]) ..'/FCOLOR=249>/'.. t[6][2] ..'>'
		msg = msg ..'<Text|x=325.0|y=349.0|color=254|size=18|text=�ɹ����ʣ�100%>'
	end
	
	msg = msg ..'<Button|x=348.0|y=385.0|size=18|nimg=zhangheng/13.png|color=10051|text=ȷ������|link=@duanzao,'.. anniu ..','..zhuwuqiid..'>'
	
	if xianshi == 1 then
		msg = msg.."<Layout|x=-1000.0|y=-1001.0|width=3000|height=3000|color=255>|link=@jueshi,"..anniu..","..zhuwuqiid..">"
		if anniu < 4 then
			msg = msg..[[
			<Img|ay=0.5|x=50.0|y=365.0|width=300|height=140|scale9r=10|scale9l=10|scale9t=10|img=zh/7.png|scale9b=10|esc=0>
			<RText|ay=0.5|x=58.0|y=339.5|color=255|size=16|text=ʹ��3�Ѳ�ͬ���͵������ɶ����<"��˵"/FCOLOR=250>>
			<RText|ay=0.5|x=58.0|y=364.5|color=255|size=16|text=ϵ�������������������������<"����/FCOLOR=250>>
			<RText|ay=0.5|x=58.0|y=389.5|color=255|size=16|text=<˫��+5% ��Ѫ+5% ����+5%"/FCOLOR=250>���е�1��>
			<RText|ay=0.5|x=58.0|y=414.5|color=255|size=16|text=��������>
			<RText|ay=0.5|x=58.0|y=314.5|color=251|size=16|text=������ܣ�>
			]]
		else
			msg = msg..[[			
			<Img|ay=0.5|x=50.0|y=357.0|width=300|height=160|scale9r=10|scale9l=10|scale9t=10|img=zh/7.png|scale9b=10|esc=0>
			<RText|ay=0.5|x=58.0|y=318.5|color=255|size=16|text=ʹ�����Ѳ�ͬ���͵������ɶ����<����/FCOLOR=250>>
			<RText|ay=0.5|x=58.0|y=343.5|color=255|size=16|text=<��������Լ/FCOLOR=250>ϵ��������������ѡ������>
			<RText|ay=0.5|x=58.0|y=368.5|color=255|size=16|text=��������������������ͣ���<ѡ����Ѫ/FCOLOR=250>>
			<RText|ay=0.5|x=58.0|y=394.5|color=255|size=16|text=<��/FCOLOR=250>��������Ϊ�����ͣ���ô���������>
			<RText|ay=0.5|x=58.0|y=418.5|color=255|size=16|text=���������Ǹ���<"��Ѫ����"/FCOLOR=250>>
			<RText|ay=0.5|x=58.0|y=293.5|color=251|size=16|text=������ܣ�>

			]]
		end
	end
	say(actor,msg)
end
local sx1 = {
	{28,5,1016}, --����˫��+5%
	{34,500,1017}, --��Ѫ+5% ��ֱ�
	{25,5,1018}, --����+5%
}
local sx2 = {
	{28,8,1016}, --����˫��+8%
	{34,800,1017}, --��Ѫ+8% ��ֱ�
	{25,8,1018}, --����+8%
}
function duanzao(actor,par,zhuwuqiid)
	par = tonumber(par)
	zhuwuqiid = tonumber(zhuwuqiid)
	local sx_t = sx1
	if par > 3 then
		sx_t = sx2
	end
	
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
	
	for i = 4,#t do
		if itemcount(actor,t[i][1]) < t[i][2] then
			sendmsg9(actor,"��������")
			return
		end
	end
	
	if par < 4 then
		for i = 4,#t do
			takeitem(actor,t[i][1],t[i][2])
		end
		
		for i = 1,#sct do
			delitem(actor,sct[i],1)
		end
		local item = giveitem(actor,anniu_t[par])
		local sj = math.random(1,3)
		changecustomitemtext(actor,item,"[��������]��",2) --��������
		changecustomitemtextcolor(actor,item,154,2) --��ɫ
		changecustomitemabil(actor,item,0,1,sx_t[sj][1],2) --����4  1Ϊ��att���� 
		changecustomitemabil(actor,item,0,2,sx_t[sj][3],2) --����4  2Ϊ���Զ����Ա� ��ʾ��
		changecustomitemabil(actor,item,0,3,1,2) --����4  3Ϊ�󶨵�ֵ�Ƿ�Ϊ�ٷֱ� 0���� 1��
		changecustomitemabil(actor,item,0,4,0,2) --����4  4Ϊ��������ʾλ����һ��
		changecustomitemvalue(actor,item,0,"=",sx_t[sj][2],2) --���ð�att���Ե�ֵ
		sendmsg9(actor,"����ɹ�")
		sendmsg6(actor,"����ɹ�")
	
	else	
		for i = 1,#sct do
			delitem(actor,sct[i],1)
		end

		for i = 4,#t do
			takeitem(actor,t[i][1],t[i][2])
		end
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
	end

	jueshi(actor,par,zhuwuqiid)
end
