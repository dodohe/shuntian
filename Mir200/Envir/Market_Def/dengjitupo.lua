require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor)
	if getlevel(actor) < 70 then
		sendmsg9(actor,"�Ϸ���������,�벻Ҫ��������...")
		return
	elseif getlevel(actor) < 75 then
		sendmsg9(actor,"С����, �����ĥ���ȼ��ﵽ75���������Ϸ�")
		return
	end
	
	local msg = [[
		<Img|width=530|height=340|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Img|x=9.0|y=8.0|height=322|scale9r=50|scale9t=50|esc=0|img=zhangheng/210.png|scale9b=50|scale9l=50>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=������>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<Img|x=34.0|y=265.0|img=zhangheng/203.png|esc=0>
		<RText|x=22.0|y=60.0|color=255|size=18|text=����Ƭ�귨��½��ֻ��ǿ�߲������㣬Ψ�����߲���ͻ������>
		<RText|x=22.0|y=85.0|size=18|color=255|text=75������սɳ�ǵ�Ӳ�ȣ���<76��/FCOLOR=149>���Ƕ����귨�ĸ߶ȣ������>
		<RText|x=22.0|y=110.0|color=255|size=18|text=Ը���Ϸ�������Խ����ѹأ��ɾ��Լ��Ĵ���...>
		<RText|x=22.0|y=140.0|color=255|size=18|text=�Ϸ������ṩ���ַ�ʽ��ͻ����76�����������ﱻ���˻�ɱ��>
		<RText|x=22.0|y=165.0|size=18|color=255|text=���Զ�<����75��/FCOLOR=249>������Ϸ<��ߵȼ�Ϊ76��/FCOLOR=254>..>
		<Text|x=117.0|y=286.0|color=250|size=18|text=��שͻ��|link=@tupo,1>
		<Text|x=346.0|y=286.0|color=250|size=18|text=Ԫ��ͻ��|link=@tupo,2>
	]]
	
	msg=msg.."<RText|x=22.0|y=200.0|color=255|size=18|text=ʹ�ò��ϣ�75��+<".. itemcount(actor,"50�����") .."/FCOLOR=249>/<10/FCOLOR=250>��<��ʮ�����/FCOLOR=253>+<".. itemcount(actor,"��ש") .."/FCOLOR=249>/<2��/FCOLOR=250><��ש/FCOLOR=70>>"
	msg=msg.."<RText|x=22.0|y=231.0|color=255|size=18|text=ʹ��Ԫ����75��+<".. itemcount(actor,"50�����") .."/FCOLOR=249>/<10/FCOLOR=250>��<��ʮ�����/FCOLOR=253>+<".. getingot(actor) .."/FCOLOR=249>/<5ǧ/FCOLOR=250><Ԫ��/FCOLOR=70>>"
		
	say(actor,msg)
end

function tupo(actor,par)
	par = tonumber(par)
	if getlevel(actor) >= 76 then
		sendmsg9(actor,"���Ѵﱾ����ߵȼ�76��","#00FF00")
		return
	end
	
	if getlevel(actor) ~= 75 then
		sendmsg9(actor,"ֻ��75������������������")
		return
	end

	if par == 1 then
		if itemcount(actor,"50�����") < 10 or itemcount(actor,"��ש") < 2 then
			sendmsg9(actor,"����������")
			return
		end
		takeitem(actor,"50�����",10)
		takeitem(actor,"��ש",2)
		
	else
		if itemcount(actor,"50�����") < 10 or getingot(actor) < 5000 then
			sendmsg9(actor,"����������")
			return
		end
		takeitem(actor,"50�����",10)
		subingot(actor,5000)
	end
	setlevel(actor,76)
	gmexecute(actor,"jy",getname(actor),0)
	sendmsg9(actor,"��ϲ��ɹ�������76��")
	return show(actor)
end
