require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor)
	local msg = [[
		<Img|move=0|img=public/bg_npc_01.png|loadDelay=1|bg=1|reset=1|show=0>
		<Layout|x=545|y=0|width=80|height=80|link=@exit>
		<Button|x=546|y=0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Text|x=25|y=20|color=255|size=18|text=75�����ֻ��Ҫ 50�����*10 + ��ש*2 ����������76>
		<Text|x=25.0|y=47.0|color=250|size=18|text=ȷ������|link=@shengji>
		<Text|x=25.0|y=83.0|color=255|size=18|text=���1100000+���ʯ>
		<Text|x=25.0|y=110.0|color=255|size=18|text=5������+��>
		<Text|x=25.0|y=137.0|color=255|size=18|text=4����ש+��>
		<Text|x=277.0|y=82.0|color=250|size=18|text=�ϳɽ���|link=@hecheng1>
		<Text|x=277.0|y=112.0|color=250|size=18|text=�ϳɽ�ש|link=@hecheng2>
		<Text|x=277.0|y=142.0|color=250|size=18|text=�ϳɽ��|link=@hecheng3>
	]]
	
	say(actor,msg)
end

function shengji(actor)
	if getlevel(actor) ~= 75 then
		sendmsg9(actor,"75���ſ�������")
		return
	end
	if itemcount(actor,"50�����") < 10 or itemcount(actor,"��ש") < 2 then
		sendmsg9(actor,"�������в���")
		return
	end
	takeitem(actor,"50�����",10)
	takeitem(actor,"��ש",2)
	setlevel(actor,76)
	gmexecute(actor,"jy",getname(actor),0)
end

function hecheng1(actor)
	if getgold(actor) < 1100000 or itemcount(actor,"���ʯ") < 1 then
		sendmsg9(actor,"��������")
		return
	end
	subgold(actor,1100000)
	takeitem(actor,"���ʯ",1)
	giveitem(actor,"����",1)
end

function hecheng2(actor)
	if itemcount(actor,"����") < 5 or itemcount(actor,"��") < 1 then
		sendmsg9(actor,"��������")
		return
	end
	takeitem(actor,"����",5)
	takeitem(actor,"��",1)
	giveitem(actor,"��ש",1)
end

function hecheng3(actor)
	if itemcount(actor,"��ש") < 4 or itemcount(actor,"��") < 1 then
		sendmsg9(actor,"��������")
		return
	end
	takeitem(actor,"��ש",4)
	takeitem(actor,"��",1)
	giveitem(actor,"���",1)
end

