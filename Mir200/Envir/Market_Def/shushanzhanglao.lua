require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor)
	local msg = ""
	if getint(actor,"�ƽ��������Ƿ���ȡ") == 1 and getint(actor,"�ƽ���������") == 6 and itemcount(actor,"������") < 1 then 
		msg = [[
		<Img|x=0.0|y=0.0|width=480|height=280|reset=1|scale9r=30|scale9t=30|bg=1|scale9b=30|move=0|scale9l=30|loadDelay=1|esc=1|img=zhangheng/176.png|show=0>
		<Button|x=480.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Text|ax=0.5|x=245.0|y=25.0|color=251|size=18|text=��ɽ����>
		<Text|x=65.0|y=55.0|color=161|size=16|text=С�ѣ�û�²�Ҫ�����ҹ�������������أ����Ե�>
		<RText|x=65.0|y=75.0|color=161|size=16|text=Ϫ�����쾻��������Ծ��Ǳ����֪�������һ�����>
		<RText|x=65.0|y=95.0|color=161|size=16|text=ȥ���������������.........>
		<RText|x=65.0|y=125.0|color=161|size=16|text=���ػ���"���"�еĻ���������800��, ��֤������>
		<RText|x=65.0|y=145.0|color=161|size=16|text=��ʿ����õ������κ�ʵ�����㣬���յ��������>
		<RText|x=65.0|y=165.0|color=161|size=16|text=ι���ˣ��Ϸ���ָһ�㣬����������"�����ۺ�"֮>
		<RText|x=65.0|y=185.0|size=16|color=161|text=�ˣ������Ը����Ϸ�<500���ʯ/FCOLOR=253>���ƺ�, �Ҷ�����>
		<RText|x=65.0|y=205.0|size=16|color=161|text=�ɼ���������.....>
		<Text|x=140.0|y=236.0|color=250|size=18|text=Ը��|link=@yuanyi>
		<Text|x=286.0|y=236.0|color=250|size=18|text=��Ը��|link=@exit>

		]]
	else
		msg = [[
		<Img|x=0.0|y=0.0|width=480|height=180|img=zhangheng/176.png|scale9t=30|move=0|loadDelay=1|reset=1|scale9l=30|scale9b=30|show=0|bg=1|scale9r=30|esc=1>
		<Button|x=480.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Text|ax=0.5|x=245.0|y=26.0|size=18|color=251|text=��ɽ����>
		<Text|x=65.0|y=62.0|size=16|color=161|text=С�ѣ�û�²�Ҫ�����ҹ�������������أ����Ե�>
		<RText|x=65.0|y=82.0|size=16|color=161|text=Ϫ�����쾻��������Ծ��Ǳ����֪�������һ�����>
		<RText|x=65.0|y=102.0|size=16|color=161|text=ȥ���������������.........>
		]]
	end
	
	say(actor,msg)
end

function yuanyi(actor)
	if itemcount(actor,"���ʯ") < 500 then
		sendmsg9(actor,"���ʯ����500��")
		return
	end
	takeitem(actor,"���ʯ",500)
	showprogressbardlg(actor,5,"@caijihuxinlian","���ڲɼ�,����%d%...",0)
	close()
end

