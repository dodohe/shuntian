require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor,xianshi)
	xianshi = tonumber(xianshi) or 0
	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
	<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
	<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=������>
	<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
	<RText|ax=0|ay=0.5|x=22.0|y=70.0|color=255|size=18|text=С�ӣ�������պò��ͭ��ʯ���Ͻ�������л��м����ڵ�>
	<RText|ay=0.5|x=22.0|y=95.5|color=255|size=18|text=���ʯ����������ʹ��ˣ��ڲ����ˣ����Ի����鷳�������>
	<RText|ay=0.5|x=22.0|y=120.5|color=255|size=18|text=��<50��ͭ��/FCOLOR=250>��ÿ��ɰ����Ϸ�<2��/FCOLOR=250>����Ȼ�һ����һ���ı���>
	<RText|ay=0.5|x=22.0|y=158.5|color=251|size=18|text=��������>
	<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
	<Img|x=121.0|y=135.0|width=50|height=50|scale9r=5|scale9l=5|esc=0|img=zhangheng/104.png|scale9b=5|scale9t=5>
	<Img|x=186.0|y=135.0|width=50|height=50|scale9r=5|scale9l=5|esc=0|img=zhangheng/104.png|scale9b=5|scale9t=5>
	<Text|x=213.0|y=165.0|color=255|size=18|text=10>
	<Text|ay=0.5|x=333.0|y=214.5|size=18|color=250|text=�Ͻ��|link=@goto>
	]]
	
	if getint(actor,"�ڿ�����") == 0 then
		msg=msg.."<Text|ay=0.5|x=122.0|y=214.5|size=18|color=250|text=��ȡ����||link=@lingqu>"
	else
		msg=msg.."<Text|ay=0.5|x=122.0|y=214.5|size=18|color=250|text=�ύ����|link=@show,1>"
	end
	msg=msg.."<ItemShow|x=113.0|y=128.0|width=70|height=70|itemid=".. getidbyname("���齱��") .."|itemcount=1|showtips=1|bgtype=0>"
	msg=msg.."<ItemShow|x=178.0|y=127.0|width=70|height=70|itemid=".. getidbyname("������ʯ") .."|itemcount=1|showtips=1|bgtype=0>"
	
	if xianshi == 1 then
		msg = msg ..[[
		<Layout|ay=0.5|x=-1000|y=-1000|width=3000|height=110|color=3000>|link=@laoren>
		<Img|ay=0.5|x=77.0|y=132.0|width=300|height=110|scale9l=10|esc=0|img=zh/7.png|scale9r=10|scale9t=10|scale9b=10>
		<RText|x=106.0|y=90.0|size=16|color=255|text=�ύ�����������г�ͷ��ͭ��ʯ>
		<RText|x=106.0|y=115.0|size=16|color=255|text=��ȷ���ύ��>
		<Button|x=112.0|y=141.0|color=10051|nimg=zhangheng/13.png|size=18|text=ȷ���ύ|link=@tijiao>
		<Button|x=253.0|y=141.0|color=10051|nimg=zhangheng/13.png|size=18|text=��Ը��|link=@show>
		]]
	end
	if xianshi == 2 then
		msg = msg ..[[
		<Layout|ay=0.5|x=-1000|y=-1000|width=3000|height=110|color=3000>|link=@laoren>
		<Img|ay=0.5|x=77.0|y=132.0|width=300|height=110|scale9l=10|esc=0|img=zh/7.png|scale9r=10|scale9t=10|scale9b=10>
		<RText|x=101.0|y=95.0|color=253|size=16|text=�����Ͻ��Ѱ�ҿ����˻�ó�ͷ>
		<Button|x=184.0|y=137.0|color=10051|nimg=zhangheng/13.png|size=18|text=��֪����|link=@show>


		]]
	end
	
	say(actor,msg)
end

function lingqu(actor)
	if getlevel(actor) >= 65 and getjingyan(actor)/getbaseinfo(actor, 14)*100 >= 95 then
		sendmsg9(actor,"Ϊ��ֹ��Ϸ���ݳ����µȼ����� ��ǰ����ֵ����95%���������������")
		return
	end
	
	
	if getdayint(actor,"�ڿ���ȡ") >= 2 then
		sendmsg9(actor,"ÿ��ֻ�ܽ�ȡ2������")
		return
	end
	if getlevel(actor) < 50 then
		sendmsg9(actor,"��ʾ����̫���ˣ���Ҫ�ȼ��ﵽ50��")
		return
	end
	setint(actor,"�ڿ�����",1)
	sendmsg9(actor,"��ȡ����ɹ�")
	setdayint(actor,"�ڿ���ȡ",getdayint(actor,"�ڿ���ȡ")+1)
	wakuang_xianshi(actor)
	return show(actor,2)
end

function goto(actor)
	if getlevel(actor) < 50 then
		sendmsg9(actor,"��ʾ����̫���ˣ���Ҫ�ȼ��ﵽ50��")
		return
	end
	map(actor,"zjkd")
	
end

function goumai(actor,par)
	if par == "1" then
		if not subingot(actor,500,"�����ͷ") then
			sendmsg9(actor,"Ԫ������500")
			return
		end
	else
		if itemcount(actor,"��ˮ����") < 250 then
			sendmsg9(actor,"��ˮ������")
			return
		end
		takeitem(actor,"��ˮ����",250)
	end
	giveitem(actor,"�����",1,371)
	setint(actor,"�к����",1)
	return laoren(actor)
end
function kong(actor)
end


function wakuang_xianshi(actor)
	setint(actor,"�ڿ�������ʾ",1) --
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --�ڿ�������ʾ
end

function tijiao(actor)
	if getint(actor,"�ڿ�����") == 0 then
		sendmsg9(actor,"��û�н�ȡ����")
		return
	end
	
	if itemcount(actor,"ͭ��ʯ") < 50 then
		sendmsg9(actor,"ͭ��ʯ����50��")
		return
	end
	takeitem(actor,"ͭ��ʯ",50)
	if itemcount(actor,"�����") > 0 then
		takeitem(actor,"�����",itemcount(actor,"�����"))
	end
	local item = linkbodyitem(actor,1)
	if item ~= "0" then
		if getitemname(actor,item) == "�����" then
			callscriptex(actor, "takew", "�����")
		end
	end
	setint(actor,"�к����",0)
	local jingyan = math.floor(getbaseinfo(actor,14)*0.025)
	if getdayint(actor,"�ճ�") > 0 then
		jingyan = jingyan * 2
	end
	if getlevel(actor) < 75 then
		changeexp(actor,"+",jingyan,false)
		callscriptex(actor, "CallLua", "QFunction-0", "@getexp,"..jingyan) --���鴥��
	end
	giveitem(actor,"������ʯ",10)
	setint(actor,"�ڿ�����",0)
	setint(actor,"�ڿ�������ʾ",0) --
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --�ڿ�������ʾ
	if getlevel(actor) < 75 then
		sendmsg9(actor,"�ύ����ɹ�����þ���".. jingyan ..",������ʯ*10")
	else
		sendmsg9(actor,"�ύ����ɹ�����ú�����ʯ*10")
	end
	return show(actor)
end

function laoren(actor,xianshi)
	xianshi = tonumber(xianshi) or 0
	if xianshi == 1 and getint(actor,"�к����") == 1 then
		sendmsg9(actor,"���Ѿ��к�����ˣ������ظ�����")
		return
	end
	
	if getint(actor,"�ڿ�����") == 0 then
		sendmsg9(actor,"��ʿ��������ȡ�ڿ������������Ұ�....","#00FF00")
		return
	end
	
	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
	<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
	<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=�ؿ�����>
	<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
	<RText|ax=0|ay=0.5|x=45.0|y=70.5|color=255|size=18|text=��ʿ����Ҫ��ÿ�ʯ����Ҫһ�ѳ��ֵĳ�ͷ���պ��Ϸ�>
	<RText|ay=0.5|x=45.0|y=95.5|color=255|size=18|text=�����в�������Ҫ����һЩ����!>
	<RText|ay=0.5|x=45.0|y=120.5|color=255|size=18|text=��˵���<�ճ�/FCOLOR=253>����ʿ�ύ����ʱ�ɻ��<˫��/FCOLOR=253>����ֵ>
	<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
	<Img|x=121.0|y=135.0|width=50|height=50|scale9r=5|scale9t=5|scale9l=5|img=zhangheng/104.png|scale9b=5|esc=0>
	<Text|ay=0.5|x=333.0|y=160.5|size=18|color=250|text=��ȡ��ͷ|link=@laoren,1>
	<RText|ay=0.5|x=45.0|y=215.5|color=255|size=18|text=<��ܰ��ʾ��><�ڿ�ʱΪ��ֹ�����������뾡�����������/FCOLOR=254>>

	]]
	msg=msg.."<ItemShow|x=113.0|y=128.0|width=70|height=70|itemid=".. getidbyname("�����") .."|itemcount=1|showtips=1|bgtype=0>"
	if xianshi == 1 then
		msg=msg..[[
		<Layout|ay=0.5|x=-1000|y=-1000|width=3000|height=110|color=3000>|link=@laoren>
		<Img|ay=0.5|x=77.0|y=132.0|width=400|height=110|scale9r=10|scale9l=10|scale9b=10|img=zh/7.png|scale9t=10|esc=0>
		<RText|x=106.0|y=90.0|size=16|color=255|text=�����Ϸ�<500Ԫ��/FCOLOR=250>��<250����ˮ����/FCOLOR=253>���Ը�⣿>
		<RText|x=106.0|y=110.0|color=255|size=16|text=���һ�������һ��<����ĳ�ͷ/FCOLOR=249>>
		<Button|x=157.0|y=140.0|color=10051|nimg=zhangheng/13.png|size=18|text=��Ԫ��|link=@goumai,1>
		<Button|x=312.0|y=140.0|color=10051|nimg=zhangheng/13.png|size=18|text=����ˮ����|link=@goumai,2>

		]]
	end
	say(actor,msg)
end