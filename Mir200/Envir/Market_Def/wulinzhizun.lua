require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor,xianshi)
	xianshi = tonumber(xianshi) or 0
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=320|scale9t=30|img=zhangheng/176.png|move=0|loadDelay=1|reset=1|scale9l=30|scale9b=30|show=0|bg=1|scale9r=30|esc=1>
	<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Text|x=214.0|y=25.0|color=251|size=18|text=��������>
	<Text|x=28.0|y=60.0|color=161|size=16|text=����������ǿ��Ϊ�𣬽����ȷ�Ѫ��ֻΪ����"���µ�һ"����>
	<RText|x=28.0|y=80.0|color=161|size=16|text=��λ��Ӣ����ʱ������֪��֪�ף�����"��������"����������>
	<Text|x=28.0|y=100.0|color=161|size=16|text=�ڱ��У�˭������Ⱥ�ۣ�һͳ���֣���������Ŀ�Դ��ɣ�����>
	<RText|x=28.0|y=120.0|color=161|size=16|text=�ȼ��ﵽ60�������룬���<"������װ���ʼ���10%"/FCOLOR=250>>
	
	<Img|x=134.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=298.0|y=27.0|img=zhangheng/178.png|esc=0>
	]]
	
	msg = msg .."<RText|x=28.0|y=150.0|color=70|size=16|text=��������<".. getsysstr("������������") .."/FCOLOR=254>>"
	if getlevel(actor) < 75 then
		msg = msg .."<Text|x=195.0|y=265.0|color=250|size=18|text=������������|link=@shenqing>"
		msg = msg .."<RText|x=28.0|y=175.0|color=70|size=16|text=��ǰ�ȼ���<".. getsysint("��������ȼ�") .."/FCOLOR=254>������������ǰ���飺<".. getsysstr("����������") .."/FCOLOR=254>>"
	else
		msg = msg .."<RText|x=28.0|y=175.0|color=70|size=16|text=��ǰ�ȼ���<".. getsysint("��������ȼ�") .."/FCOLOR=254>>"
	end
	local hanghui = "���л�"
	if getsysstr("���������л�") ~= "" then
		hanghui = getsysstr("���������л�")
	end
	msg = msg .."<RText|x=28.0|y=200.0|color=70|size=16|text=�����л᣺<".. hanghui .."/FCOLOR=254>>"
	
	if getlevel(actor) >= 75 then
		msg = msg .."<RText|x=266.0|y=150.0|color=70|size=16|text=��ǰ�����޻�ֵΪ��<0/FCOLOR=254>>"
		msg = msg .."<RText|x=28.0|y=230.0|color=150|size=16|text=�㵱ǰ���׵��޻�ֵ����Ϊ��<".. getdayint(actor,"�����޻�ֵ") .."/FCOLOR=253>>"
		msg = msg .."<Text|x=95.0|y=265.0|color=250|size=18|text=������������|link=@shenqing>"
		msg = msg .."<Text|x=301.0|y=265.0|color=250|size=18|submitInput=1|text=�����޻�ֵ|link=@juanxian>"
		msg = msg .."<Button|x=14.0|y=274.0|color=255|size=18|pimg=zhangheng/8.png|nimg=zhangheng/8.png|link=@show,1>"
		msg = msg .."<Img|x=302.0|y=229.0|width=90|scale9r=5|scale9l=5|scale9t=5|img=zh/30.png|scale9b=5|esc=0>"
		msg = msg .."<Input|x=307.0|y=232.0|width=80|height=25|inputid=1|type=3|mincount=3|maxcount=4|errortips=1|color=255|size=14|place=�����޻�ֵ>"
	end
	if xianshi == 1 then
		msg = msg..'<Layout|x=-1000.0|y=-1001.0|width=3000|height=3000|color=255>|link=@show>'
		msg = msg..[[
		<Img|ay=0.5|x=45.0|y=250.0|width=350|height=120|scale9t=10|esc=0|img=zh/7.png|scale9r=10|scale9l=10|scale9b=10>
		<RText|ay=0.5|x=53.0|y=215.5|color=255|size=16|text=������ȼ�����ͬ����������,��Ҫͨ��>
		<RText|ay=0.5|x=53.0|y=236.5|color=255|size=16|text="�����޻�ֵ"��������"��������">
		<RText|ay=0.5|x=52.0|y=256.5|color=255|size=16|text=ÿ�ξ��ײ�������100�㣬���ɻ�÷��>
		<RText|ay=0.5|x=53.0|y=281.5|color=250|size=16|text=ÿ��0����޻�ֵ��������������"��������"!>
		]]
	end
	say(actor,msg)
end

function juanxian(actor)
	local shuru = tonumber(getconst(actor,"<$NPCINPUT(1)>"))
	if not shuru then
		sendmsg9(actor,"�������޻�ֵ")
		return
	end
	if shuru < 100 then
		sendmsg9(actor,"ÿ�ξ��ײ�������100��")
		return
	end
	if not subshouhunzhi(actor,shuru) then
		sendmsg9(actor,"����޻�ֵ����"..shuru)
		return
	end
	setdayint(actor,"�����޻�ֵ",getdayint(actor,"�����޻�ֵ")+shuru)
	sendmsg9(actor,"�����޻�ֵ�ɹ�")
	return show(actor)
end

function shenqing(actor)
	local wl_name = getsysstr("������������")
	local wl_lv = getsysint("��������ȼ�")
	local wl_jingyan = tonumber(getsysstr("����������"))
	local shouhundian = getsysint("���������޻�ֵ")
	if getname(actor) == wl_name then
		sendmsg9(actor,"���Ѿ�������������")
		return
	end
	local dengji = getlevel(actor) --�ȼ�
	local jingyan = getjingyan(actor) --����
	local juanxiandian = getdayint(actor,"�����޻�ֵ")
	if dengji < 60 then
		sendmsg9(actor,"�ȼ�����60�����޷�����")
		return
	end	
		
	if wl_lv < 75 then
		if dengji > wl_lv then
			setsysstr("������������",getname(actor))
			setsysint("��������ȼ�",dengji)
			setsysstr("����������",tostring(jingyan))
			setsysstr("���������л�",getbaseinfo(actor,36))
			sendmsg9(actor,"��ϲ���Ϊ��������")
			local t=getplayerlst()
			for k, v  in ipairs(t) do
				wulinzhizunchuli(v) --��������BUFF����
			end
		elseif dengji == wl_lv and jingyan > wl_jingyan then
			setsysstr("������������",getname(actor))
			setsysint("��������ȼ�",dengji)
			setsysstr("����������",tostring(jingyan))
			setsysstr("���������л�",getbaseinfo(actor,36))
			sendmsg9(actor,"��ϲ���Ϊ��������")
			local t=getplayerlst()
			for k, v  in ipairs(t) do
				wulinzhizunchuli(v) --��������BUFF����
			end
		else
			sendmsg9(actor,"����������")
			return
		end
	else
		if dengji > wl_lv then
			setsysstr("������������",getname(actor))
			setsysint("��������ȼ�",dengji)
			setsysint("���������޻�ֵ",juanxiandian)
			setsysstr("���������л�",getbaseinfo(actor,36))
			sendmsg9(actor,"��ϲ���Ϊ��������")
			local t=getplayerlst()
			for k, v  in ipairs(t) do
				wulinzhizunchuli(v) --��������BUFF����
			end
		elseif dengji == wl_lv and juanxiandian > shouhundian then
			setsysstr("������������",getname(actor))
			setsysint("��������ȼ�",dengji)
			setsysint("���������޻�ֵ",juanxiandian)
			setsysstr("���������л�",getbaseinfo(actor,36))
			sendmsg9(actor,"��ϲ���Ϊ��������")
			local t=getplayerlst()
			for k, v  in ipairs(t) do
				wulinzhizunchuli(v) --��������BUFF����
			end
		else
			sendmsg9(actor,"����������")
			return
		end
	end
	return show(actor)
end

