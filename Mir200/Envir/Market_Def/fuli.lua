local fuli_anniu = {"��Ѹ���","Ͷ������","Ͷ�ʴ�ʹ","Ͷ�ʴ���","Ͷ��ר��",}
local fuli_xianshi_t = {
	["Ͷ������"] = {
		buffid=10061,dj=1,yb=1800,tubiao=223,shuxing={"<���ﱬ������2%/FCOLOR=161>","<�Թ��˺�����2%/FCOLOR=161>","<���ձ�������10%/FCOLOR=161>","<��������ɳ��������+10%/FCOLOR=161>"},shouyi=20,
		items={{"���",300000},{"���˵�������",1},{"��������",30},{"����֮��",20},{[0]="ʥս����","������","������"}}
	},
	["Ͷ�ʴ�ʹ"] = {
		buffid=10062,dj=2,yb=4800,tubiao=222,shuxing={"<���ﱬ������4%/FCOLOR=161>","<�Թ��˺�����4%/FCOLOR=161>","<���ձ�������20%/FCOLOR=161>","<��������ɳ��������+30%/FCOLOR=161>","<������Ʒ����/FCOLOR=250>","<������Ҳ���װ������/FCOLOR=250>"},shouyi=40,
		items={{"���",600000},{"��������",6},{"��������",30},{"����֮��",40},{[0]="ʥսѫ��","����ѫ��","����ѫ��"}}
	},
	["Ͷ�ʴ���"] = {
		buffid=10063,dj=3,yb=8800,tubiao=221,shuxing={"<���ﱬ������7%/FCOLOR=250>","<�Թ��˺�����7%/FCOLOR=70>","<���ձ�������40%/FCOLOR=254>","<��������ɳ��������+60%/FCOLOR=116>","<��־�������10%/FCOLOR=251>","<���ص�ͼÿ���������������+1/FCOLOR=253>"},shouyi=60,
		items={{"���",1200000},{"��������",9},{"��ҳ",20},{"�ͽ�ֵ",500},{[0]="��������","���涷��","��â����"}}
	},
	["Ͷ��ר��"] = {
		buffid=10064,dj=4,yb=13800,tubiao=224,shuxing={"<���ﱬ������10%/FCOLOR=250>","<�Թ��˺�����10%/FCOLOR=70>","<���ձ�������70%/FCOLOR=254>","<��������ɳ��������+100%/FCOLOR=116>","<��־�������20%/FCOLOR=251>","<���ص�ͼÿ���������������+3/FCOLOR=253>"},shouyi=100,
		items={{"���",1800000},{"��������",12},{"����֮Ѫ",30},{"�ͽ�ֵ",1000},{[0]="����ѫ��","����ѫ��","��âѫ��"}}
	},
}
  

local touzi_t = {
	{jinbi=3000000,yb=2000},
	{jinbi=6000000,yb=4000},
	{jinbi=12000000,yb=6000},
	{jinbi=16000000,yb=8000},
	{jinbi=20000000,yb=10000},
}

function fulishow(actor,anniuid,xianshi,lingquxianshi)
	anniuid = tonumber(anniuid) or 2
	xianshi = tonumber(xianshi) or 0
	lingquxianshi = tonumber(lingquxianshi) or 0
	if anniuid == 1 then
		setint(actor,"��Ѹ������",0)
	end
	local msg = [[
		<Img|x=0|width=636|height=484|bg=1|scale9l=50|scale9r=50|scale9t=50|scale9b=50|move=1|esc=1|loadDelay=1|reset=0|img=zhangheng/1.png|show=4>
		<Button|x=633.0|y=1.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.5|y=39.5|img=zhangheng/216.png|esc=0>
		<Img|x=143.5|y=109.5|height=350|img=zhangheng/219.png|esc=0>
		<Img|x=16.5|y=37.5|img=zhangheng/220.png|esc=0>
		<Button|x=20.0|y=125.0|color=255|size=18|pimg=zhangheng/214.png>
	]]
		
	for i = 1,#fuli_anniu do
		if i == anniuid then
			msg = msg ..'<Button|x=20.0|y='.. 125+(i-1)*60 ..'|size=20|nimg=zhangheng/214.png|pimg=zhangheng/214.png|color=250|outline=2|text='..fuli_anniu[i]..'>'
		else
			msg = msg ..'<Button|x=20.0|y='.. 125+(i-1)*60 ..'|size=20|nimg=zhangheng/214.png|pimg=zhangheng/214.png|color=7|outline=2|text='..fuli_anniu[i]..'|link=@fulishow,'.. i ..'>'
		end
		if getint(actor,"��Ա�ȼ�") < 2 and i == 1 and getint(actor,"��Ѹ������") == 1 then
			msg = msg .. '<Img|x=122.0|y='.. 128+(i-1)*60 ..'|img=zh/100.png|esc=0>'
		end
	end
	if fuli_anniu[anniuid] ~= "��Ѹ���" then
		msg = msg ..'<Img|x=149.0|y=308.0|img=zhangheng/218.png|esc=0>'
		local name = fuli_anniu[anniuid]
		msg = msg ..'<Img|x=241.0|y=120.0|img=zhangheng/'.. fuli_xianshi_t[name].tubiao ..'.png|esc=0>'
		--������ʾ
		local shuxing_t = fuli_xianshi_t[name].shuxing
		for i = 1,#shuxing_t do
			msg = msg ..'<RText|x='.. 160+((i-1)%2)*195 ..'|y='.. 160+ math.floor((i-1)/2)*30 ..'|color=255|outline=1|size=18|text='.. shuxing_t[i] ..'>'
		end
		--����չʾ
		msg = msg ..'<RText|ax=0.5|x=386.0|y=259.0|color=249|size=18|text=Ͷ�ʺ����ȡ<(��Ѹ���)/FCOLOR=251>1-5��<'.. fuli_xianshi_t[name].shouyi ..'%/FCOLOR=250>��Ԫ������>'
		--��Ʒ��ʾ
		local wupin_t = fuli_xianshi_t[name].items
		for i = 1,#wupin_t do
			local iname = ""
			local isl = 1
			if i == 5 then
				iname = wupin_t[i][getjob(actor)]
			else
				iname = wupin_t[i][1]
				isl = wupin_t[i][2]
			end
			msg = msg ..'<Img|x='.. 206+(i-1)*76 ..'|y=291.0|width=50|height=50|scale9t=3|scale9r=3|img=zh/36.png|scale9b=3|scale9l=3|esc=0>'
			msg = msg ..'<ItemShow|x='.. 198+(i-1)*76 ..'|y=283.0|width=70|height=70|itemid='.. getidbyname(iname) ..'|itemcount='.. isl ..'|showtips=1|bgtype=0>'
			
		end
		if getint(actor,"��Ա�ȼ�") >= fuli_xianshi_t[name].dj then
			msg = msg ..'<Button|x=317.0|y=410.0|color=10051|size=18|nimg=zhangheng/217.png|text=�ѻ�ȡ>'
		else
			msg = msg ..'<Button|x=317.0|y=410.0|color=10051|size=18|nimg=zhangheng/217.png|text=��ȡ'..name..'|link=@fuli_huoqu,'..anniuid..'>'
		end
		
		msg=msg..'<RText|a=4|x=384.0|y=388.0|color=70|outline=1|size=18|text=��Ͷ�ʣ�'.. fuli_xianshi_t[fuli_anniu[anniuid]].yb ..'Ԫ��>'
	else
		for i = 1,#touzi_t do
			msg = msg ..'<RText|ax=0|ay=0.5|x=169.0|y='.. 2+135.5+(i-1)*56 ..'|color=255|size=18|outline=1|text=�ύ<'.. touzi_t[i].jinbi/10000 ..'����/FCOLOR=21>����ȡ<'.. touzi_t[i].yb ..'Ԫ��/FCOLOR=254>>'
			if getint(actor,"������ȡ"..i) == 1 then
				msg = msg ..'<Text|ax=0.5|ay=0.5|x=528.0|y='.. 2+135.5+(i-1)*56 ..'|color=249|size=18|text=����ȡ>'
			else
				if getint(actor,"��Ա�ȼ�") == 0 or getsysint("��������") > 0 then --û��Ͷ�ʻ������
					msg = msg ..'<Text|ax=0.5|ay=0.5|x=528.0|y='.. 2+135.5+(i-1)*56 ..'|color=250|size=18|text=��ȡ����|link=@fuli_tishi,'..anniuid..','..i..'>'
				else
					msg = msg ..'<Text|ax=0.5|ay=0.5|x=528.0|y='.. 2+135.5+(i-1)*56 ..'|color=250|size=18|text=��ȡ����|link=@fulishow,'..anniuid..',0,'..i..'>'
				end
			end
			msg = msg ..'<Img|x=152.0|y='.. 5+158+(i-1)*56 ..'|img=zhangheng/203.png|esc=0>'
		end
		msg = msg ..'<Img|x=149.0|y=334.0|img=zhangheng/218.png|esc=0>' --�������
		msg = msg ..'<RText|x=252.0|y=405.0|color=253|size=18|text=��Ͷ�����ں���ǰ��ɸ�����ȡ>'
		msg = msg ..'<RText|x=184.0|y=432.0|color=251|size=18|text=���׬����ҽ����ΪͶ�ʴ�ʹ ���������100%>'
	end
	
	if lingquxianshi >= 1 then
		msg=msg..'<Layout|x=-1000|y=-1000|width=3000|height=3000|link=@fulishow,'..anniuid..'>'
		msg=msg..'<Img|ay=0.5|x=199.0|y=336.0|width=360|height=100|scale9r=10|scale9l=10|esc=0|img=zh/7.png|scale9b=10|scale9t=10>'
		msg=msg..'<RText|ax=0.5|x=382.0|y=302.0|color=255|size=18|text=��ȡ��'.. touzi_t[lingquxianshi].jinbi/10000 ..'���ң��Ƿ�ȷ����ȡ��>'
		msg=msg..'<Button|x=256.0|y=336.0|nimg=zhangheng/13.png|color=10051|size=18|text=ȡ��|link=@fulishow,'..anniuid..'>'
		msg=msg..'<Button|x=410.0|y=336.0|size=18|nimg=zhangheng/13.png|color=10051|text=ȷ����ȡ|link=@fuli_lingqu,'..anniuid..','..lingquxianshi..'>'
	end
	say(actor,msg)
end

function fuli_tishi(actor,anniuid,lingquxianshi)
	anniuid = tonumber(anniuid)
	lingquxianshi = tonumber(lingquxianshi)
	if getsysint("��������") > 0 then
		sendmsg9(actor,"Ͷ�ʷ���������Ч","00FF00")
		return
	end
	
	local gold = touzi_t[lingquxianshi].jinbi --��Ҫ���
	
	if getbindgold(actor) < gold then
		sendmsg9(actor,"��Ľ�Ҳ���")
		return fulishow(actor,anniuid)
	end 
	
	if getgold(actor) < gold then
		sendmsg9(actor,"��ķǰ󶨽�Ҳ���")
		return fulishow(actor,anniuid)
	end
	
	if getint(actor,"��Ա�ȼ�") == 0 then
		sendmsg9(actor,"���Ȼ�ȡͶ�ʳƺ�")
		return fulishow(actor,anniuid)
	end
end
local fuli_bili = {20,40,60,100}
function fuli_lingqu(actor,anniuid,lingquxianshi)
	anniuid = tonumber(anniuid)
	lingquxianshi = tonumber(lingquxianshi)
	if getint(actor,"��ȡ����˳��") + 1 ~= lingquxianshi then
		sendmsg9(actor,"�밴˳����ȡ����")
		return fulishow(actor,anniuid)
	end
	
	if getsysint("��������") > 0 then
		sendmsg9(actor,"Ͷ�ʷ���������Ч","00FF00")
		return
	end
	
	local gold = touzi_t[lingquxianshi].jinbi --��Ҫ���
	local yb = touzi_t[lingquxianshi].yb --��Ԫ��
	local bili = fuli_bili[getint(actor,"��Ա�ȼ�")]/100
	
	
	if getbindgold(actor) < gold then
		sendmsg9(actor,"��Ľ�Ҳ���")
		return fulishow(actor,anniuid)
	end 
	
	if getgold(actor) < gold then
		sendmsg9(actor,"��ķǰ󶨽�Ҳ���")
		return fulishow(actor,anniuid)
	end
	
	if getint(actor,"��Ա�ȼ�") == 0 then
		sendmsg9(actor,"���Ȼ�ȡͶ�ʳƺ�")
		return fulishow(actor,anniuid)
	end
	
	subgold(actor,gold)
	addingot(actor,yb*bili)
	setint(actor,"������ȡ"..lingquxianshi,1)
	setint(actor,"��ȡ����˳��",getint(actor,"��ȡ����˳��")+1)
	sendmsg9(actor,"������ȡ�ɹ������Ԫ��"..yb*bili)
	post(actor,getint(actor,"��Ա�ȼ�").."��Ͷ�ʻ�ȡԪ��*"..yb*bili)
	
	setsysint("��Ѹ�����Ҷһ���Ԫ��",getsysint("��Ѹ�����Ҷһ���Ԫ��")+yb*bili)
	setsysint("ÿ����Ѹ�����Ҷһ���Ԫ��",getsysint("ÿ����Ѹ�����Ҷһ���Ԫ��")+yb*bili)
	
	return fulishow(actor,anniuid)
end

local ming = {"Ͷ������","Ͷ�ʴ�ʹ","Ͷ�ʴ���","Ͷ��ר��"}
function fuli_huoqu(actor,anniuid)
	anniuid = tonumber(anniuid)
	local name = fuli_anniu[anniuid] --��ť����
	local hydj = fuli_xianshi_t[name].dj --Ҫ��ȡ�ĵȼ�
	local wupin_t = fuli_xianshi_t[name].items --Ҫ������Ʒ��
	local yb = fuli_xianshi_t[name].yb --��Ҫ��Ԫ����
	local buffid = fuli_xianshi_t[name].buffid --Ҫ����buffid
	if getint(actor,"��Ա�ȼ�") + 1 ~= hydj then
		sendmsg9(actor,"���Ȼ�ȡ"..ming[hydj-1])
		return fulishow(actor,anniuid)
	end
	
	if getingot(actor) < yb then
		sendmsg9(actor,"Ԫ������")
		return fulishow(actor,anniuid)
	end
	
	if hydj == 1 and getint(actor,"�ۼƳ�ֵ") < 10 then
		sendmsg9(actor,"���Ȼ�ȡ���ĺ���")
		return shouchong_show(actor)
	end
	
	subingot(actor,yb,"Ͷ�ʴ�ʹ")
	addbuff(actor,buffid)
	for i = 1,#wupin_t do
		if wupin_t[i][1] == "���" then
			addbindgold(actor,wupin_t[i][2])
		elseif wupin_t[i][1] == "�ͽ�ֵ" then
			addshangjinzhi(actor,wupin_t[i][2])
		else
			local iname = ""
			local isl = 1
			if i == 5 then
				iname = wupin_t[i][getjob(actor)]
			else
				iname = wupin_t[i][1]
				isl = wupin_t[i][2]
			end
			if iname == "���˵�������" then
				iname = "���˵������"
			end
			giveitem(actor,iname,isl,370)
		end
	end
	setint(actor,"��Ա�ȼ�",hydj)
	sendmsg9(actor,"�ɹ���ȡ"..name)
	
	if hydj == 1 then
		setsysint("����Ͷ������ĸ���",getsysint("����Ͷ������ĸ���")+1)
		setsysint("ÿ�չ���Ͷ������ĸ���",getsysint("ÿ�չ���Ͷ������ĸ���")+1)
	elseif hydj == 2 then
		setsysint("����Ͷ�ʴ�ʹ�ĸ���",getsysint("����Ͷ�ʴ�ʹ�ĸ���")+1)
		setsysint("ÿ�չ���Ͷ�ʴ�ʹ�ĸ���",getsysint("ÿ�չ���Ͷ�ʴ�ʹ�ĸ���")+1)
	elseif hydj == 3 then
		setsysint("����Ͷ�ʴ��˵ĸ���",getsysint("����Ͷ�ʴ��˵ĸ���")+1)
		setsysint("ÿ�չ���Ͷ�ʴ��˵ĸ���",getsysint("ÿ�չ���Ͷ�ʴ��˵ĸ���")+1)
	elseif hydj == 4 then
		setsysint("����Ͷ��ר�ҵĸ���",getsysint("����Ͷ��ר�ҵĸ���")+1)
		setsysint("ÿ�չ���Ͷ��ר�ҵĸ���",getsysint("ÿ�չ���Ͷ��ר�ҵĸ���")+1)
	end
	touzichenghao(actor)
	
	return fulishow(actor,anniuid)
end

local tzch_t = {"Ͷ������","Ͷ�ʴ�ʹ","Ͷ�ʴ���","Ͷ��ר��"}
function touzichenghao(actor)
	for i = 1,#tzch_t do
		if getint(actor,"��Ա�ȼ�") == i then
			if not checktitle(actor,tzch_t[i]) then --û�гƺ�
				confertitle(actor, tzch_t[i])
			end
		else
			if checktitle(actor,tzch_t[i]) then --�гƺ�
				deprivetitle(actor, tzch_t[i])
			end
		end
	end
end
