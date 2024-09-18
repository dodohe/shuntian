require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor)
	local hour = tonumber(os.date("%H",os.time()))
	if hour < 21 or hour > 22 then
		sendmsg9(actor,"21�㵽23����ܲ鿴")
		return
	end
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=���ǽ���>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		
		<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
		<Text|ay=0.5|x=209.0|y=214.5|color=250|size=18|text=��ȡ���ǽ���|link=@lingjiang>
		<RText|x=30.0|y=140.0|color=254|size=18|text=�л����Ŷ��⽱��10000���ͽ�ֵ�Լ���15��Ѫ���ϵ�boss>
<RText|x=31.0|y=165.0|color=254|size=18|text=���ʼӳ�>

	]]
	local hanghui = "��"
	if castleinfo(2) ~= "" then
		hanghui = castleinfo(2)
	end
	msg =msg.."<RText|ax=0|ay=0.5|x=28.0|y=70.5|color=255|size=18|text=ɳ�ǹ����л᣺".. hanghui ..">"
	local name = "��"
	if castleinfo(3) ~= "����Ա" then
		name = castleinfo(3)
	end
	msg =msg.."<RText|ay=0.5|x=28.0|y=95.5|color=255|size=18|text=�л������ˣ�".. name ..">"
	local jiangligold = 50000000

	msg =msg.."<RText|ay=0.5|x=28.0|y=120.5|color=255|size=18|text=��ǰɳ�ǽ�����".. jiangligold ..">"
	if getsysint("ɳ�ǽ���Ԫ��") > 0 then
		msg =msg.."<RText|ay=0.5|x=278.0|y=120.5|color=254|size=18|text=����Ԫ��������".. getsysint("ɳ�ǽ���Ԫ��") ..">"
	end
	say(actor,msg)
end

function lingjiang(actor)
	if castleinfo(5) then
		sendmsg9(actor,"��ǰ���ڹ�����")
		return
	end
	if getname(actor) ~= castleinfo(3) then
		sendmsg9(actor,"�㲻��ɳ�Ϳ��л������޷���ȡ����")
		return
	end
	
	local hour = tonumber(os.date("%H",os.time()))
	local fen = tonumber(os.date("%M",os.time()))
	if hour == 22 and fen >= 1 and fen <= 30 then
	else
		sendmsg9(actor,"22:01 - 22:30������ȡ����")
		return
	end
	if getsysint("����ɳ��") == 0 then
		sendmsg9(actor,"��ǰ�޿���ȡ��ɳ�ǽ�����ɳ�ǽ����ѷ������")
		return
	end
	setsysint("����ɳ��",0)
	local jiangligold = 50000000
	local jiangliyuanbao = getsysint("ɳ�ǽ���Ԫ��")
	
	local t = {}
	local str = getsysstr("���ǽ�������") --���ǿɽ���������
	if str ~= "" then
		t = json2tbl(str)
	end
	
	local shachenghanghui = castleinfo(2) --ɳ�Ϳ��л�
	if shachenghanghui == "" then
		sendmsg9(actor,"��ǰ����ɳ�Ϳ��л�")
		return
	end
	local jiangli_t ={}
	for i = 1,#t do
		if t[i][2] == shachenghanghui then
			table.insert(jiangli_t,t[i])
		end
	end 
	
	addshangjinzhi(actor,10000)
	local laodajiangligold = math.floor(jiangligold * 0.2) --�ϴ��õĽ��
	local laodajiangliyuanbao = math.floor(jiangliyuanbao * 0.2) --�ϴ��õ�Ԫ��
	local pingfengold = jiangligold - laodajiangligold --ƽ�ֵĽ��
	local pingfenyuanbao = jiangliyuanbao - laodajiangliyuanbao --ƽ�ֵ�Ԫ��
	local meirengold = math.floor(pingfengold/#jiangli_t) --ÿ�˽������
	local meirenyuanbao = math.floor(pingfenyuanbao/#jiangli_t) --ÿ�˽���Ԫ��
	sendmail("#"..getname(actor),1,"ɳ�ǽ���","ɳ�Ϳ��ϴ���","���#".. laodajiangligold .."#0&Ԫ��#".. laodajiangliyuanbao .."#0")
	for i = 1,#jiangli_t do
		sendmail("#"..jiangli_t[i][1],2,"ɳ�ǽ���","ɳ�Ϳ˽���","���#".. meirengold .."#0&Ԫ��#".. meirenyuanbao .."#0")
	end
end

