require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor)
	local msg = ""
	if itemcount(actor,"õ�廨") > 0 then 
		msg = [[
		<Img|x=0.0|y=0.0|width=490|height=280|reset=1|scale9r=30|scale9t=30|bg=1|scale9b=30|move=0|scale9l=30|loadDelay=1|esc=1|img=zhangheng/176.png|show=0>
		<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
		<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=246.0|y=34.5|size=18|color=251|text=�ƹ��ϰ���>
		<Text|x=22.0|y=55.0|size=16|color=161|text=�����ˣ�û�²�Ҫ���������ˣ�����ƹ�����ǳ����æ��>
		<RText|x=22.0|y=77.0|size=16|color=161|text=�ҽ�ͷ�ö�....>
		<RText|x=22.0|y=109.0|size=16|color=161|text=�������Ѱ��һ��<"õ�廨"/FCOLOR=253>װ������ƹ��Ǹö��ѽ�������>
		<RText|x=22.0|y=131.0|size=16|color=161|text=��������Ļ����һᴫ���������Ϊ����......>
		<Text|ax=0.5|x=246.0|y=236.0|color=250|size=18|text=���� �� �����|link=@lingwu>
		<Img|x=221.0|y=172.0|width=52|height=52|esc=0|img=zhangheng/104.png>

		]]
		msg =msg..'<ItemShow|x=214.0|y=165.0|width=70|height=70|itemid='.. getidbyname("õ�廨") ..'|itemcount=1|showtips=1|bgtype=0>'
	elseif getint(actor,"���������") == 1 then 
		msg = [[
		<Img|x=0.0|y=0.0|width=490|height=320|img=zhangheng/176.png|scale9t=30|move=0|loadDelay=1|reset=1|scale9l=30|scale9b=30|show=0|bg=1|scale9r=30|esc=1>
		<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
		<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=�ƹ��ϰ���>
		<Text|x=22.0|y=55.0|color=161|size=16|text=�����ˣ�û�²�Ҫ���������ˣ�����ƹ�����ǳ����æ��>
		<RText|x=22.0|y=77.0|color=161|size=16|text=�ҽ�ͷ�ö�....>
		<RText|x=22.0|y=104.0|color=161|size=16|text=�������Ѱ��һ��<"õ�廨"/FCOLOR=253>װ������ƹ��Ǹö��ѽ�������>
		<RText|x=22.0|y=126.0|color=161|size=16|text=��������Ļ����һᴫ���������Ϊ����......>
		<RText|x=22.0|y=153.0|color=161|size=16|text=������˼���⻨�����Ҳ����⣬�޷�������������㣬�����>
		<RText|x=22.0|y=175.0|size=16|color=161|text=�ܰ�æѰ�ҵ�һ����ש���һ�<100%/FCOLOR=250>���������.......>
		<Text|ax=0.5|x=246.0|y=272.0|color=250|size=18|text=���� �� �����|link=@lingwu1>
		<Img|x=221.0|y=208.0|width=52|height=52|esc=0|img=zhangheng/104.png>

		]]
		msg =msg..'<ItemShow|x=214.0|y=202.0|width=70|height=70|itemid='.. getidbyname("��ש") ..'|itemcount=1|showtips=1|bgtype=0>'
	else
		msg = [[
		<Img|x=0.0|y=0.0|width=490|height=180|reset=1|scale9r=30|scale9t=30|bg=1|scale9b=30|move=0|scale9l=30|loadDelay=1|esc=1|img=zhangheng/176.png|show=0>
		<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
		<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=246.0|y=34.5|size=18|color=251|text=�ƹ��ϰ���>
		<Text|x=22.0|y=60.0|size=16|color=161|text=�����ˣ�û�²�Ҫ���������ˣ�����ƹ�����ǳ����æ��>
		<RText|x=22.0|y=87.0|size=16|color=161|text=�ҽ�ͷ�ö�....>

		]]
	end
	
	say(actor,msg)
end

function lingwu(actor)
	takeitem(actor,"õ�廨",1)
	setint(actor,"���������",1)
	sendmsg9(actor,"����ʧ�ܣ������µ���ϰ�������")
	sendmsg6(actor,"����ʧ�ܣ������µ���ϰ�������")
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
	close()
end

function lingwu1(actor)
	if itemcount(actor,"��ש") < 1 then
		sendmsg9(actor,"��ש����")
		return
	end
	takeitem(actor,"��ש",1)
	setint(actor,"���������",2)
	sendmsg9(actor,"����ɹ�")
	giveitem(actor,"Ȫˮ",1,371)
	giveitem(actor,"����",1,371)
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
	show(actor)
end

