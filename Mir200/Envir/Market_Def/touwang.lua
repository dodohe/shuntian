require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor,xianshi,jianglishow)
	setint(actor,"��ҡ����",1)
	if getsysint("��������") < 1 then
		sendmsg9(actor,"�˹��ܺ����󿪷�")
		return
	end
	xianshi = tonumber(xianshi) or 0
	jianglishow = tonumber(jianglishow) or 0
	local msg = [[
	<Img|x=0|width=726|height=524|bg=1|scale9l=50|scale9t=50|scale9r=50|scale9b=50|reset=0|move=1|img=zhangheng/1.png|esc=1|show=4>
	<Button|x=724.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	<Img|x=16.0|y=39.5|img=zhangheng/192.png|esc=0>
	
	<Button|x=109.0|y=440.5|nimg=zhangheng/13.png|color=10051|size=18|clickInterval=1000|text=����Ͷ��|link=@yaosaizi,1>
	<Button|x=274.0|y=440.5|nimg=zhangheng/13.png|color=10051|size=18|clickInterval=1000|text=Ԫ��Ͷ��|link=@yaosaizi,2>
	<Button|x=18.0|y=465.5|nimg=zhangheng/8.png|color=255|size=18|pimg=zhangheng/8.png|link=@show,1>
	
	<Text|x=328.0|y=387.5|color=161|size=18|text=�鿴��������|link=@show,0,1>
	<Text|x=465.0|y=93.5|color=161|size=18|text=��ֱ���+10%>
	<Text|x=465.0|y=140.5|color=161|size=18|text=����ר��buff��>
	<Text|x=465.0|y=165.5|color=161|size=18|text=������Ѫ�����Լ�����ʱ>
	<Text|x=465.0|y=190.5|color=161|size=18|text=����նɱ8%�������ֵ�˺�>
	<Text|x=460.0|y=265.5|color=161|size=18|text=�����"����666"�����>
	<Text|x=479.0|y=290.5|color=161|size=18|text=����ȡ����60%�Ľ��>
	<Text|x=460.0|y=315.5|color=161|size=18|text=�����"��������"�����>
	<Text|x=479.0|y=340.5|color=161|size=18|text=����ȡ����20%�Ľ��>
	<Text|x=460.0|y=365.5|color=161|size=18|text=��ɳ������ȡ����20%�Ľ��>
	<Button|x=535.0|y=390.5|color=255|size=18|nimg=zhangheng/199.png|link=@lingjiang>
	]]
	
	msg=msg.."<RText|x=28.0|y=387.5|color=161|size=18|text=��ǰ�������ؽ����������".. getsysint("��������")/10000 .."��>"
	local tupian_t = {193,194,195,196,197,198}
	for i = 1,6 do
		msg=msg.."<Img|x=".. 25+(i-1)%3 * 142 .."|y=".. 44.5 + math.floor((i-1)/3) * 168 .."|img=zhangheng/".. tupian_t[i] ..".png|esc=0>"
		local name = "���˻��"
		local yanse = 250
		if getsysstr("����"..i) ~= "" then
			name = getsysstr("����"..i)
			yanse = 251
		end
		if #name > 14 then
			msg=msg.."<Text|ax=0.5|ay=0.5|x=".. 91+(i-1)%3 * 142 .."|y=".. 190.5 + math.floor((i-1)/3) * 168 .."|color="..yanse.."|size=18|scrollWidth=112|text="..name..">"
		else
			msg=msg.."<Text|ax=0.5|ay=0.5|x=".. 91+(i-1)%3 * 142 .."|y=".. 190.5 + math.floor((i-1)/3) * 168 .."|color="..yanse.."|size=18|text="..name..">"
		end
		
	end

	if xianshi == 1 then
		msg = msg..'<Layout|x=-1000.0|y=-1001.0|width=3000|height=3000|color=255>|link=@show>'
		msg = msg..[[
		<Img|ay=0.5|x=50.0|y=408.0|width=328|height=180|scale9t=10|scale9b=10|img=zh/7.png|scale9r=10|scale9l=10|esc=0>
		<RText|ay=0.5|x=58.0|y=338.5|color=255|size=16|text=����һ��<����/FCOLOR=250>��<1000Ԫ��/FCOLOR=250><��������/FCOLOR=253>��ϵͳ��>
		<RText|ay=0.5|x=58.0|y=358.5|color=255|size=16|text=����<50����/FCOLOR=250>���뽱�أ������콱�������>
		<RText|ay=0.5|x=58.0|y=378.5|color=255|size=16|text=Ҫ�ڹ涨ʱ������ȡ������ÿ���콱ʱ��Ϊ>
		<RText|ay=0.5|x=58.0|y=398.5|color=250|size=16|text=0.0--0.10��3.0--3.10��6.0--6.10��9.0--9.10>
		<RText|ay=0.5|x=58.0|y=418.5|color=250|size=16|text=12.0--12.10����15.0--15.10����18.0--18.10>
		<RText|ay=0.5|x=58.0|y=438.5|color=255|size=16|text=<21.0-21.10/FCOLOR=250> ������μ��콱ʱ�䣬 ��ȡ����>
		<RText|ay=0.5|x=58.0|y=458.5|color=255|size=16|text=ʱ��β��������ӣ���ʱ���򣬽������㡣>
		<RText|ay=0.5|x=58.0|y=478.5|color=255|size=16|text=��ȡ�Ľ���ϵͳ��ͨ���ʼ��ķ�ʽ����>
		]]
	end
	if jianglishow == 1 then
		msg = msg..'<Layout|x=-1000.0|y=-1001.0|width=3000|height=3000|color=255>|link=@show>'
		msg = msg..[[
		<Img|ay=0.5|x=80.0|y=294.0|width=310|height=140|scale9t=10|esc=0|img=zh/7.png|scale9r=10|scale9l=10|scale9b=10>
		<RText|ay=0.5|x=200.0|y=246.5|color=251|size=16|text=��������>
		]]
		msg = msg..'<RText|ay=0.5|x=114.0|y=274.5|color=255|size=16|text=����666��ȡ��ң�'.. getsysint("��������")*0.6 ..'>'
		msg = msg..'<RText|ay=0.5|x=114.0|y=304.5|color=255|size=16|text=����������ȡ��ң�'.. getsysint("��������")*0.2 ..'>'
		msg = msg..'<RText|ay=0.5|x=114.0|y=334.5|color=255|size=16|text=ɳ�ǳ�����ȡ��ң�'.. getsysint("��������")*0.2 ..'>'
	end
	
	say(actor,msg)
end

function yaosaizi(actor,par) --ҡ����
	if getint(actor,"��ҡ����") == 0 then
		sendmsg9(actor,"�����ĵȴ������ӽ��")
		return
	end
	local hour = tonumber(os.date("%H",os.time())) --Сʱ
	local fen = tonumber(os.date("%M",os.time())) --����
	if (hour == 0 or hour == 3 or hour == 6 or hour == 9 or hour == 12 or hour == 15 or hour == 18 or hour == 21) and fen < 11 then
		sendmsg9(actor,"��ȡ����ʱ����ڲ��������ӣ������ĵȴ�")
		return
	end
	if par == "1" then
		if itemcount(actor,"����") < 1 then
			sendmsg9(actor,"��û�н���")
			return
		end
		takeitem(actor, "����", 1)
		post(actor,"������������*1")
	else
		if getingot(actor) < 1000 then
			sendmsg9(actor,"��û��1000Ԫ��")
			return
		end
		subingot(actor,1000,"����")
	end
	setsysint("��������",getsysint("��������")+500000)
	local dianshu = 0
	
	local dianshu_t = {1,2,3,4,5,6}
	for i = 1,#dianshu_t do
		if getsysstr("����"..i) == getname(actor) then
			table.remove(dianshu_t,i)
			break
		end
	end
	
	dianshu = dianshu_t[math.random(1,#dianshu_t)]

	
	if getint(actor,"��������") > 0 then
		dianshu = getint(actor,"��������")
		setint(actor,"��������",0)
	end
	
	setplaydef(actor, "D0",dianshu)
	setplaydef(actor, "D1",dianshu)
	setplaydef(actor, "D2",dianshu)
	callscriptex(actor, "playdice", 3, "@yaoend")
	for i = 1,6 do
		if getsysstr("����"..i) == getname(actor) then
			setsysstr("����"..i,"")
		end
	end
	setsysstr("����"..dianshu,getname(actor))
	setint(actor,"��ҡ����",0)
	local t=getplayerlst()
	for k, v  in ipairs(t) do
		touwangchuli(v) --��������
	end
end

function yaoend(actor)
	sendmsg9(actor,"��ϲ���Ϊ����")
	return show(actor)
end

function lingjiang(actor)
	local hour = tonumber(os.date("%H",os.time())) --Сʱ
	local fen = tonumber(os.date("%M",os.time())) --����
	if (hour == 0 or hour == 3 or hour == 6 or hour == 9 or hour == 12 or hour == 15 or hour == 18 or hour == 21) and fen < 11 then
	else
		sendmsg9(actor,"��ǰʱ�䲻����ȡ����")
		return
	end
	
	local gold = getsysint("��������")
	if gold == 0 then
		sendmsg9(actor,"�������޽���")
		return
	end
	jiangli1 = gold * 0.6 --����666
	jiangli2 = gold * 0.2 --��������
	jiangli3 = gold * 0.2 --ɳ�ϴ�
	if getsysstr("����6") == getname(actor) and getsysint("����666��ȡ") == 0 then
		sendmsg9(actor,"��ȡ����666�����ɹ��������ʼ���ȡ")
		sendmail("#"..getname(actor),1,"��������","��ϲ��������666���������*"..jiangli1,"���#"..jiangli1)
		setsysint("����666��ȡ",1)
		return
	end
	if getsysstr("������������") == getname(actor) and getsysint("��������������ȡ") == 0 then --��������
		sendmsg9(actor,"��ȡ���������������ɹ��������ʼ���ȡ")
		sendmail("#"..getname(actor),1,"��������","��ϲ�����������������������*"..jiangli2,"���#"..jiangli2)
		setsysint("��������������ȡ",1)
		return
	end
	if castleidentity(actor) == 2 and getsysint("����ɳ�ϴ���ȡ") == 0 then --ɳ�ϴ�
		sendmsg9(actor,"��ȡ����ɳ�ϴ����ɹ��������ʼ���ȡ")
		sendmail("#"..getname(actor),1,"��������","��ϲ��������ɳ�ϴ��������*"..jiangli3,"���#"..jiangli3)
		setsysint("����ɳ�ϴ���ȡ",1)
		return
	end
	sendmsg9(actor,"������������")
end
