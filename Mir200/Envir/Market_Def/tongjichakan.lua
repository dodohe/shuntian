require("Envir/Market_Def/zh.lua") --���˷�װ����

local tongjibiaoti = {
	"�������ĵ�Ԫ��","�������ĵ�Ԫ��","��ҩ���ĵ�Ԫ��","���������ĵ�Ԫ��","�������ĵ�Ԫ��","�ҵ��Ĵ���","ϴ�����������ĵ�Ԫ��","ϴ��������Ĵ���","�����������ĵ�Ԫ��",
	"�����ͷ���ĵ�Ԫ��","������������ĸ���","�����󻨷ѵ�Ԫ��","������ˮ���󻨷ѵ�Ԫ��","������ʦ���ĵ�Ԫ��","��Ѹ�����Ҷһ���Ԫ��",
	"����Ͷ������ĸ���","����Ͷ�ʴ�ʹ�ĸ���","����Ͷ�ʴ��˵ĸ���","����Ͷ��ר�ҵĸ���","��ȡ�׳�ĸ���","�ںϵĴ���",
	"�ҵ�����ͳ��","�ҵ��������","�ҵ���ħ����","�ҵ�ţħ��","�ҵ����¶�ħ","�ҵ�ħ������","�ͽ����˳�ȡ�Ĵ���",
	"��ȡ�����","��ȡ������¯","��ȡ����������","��ȡ������","��ȡ���ؾ�","��ȡ�����","��ȡ����ӡ","��ȡ��ƿ",
	"��ȡ�����","��ȡ����֮ͫ","��ȡ������","��ȡ��Ԫ�����","��ȡ�׹���","��ȡ������","��ȡ���ӡ","��ȡ����",
	"����Ȫˮ��Ԫ��","��ʵ��ֵԪ��","��̨��ֵԪ��","�����ܿ�����Ԫ��","�ͷ�����","���ϲ���","���ز���","���ղ���","��Ŀ����"
	}
	

function show(actor)
	local msg = [[
		<Img|x=0|width=700|height=527|esc=1|loadDelay=1|bg=1|img=zhangheng/1.png|move=1|reset=1|show=4>
		<Button|x=696|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Text|x=524.0|y=466.5|color=255|size=18|text=��������|link=@qingli>

	]]
	
	for i = 1,#tongjibiaoti do
		msg = msg ..'<Text|x='.. 30 + (i-1)%3*230 ..'|y='.. 48+math.floor((i-1)/3) * 25 ..'|size=14|color=255|text='.. tongjibiaoti[i] ..'��'.. getsysint(tongjibiaoti[i]) ..'>'
	end
	
	say(actor,msg)
end

function qingli(actor)
	for i = 1,#tongjibiaoti do
		setsysint(tongjibiaoti[i],0)
	end
	return show(actor)
end

function show1(actor) --ÿ�յ���鿴
	local msg = [[
		<Img|x=0|width=700|height=527|esc=1|loadDelay=1|bg=1|img=zhangheng/1.png|move=1|reset=1|show=4>
		<Button|x=696|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		
	]]
	
	for i = 1,#tongjibiaoti do
		msg = msg ..'<Text|x='.. 30 + (i-1)%3*230 ..'|y='.. 48+math.floor((i-1)/3) * 25 ..'|size=14|color=255|text='.. tongjibiaoti[i] ..'��'.. getsysint("ÿ��"..tongjibiaoti[i]) ..'>'
	end
	
	say(actor,msg)
	
	say(actor,msg)
end

