require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor)
	--[[if getlevel(actor) > 0 then
		sendmsg9(actor,"�ݲ����Ŵ˹���...")
		return
	end--]]
	local zslv = getbaseinfo(actor,39) --ת���ȼ�
	if zslv < 4 then
		sendmsg9(actor,"С���ӣ���̫������....")
		return
	elseif zslv < 10 then
		sendmsg9(actor,"��ʿ����Ҫ��̽�䱦�ݵ����ܣ���ת���ﵽ10ת...")
		return
	end
	
	local msg = [[
		
<Img|width=530|height=340|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=�귨�䱦��>
<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
<RText|ax=0|ay=0.5|x=22.0|y=70.0|color=255|size=18|text=�ڴ�½�ϵ���������ǳ���Ի��ɳ�Ϳˣ�ħ�����������>
<RText|ay=0.5|x=22.0|y=95.5|color=255|size=18|text=Ȫ����ָ����������ǿ����������빥ռ�˳ǣ��ۿ���Ȫ��>
<RText|ay=0.5|x=22.0|y=120.5|color=255|size=18|text=���������Ƴ���ʱ��ͻȻ��������ʥս����Ӣ�۴������>
<RText|ay=0.5|x=22.0|y=145.5|color=255|size=18|text=�������������ħ����������������ڶ࣬Ӣ�����ٻ�����>
<RText|ay=0.5|x=22.0|y=170.5|color=255|size=18|text=<"���������������"/FCOLOR=250>������װ�����Ǵ����ڹ���֮�䣬����ǿ>
<RText|ay=0.5|x=22.0|y=195.5|color=255|size=18|text=������ֹ����κƽ�......>
<RText|ay=0.5|x=22.0|y=230.5|color=255|size=18|text=Ӣ�����뿪ʱ,  ������ǿ��װ�����Ϸ���������������ʿ��>
<RText|ay=0.5|x=22.0|y=255.5|color=255|size=18|text=����<ħ��֮Ѫ/FCOLOR=249>Ѱ���˴���������Ҫ�ȵ���Ե�ˣ���ʿ������>
<Img|x=34.0|y=278.0|img=zhangheng/203.png|esc=0>
<Text|ax=0.5|ay=0.5|x=264.0|y=302.5|size=18|color=250|text=���� �� ����װ|link=@shenzhuang>

	]]
	say(actor,msg)
end


local zb_t = {
	["����ս��"]={1,10},["��������"]={1,10},["��������"]={1,10},["������ָ"]={1,10},["��������"]={1,10},["����սѥ"]={1,10},
	["���졩ʥ��"]={1,30},["���졩ʥ��"]={1,30},["���졩ʥ��"]={1,30},["���졩ʥ��"]={1,30},["���졩ʥ��"]={1,30},["���졩ʥѥ"]={1,30},
	["��Ӱ��ʥ��"]={1,90},["��Ӱ��ʥ��"]={1,90},["��Ӱ��ʥ��"]={1,90},["��Ӱ��ʥ��"]={1,90},["��Ӱ��ʥ��"]={1,90},["��Ӱ��ʥѥ"]={1,90},
	
	["����ħ��"]={2,10},["��������"]={2,10},["��������"]={2,10},["���׽�ָ"]={2,10},["��������"]={2,10},["����ħѥ"]={2,10},
	["���졩ħ��"]={2,30},["���졩ħ��"]={2,30},["���졩ħ��"]={2,30},["���졩ħ��"]={2,30},["���졩ħ��"]={2,30},["���졩ħѥ"]={2,30},
	["�����ħ��"]={2,90},["�����ħ��"]={2,90},["�����ħ��"]={2,90},["�����ħ��"]={2,90},["�����ħ��"]={2,90},["�����ħѥ"]={2,90},
	
	["�������"]={3,10},["��������"]={3,10},["��������"]={3,10},["�����ָ"]={3,10},["��������"]={3,10},["�����ѥ"]={3,10},
	["���졩����"]={3,30},["���졩����"]={3,30},["���졩����"]={3,30},["���졩����"]={3,30},["���졩����"]={3,30},["���졩��ѥ"]={3,30},
	["Զ�š����"]={3,90},["Զ�š����"]={3,90},["Զ�š����"]={3,90},["Զ�š����"]={3,90},["Զ�š����"]={3,90},["Զ�š��ѥ"]={3,90},
	
}

local xianshi_t = {
	{"��������Դ��","��������Դ��","��������Դ��","��������Դ��","��������Դ��","��������Դѥ",},
	{"������������","������������","������������","������������","������������","����������ѥ",},
	{"������޳���","������޳���","������޳���","������޳���","������޳���","������޳�ѥ",},
}

function shenzhuang(actor,weiyiid1,weiyiid2,weiyiid3,xuanzhekuang,xuanzhong,xianshi)
	weiyiid1 = tonumber(weiyiid1) or 0
	weiyiid2 = tonumber(weiyiid2) or 0
	weiyiid3 = tonumber(weiyiid3) or 0
	xuanzhekuang = tonumber(xuanzhekuang) or 0
	xuanzhong = tonumber(xuanzhong) or 0
	xianshi = tonumber(xianshi) or 0
	local msg = [[
	<Img|x=0|width=582|height=520|bg=1|scale9r=50|scale9t=50|scale9b=50|move=1|esc=1|reset=0|scale9l=50|img=zhangheng/1.png|show=4>
	<Button|x=577.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	<Img|x=16.5|y=39.5|img=zhangheng/186.png|esc=0>
	<Img|x=131.0|y=132.0|img=zhangheng/78.png|esc=0>
	<Img|x=152.0|y=49.0|img=zhangheng/74.png|esc=0>
	<Img|x=261.0|y=206.0|img=zh/74.png|esc=0>
	<Text|x=201.0|y=278.0|color=161|size=18|text=�����������һ��װ��>
	<Text|x=151.0|y=387.0|color=161|size=18|text=���ģ�ħ��֮Ѫ*3    ��ˮ����*6666>
	<Img|x=267.0|y=204.0|img=zh/76.png|esc=0>
	]]
	--�ʺ�
	msg =msg ..'<Button|x=18.0|y=461.0|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','..weiyiid3..',0,0,1>'
	--���Ŀ�ı���
	msg =msg ..'<Img|x=106.0|y=85.0|img=zh/74.png|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','..weiyiid3..',1>'
	msg =msg ..'<Img|x=261.0|y=85.0|img=zh/74.png|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','..weiyiid3..',2>'
	msg =msg ..'<Img|x=417.0|y=85.0|img=zh/74.png|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','..weiyiid3..',3>'
	local chenggonglv = 0
	local dangci = 0 --װ�������װ������
	local itemname = ""
	if weiyiid1 == 0 then
		msg =msg ..'<Img|x=121.0|y=100.0|img=zh/75.png>' --�Ӻ�
	else
		dangci = getdangci(actor,weiyiid1)
		itemname = getitemnamebymakeid(actor,weiyiid1)
		chenggonglv = chenggonglv + zb_t[itemname][2]
		msg =msg ..'<DBItemShow|x=103.0|y=80.0|width=70|height=70|makeindex='..weiyiid1..'|showtips=1|bgtype=0|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','..weiyiid3..',1>'
	end
	if weiyiid2 == 0 then
		msg =msg ..'<Img|x=276.0|y=100.0|img=zh/75.png>'
	else
		dangci = getdangci(actor,weiyiid2)
		itemname = getitemnamebymakeid(actor,weiyiid2)
		chenggonglv = chenggonglv + zb_t[itemname][2]
		msg =msg ..'<DBItemShow|x=258.0|y=80.0|width=70|height=70|makeindex='..weiyiid2..'|showtips=1|bgtype=|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','..weiyiid3..',2>'
	end
	
	if weiyiid3 == 0 then
		msg =msg ..'<Img|x=432.0|y=100.0|img=zh/75.png>'
	else
		dangci = getdangci(actor,weiyiid3)
		itemname = getitemnamebymakeid(actor,weiyiid3)
		chenggonglv = chenggonglv + zb_t[itemname][2]
		msg =msg ..'<DBItemShow|x=414.0|y=80.0|width=70|height=70|makeindex='..weiyiid3..'|showtips=1|bgtype=|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','..weiyiid3..',3>'
	end
	
	msg=msg..'<Text|x=235.0|y=418.0|color=254|size=18|text=�ɹ����ʣ�'.. chenggonglv ..'%>'
	----�·����װ��չʾ
	for i =1,6 do
		msg = msg..'<Img|x='.. 75+(i-1)*75 ..'|y=309.0|img=zh/74.png|esc=0>'
	end
	if dangci ~= 0 then
		local t = xianshi_t[dangci]
		for i=1,#t do
			msg = msg..'<ItemShow|x='.. 72+(i-1)*75 ..'|y=307.0|width=70|height=70|itemid='.. getidbyname(t[i]) ..'|itemcount=1|showtips=1|bgtype=0>'
		end
	end
	msg=msg..'<Button|x=248.0|y=446.0|size=18|nimg=zhangheng/13.png|color=10051|text=ȷ������|link=@duanzao,'..weiyiid1..','..weiyiid2..','..weiyiid3 ..','.. dangci ..','..chenggonglv..'>'
	----װ��ѡ���
	if xuanzhekuang ~= 0 then
		msg=msg..'<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','..weiyiid3..',0>'
		msg = msg..[[
		<Img|x=75.0|y=133.0|width=434|height=170|esc=0|img=zhangheng/7.png>
		<Img|x=156.0|y=253.0|img=zhangheng/175.png|esc=0>
		
		]]
		local bagitems = getbaglist(actor) --������Ʒ
		local items = {} --��ѡ���װ��Ψһid��
		for i=1,#bagitems do
			if zb_t[getitemname(actor,bagitems[i])] then
				if (dangci == 0 or zb_t[getitemname(actor,bagitems[i])][1] == dangci) then
					local wy_id = getiteminfo(actor,bagitems[i],1)
					if wy_id ~= weiyiid1 and wy_id ~= weiyiid2 and wy_id ~= weiyiid3 then
						table.insert(items,wy_id)
					end
				end
			end
		end
		
		local ziids = ""
		for i = 2002,2002+ #items + 3 do
			ziids = ziids .. i .. ","
		end
		
		local ziid = 2002
		local gaodu = (math.floor((#items-1)/7) + 1) * 55 + 3
		msg = msg ..'<ListView|id=1999|children={2000}|x=82.0|y=139.0|width=420|height=110|margin=0|bounce=0|direction=1>'
		msg = msg ..'<Layout|id=2000|children={2001}|x=0|y=0|width=421|height='..gaodu..'>'
		msg = msg ..'<Layout|id=2001|children={'.. ziids ..'}|x=0|y=0|width=421|height='..gaodu..'>'
		for i = 1,#items do
			--sendmsg6(actor,items[i] .. "  "..hongxzid)
			msg = msg ..'<Img|id='.. ziid ..'|children={item'.. i ..',kuang'..i..'}|x='.. 5+((i-1)%7)*60 ..'|y='.. 3+ math.floor((i-1)/7) * 55  ..'|width=50|height=50|img=zh/2.png>'
			ziid = ziid + 1
			msg = msg ..'<DBItemShow|id=item'.. i ..'|x=-9|y=-10.0|makeindex='.. items[i] ..'|itemcount=1|showtips=1|bgtype=0|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','..weiyiid3..','..xuanzhekuang..','.. items[i] ..'>'
			if xuanzhong == items[i] then
				msg = msg ..'<Img|id=kuang'.. i ..'|x=0.0|y=0.0|width=50|height=50|esc=0|img=zhangheng/39.png>'
			end
		end
		
		if xuanzhekuang == 1 then
			local xuanze = weiyiid1
			if xuanzhong ~= 0 then
				xuanze = xuanzhong
			end
			msg=msg..'<Button|x=339.0|y=259.0|size=18|nimg=zhangheng/13.png|color=10051|text=ȷ��ѡ��|link=@shenzhuang,'..xuanze..','..weiyiid2..','..weiyiid3..','.. 0  ..'>'
			msg=msg..'<Button|x=168.0|y=259.0|nimg=zhangheng/13.png|color=10051|size=18|text=���ѡ��|link=@shenzhuang,'.. 0 ..','..weiyiid2..','..weiyiid3..','.. 0  ..'>'
		elseif xuanzhekuang == 2 then
			local xuanze = weiyiid2
			if xuanzhong ~= 0 then
				xuanze = xuanzhong
			end
			msg=msg..'<Button|x=339.0|y=259.0|size=18|nimg=zhangheng/13.png|color=10051|text=ȷ��ѡ��|link=@shenzhuang,'..weiyiid1..','..xuanze..','..weiyiid3..','.. 0  ..'>'
			msg=msg..'<Button|x=168.0|y=259.0|nimg=zhangheng/13.png|color=10051|size=18|text=���ѡ��|link=@shenzhuang,'..weiyiid1..','.. 0 ..','..weiyiid3..','.. 0  ..'>'
		elseif xuanzhekuang == 3 then
			local xuanze = weiyiid3
			if xuanzhong ~= 0 then
				xuanze = xuanzhong
			end
			msg=msg..'<Button|x=339.0|y=259.0|size=18|nimg=zhangheng/13.png|color=10051|text=ȷ��ѡ��|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','..xuanze..','.. 0  ..'>'
			msg=msg..'<Button|x=168.0|y=259.0|nimg=zhangheng/13.png|color=10051|size=18|text=���ѡ��|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','.. 0 ..','.. 0  ..'>'
		end
	end
	if xianshi == 1 then
		msg=msg..'<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@shenzhuang,'..weiyiid1..','..weiyiid2..','..weiyiid3..'>'
		msg=msg..[[
		<Img|ay=0.5|x=52.0|y=381.0|width=360|height=220|scale9r=10|scale9l=10|scale9b=10|img=zh/7.png|esc=0|scale9t=10>
		<RText|x=64.0|y=280.0|width=80|color=251|size=16|text=�������>
		<RText|x=80.0|y=305.0|width=344|color=255|size=16|text=<սʿS3 �� S5ϵ��/FCOLOR=70>��װ���ɶ����<������װ/FCOLOR=250>>
		<RText|x=80.0|y=330.0|width=344|color=255|size=16|text=<��ʦS3 �� S5ϵ��/FCOLOR=70>��װ���ɶ����<������װ/FCOLOR=250>>
		<RText|x=80.0|y=355.0|width=344|color=255|size=16|text=<��ʿS3 �� S5ϵ��/FCOLOR=70>��װ���ɶ����<�����װ/FCOLOR=250>>
		<RText|x=64.0|y=390.0|width=344|color=251|size=16|text=���켸�ʣ�>
		<RText|x=80.0|y=415.0|width=344|size=16|color=255|text=<S3ϵ��/FCOLOR=242>��װ��������װ�ļ���Ϊ<10%/FCOLOR=250>, <S4ϵ/FCOLOR=242><��/FCOLOR=242>>
		<RText|x=80.0|y=440.0|width=344|size=16|color=255|text=�ļ���Ϊ<30%/FCOLOR=250>, <S5ϵ��/FCOLOR=242>�ļ���Ϊ<90%/FCOLOR=250>, ְͬҵ>
		<RText|x=80.0|y=465.0|width=344|size=16|color=255|text=ϵ��װ�����������,����Խ�߳ɹ���Խ��>
		]]
	end
	say(actor,msg)
end

function duanzao(actor,weiyiid1,weiyiid2,weiyiid3,dangci,chenggonglv)
	weiyiid1 = tonumber(weiyiid1)
	weiyiid2 = tonumber(weiyiid2)
	weiyiid3 = tonumber(weiyiid3)
	dangci = tonumber(dangci)
	chenggonglv = tonumber(chenggonglv)
	if weiyiid1 == 0 and weiyiid2 == 0 and weiyiid3 == 0 then
		sendmsg9(actor,"���������һ��װ��")
		return
	end
	if weiyiid1 ~= 0 then
		local item = getitembymakeindex(actor,weiyiid1)
		if not isinbag(actor,item) then
			sendmsg9(actor,"��ѡ���װ���Ѳ��ڱ���")
			return
		end
	end
	if weiyiid2 ~= 0 then
		local item = getitembymakeindex(actor,weiyiid2)
		if not isinbag(actor,item) then
			sendmsg9(actor,"��ѡ���װ���Ѳ��ڱ���")
			return
		end
	end
	if weiyiid3 ~= 0 then
		local item = getitembymakeindex(actor,weiyiid3)
		if not isinbag(actor,item) then
			sendmsg9(actor,"��ѡ���װ���Ѳ��ڱ���")
			return
		end
	end
	
	if itemcount(actor,"ħ��֮Ѫ") < 3 then
		sendmsg9(actor,"ħ��֮Ѫ����3��")
		return
	end
	if itemcount(actor,"��ˮ����") < 6666 then
		sendmsg9(actor,"��ˮ������6666��")
		return
	end

	takeitem(actor,"ħ��֮Ѫ",3)
	takeitem(actor,"��ˮ����",6666)

	if weiyiid1 ~= 0 then
		delitembymakeindex(actor,""..weiyiid1,1)
	end
	if weiyiid2 ~= 0 then
		delitembymakeindex(actor,""..weiyiid2,1)
	end
	if weiyiid3 ~= 0 then
		delitembymakeindex(actor,""..weiyiid3,1)
	end
	
	if math.random(1,100) > chenggonglv then
		sendmsg9(actor,"���ź�������ʧ�ܣ�")
		return shenzhuang(actor)
	end
	local t = xianshi_t[dangci]
	local givename = t[math.random(1,#t)]
	local giveitem = giveitem(actor,givename)
	setitemaddvalue(actor,giveitem,2,2,249)
	callscriptex(actor, "CallLua", "QFunction-0", "@pickupitemex,"..giveitem)
	sendmsg9(actor,"��ϲ�㣬����ɹ������"..givename)
	sendmsg6(actor,"��ϲ�㣬����ɹ������"..givename)
	return shenzhuang(actor)
end

function getdangci(actor,weiyiid)
	local dc = 0
	local item = getitembymakeindex(actor,weiyiid)
	local name = getitemname(actor,item)
	local dc = zb_t[name][1]
	return dc
end