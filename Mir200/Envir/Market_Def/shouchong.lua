
local sc_items= {
	{"�ƹ��佣",1},{"�Զ�����",1},{"���Ч�ʿ�",1},{"˫�������",1},{"�ͽ�ֵ",160},
}

function shouchong_show(actor)
	local msg = [[
	<Img|x=42.0|y=-30.0|esc=1|show=4|bg=1|move=0|img=zhangheng/233.png|loadDelay=1|reset=1>
<Button|x=566.0|y=21.0|nimg=zh/60.png|color=255|size=18|link=@exit>
<Img|x=181.0|y=126.0|width=400|img=zh/25.png|esc=0>
<Button|x=370.0|y=269.0|color=161|nimg=zh/4.png|size=18|text=��Ҫ����|link=@shouchong_lingqu>
<Effect|x=152.0|y=254.0|scale=1|speed=1|dir=5|act=0|effecttype=0|effectid=20008>
<Effect|x=145.0|y=212.0|scale=1|speed=1|effecttype=0|act=0|effectid=20009|dir=5>
<Img|x=241.0|y=212.0|img=zh/103.png|esc=0>


	]]
	for i = 1,#sc_items do
		msg=msg..'<Img|x='.. 249+(i-1)*60 ..'|y=138.0|img=zhangheng/234.png|esc=0>'
		msg=msg..'<ItemShow|x='.. 244+(i-1)*60 ..'|y=133.0|width=70|height=70|itemid='.. getidbyname(sc_items[i][1]) ..'|itemcount='.. sc_items[i][2] ..'|showtips=1|bgtype=0>'
	end
	say(actor,msg)
end

function shouchong_lingqu(actor)
	if getint(actor,"�ۼƳ�ֵ") < 10 then
		sendmsg9(actor,"��ֵ���������ȡ")
		openhyperlink(actor,26,0)
		return
	end
	if getint(actor,"�׳���ȡ") ~= 0 then
		sendmsg9(actor,"���Ѿ���ȡ����")
		return
	end

	setint(actor,"�׳���ȡ",1) 
	giveitem(actor,"�ƹ��佣",1,370)
	giveitem(actor,"˫�������",1,370)
	addshangjinzhi(actor,160)
	
	setsysint("��ȡ�׳�ĸ���",getsysint("��ȡ�׳�ĸ���")+1)
	setsysint("ÿ����ȡ�׳�ĸ���",getsysint("ÿ����ȡ�׳�ĸ���")+1)
	
	local str = "<��ҡ�".. getname(actor) .."��/FCOLOR=251><��ȡ��/FCOLOR=254><�����ĺ���/FCOLOR=251>��<�𲽿���һ��������/FCOLOR=251>"
	sendmsg13(actor,str)
	sendmsg0(actor,"��ҡ�".. getname(actor) .."����ȡ�ˡ����ĺ��񡿣��𲽿���һ��������")
	close()
	if itemcount(actor,"�ƹ��佣") > 2 then
		gmexecute(actor,"DenyCharNameLogon",getname(actor),1)
		callscriptex(actor, "LOGOUT")
		return
	end
	tubiaoxianshi(actor) --ˢ�°�ť
	
end