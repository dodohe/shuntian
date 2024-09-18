
require("Envir/Market_Def/zh.lua") --���˷�װ����
local zhouka_give_t = {{"���ʯ",100},{"����֮��",10},{"���˿",100}}

function zhouka_show(actor)
	local zhouka_day_t = {{"ҩƷ����",100},{"���",500000},{"����ף����",2},{"����֮Ѫ",2},{"�޻군",10}}
	if getkaiquday() >= 11 then
		zhouka_day_t[5][1] = "���Ǿ�"
		zhouka_day_t[5][2] = 2
	end
	local msg = [[
		<Img|show=4|bg=1|loadDelay=1|move=1|esc=1|img=zhangheng/236.png|reset=1>
		<Button|x=360.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Text|x=24.0|y=92.0|color=255|size=18|text=������ã�>	
		<RText|x=20.0|y=356.0|color=255|size=16|text=��ȡ������6800Ԫ�� ��������ȡ7��ÿ�ո���>
		
	]]
	if getkaiquday() >= 2 then
		msg = msg..[[
		<Img|x=359.0|y=129.0|img=zhangheng/237.png|link=@richong_show>
		<Text|x=364.0|y=144.0|size=18|color=7|text=��>
		<Text|x=364.0|y=164.0|size=18|color=7|text=��>
		<Img|x=359.0|y=59.0|img=zhangheng/238.png|link=@kong>
		<Text|x=364.0|y=74.0|color=255|size=18|text=��>
		<Text|x=364.0|y=94.0|color=255|size=18|text=��>
		]]
	end
	
	for i = 1,#zhouka_give_t do
		msg=msg.."<Img|x=".. 130+(i-1)*70 .."|y=74.0|img=zhangheng/231.png|esc=0>"
		msg=msg.."<ItemShow|x=".. 125+(i-1)*70 .."|y=68.0|width=70|height=70|itemid=".. getidbyname(zhouka_give_t[i][1]) .."|itemcount=".. zhouka_give_t[i][2] .."|showtips=1|bgtype=0>"
	end
	
	for i = 1,#zhouka_day_t do
		msg=msg.."<Img|x=".. 23+(i-1)*65 .."|y=201.0|img=zhangheng/231.png|esc=0>"
		msg=msg.."<ItemShow|x=".. 17+(i-1)*65 .."|y=196.0|width=70|height=70|itemid=".. getidbyname(zhouka_day_t[i][1]) .."|itemcount=".. zhouka_day_t[i][2] .."|showtips=1|bgtype=0>"
	end
	if not hasbuff(actor,10067) then
		msg=msg.."<Button|x=145.0|y=292.0|nimg=zhangheng/13.png|color=10051|size=18|text=��ȡ����|link=@huoquzhouka>"
	else
		msg=msg.."<Button|x=145.0|y=292.0|nimg=zhangheng/13.png|color=10051|size=18|text=��ȡ����|link=@zhoukameiri>"
	end
	say(actor,msg)
end

function zhoukameiri(actor)
	local zhouka_day_t = {{"ҩƷ����",100},{"���",500000},{"����ף����",2},{"����֮Ѫ",2},{"�޻군",10}}
	if getkaiquday() >= 11 then
		zhouka_day_t[5][1] = "���Ǿ�"
		zhouka_day_t[5][2] = 2
	end
	if getdayint(actor,"�ܿ�ÿ����ȡ") == 1 then
		sendmsg9(actor,"�������Ѿ���ȡ����")
		return
	end
	if not hasbuff(actor,10067) then
		sendmsg9(actor,"��û������")
		return
	end
	
	setdayint(actor,"�ܿ�ÿ����ȡ",1)
	for i = 1,#zhouka_day_t do
		if zhouka_day_t[i][1] == "���" then
			addbindgold(actor,zhouka_day_t[i][2])
		elseif zhouka_day_t[i][1] == "�ͽ�ֵ" then
			addshangjinzhi(actor,zhouka_day_t[i][2])
		else
			giveitem(actor,zhouka_day_t[i][1],zhouka_day_t[i][2],370)
		end
	end 
	sendmsg9(actor,"��ȡÿ�ո����ɹ�")
end

function huoquzhouka(actor)
	if hasbuff(actor,10067) then
		sendmsg9(actor,"���Ѿ�ӵ��������")
		return
	end
	if getingot(actor) < 6800 then
		sendmsg9(actor,"Ԫ������")
		return
	end
	subingot(actor,6800,"�����ܿ�")
	addbuff(actor,10067)
	for i = 1,#zhouka_give_t do
		giveitem(actor,zhouka_give_t[i][1],zhouka_give_t[i][2],370)
	end 
	sendmsg9(actor,"��ϲ���ȡ����ɹ�")
	return zhouka_show(actor)
end


function richong_show(actor,xianshi,xzid)
	local richong_t = {{"Ԫ��",2800},{"���",1000000},{"���鱦��",10},{"��ˮ����",100},{"�ͽ�ֵ",1000},{"�һ�����",1},}
	if getkaiquday() >= 30 then
		richong_t[5][1] = "������"
		richong_t[5][2] = 10
	end
--[[	if getlevel(actor) >= 75 then
		richong_t[3][1] = "����֮��"
		richong_t[3][2] = 1
	end--]]
	
	xianshi = tonumber(xianshi) or 0
	xzid = tonumber(xzid) or 1
	local msg = [[
		<Img|show=4|bg=1|loadDelay=1|move=0|reset=1|img=zhangheng/239.png|esc=1>
		<Button|x=360.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<RText|x=24.0|y=356.0|color=255|size=18|text=ÿ���ڴ�ҳ���ֵ28Ԫ �ɻ�ó�ֵ����>
		<Img|x=359.0|y=59.0|img=zhangheng/237.png|link=@zhouka_show>
		<Img|x=359.0|y=129.0|img=zhangheng/238.png|link=@kong>
		<Text|x=364.0|y=74.0|size=18|color=7|text=��>
		<Text|x=364.0|y=94.0|size=18|color=7|text=��>
		<Text|x=364.0|y=144.0|size=18|color=255|text=��>
		<Text|x=364.0|y=164.0|size=18|color=255|text=��>
		<Img|x=46.0|y=255.0|width=270|esc=0|img=zhangheng/203.png>
		<Img|x=46.0|y=150.0|width=270|img=zhangheng/203.png|esc=0>

	]]
	if getsysint("��������") >= 2 then
		msg=msg.."<RText|x=188.0|y=192.0|color=251|size=16|text=�����׳���Ч�ʿ�>"
	end
	for i = 1,#richong_t do
		msg=msg.."<Img|x=".. 42+(i-1)%4*74 .."|y=".. 74+math.floor((i-1)/4)*100 .."|img=zhangheng/231.png|esc=0>"
		msg=msg.."<ItemShow|x=".. 37+(i-1)%4*74 .."|y=".. 68+math.floor((i-1)/4)*100 .."|width=70|height=70|itemid=".. getidbyname(richong_t[i][1]) .."|itemcount=".. richong_t[i][2] .."|showtips=1|bgtype=0>"
	end
	if getdayint(actor,"�ճ丣��") == 0 then
		msg=msg.."<Button|x=145.0|y=292.0|nimg=zhangheng/13.png|color=10051|size=18|text=��ȡ����|link=@richong_show,1>"
	else
		msg=msg.."<Button|x=145.0|y=292.0|nimg=zhangheng/13.png|color=10051|size=18|text=�����ѻ�ȡ>"
	end
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@richong_show>"
		msg=msg.."<Img|ay=0.5|x=13.0|y=250.0|width=334|height=160|scale9t=10|scale9l=10|img=zh/7.png|scale9r=10|esc=0|scale9b=10>"
		msg=msg.."<Button|ay=0.5|x=13.0|y=250.0|width=334|height=160|nimg=zhangheng/13.png|opacity=0|link=@kong>"
		msg=msg.."<RText|x=115.0|y=188.0|color=251|size=18|text=��ֵ��28Ԫ>"
		local tu_t = {{90,91},{92,93},{94,95}}
		for i = 1,#tu_t do
			if i == xzid then
				msg=msg.."<Button|x=".. 35+(i-1)*101 .."|y=230.0|nimg=zh/".. tu_t[i][1] ..".png>"
				msg=msg.."<Img|x=".. 103+(i-1)*101 .."|y=230.0|img=zh/".. tu_t[i][2] ..".png>"
			else
				msg=msg.."<Button|x=".. 35+(i-1)*101 .."|y=230.0|nimg=zh/".. tu_t[i][1] ..".png|link=@richong_show,1,"..i..">"
			end
		end
		msg=msg.."<Button|x=137.0|y=284.0|color=10051|size=18|nimg=zhangheng/13.png|text=ȷ����ֵ|link=@huoqurichong,"..xzid..">"
	end
	say(actor,msg)
end

local zhifu_t = {3,1,2}
function huoqurichong(actor,fangshi) -- 1΢�� 2֧���� 3����
	fangshi = tonumber(fangshi)
	if getdayint(actor,"�ճ丣��") == 1 then
		sendmsg9(actor,"���ո�������ȡ")
		return
	end
	pullpay(actor,28,zhifu_t[fangshi],12) --�����ֵ
end

function richong_giveitem(actor)
	local richong_t = {{"Ԫ��",2800},{"���",1000000},{"���鱦��",10},{"��ˮ����",100},{"�ͽ�ֵ",1000},{"�һ�����",1},}
	if getkaiquday() >= 30 then
		richong_t[5][1] = "������"
		richong_t[5][2] = 10
	end
--[[	if getlevel(actor) >= 75 then
		richong_t[3][1] = "����֮��"
		richong_t[3][2] = 1
	end--]]
	for i = 1,#richong_t do
		if richong_t[i][1] == "���" then
			addbindgold(actor,richong_t[i][2])
		elseif richong_t[i][1] == "�ͽ�ֵ" then
			addshangjinzhi(actor,richong_t[i][2])
		elseif richong_t[i][1] == "Ԫ��" then
			addingot(actor,richong_t[i][2])
		elseif richong_t[i][1] == "�һ�����" then
			local curdianshu = getint(actor,"�һ�����")
			local givedianshu = curdianshu + 5000
			if givedianshu > 21600 then
				givedianshu = 21600
			end
			setint(actor,"�һ�����",givedianshu)
		else
			giveitem(actor,richong_t[i][1],richong_t[i][2],370)
		end
	end 
	setdayint(actor,"�ճ丣��",1)
	sendmsg9(actor,"��ϲ���ȡ�ճ丣���ɹ�")
	return richong_show(actor)
end
