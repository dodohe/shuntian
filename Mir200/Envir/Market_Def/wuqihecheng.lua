require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor)
	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
	<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
	<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=��������>
	<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
	<RText|ax=0|ay=0.5|x=22.0|y=70.0|color=255|size=18|text=С���ӣ��Ϸ��Ѿ��ܾ�û���귨��½�ˣ� ���������ر��>
	<RText|ay=0.5|x=22.0|y=95.0|color=255|size=18|text=��Ȼ����������������, �Ǿ������ʶһ���Ϸ�����հ�>
	<RText|ay=0.5|x=22.0|y=120.0|color=255|size=18|text=��Ҫ������ƽ�ϵ��������>
	<RText|ay=0.5|x=22.0|y=145.0|color=255|size=18|text=������Ҫ<����*2+�Ȼ귨��*2+����֮��*2/FCOLOR=250>+100����>
	<RText|ay=0.5|x=22.0|y=170.0|color=255|size=18|text=�������̺��������ԣ�������Ϸ�����...>
	<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
	<Text|x=22.0|y=203.0|color=250|size=18|text=����  ��>
	<Text|x=105.0|y=203.0|color=251|size=18|text=�ƽ�����|link=@hecheng,1>
	<Text|x=220.0|y=203.0|color=251|size=18|text=�����ң��|link=@hecheng,2>
	<Text|x=356.0|y=203.0|color=251|size=18|text=�Ͻ��Ȼ귨��|link=@hecheng,3>

	]]
	say(actor,msg)
end

local givet = {"�ƽ�����","�����ң��","�Ͻ��Ȼ귨��"}
function hecheng(actor,par)
	par = tonumber(par)
	if itemcount(actor,"����") < 2 or itemcount(actor,"�Ȼ귨��") < 2 or itemcount(actor,"����֮��") < 2 then
		sendmsg9(actor,"���ϲ���")
		return
	end
	if getbindgold(actor) < 1000000 then
		sendmsg9(actor,"��Ҳ���")
		return
	end
	takeitem(actor,"����",2)
	takeitem(actor,"�Ȼ귨��",2)
	takeitem(actor,"����֮��",2)
	subbindgold(actor,1000000)
	giveitem(actor,givet[par],1)
	sendmsg9(actor,"����ɹ�")
end