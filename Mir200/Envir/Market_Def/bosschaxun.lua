

local bossshuaxin_ts = {
	----Ұ��
	[1]={
	{monname="���֮��",mapname="����������",mapid="d024"},
	{monname="��˿����",mapname="��������",mapid="d021"},
	{monname="����ħ��",mapname="�������",mapid="jxdt"},
	{monname="����֮��",mapname="�������",mapid="jxdt"},
	{monname="��ħڤ��̸�",mapname="��ħ��",mapid="d2013"},
	{monname="ͨ�����",mapname="ͨ��֮·",mapid="d2001"},
	{monname="��ʼ��",mapname="������Ĺ",mapid="dm002"},
	{monname="Զ������̸�",mapname="�������֮��",mapid="d515"},

	{monname="�귨�й�",mapname="�����̳",mapid="zmjt"},
	{monname="����ۻ�",mapname="��ħ�����",mapid="d2067"},
	{monname="����ۻ�3",mapname="��ħ�����",mapid="d2067"},
	{monname="������",mapname="��Ȫ��Ԩ",mapid="hqsy"},
	{monname="������",mapname="ţħ�������",mapid="d2079"},
	{monname="�Ϲ�����",mapname="Ǳ����Ԩ",mapid="qlsy"},
	{monname="Զ��˫ͷ���",mapname="���¼�̳",mapid="d10061"},
	{monname="Զ��˫ͷѪħ",mapname="���¼�̳",mapid="d10061"},
	{monname="Զ�ų��¶�ħ",mapname="���³�Ѩ",mapid="d10062"},
	{monname="ħ��а��",mapname="ħ����",mapid="63"},
	
	{monname="��֮ħ������",mapname="ħ��Ѫ��",mapid="66"},
	{monname="��֮ħ������1",mapname="ħ��Ѫ��",mapid="66"},
	{monname="аħͳ˧",mapname="ħ����",mapid="mld"},
	{monname="�ز�ħ��",mapname="ɳ�Ϳ˲ر���",mapid="h204"},
	{monname="Զ�ų��¶�ħ",mapname="���֮Դ",mapid="d10071"},
	{monname="���֮��",mapname="���֮Դ",mapid="d10071"},
	{monname="�����ػ���",mapname="���Żʹ�",mapid="maya4"},
	
	},
	-----18


	
}


function bosschaxunshow(actor,yeshu)
	yeshu = tonumber(yeshu) or 1
	local msg = [[
		<Img|show=4|bg=1|esc=1|loadDelay=0|move=1|reset=0|img=zh/1.png|reload=0>
		<Button|x=780.0|y=10.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Text|x=25.0|y=16.0|outline=2|color=149|size=20|text=BOSS��ѯ>
		<RText|x=69.0|y=64.0|size=18|color=31|text=������>
		<RText|x=271.0|y=64.0|size=18|color=31|text=��ͼ>
		<RText|x=447.0|y=64.0|size=18|color=31|text=ˢ�µ���ʱ>
		<RText|x=649.0|y=64.0|size=18|color=31|text=����>
		<Img|x=30|y=93|width=728|height=364|scale9l=0|scale9b=10|esc=0|scale9r=0|scale9t=10|img=zh/46.png>
		<ListView|children={2}|x=30.0|y=95.0|width=728|height=360|reload=0|margin=1|direction=1|loadDelay=1>
		
	]]
	for i = 1,1 do
		if yeshu == i then
			msg = msg ..'<Button|x='.. 50 + (i-1)* 75 ..'|y=461.0|width=70|height=30|color=250|size=18|nimg=zh/3.png|text=��'..i..'ҳ>'
		else
			msg = msg ..'<Button|x='.. 50 + (i-1)* 75 ..'|y=461.0|width=70|height=30|color=150|size=18|nimg=zh/4.png|text=��'..i..'ҳ|link=@bosschaxunshow,'..i..'>'
		end
	end

	local bossshuaxin_t = bossshuaxin_ts[yeshu]
	
	local pyy = 48
	local gao = pyy * #bossshuaxin_t +4
	local ids = ""
	for i = 3,1000 do
		ids = ids..i..","
	end
	local qsid = 3
	msg = msg ..'<Img|id=2|children={'..ids..'}|x=30.0|y=40.0|width=400|height='..gao..'|img=0.png|esc=0>' --�����ӿؼ�ͼƬ
	for i = 1,#bossshuaxin_t do
		local t = bossshuaxin_t[i]
		msg = msg ..'<Text|id='..qsid..'|x=29.0|y='.. 112-97 +(i-1)*pyy ..'|color=254|size=18|text='.. t.monname ..'>' --������
		qsid = qsid + 1
		msg = msg ..'<Text|id='..qsid..'|x=200.0|y='.. 112-97 +(i-1)*pyy ..'|color=251|size=18|text='.. t.mapname..'>' --��ͼ
		qsid = qsid + 1
		if checkrangemoncount(t.mapid,t.monname,300,300,500) > 0 then
			msg = msg ..'<Text|id='..qsid..'|x=433.0|y='.. 112-97 +(i-1)*pyy ..'|color=249|size=18|text=��ˢ��>' --��ͼ
		else
			msg = msg ..'<Text|id='..qsid..'|x=433.0|y='.. 112-97 +(i-1)*pyy ..'|color=249|size=18|text=δˢ��>' --��ͼ
		end
		qsid = qsid + 1
		
	end
	say(actor,msg)
end
