require("Envir/Market_Def/zh.lua") --���˷�װ����

local items = {
	{xqitem = {"�����",5},jiangli = {{"���",200000}},},
	{xqitem = {"���β�",5},jiangli = {{"���",200000}},},
	{xqitem = {"������",5},jiangli = {{"���",200000}},},
	{xqitem = {"��ڤ��",5},jiangli = {{"���",200000}},},
	{xqitem = {"������",5},jiangli = {{"���",200000}},},
	{xqitem = {"�˲ι���",5},jiangli = {{"���",200000}},},
	{xqitem = {"������",1},jiangli = {{"�ɽ����ƺ�«",1},{"�ƽ��ɵ��Ƽ���",1}},},
}

function show(actor)
	if getsysint("��������") == 0 then
		sendmsg9(actor,"�����󿪷�")
		return
	end
	
	local renwujindu = getint(actor,"�ƽ���������")
	local showid = renwujindu + 1
	if renwujindu >= 7 then
		sendmsg9(actor,"���Ѿ�ӵ�С��ɽ����ƺ�«��")
		return
	end
	local msg = [[
	<Img|x=0.0|y=0.0|width=480|height=380|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|reset=1|scale9l=30|esc=1|img=zhangheng/176.png|show=0>
	<Button|x=480.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Text|ax=0.5|x=252.0|y=25.0|color=251|size=18|text=�ƽ���>
	<Text|x=23.0|y=55.0|color=161|size=16|text=��"�ƽ���"��������ɽѧ�գ��������Ϲ��Ͱ��˰�������ݱ�>
	<RText|x=23.0|y=75.0|color=161|size=16|text=��ɽ�ɽ���������ɽ�������ʦ�ֶ������Ʒ�����ִ,  һ��֮>
	<Text|x=23.0|y=95.0|color=161|size=16|text=����ɽ���Σ�����ʦ�ֿ�Ȱ���ػ���ɽ������ʦ�ִ�����ɽ��>
	<RText|x=23.0|y=115.0|color=161|size=16|text=�ӽ�����������ʱ����������ħȫ��������ұ�ʹ��������>
	<RText|x=23.0|y=135.0|color=161|size=16|text=Ȼ��ɽ���Σ������ģ������������ƣ�ɱ��������ħ>
	<RText|x=23.0|y=160.0|color=161|size=16|text=������������Ƭ����Ĵ�½������ն��������ħ�����и���ˬ>
	<RText|x=23.0|y=180.0|color=161|size=16|text=�ڵ����ƣ���������ǻ���֮�꣬��Ѱ�Ҵ��ˣ������ʿ��Ը>
	<RText|x=23.0|y=200.0|color=161|size=16|text=������ҵĴ��У�<��ÿ����������ȡ�����ܹ��������/FCOLOR=250>����>
	<RText|x=23.0|y=220.0|color=161|size=16|text=������<��������>����.......>
	<RText|x=65.0|y=270.0|size=16|color=70|text=������Ʒ ��>
	<RText|x=235.0|y=270.0|size=16|color=70|text=������ ��>
	<Img|x=156.0|y=252.0|width=52|height=52|rotate=0|esc=0|img=zhangheng/104.png>
	]]
	msg = msg .."<RText|x=23.0|y=335.0|size=16|color=254|text=��ǰ�ƽ���������ȣ�(".. renwujindu .."/7)>"
	if getint(actor,"�ƽ��������Ƿ���ȡ") == 0 then
		msg = msg .."<Text|x=317.0|y=334.0|color=250|size=18|text=��ȡ����|link=@lingqu>"
	else
		msg = msg .."<Text|x=317.0|y=334.0|color=250|size=18|text=�ύ����|link=@tijiao>"	
	end
	--������Ʒ
	msg = msg .."<ItemShow|x=150.0|y=246.0|width=70|height=70|itemid=".. getidbyname(items[showid].xqitem[1]) .."|itemcount=".. items[showid].xqitem[2] .."|showtips=1|bgtype=0>"	
	--������Ʒ
	local give_t = items[showid].jiangli
	for i = 1,#give_t do
		msg = msg .."<Img|x=".. 326+(i-1)*70 .."|y=252.0|width=52|height=52|esc=0|img=zhangheng/104.png>"
		msg = msg .."<ItemShow|x=".. 320+(i-1)*70 .."|y=246.0|width=70|height=70|itemid=".. getidbyname(give_t[i][1]) .."|itemcount=".. give_t[i][2] .."|showtips=1|bgtype=0>"
	end
	say(actor,msg)
end

function lingqu(actor)
	if getdayint(actor,"���վƽ�������") ~= 0 then
		sendmsg9(actor,"ÿ��ֻ����һ����������������")
		return
	end
	setdayint(actor,"���վƽ�������",1)
	setint(actor,"�ƽ��������Ƿ���ȡ",1)
	setint(actor,"�ƽ�������ɱ����",0)
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
	sendmsg9(actor,"��ȡ�ɹ�")
	return show(actor)
end

function tijiao(actor)
	local renwujindu = getint(actor,"�ƽ���������")
	local showid = renwujindu + 1
	local itemname = items[showid].xqitem[1]
	local sl = items[showid].xqitem[2]
	local give_t = items[showid].jiangli
	if itemcount(actor,itemname) < sl then
		sendmsg9(actor,"����δ���")
		return
	end
	
	if getint(actor,"�ƽ�������ɱ����") < 5 then
		sendmsg9(actor,"����δ���")
		return
	end
	
	takeitem(actor,itemname,sl)
	for i = 1,#give_t  do
		if give_t[i][1] == "���" then
			addbindgold(actor,200000)
		else
			local item = giveitem(actor,give_t[i][1],give_t[i][2],371)	
			if give_t[i][1] == "�ɽ����ƺ�«" then
				local t = {
				open=1,  
				show=2,  
				name="����ֵ��",  
				color=254,  
				imgcount=2,  
				cur=0, 
				max=3000, 
				level=0
				}
				setcustomitemprogressbar(actor,item,0,tbl2json(t))
				refreshitem(actor, item)
			end
		end
	end
	setint(actor,"�ƽ��������Ƿ���ȡ",0)
	setint(actor,"�ƽ���������",showid)
	sendmsg9(actor,"�ύ����ɹ�")
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
	if showid == 7 then
		close()
		return
	end
	return show(actor)
end