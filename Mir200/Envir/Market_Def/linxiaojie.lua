require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor,yemian)
	
	local msg = [[
		<Img|x=0.0|y=0.0|width=530|height=290|bg=1|esc=1|scale9r=10|scale9t=10|scale9b=10|move=0|loadDelay=1|scale9l=10|reset=1|img=zhangheng/176.png|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.5|color=251|size=18|text=��С��>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ax=0|ay=0.5|x=22.0|y=72.5|color=255|size=18|text=BOSS�Թ���ͨ���������ıؾ�֮·.�ڶ�BOSS������BOSS>
		<RText|ay=0.5|x=22.0|y=97.5|color=255|size=18|text=�Թ���·�Ҳ�������������ڴ�.��Ҳ������ǧ������Ϊ��ʿ>
		<RText|ay=0.5|x=22.0|y=122.5|color=255|size=18|text=���ҵ���һ˿����.ֻ�ܸ������ĸ��������Թ�������ͨ��<����/FCOLOR=250>>
		<RText|ay=0.5|x=22.0|y=147.5|color=255|size=18|text=<������/FCOLOR=250>�ķ����ҵ�ǰ��������������>
		<RText|ay=0.5|x=23.0|y=172.5|color=255|size=18|text=�˴���������.ǰ���˴���Ҫ�ȼ��ﵽ<58��/FCOLOR=254>���Ҹ���<��ʮ����ˮ/FCOLOR=253>>
		<Text|ay=0.5|x=232.0|y=258.5|size=18|color=250|text=��Ҫǰ��|link=@qianwang>
		<RText|ay=0.5|x=23.0|y=197.5|color=255|size=18|text=<����/FCOLOR=253>.�������<Ͷ��ר��/FCOLOR=251>.ֻҪ��ﵽ<50��/FCOLOR=70>��Ҳ��������ǰ��>
		<RText|x=95.0|y=218.0|color=255|size=18|text=<Ϊ���㵥��ɢ��׷�Σ���СBOSS������ˢ��/FCOLOR=254>>
	]]
	say(actor,msg)
end


function qianwang(actor)
	if getsysint("��������") >=5 then
		if not hasbuff(actor,10001) and not hasbuff(actor,20083) and getint(actor,"���ѻ���֤") == 0 then
			sendmsg9(actor,"���ȿ������ѻ���֤�ſɽ���58�����µ�ͼ","#00ff00")
			return
		end
	end
	
	
	local xqdj = 58
	if getint(actor,"��Ա�ȼ�") >= 4 then
		xqdj = 50
	end
	
	if getlevel(actor) < xqdj then
		if xqdj == 58 then
			sendmsg9(actor,"�����㲻��Ͷ��ר�ң���ȼ��ﵽ58�����ܽ���","#FF00FF")
		else
			sendmsg9(actor,"�ȼ���ﵽ50�����ܽ���","#FF00FF")
		end
		return
	end
	if itemcount(actor,"��ˮ����") < 50 then
		sendmsg9(actor,"��ˮ������50�����޷�����","#FF00FF")
		return
	end
	takeitem(actor,"��ˮ����",50)
	map(actor,"mgrk")
	sendmsg0(actor,"����ϵͳ���¸ҵ���ʿ:��".. getname(actor) .."������BOSS�Թ���ͼѰ�Ҹ߼�װ��ȥ�ˣ����ף�����ɡ�",117,94)
end