require("Envir/Market_Def/zh.lua") --���˷�װ����
local zsdata = {
	{lv=65,chid="����",hp=20,tianfu=2,item={{"����֮��",10},{"��ש",2},}},
	{lv=66,chid="����",hp=40,tianfu=2,item={{"����֮��",20},{"��ש",3},}},
	{lv=67,chid="�ٹ�",hp=60,tianfu=2,item={{"����֮��",40},{"���",1},}},
	{lv=68,chid="��",hp=80,tianfu=2,item={{"����֮��",80},{"���",1},{"��ש",2},}},
	{lv=69,chid="�ں�",hp=100,tianfu=2,item={{"����֮��",120},{"���",2},}},
	{lv=70,chid="ԪӤ",hp=120,tianfu=2,item={{"����֮��",160},{"���",3},}},
	{lv=71,chid="����",hp=140,tianfu=2,item={{"����֮��",200},{"���",4},}},
	{lv=72,chid="����",hp=160,tianfu=2,item={{"����֮��",240},{"���",5},}},
	{lv=73,chid="����",hp=180,tianfu=3,item={{"����֮��",280},{"���",7},}},
	{lv=74,chid="���",hp=200,tianfu=3,item={{"����֮��",320},{"���",10},}},
}
local zhuanhuanzi = {"��","��","��","��","��","��","��","��","��","��"}
function show(actor,xianshi)
	local jingmailv = getint(actor,"�����ȼ�")
	local xueweidengji = getint(actor,"Ѩλ�ȼ�")
	if jingmailv < 10 or xueweidengji < 6 then
		sendmsg9(actor,"�����ˣ����ͨ���澭�������������Ϸ�..")
		return
	end
	
	xianshi = tonumber(xianshi) or 0
	local msg = [[
		<Img|x=0|width=643|height=457|reset=0|loadDelay=1|bg=1|img=zhangheng/1.png|move=1|esc=1|show=4>
		<Button|x=639.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.5|y=39.5|img=zhangheng/82.png|esc=0>
		<Img|x=202.5|y=48.5|img=zhangheng/84.png|esc=0>
		<Img|x=42.5|y=321.5|img=zhangheng/46.png|esc=0>
		<Button|x=281.5|y=380.5|color=10051|nimg=zhangheng/13.png|size=18|text=ȷ��ת��|link=@zhuansheng>
		<Button|x=18.5|y=396.5|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@show,1>
		<Img|x=54.5|y=114.5|img=zhangheng/85.png|esc=0>
		<Img|x=417.5|y=114.5|img=zhangheng/85.png|esc=0>
		<Frames|x=65.5|y=-8.5|speed=10|prefix=yunwu/yunwu_|loop=-1|count=7|suffix=.png>
		<Img|x=300.5|y=184.5|img=zhangheng/29.png|esc=0>

	]]
	local zslv = getbaseinfo(actor,39) --ת���ȼ�
	local showlv = zslv --������ʾ�ȼ�
	if zslv == 0 then
		showlv = 1
	elseif zslv == 10 then
		showlv = 9
	end
	msg=msg.."<RText|ax=0.5|ay=0.5|x=321.5|y=63.0|color=116|size=18|text=��ǰת����".. zslv .."ת>"
	local job = getjob(actor) --ְҵ
	local hp = zsdata[showlv].hp
	if job == 0 then
		hp = hp * 3
	elseif job == 2 then
		hp = hp * 2
	end
	msg=msg.."<Text|ay=0.5|x=106.5|y=129.0|color=210|size=18|text=".. zhuanhuanzi[showlv] .."ת����>"
	msg=msg.."<Text|x=83.5|y=165.5|color=150|size=16|text=�ȣ����ӣ�".. hp ..">"
	msg=msg.."<Text|x=83.5|y=200.5|color=150|size=16|text=�����츳��".. zsdata[showlv].tianfu ..">"
	msg=msg.."<Text|x=83.5|y=235.5|color=150|size=16|text=����ȼ���".. zsdata[showlv].lv ..">"
	local hp1 = zsdata[showlv+1].hp
	if job == 0 then
		hp1 = hp1 * 3
	elseif job == 2 then
		hp1 = hp1 * 2
	end
	msg=msg.."<Text|ay=0.5|x=473.5|y=129.0|color=210|size=18|text=".. zhuanhuanzi[showlv+1] .."ת����>"
	msg=msg.."<Text|x=440.5|y=165.5|color=150|size=16|text=�ȣ����ӣ�".. hp1 ..">"
	msg=msg.."<Text|x=440.5|y=200.5|color=150|size=16|text=�����츳��".. zsdata[showlv+1].tianfu ..">"
	msg=msg.."<Text|x=440.5|y=235.5|color=150|size=16|text=����ȼ���".. zsdata[showlv+1].lv ..">"
	
	msg=msg.."<RText|x=201.5|y=296.5|color=254|size=18|text=��ǰ����"..getlevel(actor).."����ת������60��>"
	local xhlv = zslv + 1
	if xhlv > 10 then
		xhlv = 10
	end
	local t = zsdata[xhlv].item
	if zslv == 10 then
		msg=msg.."<Text|x=220.5|y=342.5|color=249|size=18|text=��ϲ�㣬ת���Ѵﵽ��ת>"
	else
		if #t == 3 then
			--t[1][1]
			msg=msg.."<Text|x=107.5|y=342.5|color=255|size=18|text=��Ҫ��>"
			msg=msg.."<ItemShow|x=156.5|y=319.5|width=70|height=70|itemid="..getidbyname(t[1][1]).."|itemcount=1|showtips=1|bgtype=0|scale=0.7>"
			msg=msg.."<RText|x=203.5|y=342.5|color=250|size=18|text=<".. itemcount(actor,t[1][1]) .."/FCOLOR=249>/<"..t[1][2].."/FCOLOR=250>>"
			msg=msg.."<ItemShow|x=289.5|y=319.5|width=70|height=70|itemid="..getidbyname(t[2][1]).."|itemcount=1|showtips=1|bgtype=0|scale=0.7>"
			msg=msg.."<RText|x=336.5|y=342.5|color=250|size=18|text=<".. itemcount(actor,t[2][1]) .."/FCOLOR=249>/<"..t[2][2].."/FCOLOR=250>>"
			msg=msg.."<ItemShow|x=422.5|y=319.5|width=70|height=70|itemid="..getidbyname(t[3][1]).."|itemcount=1|showtips=1|bgtype=0|scale=0.7>"
			msg=msg.."<RText|x=469.5|y=342.5|color=250|size=18|text=<".. itemcount(actor,t[3][1]) .."/FCOLOR=249>/<"..t[3][2].."/FCOLOR=250>>"
		elseif #t == 2 then
			msg=msg.."<Text|x=162.5|y=337.5|color=255|size=18|text=��Ҫ��>"
			msg=msg.."<ItemShow|x=211.5|y=314.5|width=70|height=70|itemid="..getidbyname(t[1][1]).."|itemcount=1|showtips=1|bgtype=0|scale=0.7>"
			msg=msg.." <RText|x=258.5|y=337.5|color=250|size=18|text=<".. itemcount(actor,t[1][1]) .."/FCOLOR=249>/<"..t[1][2].."/FCOLOR=250>>"
			msg=msg.."<ItemShow|x=344.5|y=314.5|width=70|height=70|itemid="..getidbyname(t[2][1]).."|itemcount=1|showtips=1|bgtype=0|scale=0.7>"
			msg=msg.."<RText|x=391.5|y=337.5|color=250|size=18|text=<".. itemcount(actor,t[2][1]) .."/FCOLOR=249>/<"..t[2][2].."/FCOLOR=250>>"
		end
	end
		
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@show>"
		msg =msg..[[
		<Img|ay=0.5|x=52.0|y=296.0|width=370|height=260|scale9t=10|scale9b=10|img=zh/7.png|scale9r=10|esc=0|scale9l=10>
		<RText|x=210.0|y=177.0|color=251|size=16|text=ת��˵��>
		<RText|x=64.0|y=206.0|width=344|color=255|size=16|text=��ÿ��ת���ɹ�������ȼ�����+1����60��>
		<RText|x=80.0|y=226.0|width=344|color=255|size=16|text=ϵͳ����<"�츳��"/FCOLOR=250>��ת��Խ�߻�õ��츳>
		<RText|x=80.0|y=247.0|width=344|color=255|size=16|text=��Խ��>
		<RText|x=64.0|y=271.0|width=344|color=255|size=16|text=������ת���ȼ��ﵽ5ת�Զ�����<������>>
		<RText|x=80.0|y=291.0|width=344|color=255|size=16|text=սʿ����<"���ս���"/FCOLOR=250>>
		<RText|x=80.0|y=311.0|width=344|color=255|size=16|text=��ʦ����<"���ǻ���"/FCOLOR=250>>
		<RText|x=80.0|y=331.0|width=344|color=255|size=16|text=��ʿ����<"�޼�����"/FCOLOR=250>>
		<RText|x=80.0|y=351.0|width=344|color=255|size=16|text=ת���ȼ�Խ�ߣ������񼼷��ӵ�<����>Խǿ>
		<RText|x=80.0|y=371.0|width=344|color=255|size=16|text=8ת<����2��/FCOLOR=250>,10ת<����3��/FCOLOR=250>>
		<RText|x=64.0|y=395.0|width=344|color=255|size=16|text=����ת���ﵽ10ת��ÿ�տɻ�ô���Ȩ��"20��">

		]]
	end
	
	say(actor,msg)
end

local skillt = {[0]="���ս���",[1]="���ǻ���",[2]="�޼�����"}
function zhuansheng(actor)
	local zslv = getbaseinfo(actor,39) --ת���ȼ�
	local lv = getlevel(actor) --�ȼ�
	local job = getjob(actor) --ְҵ
	if zslv >= 10 then
		sendmsg9(actor,"���Ѿ���ת��")
		return
	end
	local shuju = zsdata[zslv+1]
	
	if lv < shuju.lv then
		sendmsg9(actor,"�ȼ�����"..shuju.lv.."��")
		return
	end
	
	for i = 1,#shuju.item do
		if itemcount(actor,shuju.item[i][1],2) < shuju.item[i][2] then
			sendmsg9(actor,"���ϲ���")
			return
		end
	end
	for i = 1,#shuju.item do
		takeitem(actor, shuju.item[i][1], shuju.item[i][2],0)
	end
	confertitle(actor,shuju.chid)
	if zslv > 0 then
		deprivetitle(actor,zsdata[zslv].chid)
	end
	setbaseinfo(actor,39,zslv+1)
	setlevel(actor,60)
	addtianfudian(actor,shuju.tianfu) --���츳��
	sendmsg9(actor,"ת���ɹ�")
	recalcabilitys(actor)
	
	local skillid = getskillidbyname(skillt[job])
	if zslv + 1 == 5 then
		addskill(actor, skillid, 1)
	elseif zslv + 1 == 8 then
		setskillinfo(actor, skillid, 1,2)
	elseif zslv + 1 == 10 then
		setskillinfo(actor, skillid, 1,3)
		callscriptex(actor, "CallLua", "QFunction-0", "@ditujiemian") --���ô��ʹ���
	end
	callscriptex(actor, "CallLua", "QFunction-0", "@zhuangtaijiemian") --����״̬����
	
	setjingyanbeilv(actor)
	return show(actor)
end

function setjingyanbeilv(actor)
	local zslv = getbaseinfo(actor,39) --ת���ȼ�
	if zslv >= 7 then
		setbaseinfo(actor,40,70)
	elseif zslv >= 6 then
		setbaseinfo(actor,40,75)
	elseif zslv >= 5 then
		setbaseinfo(actor,40,80)
	elseif zslv >= 4 then
		setbaseinfo(actor,40,85)
	elseif zslv >= 3 then
		setbaseinfo(actor,40,90)	
	end
end
