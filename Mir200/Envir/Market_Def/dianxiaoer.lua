require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor)
	local msg = ""
	if itemcount(actor,"�ƽ��ɵ��Ƽ���") > 0 then 
		msg = [[
		<Img|x=0.0|y=0.0|width=490|height=280|reset=1|scale9r=30|scale9t=30|bg=1|scale9b=30|move=0|scale9l=30|loadDelay=1|esc=1|img=zhangheng/176.png|show=0>
		<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
		<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
		<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=�ƹݵ�С��>
		<RText|x=22.0|y=55.0|color=161|size=16|text=�����ˣ�û�²�Ҫ�����Ұ�ש��������ϰ��￴���Ҹ��㴵ţ>
		<RText|x=22.0|y=77.0|color=161|size=16|text=��Ҫ���ҹ�Ǯ��.......>
		<RText|x=22.0|y=99.0|color=161|size=16|text=ԭ�����Ǿƽ��ɽ��ܹ������ϰ����ѽ����֪���Ƿ���<�Ƽ���/FCOLOR=253>>
		<RText|x=22.0|y=121.0|color=161|size=16|text=������뽻�����Ұɣ�����ϰ���Ƣ�����ã��һ�����һ��<õ/FCOLOR=253>>
		<RText|x=22.0|y=143.0|size=16|color=161|text=<�廨/FCOLOR=253>���㣬���Ժ������˵�������ᴫ��<�����/FCOLOR=250>����Ŷ.......>
		<Text|ax=0.5|x=246.0|y=236.0|color=250|size=18|text=�ύ �� �Ƽ���|link=@tijiaotuijian>
		<Img|x=221.0|y=172.0|width=52|height=52|esc=0|img=zhangheng/104.png>

		]]
		msg =msg..'<ItemShow|x=214.0|y=165.0|width=70|height=70|itemid='.. getidbyname("�ƽ��ɵ��Ƽ���") ..'|itemcount=1|showtips=1|bgtype=0>'
	else
		msg = [[
		<Img|x=0.0|y=0.0|width=490|height=180|scale9t=30|img=zhangheng/176.png|move=0|loadDelay=1|reset=1|scale9l=30|scale9b=30|show=0|bg=1|scale9r=30|esc=1>
		<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
		<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=246.0|y=34.5|size=18|color=251|text=�ƹݵ�С��>
		<Text|x=22.0|y=60.0|size=16|color=161|text=�����ˣ�û�²�Ҫ�����Ұ�ש�� ������ϰ��￴���Ҹ��㴵ţ>
		<RText|x=22.0|y=87.0|size=16|color=161|text=��Ҫ���ҹ�Ǯ��.......>

		]]
	end
	
	say(actor,msg)
end

function tijiaotuijian(actor)
	takeitem(actor,"�ƽ��ɵ��Ƽ���",1)
	giveitem(actor,"õ�廨",1,371)
	sendmsg9(actor,"�ύ�ɹ�")
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
	close()
end

