require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor)
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=���Ĵ���>
<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
<RText|ax=0|ay=0.5|x=22.0|y=70.0|color=255|size=18|text=�����귨��½����ʿ����֪�����˵��<"���Ĵ���"/FCOLOR=250>������ħ��>
<RText|ay=0.5|x=22.0|y=95.0|color=255|size=18|text=�����ִ˴�½������Ҫһ����ʵ������ʿ������ħ�壬�����>
<RText|ay=0.5|x=22.0|y=120.5|color=255|size=18|text=Ը�����<1000Ԫ��/FCOLOR=250>���Ϸ�ɰ��㿪�����Ĵ���  <�������򲻵�/FCOLOR=253>>
<RText|ay=0.5|x=22.0|y=145.5|color=254|size=18|text=ֻ�б��������Ĵ��˵���һ�ɱ�Ż���ʧ�������������ʧ>
<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
<RText|ay=0.5|x=22.0|y=214.5|color=31|size=18|text=<�������Ĵ��˺�/FCOLOR=249>��ɱ<���Ĵ���/FCOLOR=249>�ɻ��500Ԫ��>


	]]
	if getsysint("��������") == 0 then
		msg=msg.."<RText|ay=0.5|x=22.0|y=170.5|color=251|size=18|text=���ԣ���һ��ձ���+30%    ��ħ��+5%   ����ֵ+5%>"
	else
		msg=msg.."<RText|ay=0.5|x=22.0|y=170.5|color=251|size=18|text=���ԣ���һ��ձ���+30%    ��ħ��+5%   ����ֵ+10%>"
	end
	if hasbuff(actor,10001) or hasbuff(actor,20083) then
		msg=msg.."<Text|ay=0.5|x=410.0|y=214.5|size=18|color=249|text=�Ѿ�����>"
	else
		msg=msg.."<Text|ay=0.5|x=410.0|y=214.5|size=18|color=250|text=��Ҫ����|link=@kaiqi>"
	end
	say(actor,msg)
end
function kaiqi(actor)
	if hasbuff(actor,10001) or hasbuff(actor,20083) then
		sendmsg9(actor,"���Ѿ����������Ĵ�����")
		return
	end
	
	if getingot(actor) < 1000 then
		sendmsg9(actor,"�������Ĵ�����1000Ԫ��")
		return
	end
	subingot(actor,1000,"������")
	seticon(actor, 10, -1)
	if getsysint("��������") == 0 then
		addbuff(actor,10001)
	else
		addbuff(actor,20083)
	end
	sendmsg9(actor,"�������Ĵ��˳ɹ�")
	
	
	return show(actor)
end
