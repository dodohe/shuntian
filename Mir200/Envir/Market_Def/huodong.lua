require("Envir/Market_Def/zh.lua") --���˷�װ����
local biaoti_anniu = {"˳���ͱ�","���﹥��","Ȫˮ�ɼ�"}
function show(actor,anniuid)
	anniuid = tonumber(anniuid) or 1
	local msg = [[
	<Img|x=0|width=638|height=461|bg=1|esc=1|scale9r=50|scale9t=50|scale9b=50|move=1|loadDelay=0|scale9l=50|reset=0|img=zhangheng/1.png|show=4>
	<Button|x=634.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	<Img|x=17.0|y=38.5|img=zhangheng/280.png|esc=0>
	<Img|x=157.0|y=38.5|height=397|esc=0|img=zhangheng/128.png>
	]]
	for i = 1,#biaoti_anniu do
		if i == anniuid then
			msg = msg ..'<Button|x=19.0|y='.. 45+(i-1)*45 ..'|size=18|nimg=zhangheng/267.png|pimg=zhangheng/267.png|color=250|outline=2|text='..biaoti_anniu[i]..'>'
		else
			msg = msg ..'<Button|x=19.0|y='.. 45+(i-1)*45 ..'|size=18|nimg=zhangheng/267.png|pimg=zhangheng/267.png|color=7|outline=2|text='..biaoti_anniu[i]..'|link=@show,'.. i ..'>'
		end
	end
	if biaoti_anniu[anniuid] == "˳���ͱ�" then
		msg = msg ..[[
		<RText|x=172.0|y=54.5|size=18|color=255|text=Ϊ��ӭ�������פ˳�촫�棬����<����60����/FCOLOR=251>ϵͳ�Զ�>
		<RText|x=172.0|y=84.5|size=18|color=255|text=����"˳���ͱ�"���������ҩ�����꣺355   339ˢ��>
		<RText|x=172.0|y=114.5|size=18|color=255|text=����<"��ϲ����"/FCOLOR=250>�ر��߼�װ����ϡ�в��ϣ��˻����>
		<RText|x=172.0|y=144.5|color=255|size=18|text=������һ�Σ�����λ���ӻԾ�μ�....>
		]]
		if getsysint("˳���ͱ��") == 0 then
			msg=msg.."<RText|x=172.0|y=214.5|size=18|color=255|text=<��������飺/FCOLOR=31><δ����/FCOLOR=242>>"
		else
			msg=msg.."<RText|x=172.0|y=214.5|size=18|color=255|text=<��������飺/FCOLOR=31><�ѿ���/FCOLOR=249>>"
		end
	end
	
	if biaoti_anniu[anniuid] == "���﹥��" then
		msg = msg ..[[
		<RText|x=172.0|y=54.5|color=255|size=18|text=��ʰ�ഺ����ζ���䣬����<����4Сʱ/FCOLOR=251>��ϵͳ�Զ�����>
<RText|x=172.0|y=84.5|color=255|size=18|text=<"���﹥��"/FCOLOR=250>��>
<RText|x=172.0|y=144.5|color=255|size=18|text=ħ�޾������콫�����ڶ�С���������<������ǣ�����/FCOLOR=250>>
<RText|x=172.0|y=174.5|size=18|color=255|text=<���������ţ���ħ�ȣ�ħ���ǡ�/FCOLOR=250>���е�һ�����ǣ����>
<RText|x=172.0|y=204.5|size=18|color=255|text=λ������õ���ħ�޾��ŵ�׼������������Я���Ŵ���>
<RText|x=172.0|y=114.5|color=255|size=18|text=�ӵڶ��쿪ʼ<ÿ��10�㣬14�㣬18��/FCOLOR=253>���������ʱ��>
<RText|x=172.0|y=234.5|size=18|color=255|text=�߼�װ���Լ���ϡ���ϣ��ܲ��ܵõ��Ϳ����ʵ����...>

		]]
		if getsysint("���﹥�ǻ") == 0 then
			msg=msg.."<RText|x=172.0|y=304.5|size=18|color=255|text=<��������飺/FCOLOR=31><δ����/FCOLOR=242>>"
		else
			msg=msg.."<RText|x=172.0|y=304.5|size=18|color=255|text=<��������飺/FCOLOR=31><�ѿ���/FCOLOR=249>>"
		end
	end
	
	if biaoti_anniu[anniuid] == "Ȫˮ�ɼ�" then
		msg = msg ..[[
		<RText|x=172.0|y=54.5|size=18|color=255|text=Ȫˮ���귨��½�ľ����֮Ϊ"����֮ˮ",<������ÿ��/FCOLOR=250>>
		<RText|x=172.0|y=84.5|size=18|color=255|text=<2Сʱ/FCOLOR=250>��<����ҩ��/FCOLOR=253>ˢ��<"Ȫ��"/FCOLOR=70>����λ��ʿ�ɼ���Ȫˮ��>
		<RText|x=172.0|y=144.5|size=18|color=255|text=ֵ�ԣ����λ��ʿӻԾ�μӣ��ɵ�����׬��....>
		<RText|x=172.0|y=114.5|size=18|color=255|text=����"������"��"���Ǿ�"����ȱ�ٵĲ��ϣ����и߱�>
		]]

	end
	
	say(actor,msg)
end
