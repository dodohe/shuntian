require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor)
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=�ֿⱣ��Ա>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<Text|x=25.0|y=65.0|color=255|size=18|text=��ã���ʿ�Ϸ���԰��㱣����Ҫ��ƷŶ.....>
		<Text|ay=0.5|x=51.0|y=147.5|size=18|color=250|text=�һ�����|link=@jintiaoshow>
		<Img|x=26.0|y=139.0|img=zhangheng/211.png|esc=0>
		<Text|ay=0.5|x=51.0|y=200.5|size=18|color=250|text=��չ�����ֿ�|link=@kuozhan>
		<Img|x=26.0|y=192.0|img=zhangheng/211.png|esc=0>
		<Text|ay=0.5|x=229.0|y=200.5|size=18|color=251|text=���|link=@opencangku>
		<Img|x=204.0|y=192.0|img=zhangheng/211.png|esc=0>
		<Text|ay=0.5|x=403.0|y=200.5|size=18|color=251|text=ȡ��|link=@opencangku>
		<Img|x=378.0|y=192.0|img=zhangheng/211.png|esc=0>
		<Text|x=25.0|y=95.0|color=249|size=18|outline=1|text=��Ҷһ��ɽ������������м��ۻ�ȡԪ��>

	]]
	
	if getint(actor,"�ۼƳ�ֵ") >= 1000 or getint(actor,"���������ש�ɼ�") == 1 or getint(actor,"�����ȼ�") >= 8 then
		msg=msg.."<Text|ay=0.5|x=229.0|y=147.5|size=18|color=250|text=�һ���ש|link=@jinzhuanshow>"
		msg=msg.."<Img|x=204.0|y=139.0|img=zhangheng/211.png|esc=0>"
	end
	if getbaseinfo(actor,39) >= 1 or getlevel(actor) >= 65 then
		msg=msg.."<Text|ay=0.5|x=403.0|y=147.5|size=18|color=250|text=�һ����|link=@jinheshow>"
		msg=msg.."<Img|x=378.0|y=139.0|img=zhangheng/211.png|esc=0>"
	end
	
	say(actor,msg)
end

function kuozhan(actor)
	callscriptex(actor, "CallLua", "QFunction-0", "@stdmodefunc585") --��չ���
end
function opencangku(actor)
	callfunbynpc(actor, 999999999, 0, 'open_cangku', '') --NPC�����й��ܱ�־ ���Ե��õ������ط�
end
function jinheshow(actor)

	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=�ֿⱣ��Ա>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<Text|x=25.0|y=63.0|color=255|size=18|text=�Ϸ�������԰ѽ�ש�һ��ɽ��,��Ҫ�һ���>
		<Text|ay=0.5|x=403.0|y=205.5|size=18|color=250|text=�һ����|link=@huanjinhe>
		<Img|x=378.0|y=197.0|img=zhangheng/211.png|esc=0>
		<Text|ay=0.5|x=51.0|y=205.5|size=18|color=250|text=������ҳ|link=@show>
		<Img|x=26.0|y=197.0|img=zhangheng/211.png|esc=0>
		<RText|x=25.0|y=133.0|color=161|size=18|text=��Ҫ��<4/FCOLOR=250>���ש+<��������/FCOLOR=253>�ɶһ�һ��<���/FCOLOR=251>>
		<Img|x=162.0|y=114.0|img=zhangheng/231.png|esc=0>

	]]
	msg=msg.."<ItemShow|x=156.0|y=109.0|width=70|height=70|itemid=".. getidbyname("��") .."|itemcount=1|showtips=1|bgtype=0>"
	say(actor,msg)
end

function huanjinhe(actor)
	if itemcount(actor,"��ש") < 4 or itemcount(actor,"��") < 1 then
		sendmsg9(actor,"��������")
		return
	end
	takeitem(actor,"��ש",4)
	takeitem(actor,"��",1)
	giveitem(actor,"���",1)
	sendmsg9(actor,"�һ���гɹ�")
	return jinheshow(actor)
end

function jinzhuanshow(actor)
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=�ֿⱣ��Ա>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<Text|x=25.0|y=63.0|color=255|size=18|text=�Ϸ�������԰ѽ����һ��ɽ�ש,��Ҫ�һ���>
		<Text|ay=0.5|x=403.0|y=205.5|size=18|color=250|text=�һ���ש|link=@huanjinzhuan>
		<Img|x=378.0|y=197.0|img=zhangheng/211.png|esc=0>
		<Text|ay=0.5|x=51.0|y=205.5|size=18|color=250|text=������ҳ|link=@show>
		<Img|x=26.0|y=197.0|img=zhangheng/211.png|esc=0>
		<RText|x=25.0|y=133.0|color=161|size=18|text=��Ҫ��<5/FCOLOR=250>������+<��������/FCOLOR=253>�ɶһ�һ��<��ש/FCOLOR=251>>
		<Img|x=162.0|y=114.0|img=zhangheng/231.png|esc=0>

	]]
	msg=msg.."<ItemShow|x=156.0|y=109.0|width=70|height=70|itemid=".. getidbyname("��") .."|itemcount=1|showtips=1|bgtype=0>"
	say(actor,msg)
end

function huanjinzhuan(actor)
	if itemcount(actor,"����") < 5 or itemcount(actor,"��") < 1 then
		sendmsg9(actor,"��������")
		return
	end
	takeitem(actor,"����",5)
	takeitem(actor,"��",1)
	giveitem(actor,"��ש",1)
	sendmsg9(actor,"�һ���ש�ɹ�")
	return jinzhuanshow(actor)
end

function jintiaoshow(actor)
	if getgold(actor) < 1000000 then
		sendmsg9(actor,"��û��100��ǰ󶨽��")
		return
	end
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=�ֿⱣ��Ա>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<Text|x=25.0|y=63.0|color=255|size=18|text=�Ϸ�������԰ѽ�Ҷһ�����Ŷ,Ҳ�ɰ����н���һ�����ɽ��>
		<Text|ay=0.5|x=403.0|y=205.5|size=18|color=250|text=�һ�����|link=@huanjintiao>
		<Img|x=378.0|y=197.0|img=zhangheng/211.png|esc=0>
		<Text|ay=0.5|x=51.0|y=205.5|size=18|color=250|text=������ҳ|link=@show>
		<Img|x=26.0|y=197.0|img=zhangheng/211.png|esc=0>
		<RText|x=25.0|y=133.0|color=161|size=18|text=��Ҫ��<102��/FCOLOR=250>���+<��������/FCOLOR=253>�ɶһ�һ��<����/FCOLOR=251>>
		<Img|x=182.0|y=114.0|img=zhangheng/231.png|esc=0>
		<Text|ay=0.5|x=203.0|y=205.5|size=18|color=250|text=����һ�������|link=@yijianhuanjin1>
		<Img|x=178.0|y=197.0|img=zhangheng/211.png|esc=0>

	]]
	msg=msg.."<ItemShow|x=176.0|y=109.0|width=70|height=70|itemid=".. getidbyname("���ʯ") .."|itemcount=10|showtips=1|bgtype=0>"
	say(actor,msg)
end

function yijianhuanjin1(actor)
	messagebox(actor,"\n�Ƿ�һ�������н����һ��ɽ�ң�","@yijianhuanjin","@kong")
end

function yijianhuanjin(actor)
	local sl = itemcount(actor,"����")
	if sl == 0 then
		sendmsg9(actor,"��û�н���")
		return
	end
	local goldsl = sl * 1000000
	if getgold(actor) + goldsl > 2100000000 then
		sendmsg9(actor,"������Я��������21�ڣ���������ʹ��")
		return
	end
	takeitem(actor,"����",sl)
	addgold(actor,goldsl)
	sendmsg9(actor,"һ���ɹ��һ�"..sl.."������")
end

function huanjintiao(actor)
	if getgold(actor) < 1020000 and getbindgold(actor) >= 1020000 then
		sendmsg9(actor,"���ķǰ󶨽�Ҳ���102��")
		return
	end
	if getbindgold(actor) < 1020000 then
		sendmsg9(actor,"���Ľ�Ҳ���102��")
		return
	end

	if itemcount(actor,"���ʯ") < 10 then
		sendmsg9(actor,"���ʯ����10��")
		return
	end
	
	
	subgold(actor,1020000)
	takeitem(actor,"���ʯ",10)
	giveitem(actor,"����",1)
	sendmsg9(actor,"�һ������ɹ�")
	post(actor,"�����ϳ�����*1")
end