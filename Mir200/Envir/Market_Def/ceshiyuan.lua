require("Envir/Market_Def/zh.lua") --���˷�װ����

local shouhunbt = {
"����","��ħ��","�����嵨","��ѡ֮��","��ˮ","����","����","���ϼ���","����","ǿ�ߺ�ǿ","��ǵ���","����","����","��ľ�괺","ǿ��","���ƺ쳾","�ٻ�","����",
"����","��ħ","������","����֮ʦ","�Ի���","ͬ�ʹ���","������Ȩ","����","�ಲ����","ǿ����","���Ĵ���","�����е�","������","����֮��","���˼���","��������",
"�ƶ���","��۵糸","�����ͽ","����","�۱���","����","����","�ɻ��","�������","��������","��ҹ","��ǿ��ʤ","�����ĭ","����ȡ��","�����","Ϊ�����",
"����","Խ��Խǿ","����","��ƶ���","�ȼ�ѹ��","��ʯ���",
"������","����һ��","��֮�ػ�","�ٻ����","���㷴ɱ","һ������","������","����ն��","ԽսԽ��","��������","�����ư�","�߼�����",
"��ά���","ɳ�ǰ���","ɨ�ڳ���","�Թ����","��Ұ����","���⾪ϲ","Ψ�Ҷ���","����֮ŭ","��������","��������","�г�ر�","��ս֮��","��ת����",
"���ֿ��","�������","ͬ�����","����֮��","��ˮһս","ת��ѹ��","����֮��","ç��֮ŭ","״̬����","�Ƹ�����","���ٵ�־","�����ɸ�",
"���аԵ�","ְҵ����","���Ͳ���","��ղ���","�ƺ��ͽ","����֮��","����֮��","��Ѫ֮��"
}


local wupins={
	"��ľ��","��ħ��","�����","�����ӻ���","�����","������","�����","�Ϸ���¼","������","ħ��ӡ","����Ϣ��","��ţ��","������","�������",
	"������","�Ͻ��","̫����ӡ","����ǹ","����","�����",
	"Ǭ����","�ڷ��","������Ϲ�","�Ϲ�����","��Ԫ��","����ʯ","��ȸ��","��ũ��","��ˮ��","������","������","����",
	"��ƿ","����������","����ӡ","�����","������¯","�����","������","���ؾ�",
	"����","��Ԫ�����","�׹���","������","����֮ͫ","�����","���ӡ","������",
}

function show1(actor)
	local msg = [[
		<Img|x=0|width=923|height=487|esc=1|loadDelay=1|bg=1|img=zhangheng/1.png|move=1|reset=1|show=4>
		<Button|x=919.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	]]
	for i = 1,#wupins do
		if i >= 41 then
			msg = msg ..'<Text|x='.. 30 + (i-1)%7*125 ..'|y='.. 42+math.floor((i-1)/7) * 38 ..'|color=249|size=16|text='.. wupins[i] .."��" .. getint(actor,"�齱����"..wupins[i])  ..'>'
		elseif i >= 33 then
			msg = msg ..'<Text|x='.. 30 + (i-1)%7*125 ..'|y='.. 42+math.floor((i-1)/7) * 38 ..'|color=250|size=16|text='.. wupins[i] .."��" .. getint(actor,"�齱����"..wupins[i])  ..'>'
		else
			msg = msg ..'<Text|x='.. 30 + (i-1)%7*125 ..'|y='.. 42+math.floor((i-1)/7) * 38 ..'|color=255|size=16|text='.. wupins[i] .."��" .. getint(actor,"�齱����"..wupins[i])  ..'>'
		end
	end
	msg = msg ..'<Text|x=363.5|y=428.5|color=255|size=18|text=�齱������'.. getint(actor,"ӡ�ǳ齱����") ..'|link=@qingling>'
	say(actor,msg)
end

function qingling()
	for i = 1,#wupins do
		setint(actor,"�齱����"..wupins[i],0)
	end
	setint(actor,"ӡ�ǳ齱����",0)
	return show(actor)
end

function show(actor)
	local msg = [[
		<Img|x=0|width=923|height=487|esc=1|loadDelay=1|bg=1|img=zhangheng/1.png|move=1|reset=1|show=4>
		<Button|x=919.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>

	]]
	for i = 1,#shouhunbt do
		msg = msg ..'<Button|x='.. 30 + (i-1)%10*86 ..'|y='.. 42+math.floor((i-1)/10) * 38 ..'|nimg=zhangheng/13.png|size=14|color=255|text='.. i .." " ..shouhunbt[i] ..'|link=@xiugai,'..i..'>'
	end
	
	msg = msg ..'<Text|x=133.5|y=428.5|color=255|size=18|text=�꼼��'.. getshouhunbuffdata(actor)[1] ..'>'
	msg = msg ..'<Button|x=296.5|y=417.5|nimg=zhangheng/13.png|color=255|size=18|text=�ӱ���|link=@setzhuangtai,��������,1>'
	msg = msg ..'<Button|x=391.5|y=417.5|size=18|nimg=zhangheng/13.png|color=255|text=�����|link=@setzhuangtai,��������,0>'
	msg = msg ..'<Button|x=496.5|y=417.5|nimg=zhangheng/13.png|color=255|size=18|text=�����|link=@setzhuangtai,��Բ���,1>'
	msg = msg ..'<Button|x=591.5|y=417.5|size=18|nimg=zhangheng/13.png|color=255|text=�����|link=@setzhuangtai,��Բ���,0>'
	msg = msg ..'<Button|x=689.5|y=417.5|size=18|nimg=zhangheng/13.png|color=255|text=������|link=@setzhuangtai,��������,1>'
	msg = msg ..'<Button|x=789.5|y=416.5|size=18|nimg=zhangheng/13.png|color=255|text=������|link=@setzhuangtai,��������,0>'

	say(actor,msg)
end

function setzhuangtai(actor,bianliang,zhi)
	setint(actor,bianliang,tonumber(zhi))
	sendmsg9(actor,"���óɹ�")
end

function xiugai(actor,par)
	par = tonumber(par)
	local str = '["'.. shouhunbt[par] ..'","","","","",""]'
	setstr(actor,"�޻�buff����",str)
	return show(actor)
end

function getshouhunbuffdata(actor) --��ȡ�޻�buff����
	local data = {"","","","","",""}
	local sh_str = getstr(actor,"�޻�buff����")
	if sh_str ~= "" then
		data=json2tbl(sh_str)
	end
	return data
end