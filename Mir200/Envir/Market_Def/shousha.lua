require("Envir/Market_Def/zh.lua") --���˷�װ����
local shousha_anniu = {"��ɱ����","��������","�����ѯ","�ؽ���"}

local shousha_t = {
	{mapid="d609",mapname="��򼶴Ѩ",	monname="��֮������",	yb=1000},
	{mapid="d024",mapname="��������",	monname="���֮��",		yb=1000},
	{mapid="d021",mapname="�������",	monname="��˿����",		yb=3000},
	{mapid="d515",mapname="��������",	monname="Զ������̸�",	yb=1000},
	{mapid="zmjt",mapname="�����̳",	monname="�귨�й�",		yb=3000},
	{mapid="jxdt",mapname="ʯĹ��",	monname="����ħ��",		yb=1000},
	{mapid="jxdt",mapname="ʯĹ��",	monname="����֮��",		yb=3000},
	{mapid="d2079",mapname="ţħ����",	monname="������",		yb=1000},
	{mapid="qlsy",mapname="Ǳ����Ԩ",	monname="�Ϲ�����",		yb=3000},
	{mapid="d2067",mapname="��ħ��Ѩ",	monname="����ۻ�",		yb=1000},
	{mapid="hqsy",mapname="��Ȫ��Ԩ",	monname="������",		yb=3000},
	{mapid="d2013",mapname="��ħ����",	monname="��ħڤ��̸�",	yb=1000},
	{mapid="d2001",mapname="ͨ��֮·",	monname="ͨ�����",		yb=3000},
	{mapid="dm002",mapname="������Ĺ",	monname="��ʼ��",		yb=5000},
	{mapid="d10062",mapname="����Ͽ��",	monname="Զ�ų��¶�ħ",	yb=1000},
	{mapid="yhsd",mapname="�̻����",	monname="�̻�����",		yb=5000},
	{mapid="66",mapname="ħ����",		monname="��֮ħ������",	yb=1000},
	{mapid="mld",mapname="ħ����",		monname="аħͳ˧",		yb=3000},
	{mapid="pgjd",mapname="�̹Ž���",	monname="�̹Ŵ��",		yb=3000},
	{mapid="hlsd",mapname="�������",	monname="������",		yb=5000},
	{mapid="h204",mapname="ɳ�ر���",	monname="�ز�ħ��",		yb=3000},
	{mapid="d10071",mapname="���֮Դ",	monname="���֮��",		yb=3000},
	{mapid="maya4",mapname="���Żʹ�",	monname="�����ػ���",	yb=3000},
	{mapid="wlsz",mapname="����ɽׯ",	monname="����ׯ��",		yb=5000},
	{mapid="qxt5",mapname="������",		monname="��������",		yb=5000},
	{mapid="wzad",mapname="δ֪����",	monname="δ֪��ħ",		yb=1000},
	{mapid="wzad",mapname="δ֪����",	monname="δ֪����",		yb=1000},
	{mapid="wzad",mapname="δ֪����",	monname="����",			yb=5000},
	{mapid="mhyj3",mapname="�����ż�",	monname="�������㽣ʥ",	yb=5000},
	{mapid="lzsy3",mapname="��֮����",	monname="����������",	yb=5000},
	{mapid="txmk3",mapname="��Ѫħ��",	monname="��������",	yb=5000},
	{mapid="dlsy4",mapname="������Ԩ",	monname="��Ԩ������",	yb=5000},
	{mapid="thg4",mapname="�һ���",		monname="�һ���ħ����",	yb=5000},
	{mapid="ymgm3",mapname="��ڤ��Ĺ",	monname="��ڤ����ħ��",	yb=10000},
	{mapid="rydy4",mapname="���ҵ���",	monname="������ħ����",	yb=10000},
	
}

local shengjijiangli_t = {
	{dengji=40,jinbi=10000,item={"һ������",5}},
	{dengji=42,jinbi=20000,item={"����֮��",5}},
	{dengji=44,jinbi=40000,item={"��ҳ",2}},
	{dengji=46,jinbi=60000,item={"��������",2}},
	{dengji=48,jinbi=80000,item={"�޻군",2}},
	{dengji=50,jinbi=100000,item={"��ˮ����",40}},
	{dengji=52,jinbi=120000,item={"��ˮ����",60}},
	{dengji=54,jinbi=150000,item={"��ˮ����",80}},
	{dengji=56,jinbi=200000,item={"��ˮ����",100}},
}

function show(actor,anniuid,curye,xianshi)
	xianshi = tonumber(xianshi) or 0
	anniuid = tonumber(anniuid) or 1
	curye = tonumber(curye) or 1
	local msg = [[
	<Img|x=0|width=646|height=473|show=4|scale9r=50|scale9t=50|bg=1|scale9b=50|move=1|scale9l=50|loadDelay=0|esc=1|img=zhangheng/1.png|reset=0>
	<Button|x=642.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	]]
	
	if anniuid == 1 then
		local zongye = math.ceil(#shousha_t/6)
		msg = msg ..'<Img|x=16.5|y=38.5|img=zhangheng/246.png|esc=0>'
		msg = msg ..'<Img|x=128.5|y=39.5|width=498|esc=0|img=zhangheng/247.png>'
		msg = msg ..'<Text|ay=0.5|x=258.5|y=424.5|color=250|size=18|text=��һҳ|link=@fanye,'.. curye - 1 ..'>'
		msg = msg ..'<Text|ax=0.5|ay=0.5|x=374.5|y=424.5|color=255|size=18|text='.. curye ..'/'.. zongye ..'>'
		msg = msg ..'<Text|ay=0.5|x=432.0|y=425.0|color=250|size=18|text=��һҳ|link=@fanye,'.. curye + 1 ..'>'
		
		local xuhao = 1
		local pyy = 39.5
		for i = 1+(curye-1)*6,6+(curye-1)*6 do
			local t = shousha_t[i]
			if t then	
				msg = msg ..'<RText|a=4|x=191|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|outline=1|text=<'.. shousha_t[i].mapname ..'/FCOLOR=161>>'
				msg = msg ..'<RText|a=4|x=315|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|outline=1|text=<'.. shousha_t[i].monname ..'/FCOLOR=150>>'	
				msg = msg ..'<RText|a=4|x=437|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|outline=1|text=<'.. shousha_t[i].yb ..'/FCOLOR=242>>'	
				if getsysint(shousha_t[i].monname) == 1 then
					msg = msg ..'<RText|a=4|x=561.0|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|outline=1|text=<�ѻ�ɱ/FCOLOR=249>>'
				else
					msg = msg ..'<RText|a=4|x=561.0|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|outline=1|text=<δ��ɱ/FCOLOR=250>>'
				end
				xuhao = xuhao + 1
			end
		end
	end
	if anniuid == 2 then
		msg = msg ..'<Img|x=16.5|y=38.5|img=zhangheng/249.png|esc=0>'
		msg = msg ..'<Img|x=128.5|y=39.5|width=498|esc=0|img=zhangheng/250.png>'
		msg = msg ..'<ListView|children={1,2,3,4,5,6,7,8,9,10}|x=129.0|y=128.5|width=500|height=318|bounce=0|reload=0|margin=2|direction=1|loadDelay=0>'
		for i = 1,9 do
			local zis = "name"..i..",".."kuang1"..i..",".."wupin1"..i..",".."kuang2"..i..",".."wupin2"..i..",".."anniu"..i
			msg = msg ..'<Img|id='.. i ..'|children={'..zis..'}|img=zhangheng/251.png>'
			--msg = msg ..'<Img|id=name'.. i ..'|img=zhangheng/251.png>'
			msg = msg ..'<Text|ay=0.5|id=name'.. i ..'|x=30|y=14|outline=2|text=����'.. shengjijiangli_t[i].dengji ..'������|color=250|size=16>'
			msg = msg ..'<Img|id=kuang1'.. i ..'|x=138.0|y=31.0|img=zhangheng/231.png|esc=0>'
			msg = msg ..'<ItemShow|id=wupin1'.. i ..'|x=132.0|y=26.0|width=70|height=70|itemid='.. getidbyname("���") ..'|itemcount='.. shengjijiangli_t[i].jinbi ..'|showtips=1|bgtype=0>'
			msg = msg ..'<Img|id=kuang2'.. i ..'|x=236.0|y=31.0|img=zhangheng/231.png|esc=0>'
			msg = msg ..'<ItemShow|id=wupin2'.. i ..'|x=230.0|y=26.0|width=70|height=70|itemid='.. getidbyname(shengjijiangli_t[i].item[1]) ..'|itemcount='.. shengjijiangli_t[i].item[2] ..'|showtips=1|bgtype=0>'
			if getint(actor,"�ȼ�����"..shengjijiangli_t[i].dengji) == 1 then
				msg = msg ..'<Button|id=anniu'.. i ..'|x=372.0|y=41.0|color=10051|size=18|nimg=zhangheng/13.png|text=����ȡ>'
			else
				msg = msg ..'<Button|id=anniu'.. i ..'|x=372.0|y=41.0|color=10051|size=18|nimg=zhangheng/13.png|text=��ȡ����|link=@lingqudengji,'.. i ..'>'
			end
		end
		
	end
	if anniuid == 3 then
		local geshu = 6
		local diaoluot = getdiaoluodata()
		local zongye = math.ceil(#diaoluot/geshu)
		if zongye == 0 then
			zongye = 1
		end
		msg = msg ..'<Img|x=16.5|y=38.5|img=zhangheng/323.png>'
		msg = msg ..'<Img|x=128.5|y=39.5|width=498|esc=0|img=zhangheng/322.png>'
		msg = msg ..'<Text|ay=0.5|x=258.5|y=424.5|color=250|size=18|text=��һҳ|link=@fanye1,'.. curye - 1 ..'>'
		msg = msg ..'<Text|ax=0.5|ay=0.5|x=374.5|y=424.5|color=255|size=18|text='.. curye ..'/'.. zongye ..'>'
		msg = msg ..'<Text|ay=0.5|x=432.0|y=425.0|color=250|size=18|text=��һҳ|link=@fanye1,'.. curye + 1 ..'>'
		msg = msg ..'<Button|x=589.0|y=411.5|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@show,'..anniuid..','..curye..',1>'

		local xuhao = 1
		local pyy = 39.5
		for i = 1+(curye-1)*geshu,geshu+(curye-1)*geshu do
			local t = diaoluot[i]
			if t then
				--msg = msg ..'<RText|x=134.0|y='.. 132 +(xuhao-1)*pyy ..'|color='..t.yanse..'|size=16|text='..t.shijian..' '..t.ditu..'��'..t.guaiwu..'������'..t.wupin..'>'
				msg = msg ..'<RText|a=4|x=180|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|outline=1|text=<'.. t.shijian ..'/FCOLOR=161>>'
				msg = msg ..'<RText|a=4|x=286|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|outline=1|text=<'.. t.ditu ..'/FCOLOR=150>>'	
				msg = msg ..'<RText|a=4|x=390|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|outline=1|text=<'.. t.guaiwu ..'/FCOLOR=242>>'	
				if #t.wupin > 8 then
					msg = msg ..'<RText|a=4|x=581.0|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|scrollWidth=64|outline=1|text=<'..t.wupin..'/FCOLOR='.. t.yanse ..'>>'
				else
					msg = msg ..'<RText|a=4|x=581.0|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|outline=1|text=<'..t.wupin..'/FCOLOR='.. t.yanse ..'>>'
				end
				if t.name then
					--msg = msg ..'<RText|a=4|x=691.0|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|outline=1|text=<'..t.name..'/FCOLOR=251>>'
					if #t.name > 10 then				
						msg = msg ..'<RText|a=4|x=490.0|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|scrollWidth=90|outline=1|text=<'..t.name..'/FCOLOR=251>>'
					else
						msg = msg ..'<RText|a=4|x=490.0|y='.. 173+13 +(xuhao-1)*pyy ..'|size=16|color=255|outline=1|text=<'..t.name..'/FCOLOR=251>>'
					end
				end
				xuhao = xuhao + 1
			end
		end
	end
	
	if anniuid == 4 then
		msg = msg ..'<Img|x=16.5|y=38.5|img=zhangheng/249.png|esc=0>'
		msg = msg ..'<Img|x=128.5|y=38.5|width=498|esc=0|img=zhangheng/325.png>'	
		msg = msg ..[[
		
		<RText|x=145.0|y=145.0|width=480|size=18|color=255|text=�緢�������ͨ��˽�Ļ���<���������������ϴ���յ�/FCOLOR=254>��>
		<RText|x=145.0|y=175.0|width=480|size=18|color=255|text=ڮ�٣�Ĩ�ڱ��������ķ�ʽȻ����һ�𻻷����������š�>
		<RText|x=145.0|y=205.0|width=480|size=18|color=255|text=���ضԷ��ṩ����Ϸ���ӻᵼ��֧����΢����<ľ����/FCOLOR=250>.>
		<RText|x=145.0|y=235.0|width=480|size=18|color=255|text=�����Ǯ�ƻᱻϴ��һ�գ������е�����΢��Ⱥ��ʮ����>
		<RText|x=145.0|y=265.0|width=480|size=18|color=255|text=������ʵֻ���Լ�һ�����ˣ�<��������ƭ��/FCOLOR=253>�����ִ�����>
		<RText|x=145.0|y=295.0|width=480|size=18|color=255|text=����ר���ͷ��ٱ��ɻ�ñ��ٱ�������50%��ֵ����Ʒ��>
		<RText|x=145.0|y=325.0|width=480|size=18|color=255|text=��������������ϵ���ƭ>
		]]
		
		if getint(actor,"�ش������") == 1 then
			setint(actor,"�ش������",0)
			callscriptex(actor, "CallLua", "QFunction-0", "@tubiaoxianshi")
		end
	end
	
	for i = 1,#shousha_anniu do
		if i == anniuid then
			msg = msg ..'<Button|x=20.0|y='.. 40+(i-1)*50 ..'|width=104|size=18|nimg=zhangheng/248.png|pimg=zhangheng/248.png|color=250|outline=2|text='..shousha_anniu[i]..'>'
		else
			msg = msg ..'<Button|x=20.0|y='.. 40+(i-1)*50 ..'|width=104|size=18|nimg=zhangheng/248.png|pimg=zhangheng/248.png|color=7|outline=2|text='..shousha_anniu[i]..'|link=@show,'.. i ..'>'
		end
		if i == 2 and dengjihongdian(actor) then
			msg = msg .. '<Img|x=110.0|y='.. 40+(i-1)*50 ..'|img=zh/100.png|esc=0>'
		end
		if i == 4 and getint(actor,"�ش������") == 1 then
			msg = msg .. '<Img|x=110.0|y='.. 40+(i-1)*50 ..'|img=zh/100.png|esc=0>'
		end
	end
	
	if xianshi == 1 then
		msg=msg..'<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@show,'..anniuid..','..curye..'>'
		msg =msg..[[
		<Img|ay=0.5|x=233.0|y=371.5|width=350|height=140|scale9t=10|scale9l=10|img=zh/7.png|scale9r=10|esc=0|scale9b=10>
<RText|x=245.0|y=315.5|width=344|size=16|color=255|text=��<������Ʒ/FCOLOR=250>��ʾ�Ǹ���<�����ɱ��/FCOLOR=251>����ʾ��>
<RText|x=261.0|y=337.5|width=344|size=16|color=255|text=<��������װ��ʰȡ��/FCOLOR=254>����ɱ����ܳ��ֵ�>
<RText|x=261.0|y=359.5|width=344|size=16|color=255|text=�߱�����δʰȡ������������ش�����....>
<RText|x=245.0|y=390.5|width=344|size=16|color=255|text=������<����BOSS���ɵ����ռ�װ��/FCOLOR=253>�Լ�����>
<RText|x=261.0|y=412.5|width=344|size=16|color=255|text=����װ����һ��װ��ƾ������ã���ƽ����>

		]]
	end
	
	
	say(actor,msg)
end

function lingqudengji(actor,par)
	par = tonumber(par)
	if getint(actor,"�ȼ�����"..shengjijiangli_t[par].dengji) == 1 then
		sendmsg9(actor,"���Ѿ���ȡ���˵ȼ�����")
		return
	end
	if getlevel(actor) < shengjijiangli_t[par].dengji then
		sendmsg9(actor,"�ȼ�����")
		return
	end
	addbindgold(actor,shengjijiangli_t[par].jinbi)
	giveitem(actor,shengjijiangli_t[par].item[1],shengjijiangli_t[par].item[2],370)
	setint(actor,"�ȼ�����"..shengjijiangli_t[par].dengji,1)
	sendmsg9(actor,"��ȡ�ɹ�")
	callscriptex(actor, "CallLua", "youshangtubiao", "@tubiaoxianshi")
	return show(actor,2)
end

function fanye(actor,par)
	par = tonumber(par)
	local zongye = math.ceil(#shousha_t/6)
	if par < 1 or par > zongye then
		return
	end
	return show(actor,1,par)
end

function fanye1(actor,par)
	local geshu = 6
	par = tonumber(par)
	local diaoluot = getdiaoluodata()
	local zongye = math.ceil(#diaoluot/geshu)
	if zongye == 0 then
		zongye = 1
	end
	if par < 1 or par > zongye then
		return
	end
	return show(actor,3,par)
end
