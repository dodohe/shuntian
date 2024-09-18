require("Envir/Market_Def/zh.lua") --���˷�װ����
local dian_t = {
	{x=191.5,y=66.5},
	{x=191.5,y=100.5},
	{x=137.5,y=167.5},
	{x=243.5,y=167.5},
	{x=174.5,y=217.5},
	{x=208.5,y=232.5},
}

local data = {
	[0]={path=116,tupo={{"��������",1}},xiaohao={"һ������",1},jilv=30,jingmai="����",xuewei={"����","����","ͨ��","����","����","���"},sxshow={"����ֵ+1","��������+1","����ֵ+1","ħ������+1",{"��������+1","ħ������+1","��������+1"},{"��������+1","ħ������+1","��������+1"}}},
	{path=117,tupo={{"��������",2},{"���",100000}},xiaohao={"��������",1},jilv=40,jingmai="����",xuewei={"����","����","Ȼ��","���","��ȱ","�պ�"},sxshow={"����ֵ+2","��������+1","����ֵ+2","ħ������+1",{"��������+1","ħ������+1","��������+1"},{"��������+1","ħ������+1","��������+1"}}},
	{path=118,tupo={{"��������",3},{"���",200000}},xiaohao={"��������",1},jilv=50,jingmai="����",xuewei={"����","��Ȫ","����","����","����","����"},sxshow={"����ֵ+3","��������+1","����ֵ+3","ħ������+1",{"��������+1","ħ������+1","��������+1"},{"��������+1","ħ������+1","��������+1"}}},
	{path=119,tupo={{"��������",4},{"���",300000}},xiaohao={"�ļ�����",1},jilv=60,jingmai="����",xuewei={"��ͻ","����","�н�","����","�β","����"},sxshow={"����ֵ+3","��������+1","����ֵ+3","ħ������+1",{"��������+1","ħ������+1","��������+1"},{"��������+1","ħ������+1","��������+1"}}},
	{path=120,tianfudian=1,tupo={{"��������",5},{"���",500000}},xiaohao={"�弶����",1},jilv=70,jingmai="������",xuewei={"����","�и�","��ȱ","����","̫Ԩ","���"},sxshow={"����ֵ+4","��������+1","����ֵ+4","ħ������+1",{"��������+1","ħ������+1","��������+1"},{"��������+1","ħ������+1","��������+1"}}},
	{path=121,tianfudian=1,tupo={{"��������",6},{"����",1}},xiaohao={"��������",1},jilv=80,jingmai="������",xuewei={"�춦","����","����","����","��ͻ","�޹�"},sxshow={"����ֵ+4","��������+1","����ֵ+4","ħ������+1",{"��������+1","ħ������+1","��������+1"},{"��������+1","ħ������+1","��������+1"}}},
	{path=122,tianfudian=1,tupo={{"��������",7},{"����",2}},xiaohao={"�߼�����",1},jilv=90,jingmai="��ά��",xuewei={"��ӭ","��ͥ","����","ȱ��","�¹�","�ز�"},sxshow={"����ֵ+5","��������+2","����ֵ+5","ħ������+2",{"��������+1","ħ������+1","��������+1"},{"��������+1","ħ������+1","��������+1"}}},	
	{path=123,tianfudian=1,tupo={{"��������",8},{"����",3}},xiaohao={"�˼�����",1},jilv=100,jingmai="��ά��",xuewei={"��Ȫ","��Ϫ","���","����","����","����"},sxshow={"����ֵ+5","��������+2","����ֵ+5","ħ������+2",{"��������+1","ħ������+1","��������+1"},{"��������+1","ħ������+1","��������+1"}}},	
	{path=124,tianfudian=1,tupo={{"��������",9},{"����",4}},xiaohao={"�ż�����",1},jilv=100,jingmai="������",xuewei={"����","���","ͨ��","�ٺ�","����","��Ȫ"},sxshow={"����ֵ+5","��������+3","����ֵ+5","ħ������+3",{"��������+1","ħ������+1","��������+1"},{"��������+1","ħ������+1","��������+1"}}},
	{path=125,tianfudian=1,tupo={{"��������",10},{"��ש",1}},xiaohao={"ʮ������",1},jilv=100,jingmai="������",xuewei={"����","����","����","����","����","ǰ��"},sxshow={"����ֵ+5","��������+3","����ֵ+5","ħ������+3",{"��������+1","ħ������+1","��������+1"},{"��������+1","ħ������+1","��������+1"}}},
	{path=125,tianfudian=1,tupo={{"��������",10},{"��ש",1}},xiaohao={"ʮ������",1},jilv=100,jingmai="������",xuewei={"����","����","����","����","����","ǰ��"},sxshow={"����ֵ+5","��������+3","����ֵ+5","ħ������+3",{"��������+1","ħ������+1","��������+1"},{"��������+1","ħ������+1","��������+1"}}},
	
	}
	
local shuju= {
[0]={tpxhaohao={item={{"��������",1}}},xiaohao={"һ������",1},jilv=30,					        buff={{10012,1},{20086,1},{10012,1},{20087,1},{{10015,1},{10017,1},{10019,1}},{{10016,1},{10018,1},{10020,1}}} },
	{tpxhaohao={item={{"��������",2}},jinbi=100000},xiaohao={"��������",1},jilv=40,				buff={{10012,2},{20086,1},{10012,2},{20087,1},{{10015,1},{10017,1},{10019,1}},{{10016,1},{10018,1},{10020,1}}} },
	{tpxhaohao={item={{"��������",3}},jinbi=200000},xiaohao={"��������",1},jilv=50,				buff={{10012,3},{20086,1},{10012,3},{20087,1},{{10015,1},{10017,1},{10019,1}},{{10016,1},{10018,1},{10020,1}}} },
	{tpxhaohao={item={{"��������",4}},jinbi=300000},xiaohao={"�ļ�����",1},jilv=60,				buff={{10012,3},{20086,1},{10012,3},{20087,1},{{10015,1},{10017,1},{10019,1}},{{10016,1},{10018,1},{10020,1}}} },
	{tianfudian=1,tpxhaohao={item={{"��������",5}},jinbi=500000},xiaohao={"�弶����",1},jilv=70,	buff={{10012,4},{20086,1},{10012,4},{20087,1},{{10015,1},{10017,1},{10019,1}},{{10016,1},{10018,1},{10020,1}}} },
	{tianfudian=1,tpxhaohao={item={{"��������",6},{"����",1}}},xiaohao={"��������",1},jilv=80,	buff={{10012,4},{10013,1},{10012,4},{10014,1},{{10015,1},{10017,1},{10019,1}},{{10016,1},{10018,1},{10020,1}}} },
	{tianfudian=1,tpxhaohao={item={{"��������",7},{"����",2}}},xiaohao={"�߼�����",1},jilv=90,	buff={{10012,5},{10013,2},{10012,5},{10014,2},{{10015,1},{10017,1},{10019,1}},{{10016,1},{10018,1},{10020,1}}} },
	{tianfudian=1,tpxhaohao={item={{"��������",8},{"����",3}}},xiaohao={"�˼�����",1},jilv=100,	buff={{10012,5},{10013,2},{10012,5},{10014,2},{{10015,1},{10017,1},{10019,1}},{{10016,1},{10018,1},{10020,1}}} },
	{tianfudian=1,tpxhaohao={item={{"��������",9},{"����",4}}},xiaohao={"�ż�����",1},jilv=100,	buff={{10012,5},{10013,3},{10012,5},{10014,3},{{10015,1},{10017,1},{10019,1}},{{10016,1},{10018,1},{10020,1}}} },
	{tianfudian=1,tpxhaohao={item={{"��������",10},{"��ש",1}}},xiaohao={"ʮ������",1},jilv=100,	buff={{10012,5},{10013,3},{10012,5},{10014,3},{{10015,1},{10017,1},{10019,1}},{{10016,1},{10018,1},{10020,1}}} },
	}

function show(actor)
	local jingmailv = getint(actor,"�����ȼ�")
	local xueweidengji = getint(actor,"Ѩλ�ȼ�")
	if getint(actor,"�������id") == 2 then
		newdeletetask(actor,3) --ɾ������2
		setint(actor,"�������id",3)
		addbindgold(actor,10000)
		changeexp(actor,"+",5000,false)
		callscriptex(actor, "CallLua", "QFunction-0", "@getexp,5000") --���鴥��
		sendmsg9(actor,"�˽��澭������ɣ���ý��*10000������5000")
		callscriptex(actor, "CallLua", "QFunction-0", "@renwupanduan") --����ϵͳ
	end
	
	if getint(actor,"�������id") == 7 and jingmailv > 0 then
		newdeletetask(actor,8) --ɾ������2
		setint(actor,"�������id",8)
		addbindgold(actor,10000)
		changeexp(actor,"+",15000,false)
		callscriptex(actor, "CallLua", "QFunction-0", "@getexp,15000") --���鴥��
		sendmsg9(actor,"��ͨ������ɣ���ý��*10000������15000")
		callscriptex(actor, "CallLua", "QFunction-0", "@renwupanduan") --����ϵͳ
	end
	
	
	local msg = [[
		<Img|x=0|width=643|height=457|esc=1|bg=1|img=zhangheng/1.png|move=1|reset=0|show=4>
		<Button|x=639.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.5|y=39.5|img=zhangheng/113.png|esc=0>
		<Text|x=27.5|y=368.5|color=103|size=16|text=��ʾ��ÿ��ʹ�ý��봩�̳ɹ���ɻ�ö������Լӳ�>
		<Text|x=112.5|y=398.5|color=31|size=16|text=��ԭ���ž��� ���������ڹ�>
		<Img|x=422.5|y=45.5|img=zhangheng/62.png|esc=0>
		<Img|x=414.5|y=236.5|width=200|esc=0|img=zhangheng/99.png>
		
	]]
	
	local t = data[jingmailv]
	local xw_show = 0
	msg=msg.."<Img|x=90.5|y=69.5|img=zhangheng/"..t.path..".png|esc=0>"
	
	for i = 1,6 do
		xw_show = i
		if xueweidengji >= i then
			msg=msg.."<Img|x="..dian_t[i].x.."|y="..dian_t[i].y.."|img=zhangheng/114.png|esc=0>"
		else
			msg=msg.."<Frames|x="..dian_t[i].x.."|y="..dian_t[i].y.."|speed=50|prefix=qijingbamai/dian_|count=2|loop=-1|suffix=.png>"
			break
		end
	end
	msg=msg.."<RText|ax=0.5|ay=0.5|x=546.5|y=61.5|width=100|height=20|size=18|color=95|text="..t.jingmai..">"
	
	if xueweidengji >= 6 then
	-----ͻ�ƽ���
		
		if t.tianfudian then
			msg=msg.."<RText|x=419.5|y=104.5|size=16|color=103|text=ʹ��<���������衱/FCOLOR=70><��ͻ��/FCOLOR=103>>"
			msg=msg.."<RText|ax=0.5|x=514.5|y=145.5||color=250|size=18|text=".. t.jingmai ..">"
			msg=msg.."<RText|x=419.5|y=185.5|size=16|color=103|text=�ɹ���ɻ��<��1���츳��/FCOLOR=116>>"
		else
			msg=msg.."<RText|x=419.5|y=131.5|color=103|size=16|text=ʹ��<���������衱/FCOLOR=70>��ͻ��>"
			msg=msg.."<RText|ax=0.5|x=514.5|y=170.5||color=250|size=18|text=".. t.jingmai ..">"
		end
		if jingmailv >= 10 then
			msg=msg..[[
				<RText|x=460.5|y=278.5|color=161|size=18|text=<�澭��������/FCOLOR=249>>
				<RText|x=432.5|y=316.5|color=161|size=18|text=��Ҫͻ��65����ǰ��>
				<RText|x=432.5|y=343.5|size=18|color=161|text=����ʡ�߼���ʿ֮��>
				<Text|x=478.5|y=370.5|size=18|color=250|text=����ת��|link=@gotogaojiwushi>
			]]
		else
			--msg=msg.."<RText|x=422.5|y=258.5|color=161|size=16|text=������ϣ�>"
			for i = 1,#t.tupo do
				if i == 1 then
					msg=msg.."<RText|x=422.5|y=".. 268.5+(i-1)*40 - 10 .."|color=70|size=16|text=<"..t.tupo[i][1].."��/FCOLOR=116>>"
					msg=msg.."<ItemShow|x=503.5|y=".. 244.5+(i-1)*40 - 10 .."|width=70|height=70|itemid=".. getidbyname(t.tupo[i][1]) .."|itemcount=1|scale=0.75|showtips=1|bgtype=0>"
					msg=msg.."<RText|x=558.5|y=".. 268.5+(i-1)*40 - 10 .."|color=255|size=18|text=<".. itemcount(actor,t.tupo[i][1]) .."/FCOLOR=249>/<".. t.tupo[i][2] .."/FCOLOR=250>>"
				else
					msg=msg.."<RText|x=422.5|y=".. 268.5+(i-1)*40 - 10 .."|color=161|size=16|text=<"..t.tupo[i][1].."��/FCOLOR=251>>"		
					if t.tupo[i][1] == "���" then
						msg=msg.."<ItemShow|x=453.5|y=".. 244.5+(i-1)*40 - 10 .."|width=70|height=70|itemid=".. getidbyname(t.tupo[i][1]) .."|itemcount=1|scale=0.75|showtips=0|bgtype=0>"
						msg=msg.."<RText|x=508.5|y=".. 268.5+(i-1)*40 - 10 .."|color=255|size=18|simplenum=1|text=<".. jianhuanum(getbindgold(actor)) .."/FCOLOR=249>/<".. jianhuanum(t.tupo[i][2]) .."/FCOLOR=250>>"
					else
						msg=msg.."<ItemShow|x=453.5|y=".. 244.5+(i-1)*40 - 10 .."|width=70|height=70|itemid=".. getidbyname(t.tupo[i][1]) .."|itemcount=1|scale=0.75|showtips=1|bgtype=0>"
						msg=msg.."<RText|x=508.5|y=".. 268.5+(i-1)*40 - 10 .."|color=255|size=18|text=<".. itemcount(actor,t.tupo[i][1]) .."/FCOLOR=249>/<".. t.tupo[i][2] .."/FCOLOR=250>>"
					end
				end
			end
			--msg=msg.."<RText|x=422.5|y=283.5|color=161|size=16|text=<"..t.tupo.."/FCOLOR=251>>"
			
			--msg=msg.."<RText|x=422.5|y=338.5|color=161|size=16|text=<ͻ�Ƹ��ʣ�/FCOLOR=161><100%/FCOLOR=254>>"
			msg=msg.."<Button|x=472.5|y=375.5|color=10051|mimg=zhangheng/13.png|size=18|nimg=zhangheng/13.png|text=ȷ��ͻ��|link=@tupoxuewei>"
		end
	else
	-----���̽���
		msg=msg.."<RText|x=422.5|y=101.5|color=161|size=16|text=Ѩλ��<"..t.xuewei[xw_show].."/FCOLOR=128>>"
		local job = getjob(actor)
		if type(t.sxshow[xw_show]) == "table" then
			msg=msg.."<RText|x=422.5|y=141.5|color=161|size=16|text=���ԣ�<"..t.sxshow[xw_show][job+1].."/FCOLOR=128>>"
		else
			msg=msg.."<RText|x=422.5|y=141.5|color=161|size=16|text=���ԣ�<"..t.sxshow[xw_show].."/FCOLOR=128>>"
		end
		msg=msg.."<RText|x=422.5|y=181.5|color=161|size=16|text=��ǰ�ɴ�ͨѨλ��<"..t.xuewei[xw_show].."/FCOLOR=128>>"
		msg=msg.."<RText|x=422.5|y=268.5|color=70|size=16|text=<"..t.xiaohao[1].."��/FCOLOR=116>>"
		msg=msg.."<ItemShow|x=483.5|y=244.5|width=70|height=70|itemid=".. getidbyname(t.xiaohao[1]) .."|itemcount=1|scale=0.75|showtips=1|bgtype=0>"
		msg=msg.."<RText|x=538.5|y=268.5|color=255|size=18|text=<".. itemcount(actor,t.xiaohao[1]) .."/FCOLOR=249>/<".. t.xiaohao[2] .."/FCOLOR=250>>"
		msg=msg.."<RText|x=422.5|y=316.5|color=161|size=16|text=<���̸��ʣ�/FCOLOR=161><"..t.jilv.."%/FCOLOR=254>>"
		msg=msg.."<Button|x=472.5|y=370.5|color=10051|mimg=zhangheng/13.png|size=18|nimg=zhangheng/13.png|text=ȷ������|link=@chuanci>"
	end
	say(actor,msg)
end


	
function chuanci(actor)
	local jingmailv = getint(actor,"�����ȼ�")
	local xueweidengji = getint(actor,"Ѩλ�ȼ�")
	if xueweidengji >= 6 then
		sendmsg9(actor,"����Ѩλ�ѵ���")
		return
	end
	local xiaohaot = shuju[jingmailv].xiaohao
	local jilv = shuju[jingmailv].jilv
	
	if itemcount(actor,xiaohaot[1]) < xiaohaot[2] then
		sendmsg9(actor,"���ϲ���")
		return
	end
	takeitem(actor, xiaohaot[1], xiaohaot[2],0)
	if jingmailv == 0 and getint(actor,"����0ʧ�ܴ���"..xueweidengji) >= 2 then
	else
		if math.random(1,100) > jilv then
			sendmsg9(actor,"����ʧ��")
			if jingmailv == 0 then
				setint(actor,"����0ʧ�ܴ���"..xueweidengji,getint(actor,"����0ʧ�ܴ���"..xueweidengji)+1)
			end
			return show(actor)
		end
	end
	setint(actor,"Ѩλ�ȼ�",xueweidengji+1)
	-- {tpxhaohao={item={{"��������",3}},jinbi=200000},xiaohao={"��������",1},jilv=50,				
	-- buff={{10012,3},{20086,1},{10012,3},{20087,1},{{10015,1},{10017,1},{10019,1}},{{10016,1},{10018,1},{10020,1}}} },

	local bufft = shuju[jingmailv].buff[xueweidengji+1] --{10012,5}
	local buffid = bufft
	local job = getjob(actor)
	if type(bufft[1]) == "table" then
		buffid = bufft[job+1]
	end
	sendmsg9(actor,"����buffid[2]��"..buffid[2])
	for i = 1,buffid[2] do
		sendmsg9(actor, "����buff:"..buffid[1])
		addbuff(actor,buffid[1])
	end
	playeffect(actor,20007,0,0,1,0,0)
	sendmsg9(actor,"���̳ɹ�")
	return show(actor)
end

function tupoxuewei(actor)
	local jingmailv = getint(actor,"�����ȼ�")
	local xueweidengji = getint(actor,"Ѩλ�ȼ�")
	if jingmailv >= 10 then
		sendmsg9(actor,"�����ѵ���")
		return
	end
	
	local xh_t = shuju[jingmailv].tpxhaohao

	if xh_t.jinbi then
		if getbindgold(actor) < xh_t.jinbi then
			sendmsg9(actor,"��������")
			return
		end
	end
	
	for i = 1,#xh_t.item do
		if itemcount(actor,xh_t.item[i][1],2) < xh_t.item[i][2] then
			sendmsg9(actor,"��������")
			return
		end
	end
	for i = 1,#xh_t.item do
		takeitem(actor, xh_t.item[i][1], xh_t.item[i][2],0)
	end
	
	if xh_t.jinbi then
		subbindgold(actor,xh_t.jinbi)
	end
	
	setint(actor,"�����ȼ�",jingmailv+1)
	if jingmailv < 9 then
		setint(actor,"Ѩλ�ȼ�",0)
	end
	if shuju[jingmailv].tianfudian then
		addtianfudian(actor,1)
	end

	sendmsg9(actor,"ͻ�Ƴɹ�")
	return show(actor)
end

function gotogaojiwushi(actor)
	map(actor,"0114")
end