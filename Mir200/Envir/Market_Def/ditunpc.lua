require("Envir/Market_Def/zh.lua") --���˷�װ����
local juanxian_t = {{"�а�ƾ֤",1},{"һ������",1},{"��������",2},{"1�����",3},{"��ҳ",10},{"��������",50},{"����֮��",50},{"����֮Ѫ",200}}
-----------------------------�����ʹNPC
function ddms_show(actor,xianshi)
	xianshi = tonumber(xianshi) or 0
	local msg = ""
	if getint(actor,"��Ա�ȼ�") > 2 then
		if getsysint("��������") > 0 then
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=300|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
			local dizhu = getsysstr("�����������")
			if dizhu == "" then
				dizhu = "��"
			end
			msg=msg..'<RText|x=22.0|y=264.0|size=16|color=161|text=���Ի���ߣ�>'
			if #dizhu > 14 then
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|scrollWidth=112|text='.. dizhu ..'>'
			else
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|text='.. dizhu ..'>'
			end
			msg=msg..'<RText|x=250.0|y=264.0|size=16|color=161|text=���׵�����<'.. getsysint("����������׵�") ..'/FCOLOR=70>>'
			msg=msg..'<Text|x=385.0|y=264.0|size=18|color=250|text=�������|link=@ddms_show,1>'
		else
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=280|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
		end
		msg = msg.."<Text|ax=0.5|x=248|y=207.0|color=250|size=18|text=��������|link=@ddms_jinru>"

		if getint(actor,"��Ա�ȼ�") == 3 then
			msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ�ʴ���/FCOLOR=253>ÿ�����ѽ���1�Σ���ǰ���������".. getdayint(actor,"���������������") .."/1>"
		else
			msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ��ר��/FCOLOR=253>ÿ�����ѽ���3�Σ���ǰ���������".. getdayint(actor,"���������������") .."/3>"
		end
	else
		if getsysint("��������") > 0 then
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=300|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
			local dizhu = getsysstr("�����������")
			if dizhu == "" then
				dizhu = "��"
			end
			msg=msg..'<RText|x=22.0|y=264.0|size=16|color=161|text=���Ի���ߣ�>'
			if #dizhu > 14 then
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|scrollWidth=112|text='.. dizhu ..'>'
			else
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|text='.. dizhu ..'>'
			end
			msg=msg..'<RText|x=250.0|y=264.0|size=16|color=161|text=���׵�����<'.. getsysint("����������׵�") ..'/FCOLOR=70>>'
			msg=msg..'<Text|x=385.0|y=263.0|size=18|color=250|text=�������|link=@ddms_show,1>'
		else
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=280|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
		end
		msg = msg.."<Text|ax=0.5|x=248|y=207.0|color=250|size=18|text=��������|link=@ddms_jinru>"
		msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ�ʴ���/FCOLOR=253>�Լ�<Ͷ��ר��/FCOLOR=253>ÿ�տɻ����ѽ������>"
	end
	msg = msg .."<RText|x=120.0|y=163.0|size=16|color=161|text=����������>"
	msg = msg .."<Img|x=220.0|y=145.0|img=zhangheng/231.png|esc=0>"
	msg = msg .."<ItemShow|x=215.0|y=140.0|width=70|height=70|itemid=".. getidbyname("�����ܺ�") .."|itemcount=1|showtips=1|bgtype=0>"
	msg = msg .."<RText|x=288.0|y=163.0|size=16|color=161|text=(<".. itemcount(actor,"�����ܺ�") .."/FCOLOR=249>/<1/FCOLOR=250>)>"
	
	msg = msg ..[[
		<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
		<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=�����ʹ>
		<Text|x=22.0|y=55.0|color=161|size=16|text=����������ȷʵ������һ�����ܣ��Ϸ�Ѱ�Ҷ��꣬��Ѱ�ô˴�>
		<RText|x=22.0|y=77.0|color=161|size=16|text=�����귨ս����������<"��˿����"/FCOLOR=249>��ӡ�����������У�������>
		<Text|x=22.0|y=99.0|color=161|size=16|text=��ʵ����С�����ҿ�̽�������ܣ���֪��ɸ�һ�ԣ�>
	]]
	
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@ddms_show>"
		msg = msg ..'<Img|x=0|width=490|height=300|show=0|scale9r=50|scale9l=50|scale9b=50|move=1|esc=1|reset=0|img=zhangheng/7.png|scale9t=50>'
		msg = msg ..'<Img|x=13.0|y=220.0|img=zhangheng/203.png|esc=0>'
		msg = msg ..'<RText|x=23.0|y=236.0|color=161|size=18|text=�㵱ǰ�Ѿ��ף�<'.. getdayint(actor,"����������׵�") ..'/FCOLOR=254>��>'
		msg = msg ..'<RText|x=304.0|y=236.0|color=250|size=18|text=ÿ��0��������׵�>'
		msg = msg ..'<RText|x=23.0|y=267.0|color=253|size=16|text=<��ͼ���Լӳɣ�/FCOLOR=151>����ֵ+30%�������˺�+10%��<��������/FCOLOR=251>��Ч>'
		for i = 1,#juanxian_t do
			msg = msg.."<Img|x=".. 40.5-2+8 + (i-1)%4*115 .."|y=".. 17.5-0 + math.floor((i-1)/4)*100 .."|width=50|height=50|img=zhangheng/205.png|esc=0>"
			msg = msg.."<ItemShow|x=".. 38-2+3 + (i-1)%4*115 .."|y=".. 11-0 + math.floor((i-1)/4)*100 .."|width=70|height=70|itemid=".. getidbyname(juanxian_t[i][1]) .."|itemcount=1|showtips=1|bgtype=0>"
			msg = msg .."<RText|ax=0.5|ay=0.5|x=".. 40.5+32 + (i-1)%4*115 .."|y=".. 56-0 + math.floor((i-1)/4)*100 .."|color=255|size=18|text=<".. itemcount(actor,juanxian_t[i][1]) .."/FCOLOR=249>/<1/FCOLOR=250>>"
			msg = msg.."<Button|x=".. 4.5+10+3 + (i-1)%4*115 .."|y=".. 72.5-0 + math.floor((i-1)/4)*100 .."|width=110|nimg=zh/20.png|color=150|size=16|text=����".. juanxian_t[i][2] .."��|link=@ddms_juanxian,".. i ..">"
		end
	end
	
	say(actor,msg)
end

function ddms_juanxian(actor,par)
	par = tonumber(par)
	if itemcount(actor,juanxian_t[par][1]) < 1 then
		sendmsg9(actor,"��û��"..juanxian_t[par][1])
		return
	end
	takeitem(actor,juanxian_t[par][1],1)
	setdayint(actor,"����������׵�",getdayint(actor,"����������׵�")+juanxian_t[par][2])
	if getdayint(actor,"����������׵�") > getsysint("����������׵�") then
		setsysint("����������׵�",getdayint(actor,"����������׵�"))
		setsysstr("�����������",getname(actor))
	end
	sendmsg9(actor,"���׳ɹ�")
	return ddms_show(actor,1)
end

function ddms_jinru(actor)
	local cs = getdayint(actor,"���������������")
	local mfcs = 0
	if getint(actor,"��Ա�ȼ�") == 3 then
		mfcs = 1
	elseif  getint(actor,"��Ա�ȼ�") == 4 then
		mfcs = 3
	end
	if cs < mfcs then
		mapmove(actor,"d021",66,27,2)
		setdayint(actor,"���������������",cs+1)
		return
	end
	if itemcount(actor,"�����ܺ�") < 1 then
		sendmsg9(actor,"��û�������ܺ�")
		return
	end
	takeitem(actor,"�����ܺ�")
	mapmove(actor,"d021",66,27,2)
end

-----------------------------����NPC
function xc_show(actor,xianshi)
	xianshi = tonumber(xianshi) or 0
	local msg = [[
		<Img|x=0.0|y=0.0|width=490|height=240|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|esc=1|reset=1|scale9l=30|img=zhangheng/176.png|show=0>
<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=�������>
<RText|x=22.0|y=55.0|color=161|size=16|text=�귨��126�꣬����֮����ǲ�๳è������ò�Ի�����, �����>
<RText|x=22.0|y=77.0|size=16|color=161|text=��뷷�<"����"/FCOLOR=70>Ϊ��ħ�󽫾���а����������"����֮��"���,��>
<RText|x=22.0|y=99.0|size=16|color=161|text=��"�������"��<Ϊ���㵥��ɢ��׷�Σ���СBOSS������ˢ��/FCOLOR=70>>
<RText|x=22.0|y=131.0|color=161|size=16|text=��䴫�ţ���ɱ<����è��/FCOLOR=253>�м��ʴ�����<"�������"/FCOLOR=250>����Ϊ<Ͷ��>>
<RText|x=22.0|y=153.0|color=161|size=16|text=<ר��>����ļ��ʻ�ܸߣ���˵��������������Ѱ�����ռ�װ����>
	
	]]

	if getsysint("��������") > 0 then
		local dizhu = getsysstr("������õ���")
		if dizhu == "" then
			dizhu = "��"
		end
		msg=msg..'<RText|x=22.0|y=194.0|size=16|color=161|text=���Ի���ߣ�>'
		if #dizhu > 14 then
			msg=msg..'<RText|x=118.0|y=194.0|size=16|color=70|scrollWidth=112|text='.. dizhu ..'>'
		else
			msg=msg..'<RText|x=118.0|y=194.0|size=16|color=70|text='.. dizhu ..'>'
		end
		msg=msg..'<RText|x=250.0|y=194.0|size=16|color=161|text=���׵�����<'.. getsysint("������þ��׵�") ..'/FCOLOR=70>>'
		msg=msg..'<Text|x=385.0|y=193.0|size=18|color=250|text=�������|link=@xc_show,1>'
	end
	
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@xc_show>"
		msg = msg ..'<Img|x=0|width=490|height=300|show=0|scale9r=50|scale9l=50|scale9b=50|move=1|esc=1|reset=0|img=zhangheng/7.png|scale9t=50>'
		msg = msg ..'<Img|x=13.0|y=220.0|img=zhangheng/203.png|esc=0>'
		msg = msg ..'<RText|x=23.0|y=236.0|color=161|size=18|text=�㵱ǰ�Ѿ��ף�<'.. getdayint(actor,"������þ��׵�") ..'/FCOLOR=254>��>'
		msg = msg ..'<RText|x=304.0|y=236.0|color=250|size=18|text=ÿ��0��������׵�>'
		msg = msg ..'<RText|x=23.0|y=267.0|color=253|size=16|text=<��ͼ���Լӳɣ�/FCOLOR=151>����ֵ+30%�������˺�+10%��<�������/FCOLOR=251>��Ч>'

		for i = 1,#juanxian_t do
			msg = msg.."<Img|x=".. 40.5-2+8 + (i-1)%4*115 .."|y=".. 17.5-0 + math.floor((i-1)/4)*100 .."|width=50|height=50|img=zhangheng/205.png|esc=0>"
			msg = msg.."<ItemShow|x=".. 38-2+3 + (i-1)%4*115 .."|y=".. 11-0 + math.floor((i-1)/4)*100 .."|width=70|height=70|itemid=".. getidbyname(juanxian_t[i][1]) .."|itemcount=1|showtips=1|bgtype=0>"
			msg = msg .."<RText|ax=0.5|ay=0.5|x=".. 40.5+32 + (i-1)%4*115 .."|y=".. 56-0 + math.floor((i-1)/4)*100 .."|color=255|size=18|text=<".. itemcount(actor,juanxian_t[i][1]) .."/FCOLOR=249>/<1/FCOLOR=250>>"
			msg = msg.."<Button|x=".. 4.5+10+3 + (i-1)%4*115 .."|y=".. 72.5-0 + math.floor((i-1)/4)*100 .."|width=110|nimg=zh/20.png|color=150|size=16|text=����".. juanxian_t[i][2] .."��|link=@xc_juanxian,".. i ..">"
		end
	end
	say(actor,msg)
end

function xc_juanxian(actor,par)
	par = tonumber(par)
	if itemcount(actor,juanxian_t[par][1]) < 1 then
		sendmsg9(actor,"��û��"..juanxian_t[par][1])
		return
	end
	takeitem(actor,juanxian_t[par][1],1)
	setdayint(actor,"������þ��׵�",getdayint(actor,"������þ��׵�")+juanxian_t[par][2])
	if getdayint(actor,"������þ��׵�") > getsysint("������þ��׵�") then
		setsysint("������þ��׵�",getdayint(actor,"������þ��׵�"))
		setsysstr("������õ���",getname(actor))
	end
	sendmsg9(actor,"���׳ɹ�")
	return xc_show(actor,1)
end

-----------------------------��ħ����NPC
function fmdr_show(actor,xianshi)
	xianshi = tonumber(xianshi) or 0
	local msg = [[
		<Img|x=0.0|y=0.0|width=490|height=240|bg=1|loadDelay=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|esc=1|scale9l=30|img=zhangheng/176.png|show=0>
<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=��ħ����>
<RText|x=22.0|y=55.0|color=161|size=16|text=���������귨��½������һ�����ϵĴ�˵��˭�ܴ�ͨ��֮·>
<RText|x=22.0|y=77.0|size=16|color=161|text=������޾����أ���ֻ����һ�ɱ<300ֻ����/FCOLOR=250>���Ϸ�������>
<RText|x=23.0|y=99.0|size=16|color=161|text=�����ͨ��֮·��<Ϊ���㵥��ɢ��׷��,��СBOSS������ˢ��/FCOLOR=70>>
<RText|x=280.0|y=159.0|color=253|size=16|text=��ΪͶ�ʴ��˿�ֱ�ӽ���>
<Text|ax=0.5|ay=0.5|x=246.0|y=139.5|size=18|color=250|text=ͨ��֮·|link=@fmdr_jinru>

	]]
	msg=msg..'<RText|x=21.0|y=159.0|size=16|color=161|text=�㵱ǰ�ѻ�ɱ���<'.. getint(actor,"��ħ��ɱ������") ..'/FCOLOR=254>>'
	
	if getsysint("��������") > 0 then
		local dizhu = getsysstr("��ħ�����")
		if dizhu == "" then
			dizhu = "��"
		end
		msg=msg..'<RText|x=22.0|y=194.0|size=16|color=161|text=���Ի���ߣ�>'
		if #dizhu > 14 then
			msg=msg..'<RText|x=118.0|y=194.0|size=16|color=70|scrollWidth=112|text='.. dizhu ..'>'
		else
			msg=msg..'<RText|x=118.0|y=194.0|size=16|color=70|text='.. dizhu ..'>'
		end
		
		msg=msg..'<RText|x=250.0|y=194.0|size=16|color=161|text=���׵�����<'.. getsysint("��ħ����׵�") ..'/FCOLOR=70>>'
		msg=msg..'<Text|x=385.0|y=193.0|size=18|color=250|text=�������|link=@fmdr_show,1>'
	end
	
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@fmdr_show>"
		msg = msg ..'<Img|x=0|width=490|height=300|show=0|scale9r=50|scale9l=50|scale9b=50|move=1|esc=1|reset=0|img=zhangheng/7.png|scale9t=50>'
		msg = msg ..'<Img|x=13.0|y=220.0|img=zhangheng/203.png|esc=0>'
		msg = msg ..'<RText|x=23.0|y=236.0|color=161|size=18|text=�㵱ǰ�Ѿ��ף�<'.. getdayint(actor,"��ħ����׵�") ..'/FCOLOR=254>��>'
		msg = msg ..'<RText|x=304.0|y=236.0|color=250|size=18|text=ÿ��0��������׵�>'
		msg = msg ..'<RText|x=23.0|y=267.0|color=253|size=16|text=<��ͼ���Լӳɣ�/FCOLOR=151>����ֵ+30%�������˺�+10%��<ͨ��֮·/FCOLOR=251>��Ч>'

		for i = 1,#juanxian_t do
			msg = msg.."<Img|x=".. 40.5-2+8 + (i-1)%4*115 .."|y=".. 17.5-0 + math.floor((i-1)/4)*100 .."|width=50|height=50|img=zhangheng/205.png|esc=0>"
			msg = msg.."<ItemShow|x=".. 38-2+3 + (i-1)%4*115 .."|y=".. 11-0 + math.floor((i-1)/4)*100 .."|width=70|height=70|itemid=".. getidbyname(juanxian_t[i][1]) .."|itemcount=1|showtips=1|bgtype=0>"
			msg = msg .."<RText|ax=0.5|ay=0.5|x=".. 40.5+32 + (i-1)%4*115 .."|y=".. 56-0 + math.floor((i-1)/4)*100 .."|color=255|size=18|text=<".. itemcount(actor,juanxian_t[i][1]) .."/FCOLOR=249>/<1/FCOLOR=250>>"
			msg = msg.."<Button|x=".. 4.5+10+3 + (i-1)%4*115 .."|y=".. 72.5-0 + math.floor((i-1)/4)*100 .."|width=110|nimg=zh/20.png|color=150|size=16|text=����".. juanxian_t[i][2] .."��|link=@fmdr_juanxian,".. i ..">"
		end
	end
	say(actor,msg)
end

function fmdr_juanxian(actor,par)
	par = tonumber(par)
	if itemcount(actor,juanxian_t[par][1]) < 1 then
		sendmsg9(actor,"��û��"..juanxian_t[par][1])
		return
	end
	takeitem(actor,juanxian_t[par][1],1)
	setdayint(actor,"��ħ����׵�",getdayint(actor,"��ħ����׵�")+juanxian_t[par][2])
	if getdayint(actor,"��ħ����׵�") > getsysint("��ħ����׵�") then
		setsysint("��ħ����׵�",getdayint(actor,"��ħ����׵�"))
		setsysstr("��ħ�����",getname(actor))
	end
	sendmsg9(actor,"���׳ɹ�")
	return fmdr_show(actor,1)
end

function fmdr_jinru(actor)
	if getint(actor,"��Ա�ȼ�") >= 3 then
		mapmove(actor,"d2001",257,263,1)
		return
	end
	if getint(actor,"��ħ��ɱ������") < 300 then
		sendmsg9(actor,"��ǰ��ͼɱ����������300ֻ")
		return
	end
	setint(actor,"��ħ��ɱ������",0)
	mapmove(actor,"d2001",257,263,1)
end

-----------------------------��Ĺ��NPC
function smz_show(actor)
	local msg = [[
		<Img|x=0.0|y=0.0|width=490|height=240|scale9r=30|bg=1|scale9t=30|scale9b=30|move=0|reset=1|scale9l=30|loadDelay=1|img=zhangheng/176.png|esc=1|show=0>
		<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
		<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
		<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=�����佫>
		<RText|x=22.0|y=55.0|size=16|color=161|text=��ʿ�����������˵�����츳������ʵ��ʤ�ڳ��ˣ�ֻҪ����>
		<RText|x=22.0|y=77.0|size=16|color=161|text=����<"ͨ�����"/FCOLOR=250>��ȡͨ����뺣��Ϸ򼴿ɷ�����������Ĺ��Ѱ>
		<RText|x=22.0|y=99.0|size=16|color=161|text=�����޾�����..........>
	]]
	--msg = msg.."<RText|x=160.0|y=141.0|color=161|size=16|text=����������<ͨ�����/FCOLOR=70>(<".. itemcount(actor,"ͨ�����") .."/FCOLOR=249>/<1/FCOLOR=250>)>"
	msg = msg .."<RText|x=120.0|y=143.0|size=16|color=161|text=����������>"
	msg = msg .."<Img|x=220.0|y=125.0|img=zhangheng/231.png|esc=0>"
	msg = msg .."<ItemShow|x=215.0|y=120.0|width=70|height=70|itemid=".. getidbyname("ͨ�����") .."|itemcount=1|showtips=1|bgtype=0>"
	msg = msg .."<RText|x=288.0|y=143.0|size=16|color=161|text=(<".. itemcount(actor,"ͨ�����") .."/FCOLOR=249>/<1/FCOLOR=250>)>"
	if getint(actor,"�ۼƳ�ֵ") > 0 then
		msg = msg.."<Text|ax=0.5|x=146.0|y=193.0|color=250|size=18|text=������Ĺ|link=@smz_jinru>"
		msg = msg.."<Text|ax=0.5|x=346.0|y=193.0|color=250|size=18|text=ͨ�����|link=@smz_wendie>"
	else
		msg = msg.."<Text|ax=0.5|x=246|y=193.0|color=250|size=18|text=������Ĺ|link=@smz_jinru>"
	end

	say(actor,msg)
end

function smz_wendie(actor)
	if getint(actor,"��Ա�ȼ�") < 2 then
		sendmsg9(actor,"��ΪͶ�ʴ�ʹ���ܲ鿴")
		return
	end
	messagebox(actor,"\nͨ�������200Ԫ��һ�����Ƿ���\n\n�뾡��ͨ����ɱͨ�������ȡ","@smz_goumai","@smz_kong")
end

function smz_kong(actor)
end

function smz_goumai(actor)
	if not subingot(actor,200) then
		sendmsg9(actor,"Ԫ������200")
		return
	end
	giveitem(actor,"ͨ�����",1)
	sendmsg9(actor,"����ɹ�")
	return smz_show(actor)
end

function smz_jinru(actor)
	if itemcount(actor,"ͨ�����") < 1 then
		sendmsg9(actor,"û��ͨ�����")
		return
	end
	takeitem(actor,"ͨ�����",1)
	mapmove(actor,"dm002",9,26,2)
end

-----------------------------�����峤��NPC
function zmzzl_show(actor,xianshi)
	xianshi = tonumber(xianshi)
	local msg = ""
	if getint(actor,"��Ա�ȼ�") > 2 then
		if getsysint("��������") > 0 then
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=300|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
			local dizhu = getsysstr("�����̳����")
			if dizhu == "" then
				dizhu = "��"
			end
			msg=msg..'<RText|x=22.0|y=264.0|size=16|color=161|text=���Ի���ߣ�>'
			if #dizhu > 14 then
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|scrollWidth=112|text='.. dizhu ..'>'
			else
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|text='.. dizhu ..'>'
			end
			msg=msg..'<RText|x=250.0|y=264.0|size=16|color=161|text=���׵�����<'.. getsysint("�����̳���׵�") ..'/FCOLOR=70>>'
			msg=msg..'<Text|x=385.0|y=264.0|size=18|color=250|text=�������|link=@zmzzl_show,1>'
		else
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=280|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
		end
		msg = msg.."<Text|ax=0.5|x=248|y=207.0|color=250|size=18|text=�����̳|link=@zmzzl_jinru>"

		if getint(actor,"��Ա�ȼ�") == 3 then
			msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ�ʴ���/FCOLOR=253>ÿ�����ѽ���1�Σ���ǰ���������".. getdayint(actor,"���������̳����") .."/1>"
		else
			msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ��ר��/FCOLOR=253>ÿ�����ѽ���3�Σ���ǰ���������".. getdayint(actor,"���������̳����") .."/3>"
		end
	else
		if getsysint("��������") > 0 then
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=300|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
			local dizhu = getsysstr("�����̳����")
			if dizhu == "" then
				dizhu = "��"
			end
			msg=msg..'<RText|x=22.0|y=264.0|size=16|color=161|text=���Ի���ߣ�>'
			if #dizhu > 14 then
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|scrollWidth=112|text='.. dizhu ..'>'
			else
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|text='.. dizhu ..'>'
			end
			msg=msg..'<RText|x=250.0|y=264.0|size=16|color=161|text=���׵�����<'.. getsysint("�����̳���׵�") ..'/FCOLOR=70>>'
			msg=msg..'<Text|x=385.0|y=263.0|size=18|color=250|text=�������|link=@zmzzl_show,1>'
		else
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=280|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
		end
		msg = msg.."<Text|ax=0.5|x=248|y=207.0|color=250|size=18|text=�����̳|link=@zmzzl_jinru>"
		msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ�ʴ���/FCOLOR=253>�Լ�<Ͷ��ר��/FCOLOR=253>ÿ�տɻ����ѽ������>"
	end
	msg = msg..[[
			<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
			<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
			<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
			<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=�����峤��>
			<RText|x=22.0|y=55.0|color=161|size=16|text=����ħ����Ž���"������"���������ǲ<"�귨�й�"/FCOLOR=250>��ѹħ��>
			<RText|x=22.0|y=77.0|color=161|size=16|text=���������ȫ�濹��ħ������ʱ�����ջ���ħ�������ۺ�����>
			<RText|x=22.0|y=99.0|color=161|size=16|text=���޽���̳�������귨�й٣����գ���̳�����춯�� ����ʿѰ>
			<RText|x=22.0|y=121.0|color=161|size=16|text=������ʥ��<"����ͷ��"/FCOLOR=250>�ɽ�ȥ���Ϸ�鿴���춯����Դ....>
		]]
	--msg = msg .."<RText|x=160.0|y=156.0|size=16|color=161|text=����������<����ͷ��/FCOLOR=70>(<".. itemcount(actor,"����ͷ��") .."/FCOLOR=249>/<1/FCOLOR=250>)>"
	msg = msg .."<RText|x=120.0|y=163.0|size=16|color=161|text=����������>"
	msg = msg .."<Img|x=220.0|y=145.0|img=zhangheng/231.png|esc=0>"
	msg = msg .."<ItemShow|x=215.0|y=140.0|width=70|height=70|itemid=".. getidbyname("����ͷ��") .."|itemcount=1|showtips=1|bgtype=0>"
	msg = msg .."<RText|x=288.0|y=163.0|size=16|color=161|text=(<".. itemcount(actor,"����ͷ��") .."/FCOLOR=249>/<1/FCOLOR=250>)>"
	
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@zmzzl_show>"
		msg = msg ..'<Img|x=0|width=490|height=300|show=0|scale9r=50|scale9l=50|scale9b=50|move=1|esc=1|reset=0|img=zhangheng/7.png|scale9t=50>'
		msg = msg ..'<Img|x=13.0|y=220.0|img=zhangheng/203.png|esc=0>'
		msg = msg ..'<RText|x=23.0|y=236.0|color=161|size=18|text=�㵱ǰ�Ѿ��ף�<'.. getdayint(actor,"�����̳���׵�") ..'/FCOLOR=254>��>'
		msg = msg ..'<RText|x=304.0|y=236.0|color=250|size=18|text=ÿ��0��������׵�>'
		msg = msg ..'<RText|x=23.0|y=267.0|color=253|size=16|text=<��ͼ���Լӳɣ�/FCOLOR=151>����ֵ+30%�������˺�+10%��<�����̳/FCOLOR=251>��Ч>'

		for i = 1,#juanxian_t do
			msg = msg.."<Img|x=".. 40.5-2+8 + (i-1)%4*115 .."|y=".. 17.5-0 + math.floor((i-1)/4)*100 .."|width=50|height=50|img=zhangheng/205.png|esc=0>"
			msg = msg.."<ItemShow|x=".. 38-2+3 + (i-1)%4*115 .."|y=".. 11-0 + math.floor((i-1)/4)*100 .."|width=70|height=70|itemid=".. getidbyname(juanxian_t[i][1]) .."|itemcount=1|showtips=1|bgtype=0>"
			msg = msg .."<RText|ax=0.5|ay=0.5|x=".. 40.5+32 + (i-1)%4*115 .."|y=".. 56-0 + math.floor((i-1)/4)*100 .."|color=255|size=18|text=<".. itemcount(actor,juanxian_t[i][1]) .."/FCOLOR=249>/<1/FCOLOR=250>>"
			msg = msg.."<Button|x=".. 4.5+10+3 + (i-1)%4*115 .."|y=".. 72.5-0 + math.floor((i-1)/4)*100 .."|width=110|nimg=zh/20.png|color=150|size=16|text=����".. juanxian_t[i][2] .."��|link=@zmzzl_juanxian,".. i ..">"
		end
	end
	say(actor,msg)
end

function zmzzl_juanxian(actor,par)
	par = tonumber(par)
	if itemcount(actor,juanxian_t[par][1]) < 1 then
		sendmsg9(actor,"��û��"..juanxian_t[par][1])
		return
	end
	takeitem(actor,juanxian_t[par][1],1)
	setdayint(actor,"�����̳���׵�",getdayint(actor,"�����̳���׵�")+juanxian_t[par][2])
	if getdayint(actor,"�����̳���׵�") > getsysint("�����̳���׵�") then
		setsysint("�����̳���׵�",getdayint(actor,"�����̳���׵�"))
		setsysstr("�����̳����",getname(actor))
	end
	sendmsg9(actor,"���׳ɹ�")
	return zmzzl_show(actor,1)
end

function zmzzl_jinru(actor)
	local cs = getdayint(actor,"���������̳����")
	local mfcs = 0
	if getint(actor,"��Ա�ȼ�") == 3 then
		mfcs = 1
	elseif  getint(actor,"��Ա�ȼ�") == 4 then
		mfcs = 3
	end
	if cs < mfcs then
		map(actor,"zmjt")
		setdayint(actor,"���������̳����",cs+1)
		return
	end
	
	if itemcount(actor,"����ͷ��") < 1 then
		sendmsg9(actor,"û������ͷ��")
		return
	end
	takeitem(actor,"����ͷ��",1)
	map(actor,"zmjt")
end

function zmzzl_mianfeijinru(actor)
	
end
-----------------------------����NPC
function jk_show(actor,xianshi)
	xianshi = tonumber(xianshi)
	local msg = ""
	if getint(actor,"��Ա�ȼ�") > 2 then
		if getsysint("��������") > 0 then
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=300|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
			local dizhu = getsysstr("��Ȫ��Ԩ����")
			if dizhu == "" then
				dizhu = "��"
			end
			msg=msg..'<RText|x=22.0|y=264.0|size=16|color=161|text=���Ի���ߣ�>'
			if #dizhu > 14 then
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|scrollWidth=112|text='.. dizhu ..'>'
			else
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|text='.. dizhu ..'>'
			end
			msg=msg..'<RText|x=250.0|y=264.0|size=16|color=161|text=���׵�����<'.. getsysint("��Ȫ��Ԩ���׵�") ..'/FCOLOR=70>>'
			msg=msg..'<Text|x=385.0|y=264.0|size=18|color=250|text=�������|link=@jk_show,1>'
		else
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=280|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
		end
		msg = msg.."<Text|ax=0.5|x=248|y=207.0|color=250|size=18|text=�κ���|link=@jk_jinru>"

		if getint(actor,"��Ա�ȼ�") == 3 then
			msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ�ʴ���/FCOLOR=253>ÿ�����ѽ���1�Σ���ǰ���������".. getdayint(actor,"�����κ��Ŵ���") .."/1>"
		else
			msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ��ר��/FCOLOR=253>ÿ�����ѽ���3�Σ���ǰ���������".. getdayint(actor,"�����κ��Ŵ���") .."/3>"
		end
	else
		if getsysint("��������") > 0 then
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=300|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
			local dizhu = getsysstr("��Ȫ��Ԩ����")
			if dizhu == "" then
				dizhu = "��"
			end
			msg=msg..'<RText|x=22.0|y=264.0|size=16|color=161|text=���Ի���ߣ�>'
			if #dizhu > 14 then
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|scrollWidth=112|text='.. dizhu ..'>'
			else
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|text='.. dizhu ..'>'
			end
			msg=msg..'<RText|x=250.0|y=264.0|size=16|color=161|text=���׵�����<'.. getsysint("��Ȫ��Ԩ���׵�") ..'/FCOLOR=70>>'
			msg=msg..'<Text|x=385.0|y=263.0|size=18|color=250|text=�������|link=@jk_show,1>'
		else
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=280|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
		end
		msg = msg.."<Text|ax=0.5|x=248|y=207.0|color=250|size=18|text=�κ���|link=@jk_jinru>"
		msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ�ʴ���/FCOLOR=253>�Լ�<Ͷ��ר��/FCOLOR=253>ÿ�տɻ����ѽ������>"
	end
	msg = msg..[[		
			<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
			<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
			<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
			<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=����>
			<RText|x=22.0|y=55.0|color=161|size=16|text=��ʿ�����������ˣ���̫�ѵȴ���ǧ���ˣ������Ȫ�����ľ�>
			<RText|x=22.0|y=77.0|color=161|size=16|text=��������������<�κ���/FCOLOR=250>��ͨ����ֻΪ�÷�ӡ��"��Ȫ��Ԩ"����>
			<RText|x=22.0|y=99.0|color=161|size=16|text=��߼�װ���ؼ����գ���ֻ��Ѱ��<������/FCOLOR=250>�ҾͿ������������>
			<RText|x=22.0|y=121.0|color=161|size=16|text=ͨ����Ȫ��Ԩ������...>
		]]
	msg = msg .."<RText|x=120.0|y=163.0|size=16|color=161|text=����������>"
	msg = msg .."<Img|x=220.0|y=145.0|img=zhangheng/231.png|esc=0>"
	msg = msg .."<ItemShow|x=215.0|y=140.0|width=70|height=70|itemid=".. getidbyname("������") .."|itemcount=1|showtips=1|bgtype=0>"
	msg = msg .."<RText|x=288.0|y=163.0|size=16|color=161|text=(<".. itemcount(actor,"������") .."/FCOLOR=249>/<1/FCOLOR=250>)>"
	--msg = msg .."<RText|x=160.0|y=156.0|size=16|color=161|text=����������<������/FCOLOR=70>(<".. itemcount(actor,"������") .."/FCOLOR=249>/<1/FCOLOR=250>)>"
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@jk_show>"
		msg = msg ..'<Img|x=0|width=490|height=300|show=0|scale9r=50|scale9l=50|scale9b=50|move=1|esc=1|reset=0|img=zhangheng/7.png|scale9t=50>'
		msg = msg ..'<Img|x=13.0|y=220.0|img=zhangheng/203.png|esc=0>'
		msg = msg ..'<RText|x=23.0|y=236.0|color=161|size=18|text=�㵱ǰ�Ѿ��ף�<'.. getdayint(actor,"��Ȫ��Ԩ���׵�") ..'/FCOLOR=254>��>'
		msg = msg ..'<RText|x=304.0|y=236.0|color=250|size=18|text=ÿ��0��������׵�>'
		msg = msg ..'<RText|x=23.0|y=267.0|color=253|size=16|text=<��ͼ���Լӳɣ�/FCOLOR=151>����ֵ+30%�������˺�+10%��<��Ȫ��Ԩ/FCOLOR=251>��Ч>'

		for i = 1,#juanxian_t do
			msg = msg.."<Img|x=".. 40.5-2+8 + (i-1)%4*115 .."|y=".. 17.5-0 + math.floor((i-1)/4)*100 .."|width=50|height=50|img=zhangheng/205.png|esc=0>"
			msg = msg.."<ItemShow|x=".. 38-2+3 + (i-1)%4*115 .."|y=".. 11-0 + math.floor((i-1)/4)*100 .."|width=70|height=70|itemid=".. getidbyname(juanxian_t[i][1]) .."|itemcount=1|showtips=1|bgtype=0>"
			msg = msg .."<RText|ax=0.5|ay=0.5|x=".. 40.5+32 + (i-1)%4*115 .."|y=".. 56-0 + math.floor((i-1)/4)*100 .."|color=255|size=18|text=<".. itemcount(actor,juanxian_t[i][1]) .."/FCOLOR=249>/<1/FCOLOR=250>>"
			msg = msg.."<Button|x=".. 4.5+10+3 + (i-1)%4*115 .."|y=".. 72.5-0 + math.floor((i-1)/4)*100 .."|width=110|nimg=zh/20.png|color=150|size=16|text=����".. juanxian_t[i][2] .."��|link=@jk_juanxian,".. i ..">"
		end
	end
	say(actor,msg)
end

function jk_juanxian(actor,par)
	par = tonumber(par)
	if itemcount(actor,juanxian_t[par][1]) < 1 then
		sendmsg9(actor,"��û��"..juanxian_t[par][1])
		return
	end
	takeitem(actor,juanxian_t[par][1],1)
	setdayint(actor,"��Ȫ��Ԩ���׵�",getdayint(actor,"��Ȫ��Ԩ���׵�")+juanxian_t[par][2])
	if getdayint(actor,"��Ȫ��Ԩ���׵�") > getsysint("��Ȫ��Ԩ���׵�") then
		setsysint("��Ȫ��Ԩ���׵�",getdayint(actor,"��Ȫ��Ԩ���׵�"))
		setsysstr("��Ȫ��Ԩ����",getname(actor))
	end
	sendmsg9(actor,"���׳ɹ�")
	return jk_show(actor,1)
end

function jk_jinru(actor)
	local cs = getdayint(actor,"�����κ��Ŵ���")
	local mfcs = 0
	if getint(actor,"��Ա�ȼ�") == 3 then
		mfcs = 1
	elseif  getint(actor,"��Ա�ȼ�") == 4 then
		mfcs = 3
	end
	if cs < mfcs then
		mapmove(actor,"nhq",83,18,1)
		setdayint(actor,"�����κ��Ŵ���",cs+1)
		return
	end
	
	if itemcount(actor,"������") < 1 then
		sendmsg9(actor,"û��������")
		return
	end
	takeitem(actor,"������",1)
	mapmove(actor,"nhq",83,18,1)
end

-----------------------------����NPC
function mp_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=240|bg=1|scale9l=30|scale9r=30|scale9t=30|scale9b=30|move=0|loadDelay=1|reset=1|esc=1|img=zhangheng/176.png|show=0>
	<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=����>
	<RText|x=22.0|y=55.0|color=161|size=16|text=��������ǰ���£����⣬���⣬�߰ɣ��ù����ˣ��ѵ�������>
	<RText|x=22.0|y=77.0|color=161|size=16|text=����ִ���Ը�����ֻ��ˣ�����������������Σ�������Ը>
	<RText|x=22.0|y=99.0|color=161|size=16|text=�⣬�Ҿ�������������"��Ȫ��Ԩ"��ս�����ۣ�����һ��>
	<RText|x=22.0|y=121.0|size=16|color=161|text=����..........>
	<Text|ax=0.5|x=146.0|y=187.0|color=250|size=18|text=Ը��|link=@mp_jinru>
	<Text|ax=0.5|x=346.0|y=187.0|color=250|size=18|text=��Ը��|link=@exit>
	]]
	
	say(actor,msg)
end

function mp_jinru(actor)
	map(actor,"hqsy")
end

-----------------------------ţħ������ʹNPC
function nmw_show(actor,xianshi)
	xianshi = tonumber(xianshi)
	local msg = ""
	if getint(actor,"��Ա�ȼ�") > 2 then
		if getsysint("��������") > 0 then
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=300|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
			local dizhu = getsysstr("Ǳ����Ԩ����")
			if dizhu == "" then
				dizhu = "��"
			end
			msg=msg..'<RText|x=22.0|y=264.0|size=16|color=161|text=���Ի���ߣ�>'
			if #dizhu > 14 then
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|scrollWidth=112|text='.. dizhu ..'>'
			else
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|text='.. dizhu ..'>'
			end
			msg=msg..'<RText|x=250.0|y=264.0|size=16|color=161|text=���׵�����<'.. getsysint("Ǳ����Ԩ���׵�") ..'/FCOLOR=70>>'
			msg=msg..'<Text|x=385.0|y=264.0|size=18|color=250|text=�������|link=@nmw_show,1>'
		else
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=280|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
		end
		msg = msg.."<Text|ax=0.5|x=248|y=207.0|color=250|size=18|text=Ǳ����Ԩ|link=@nmw_jinru>"

		if getint(actor,"��Ա�ȼ�") == 3 then
			msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ�ʴ���/FCOLOR=253>ÿ�����ѽ���1�Σ���ǰ���������".. getdayint(actor,"����Ǳ����Ԩ����") .."/1>"
		else
			msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ��ר��/FCOLOR=253>ÿ�����ѽ���3�Σ���ǰ���������".. getdayint(actor,"����Ǳ����Ԩ����") .."/3>"
		end
	else
		if getsysint("��������") > 0 then
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=300|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
			local dizhu = getsysstr("Ǳ����Ԩ����")
			if dizhu == "" then
				dizhu = "��"
			end
			msg=msg..'<RText|x=22.0|y=264.0|size=16|color=161|text=���Ի���ߣ�>'
			if #dizhu > 14 then
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|scrollWidth=112|text='.. dizhu ..'>'
			else
				msg=msg..'<RText|x=118.0|y=264.0|size=16|color=70|text='.. dizhu ..'>'
			end
			msg=msg..'<RText|x=250.0|y=264.0|size=16|color=161|text=���׵�����<'.. getsysint("Ǳ����Ԩ���׵�") ..'/FCOLOR=70>>'
			msg=msg..'<Text|x=385.0|y=263.0|size=18|color=250|text=�������|link=@nmw_show,1>'
		else
			msg = msg .."<Img|x=0.0|y=0.0|width=490|height=280|bg=1|esc=1|scale9r=30|scale9t=30|scale9b=30|move=0|reset=1|loadDelay=1|scale9l=30|img=zhangheng/176.png|show=0>"
		end
		msg = msg.."<Text|ax=0.5|x=248|y=207.0|color=250|size=18|text=Ǳ����Ԩ|link=@nmw_jinru>"
		msg = msg.."<RText|x=24.0|y=237.0|color=161|size=16|text=��ܰ��ʾ �� <Ͷ�ʴ���/FCOLOR=253>�Լ�<Ͷ��ר��/FCOLOR=253>ÿ�տɻ����ѽ������>"
	end
	msg = msg..[[		
			<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
			<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
			<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
			<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=���ȹ���>
			<RText|x=22.0|y=65.0|color=161|size=16|text=С�ӣ������"Ǳ����Ԩ"Ѱ������������������"�Ƽ���"ѽ��>
			<RText|x=22.0|y=92.0|size=16|color=161|text=<Ϊ���㵥��ɢ��׷�Σ���СBOSS������ˢ��.../FCOLOR=70>>
		]]
	--msg = msg .."<RText|x=160.0|y=126.0|size=16|color=161|text=����������<�Ƽ���/FCOLOR=70>(<".. itemcount(actor,"ţħ�����Ƽ���") .."/FCOLOR=249>/<1/FCOLOR=250>)>"
	msg = msg .."<RText|x=120.0|y=163.0|size=16|color=161|text=����������>"
	msg = msg .."<Img|x=220.0|y=145.0|img=zhangheng/231.png|esc=0>"
	msg = msg .."<ItemShow|x=215.0|y=140.0|width=70|height=70|itemid=".. getidbyname("ţħ�����Ƽ���") .."|itemcount=1|showtips=1|bgtype=0>"
	msg = msg .."<RText|x=288.0|y=163.0|size=16|color=161|text=(<".. itemcount(actor,"ţħ�����Ƽ���") .."/FCOLOR=249>/<1/FCOLOR=250>)>"
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@nmw_show>"
		msg = msg ..'<Img|x=0|width=490|height=300|show=0|scale9r=50|scale9l=50|scale9b=50|move=1|esc=1|reset=0|img=zhangheng/7.png|scale9t=50>'
		msg = msg ..'<Img|x=13.0|y=220.0|img=zhangheng/203.png|esc=0>'
		msg = msg ..'<RText|x=23.0|y=236.0|color=161|size=18|text=�㵱ǰ�Ѿ��ף�<'.. getdayint(actor,"Ǳ����Ԩ���׵�") ..'/FCOLOR=254>��>'
		msg = msg ..'<RText|x=304.0|y=236.0|color=250|size=18|text=ÿ��0��������׵�>'
		msg = msg ..'<RText|x=23.0|y=267.0|color=253|size=16|text=<��ͼ���Լӳɣ�/FCOLOR=151>����ֵ+30%�������˺�+10%��<Ǳ����Ԩ/FCOLOR=253>��Ч>'

		for i = 1,#juanxian_t do
			msg = msg.."<Img|x=".. 40.5-2+8 + (i-1)%4*115 .."|y=".. 17.5-0 + math.floor((i-1)/4)*100 .."|width=50|height=50|img=zhangheng/205.png|esc=0>"
			msg = msg.."<ItemShow|x=".. 38-2+3 + (i-1)%4*115 .."|y=".. 11-0 + math.floor((i-1)/4)*100 .."|width=70|height=70|itemid=".. getidbyname(juanxian_t[i][1]) .."|itemcount=1|showtips=1|bgtype=0>"
			msg = msg .."<RText|ax=0.5|ay=0.5|x=".. 40.5+32 + (i-1)%4*115 .."|y=".. 56-0 + math.floor((i-1)/4)*100 .."|color=255|size=18|text=<".. itemcount(actor,juanxian_t[i][1]) .."/FCOLOR=249>/<1/FCOLOR=250>>"
			msg = msg.."<Button|x=".. 4.5+10+3 + (i-1)%4*115 .."|y=".. 72.5-0 + math.floor((i-1)/4)*100 .."|width=110|nimg=zh/20.png|color=150|size=16|text=����".. juanxian_t[i][2] .."��|link=@nmw_juanxian,".. i ..">"
		end
	end
	say(actor,msg)
end

function nmw_juanxian(actor,par)
	par = tonumber(par)
	if itemcount(actor,juanxian_t[par][1]) < 1 then
		sendmsg9(actor,"��û��"..juanxian_t[par][1])
		return
	end
	takeitem(actor,juanxian_t[par][1],1)
	setdayint(actor,"Ǳ����Ԩ���׵�",getdayint(actor,"Ǳ����Ԩ���׵�")+juanxian_t[par][2])
	if getdayint(actor,"Ǳ����Ԩ���׵�") > getsysint("Ǳ����Ԩ���׵�") then
		setsysint("Ǳ����Ԩ���׵�",getdayint(actor,"Ǳ����Ԩ���׵�"))
		setsysstr("Ǳ����Ԩ����",getname(actor))
	end
	sendmsg9(actor,"���׳ɹ�")
	return nmw_show(actor,1)
end

function nmw_jinru(actor)
	local cs = getdayint(actor,"����Ǳ����Ԩ����")
	local mfcs = 0
	if getint(actor,"��Ա�ȼ�") == 3 then
		mfcs = 1
	elseif  getint(actor,"��Ա�ȼ�") == 4 then
		mfcs = 3
	end
	if cs < mfcs then
		mapmove(actor,"qlsy",25,19,2)
		setdayint(actor,"����Ǳ����Ԩ����",cs+1)
		return
	end
	
	
	if itemcount(actor,"ţħ�����Ƽ���") < 1 then
		sendmsg9(actor,"û��ţħ�����Ƽ���")
		return
	end
	takeitem(actor,"ţħ�����Ƽ���",1)
	mapmove(actor,"qlsy",25,19,2)
end


-----------------------------��ħ˾ʹ��NPC
function zmssz_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=280|reset=1|scale9r=30|scale9t=30|bg=1|scale9b=30|move=0|scale9l=30|loadDelay=1|esc=1|img=zhangheng/176.png|show=0>
	<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=��ħ˾ʹ��>
	<RText|x=22|y=55.0|size=16|color=161|text=���Ż�ɱ<"Զ�ų��¶�ħ"/FCOLOR=253>���̻�����<�̻�����/FCOLOR=249>���Զ�����>
	<RText|x=22|y=77.0|size=16|color=161|text=�ڳ��³�Ѩ�ͷ�<"����������"/FCOLOR=250>�кܴ��ʽ���<�̻��Թ�/FCOLOR=250>>
	<RText|x=22|y=107.0|color=161|size=16|text=����"ħ�޾���"���ڽƻ��������������"�Թ�"�Դ��Ի�Ѱ��>
	<RText|x=22|y=129.0|color=161|size=16|text=�ߣ����Ϸ�����о����̻��Թ����ĸ����䣬ÿ�����䶼��ͨ>
	<RText|x=22|y=151.0|color=161|size=16|text=��<"�̻����"/FCOLOR=253>��֪<�̻�����"/FCOLOR=253>�����ħ�޾����������Ǹ�����>
	<RText|x=22.0|y=181.0|color=161|size=16|text=Զ�ų��¶�ħ��120���Ӹ���һ�Σ���ɱ���ɱ���<"������/FCOLOR=253><����"/FCOLOR=253>>
	<RText|x=22.0|y=203.0|color=161|size=16|text=�Ϸ��ڴ˶��꣬��Щ�����ֻҪ20���һ�100Ԫ��>
	<Text|x=131.0|y=235.0|color=250|size=18|text=��ҹ���|link=@zmssz_goumai,1>
	<Text|x=285.0|y=235.0|color=250|size=18|text=Ԫ������|link=@zmssz_goumai,2>
	]]
	say(actor,msg)
end

function zmssz_goumai(actor,par)
	if par == "1" then
		if getbindgold(actor) < 200000 then
			sendmsg9(actor,"��Ҳ���20��")
			return
		end
		subbindgold(actor,200000)
	else
		if not subingot(actor,100) then
			sendmsg9(actor,"Ԫ������100")
			return
		end
	end
	giveitem(actor,"����������",1)
	sendmsg9(actor,"����ɹ�")
end


-----------------------------ħ���Ǵ�˵NPC
function mlccs_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=280|scale9t=30|img=zhangheng/176.png|move=0|loadDelay=1|reset=1|scale9l=30|scale9b=30|show=0|bg=1|scale9r=30|esc=1>
	<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=ħ���Ǵ�˵>
	<Text|x=22|y=55.0|color=161|size=16|text=�ഫ���귨��½�Ķ��ˣ���һ��ǿ��ĵ۹���ֱ����һ����¶�>
	<RText|x=22.0|y=77.0|color=161|size=16|text=ħ���������۹��������޾���а��֮��ȼ��ȫ���ڶ��񽫱�ǿ>
	<RText|x=22.0|y=99.0|color=161|size=16|text=���ħ����������ʴ���������䣬�����ػ��۹������������Ҳ>
	<RText|x=22.0|y=121.0|color=161|size=16|text=�����ħ�����ݷ���ħ��Ѫ�����ո�����һ����ս��<"ͳ˧"/FCOLOR=250>ȴ>
	<RText|x=22.0|y=143.0|color=161|size=16|text=��֪���٣�>
	<RText|x=22.0|y=173.0|color=161|size=16|text=����ͼˢ��һ��һ��2ֻ<��֮ħ������/FCOLOR=253>,������ɱ�����<�߼�װ��/FCOLOR=254>>
	<RText|x=22.0|y=195.0|color=161|size=16|text=�ٽ����м��ʱ���ħ�������ħ����������̫�أ��мǲ��ɾ�>
	<RText|x=22.0|y=217.0|size=16|color=161|text=������ħ����ʹ��<ħ������/FCOLOR=70>���ٻ�<"аħ/FCOLOR=250><ͳ˧"/FCOLOR=250>�м��ʱ���������>
	<RText|x=22.0|y=239.0|size=16|color=161|text=�ж���װ��!>
	]]
	say(actor,msg)
end

-----------------------------�ر����ϵ�NPC
function cbgld_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=240|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|esc=1|reset=1|scale9l=30|img=zhangheng/176.png|show=0>
<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=�ر���>
<RText|x=22.0|y=55.0|color=161|size=16|text=ɳ�Ϳ˵ı��ص����ж���.........����Ͳ����ҷϻ��˰ɣ��ϵ���>
<RText|x=22.0|y=77.0|color=161|size=16|text=���۲쵽<"�ز�ħ��"/FCOLOR=250>��<"ū������"/FCOLOR=250>�����춯��֪��������ıʲ>
<RText|x=22.0|y=99.0|color=161|size=16|text=ô��������ʿ��ȥ���Ҳ鿴�鿴!>
<RText|x=22.0|y=129.0|size=16|color=161|text=�����ر���Σ�����أ���ʿ���迪��<"���Ĵ���"/FCOLOR=70>�����б�ʤ��>
<RText|x=22.0|y=151.0|size=16|color=161|text=����!>
<Text|ax=0.5|x=246|y=187.0|color=250|size=18|text=����ر���|link=@cbgld_jinru>

	]]
	say(actor,msg)
end

function cbgld_jinru(actor)
	if not hasbuff(actor,10001) and not hasbuff(actor,20083) then
		sendmsg9(actor,"����˵�ͼ��Ҫ���������Ĵ��ˡ�")
		return
	end
	map(actor,"h204")
end

-----------------------------����������NPC
function brmlk_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=240|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|esc=1|reset=1|scale9l=30|img=zhangheng/176.png|show=0>
	<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=�ر���>
	<RText|x=22.0|y=55.0|size=16|color=161|text=����"���֮��"���Ÿ����������͸�·С��һ��Χ���귨��½>
	<RText|x=22.0|y=77.0|size=16|color=161|text=�ⳡս��������������Ӣ���ش�<"���֮��"/FCOLOR=250>֮���һ���䣬���>
	<RText|x=22.0|y=99.0|size=16|color=161|text=<"���֮Դ"/FCOLOR=250>��а��������������·�����ý�����ʴ������԰֮��>
	<RText|x=22.0|y=121.0|size=16|color=161|text=������ʿǱ�벻��·���ִ����֮Դ�����ħ����֪���Ը����>
	<RText|x=22.0|y=143.0|size=16|color=161|text=�����귨��½��>

	<Text|ax=0.5|x=164.0|y=187|color=250|size=18|text=Ը��|link=@brmlk_jinru>
	<Text|ax=0.5|x=328.0|y=187.0|color=250|size=18|text=��Ը��|link=@exit>

	]]
	say(actor,msg)
end

function brmlk_jinru(actor)
	mapmove(actor,"bgl",32,85,1)
end

-----------------------------��ħ��ͷNPC
function zhenmolaotou_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=200|scale9t=30|img=zhangheng/176.png|move=0|loadDelay=1|reset=1|scale9l=30|scale9b=30|show=0|bg=1|scale9r=30|esc=1>
	<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|size=18|color=251|text=��ħ��ͷ>
	<RText|x=22.0|y=65.0|size=16|color=161|text=��ʿ�����������˴���˵����ʵ���Ƿ������ܻ�ɱ�������Ϸ�>
	<RText|x=22.0|y=92.0|size=16|color=161|text=Ը����㿪��ͨ������ʯ�ߵĴ����������ӡ�ų���BOSS��>
	<RText|x=22.0|y=119.0|size=16|color=161|text=�ɱ�����һ��װ���Լ���ϡ����>
	]]
	say(actor,msg)
end

-----------------------------ۺ�������NPC
function fdqtj_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=220|bg=1|loadDelay=1|scale9r=30|scale9t=30|scale9b=30|move=0|scale9l=30|reset=1|esc=1|img=zhangheng/176.png|show=0>
<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
<RText|ax=0.5|ay=0.5|x=246.0|y=35.5|color=251|size=18|text=ۺ�������>
<RText|x=22.0|y=55.0|color=161|size=16|text=�Ϸ��ڴ˹۲������Ѻܾúܾ��ˣ������귨��½Ӣ�۱�������һ>
<RText|x=22.0|y=77.0|color=161|size=16|text=��������<"ۺ������"/FCOLOR=250>����౦�أ�����<"�ڰ��޳�����"/FCOLOR=250>������>
<RText|x=22.0|y=99.0|color=161|size=16|text=ۺ���ǣ����޷��ֵ��귨�ľ��񣬹��ڴ�������̳����������ս>
<RText|x=22.0|y=121.0|color=161|size=16|text=�ܣ��Ϸ���<50%/FCOLOR=250>�ĸ���ʹ��������<"����¥��, ������¥, ������/FCOLOR=254>>
<RText|x=22.0|y=143.0|color=161|size=16|text=<԰,���һ�ԭ"/FCOLOR=254>���е�һ����ͼ, ����ʿ������Ѱ��....>
<Text|ax=0.5|ay=1|x=384.0|y=174.0|size=18|color=250|text=ǰ��Ѱ������������|link=@fdqtj_jinru>
<RText|ax=0|ay=1|x=23.0|y=174.0|size=18|color=255|text=����������<100����ˮ����/FCOLOR=253>|link=@smshz_jinru>


	]]
	say(actor,msg)
end

local fdjt_t = {"cxgl","hssl","gshy","xlhy"}
function fdqtj_jinru(actor)
	if itemcount(actor,"��ˮ����") < 100 then
		sendmsg9(actor,"��ˮ������")
		return
	end
	takeitem(actor,"��ˮ����",100)
	map(actor,fdjt_t[math.random(1,#fdjt_t)])
end

-----------------------------�����ػ���NPC
function smshz_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=220|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|reset=1|scale9l=30|esc=1|img=zhangheng/176.png|show=0>
<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
<RText|ax=0.5|ay=0.5|x=246.0|y=35.5|color=251|size=18|text=�����ػ���>
<RText|x=22.0|y=55.0|color=161|size=16|text=��ʿ��������λѽ���ǲ����ߴ�·�ˣ���Ȼ�봳��<"�ž�����"/FCOLOR=250>>
<RText|x=22.0|y=77.0|color=161|size=16|text=���ﲻ��������ĵط�����������ȥ��������ű�������ǿ��>
<RText|x=23.0|y=100.0|size=16|color=161|text=<"��������֮��"/FCOLOR=250>��������������ͻ�Ƽ��������ܷ�սʤ���Ϳ�>
<RText|x=22.0|y=121.0|size=16|color=161|text=���ʵ�������..........>
<RText|ax=0|ay=1|x=23.0|y=169.0|size=18|color=255|text=����������<150����ˮ����/FCOLOR=253>|link=@smshz_jinru>
<Text|ax=0.5|ay=1|x=375.0|y=170.0|size=18|color=250|text=�ž�����|link=@smshz_jinru>



	]]
	say(actor,msg)
end

function smshz_jinru(actor)
	if getlevel(actor) < 75 then
		sendmsg9(actor,"��ʿ���㵱ǰʵ������ ")
		return
	end
	if getlevel(actor) < 76 then
		sendmsg9(actor,"���ڱ�����ҵ������������Լ���ʵ����������")
		return
	end
	if itemcount(actor,"��ˮ����") < 150 then
		sendmsg9(actor,"��ˮ������")
		return
	end
	takeitem(actor,"��ˮ����",150)
	
	map(actor,"jjhl6")
end


-----------------------------����������NPC
function qxt2ceng_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=220|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|reset=1|scale9l=30|esc=1|img=zhangheng/176.png|show=0>
	<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<RText|ax=0.5|ay=0.5|x=246.0|y=35.5|size=18|color=251|text=����������>
	<RText|x=22.0|y=70.0|size=16|color=161|text=��Ҫ������һ�㣬����Ҫ���㹻��ʵ��������>

	<RText|x=22.0|y=121.0|size=16|color=161|text=������һ����Ҫ������<30����/FCOLOR=253>����<40����ˮ����/FCOLOR=253>>

	<Text|ax=0.5|x=160.0|y=170.0|color=250|size=18|text=�����ս|link=@qxt2ceng_jinru,1>
	<Text|ax=0.5|x=334.0|y=170.0|color=250|size=18|text=��ˮ����ս|link=@qxt2ceng_jinru,2>

	]]
	say(actor,msg)
end

function qxt2ceng_jinru(actor,par)
	--[[local guai_t = getmapmon("qxt1","*",28,24,50)
	if #guai_t > 0 then
		sendmsg9(actor,"����ͼ���й���û���������")
		return
	end--]]
	if getsysstr("�������������") == getname(actor) then	
	else
		if par == "1" then
			if getbindgold(actor) < 300000 then
				sendmsg9(actor,"��Ҳ���30��")
				return
			end
			subbindgold(actor,300000)
		else
			if itemcount(actor,"��ˮ����") < 40 then
				sendmsg9(actor,"��ˮ������40��")
				return
			end
			takeitem(actor,"��ˮ����",40)
		end
		setsysint("���������˽���",getsysint("���������˽���")+150000*0.4)
		setsysint("��������ɱ����",getsysint("��������ɱ����")+150000*0.6)
	end
	map(actor,"qxt2")
	callscriptex(actor, "SENDDELAYMSG", "��ʣ��%s�뿪����ͼ",3600, 251,1,"@huicheng")
	setstr(actor,"��ʱ��ͼ","qxt2")
	setint(actor,"��ʱ��ͼ����ʱ��",os.time())
	setint(actor,"��ʱʱ��",3600)
end

-----------------------------����������NPC
function qxt3ceng_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=220|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|reset=1|scale9l=30|esc=1|img=zhangheng/176.png|show=0>
	<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<RText|ax=0.5|ay=0.5|x=246.0|y=35.5|size=18|color=251|text=����������>
	<RText|x=22.0|y=70.0|size=16|color=161|text=��Ҫ������һ�㣬����Ҫ���㹻��ʵ��������>
	<RText|x=22.0|y=121.0|size=16|color=161|text=������һ����Ҫ������<30����/FCOLOR=253>����<40����ˮ����/FCOLOR=253>>
	<Text|ax=0.5|x=160.0|y=170.0|color=250|size=18|text=�����ս|link=@qxt3ceng_jinru,1>
	<Text|ax=0.5|x=334.0|y=170.0|color=250|size=18|text=��ˮ����ս|link=@qxt3ceng_jinru,2>

	]]
	say(actor,msg)
end

function qxt3ceng_jinru(actor,par)
	--[[local guai_t = getmapmon("qxt2","*",28,24,50)
	if #guai_t > 0 then
		sendmsg9(actor,"����ͼ���й���û���������")
		return
	end--]]
	if getsysstr("�������������") == getname(actor) then	
	else
		if par == "1" then
			if getbindgold(actor) < 300000 then
				sendmsg9(actor,"��Ҳ���30��")
				return
			end
			subbindgold(actor,300000)
		else
			if itemcount(actor,"��ˮ����") < 40 then
				sendmsg9(actor,"��ˮ������40��")
				return
			end
			takeitem(actor,"��ˮ����",40)
		end
		setsysint("���������˽���",getsysint("���������˽���")+150000*0.4)
		setsysint("��������ɱ����",getsysint("��������ɱ����")+150000*0.6)
	end
	map(actor,"qxt3")
	callscriptex(actor, "SENDDELAYMSG", "��ʣ��%s�뿪����ͼ",3600, 251,1,"@huicheng")
	setstr(actor,"��ʱ��ͼ","qxt3")
	setint(actor,"��ʱ��ͼ����ʱ��",os.time())
	setint(actor,"��ʱʱ��",3600)
end

-----------------------------�������Ĳ�NPC
function qxt4ceng_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=220|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|reset=1|scale9l=30|esc=1|img=zhangheng/176.png|show=0>
	<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<RText|ax=0.5|ay=0.5|x=246.0|y=35.5|size=18|color=251|text=�������Ĳ�>
	<RText|x=22.0|y=70.0|size=16|color=161|text=��Ҫ������һ�㣬����Ҫ���㹻��ʵ��������>
	<RText|x=22.0|y=121.0|size=16|color=161|text=������һ����Ҫ������<30����/FCOLOR=253>����<40����ˮ����/FCOLOR=253>>
	<Text|ax=0.5|x=160.0|y=170.0|color=250|size=18|text=�����ս|link=@qxt4ceng_jinru,1>
	<Text|ax=0.5|x=334.0|y=170.0|color=250|size=18|text=��ˮ����ս|link=@qxt4ceng_jinru,2>

	]]
	say(actor,msg)
end

function qxt4ceng_jinru(actor,par)
	--[[local guai_t = getmapmon("qxt3","*",28,24,50)
	if #guai_t > 0 then
		sendmsg9(actor,"����ͼ���й���û���������")
		return
	end--]]
	if getsysstr("�������������") == getname(actor) then	
	else
		if par == "1" then
			if getbindgold(actor) < 300000 then
				sendmsg9(actor,"��Ҳ���30��")
				return
			end
			subbindgold(actor,300000)
		else
			if itemcount(actor,"��ˮ����") < 40 then
				sendmsg9(actor,"��ˮ������40��")
				return
			end
			takeitem(actor,"��ˮ����",40)
		end
		setsysint("���������˽���",getsysint("���������˽���")+150000*0.4)
		setsysint("��������ɱ����",getsysint("��������ɱ����")+150000*0.6)
	end
	map(actor,"qxt4")
	callscriptex(actor, "SENDDELAYMSG", "��ʣ��%s�뿪����ͼ",3600, 251,1,"@huicheng")
	setstr(actor,"��ʱ��ͼ","qxt4")
	setint(actor,"��ʱ��ͼ����ʱ��",os.time())
	setint(actor,"��ʱʱ��",3600)
end

-----------------------------����������NPC
function qxt5ceng_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=220|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|reset=1|scale9l=30|esc=1|img=zhangheng/176.png|show=0>
	<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<RText|ax=0.5|ay=0.5|x=246.0|y=35.5|size=18|color=251|text=����������>
	<RText|x=22.0|y=70.0|size=16|color=161|text=��Ҫ������һ�㣬����Ҫ���㹻��ʵ��������>
	<RText|x=22.0|y=121.0|size=16|color=161|text=������һ����Ҫ������<30����/FCOLOR=253>����<40����ˮ����/FCOLOR=253>>
	<Text|ax=0.5|x=160.0|y=170.0|color=250|size=18|text=�����ս|link=@qxt5ceng_jinru,1>
	<Text|ax=0.5|x=334.0|y=170.0|color=250|size=18|text=��ˮ����ս|link=@qxt5ceng_jinru,2>

	]]
	say(actor,msg)
end

function qxt5ceng_jinru(actor,par)
	--[[local guai_t = getmapmon("qxt4","*",28,24,50)
	if #guai_t > 0 then
		sendmsg9(actor,"����ͼ���й���û���������")
		return
	end--]]
	if getsysstr("�������������") == getname(actor) then	
	else
		if par == "1" then
			if getbindgold(actor) < 300000 then
				sendmsg9(actor,"��Ҳ���30��")
				return
			end
			subbindgold(actor,300000)
		else
			if itemcount(actor,"��ˮ����") < 40 then
				sendmsg9(actor,"��ˮ������40��")
				return
			end
			takeitem(actor,"��ˮ����",40)
		end
		setsysint("���������˽���",getsysint("���������˽���")+150000*0.4)
		setsysint("��������ɱ����",getsysint("��������ɱ����")+150000*0.6)
	end
	map(actor,"qxt5")
	callscriptex(actor, "SENDDELAYMSG", "��ʣ��%s�뿪����ͼ",3600, 251,1,"@huicheng")
	setstr(actor,"��ʱ��ͼ","qxt5")
	setint(actor,"��ʱ��ͼ����ʱ��",os.time())
	setint(actor,"��ʱʱ��",3600)
end

-----------------------------�����ػ���NPC
function bzshr_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=480|height=230|scale9t=30|img=zhangheng/176.png|move=0|loadDelay=1|reset=1|scale9l=30|scale9b=30|show=0|bg=1|scale9r=30|esc=1>
	<Button|x=480.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=245.0|y=34.0|color=251|size=18|text=�����ػ���>
	<Text|x=24.0|y=55.0|color=161|size=16|text=���������ŵ�һЩ��ʿ����������ر����ջ�Я��������>
	<RText|x=24.0|y=77.0|color=161|size=16|text=�����ţ�������а��������ɰ������Ѿ����ڰ�����ĳ����>
	<RText|x=24.0|y=99.0|color=161|size=16|text=�ٻ���"�޼�����"����ͼ���ر�֮���ܣ����������귨��½>
	<RText|x=24.0|y=121.0|color=161|size=16|text=�����Ѿ�������ر����̲��ݻ�....>
	<RText|x=24.0|y=148.0|size=16|color=161|text=�ڶ��쿪ʼ��ÿ������<13��/FCOLOR=254>������<23��/FCOLOR=254>��а��������������>
	<RText|x=92.0|y=170.0|size=16|color=161|text=�ɳ�"��ʬ"��̽���飬��ʿ�ǿ�ͨ��<"����"/FCOLOR=254>������>
	<Text|x=24.0|y=169.0|color=250|outline=1|size=16|text=174 334|link=@bzshr_move>
	<RText|x=24.0|y=192.0|color=161|size=16|text=������....>
	]]
	say(actor,msg)
end

function bzshr_move(actor)
	mapmove(actor,"11",174,331,1)
end

-----------------------------����ɽׯNPC
local mzhj_sxtab = {"��","ľ","ˮ","��","��"}
function wlsz_show(actor,xianshi)
	xianshi = tonumber(xianshi) or 0
	if getsysint("����ɽׯ��ͼ����") == 0 then --��ʼ��Ϊ��
		setsysint("����ɽׯ��ͼ����",1)
	end
	local msg = [[
	<Img|x=0.0|y=0.0|width=480|height=320|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|reset=1|scale9l=30|esc=1|img=zhangheng/176.png|show=0>
	<Button|x=480.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=245.0|y=34.0|color=251|size=18|text=����ɽׯ>
	<Text|x=24.0|y=55.0|color=161|size=16|text=������ǰ��һ֧�������������з�����һ�����ر��أ�Ϊ��ֹ>
	<RText|x=24.0|y=75.0|color=161|size=16|text=���ر�ħ�����°�ߣ��Ӷ���в�귨��½�����ˣ���֧���ӷ�>
	<RText|x=24.0|y=95.0|color=161|size=16|text=���������������ص����Σ���������һ��ɽׯ�Ӵ���������..>
	<RText|x=24.0|y=125.0|color=161|size=16|text=����̽���߼��������������ڽ⿪��"����ɽׯ"�ľ������ܣ�>
	<RText|x=24.0|y=145.0|color=161|size=16|text=��ͼ������֮����ö��仯��<360����/FCOLOR=250>������<"��ľ��ˮ��/FCOLOR=250>>
	<RText|x=24.0|y=165.0|color=161|size=16|text=<����"/FCOLOR=250>����һ��̽����ʽ����ͼΣ�����������...>
	<RText|x=24.0|y=195.0|size=16|color=254|text=��������ׯ�����Բб������������ѿ಻���ԣ�����С��....>
	<Text|x=180.0|y=272.0|color=250|outline=1|size=18|text=ǰ�������������|link=@wlsz_move>
	<Button|x=13.0|y=275.0|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@wlsz_show,1>
	]]
	msg=msg.."<RText|x=60.0|y=235.0|size=16|color=161|text=��ͼҪ��<40����ˮ����/FCOLOR=251>      ����֮�����л�����<".. mzhj_sxtab[getsysint("����ɽׯ��ͼ����")] .."/FCOLOR=253>>"
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@wlsz_show>"
		msg =msg..[[
		<Img|ay=0.5|x=47.0|y=250.0|width=370|height=110|scale9t=10|scale9b=10|img=zh/7.png|scale9r=10|esc=0|scale9l=10>
<RText|x=74.0|y=277.0|width=344|color=149|size=16|text=ɽׯ��������ˮ�����Լ�ת����������>
<RText|x=58.0|y=257.0|width=344|size=16|color=149|text=��������ÿ������<19.30��--21��/FCOLOR=250>����ѽ�������>
<RText|x=74.0|y=228.0|width=344|size=16|color=149|text=������<��������/FCOLOR=253>����⿪������ɴ>
<RText|x=58.0|y=208.0|width=380|size=16|color=149|text=��<����ׯ��/FCOLOR=250>ÿ�ĸ�СʱЯ��������������<����ɽׯ/FCOLOR=254>>

		]]
	end
	say(actor,msg)
end

function wlsz_move(actor)
	if getlevel(actor) < 55 then
		sendmsg9(actor,"��ȼ��ﵽ55�����ܽ��")
		return
	end
	if getint(actor,"���е�ǰ����") == 0 then
		sendmsg9(actor,"�����������Բ��ܽ���")
		return
	end
	local hour = tonumber(os.date("%H",os.time()))
	local fen = tonumber(os.date("%M",os.time()))
	if getsysint("��������") > 0 and ((hour == 19 and fen >= 30) or hour == 20) then
		mapmove(actor,"wlsz",128,120,3)
	else	
		if getint(actor,"���е�ǰ����") ~= getsysint("����ɽׯ��ͼ����") then
			sendmsg9(actor,"�����ͼ���л��������Ե���".. mzhj_sxtab[getsysint("����ɽׯ��ͼ����")] .."��")
			return
		end
		if itemcount(actor,"��ˮ����") < 40 then
			sendmsg9(actor,"��ˮ������")
			return
		end
		takeitem(actor,"��ˮ����",40)
		mapmove(actor,"wlsz",220,206,3)
	end
	
	callscriptex(actor, "SENDDELAYMSG", "̽��ʣ��ʱ�䣺%s",7200, 251,1,"@huicheng")
	setstr(actor,"��ʱ��ͼ","wlsz")
	setint(actor,"��ʱ��ͼ����ʱ��",os.time())
	setint(actor,"��ʱʱ��",7200)
end

-----------------------------��֮�þ�NPC
function mzhj_show(actor)
	if getsysint("��֮�þ���ͼ����") == 0 then --��ʼ��Ϊ��
		setsysint("��֮�þ���ͼ����",1)
	end
	local msg = [[
	<Img|x=0.0|y=0.0|width=480|height=320|bg=1|loadDelay=1|scale9r=30|scale9t=30|scale9b=30|move=0|scale9l=30|reset=1|esc=1|img=zhangheng/176.png|show=0>
<Button|x=480.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Text|ax=0.5|ay=0.5|x=245.0|y=34.0|color=251|size=18|text=��֮�þ�>
<RText|x=24.0|y=55.0|color=161|size=16|text=�귨��½�����ͼ��BOSS�������м����ڴ˵�ͼ<����/FCOLOR=250>����>
<RText|x=24.0|y=77.0|color=161|size=16|text=ͼ�ǳ�֮��ɢ��׷��֮�أ�ˢ�²����㡣����Ҳ���õ��ı�>
<RText|x=24.0|y=99.0|color=161|size=16|text=��������׷ɱ������˭�����Ͼ���˭�������ˡ������ܴ����>
<RText|x=24.0|y=121.0|color=161|size=16|text=�ι�������ɴ򵽣���Ҳ���õ������������Ĳ���ˡ�>
<RText|x=24.0|y=148.0|size=16|color=161|text=����̽���߼��������������ڽ⿪��<"��֮�þ�"/FCOLOR=250>�ľ������ܡ�>
<RText|x=24.0|y=170.0|size=16|color=161|text=��ͼ������֮����ö��仯��<360����/FCOLOR=149>������<"��ľ��ˮ��/FCOLOR=253>>
<RText|x=24.0|y=192.0|size=16|color=161|text=<����"/FCOLOR=253>����һ��̽����ʽ��׷���ߵ����ã�<�ɱ�һ����Ʒ/FCOLOR=249>>
<Text|x=180.0|y=272.0|color=250|outline=1|size=18|text=̽�� �� ��֮�þ�|link=@mzhj_move>
<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>


	]]
	msg=msg.."<RText|x=60.0|y=235.0|size=16|color=161|text=��ͼҪ��<40����ˮ����/FCOLOR=251>      ����֮�����л�����<".. mzhj_sxtab[getsysint("��֮�þ���ͼ����")] .."/FCOLOR=253>>"

	say(actor,msg)
end

function mzhj_move(actor)
	if getlevel(actor) < 55 then
		sendmsg9(actor,"��ȼ��ﵽ55������̽��")
		return
	end
	if getint(actor,"���е�ǰ����") ~= getsysint("��֮�þ���ͼ����") then
		sendmsg9(actor,"�����ͼ���л��������Ե���".. mzhj_sxtab[getsysint("��֮�þ���ͼ����")] .."��")
		return
	end
	if itemcount(actor,"��ˮ����") < 40 then
		sendmsg9(actor,"��ˮ������")
		return
	end
	takeitem(actor,"��ˮ����",40)
	mapmove(actor,"mzhj",170,174)
	callscriptex(actor, "SENDDELAYMSG", "̽��ʣ��ʱ�䣺%s",7200, 251,1,"@huicheng")
	setstr(actor,"��ʱ��ͼ","mzhj")
	setint(actor,"��ʱ��ͼ����ʱ��",os.time())
	setint(actor,"��ʱʱ��",7200)
end
--1 �ͷ��� 2 ������ 3 ������ 4 ������ 5 ��Ŀ��
local fangjiahao = {
	["12407275"] = {"hao1","�Ʒ�","�ͷ�����"},["15262095"] = {"hao1","��ΰ","�ͷ���"},["13216418"] = {"hao1","������","�ͷ���"},["18936379"] = {"hao1","��̩","�ͷ���"},
	["30497613"] = {"hao2","������","���ϲ���"},
	["19313238"] = {"hao3","κ��ΰ","���ز���"},
	["16748966"] = {"hao4","�����","���ղ���"},
	["25891743"] = {"hao5","�ź�","��Ŀ����"}, ["9071622"] = {"hao5","����","��Ŀ����"}, ["5225660"] = {"hao5","����","��Ŀ����"}, ["10202743"] = {"hao5","�����","��Ŀ����"},
}
-----------------------------��·��NPC
function yinluren_show(actor)
	local msg = [[
	<Img|width=528|height=220|reset=1|bg=1|scale9r=20|scale9t=20|show=0|scale9b=20|esc=1|move=0|img=public/bg_npc_04.jpg|scale9l=20|loadDelay=1>
<Button|x=527.0|y=1.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=8.0|y=8.0|img=zhangheng/210.png|esc=0>
<Img|x=152.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=321.0|y=27.0|img=zhangheng/178.png|esc=0>
<Text|ax=0.5|ay=0.5|x=270.0|y=34.5|color=251|size=18|text=��·��>
<Text|x=65.0|y=131.0|outline=1|color=255|size=18|outline=1|text=ʱ���ڱ䣬���������䣬������ְҵ���滶ӭ��...>
<Text|ay=0.5|x=216.0|y=177.5|outline=1|color=250|size=18|text=�������귨֮��|link=@yinluren_kaiqi>
<Img|x=190.0|y=171.0|img=zhangheng/211.png|esc=0>
<Text|x=167.0|y=66.0|color=249|size=18|outline=1|text=Ǭ��δ�������ҽ��Ǻ���>
<Text|x=167.0|y=99.0|color=249|size=18|outline=1|text=һ�п��򡡷��Դ��汾ɫ>

	]]

	say(actor,msg)
end



function yinluren_kaiqi(actor)
	if getsysint("��������") > 0 and not fangjiahao[getconst(actor,"<$USERACCOUNT>")] then
		sendmsg9(actor,"�װ�����ң�Ϊ�˸������õ����飬��ǰ����������������Ϸ")
		return
	end
	
	map(actor,"xszc")
end

function mingyunzhuzaizhe_show(actor)
	local zslv = getbaseinfo(actor,39)
	if zslv < 6 then
		sendmsg9(actor,"�����ˣ��벻Ҫ�����Ϸ����..........")
		return
	end
	if zslv < 10 then
		sendmsg9(actor,"�����ˣ����ת��������10ת�������Ұ�.....")
		return
	end
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=220|scale9r=30|bg=1|scale9t=30|scale9b=30|move=0|scale9l=30|esc=1|loadDelay=1|img=zhangheng/176.png|reset=1|show=0>
<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
<RText|ax=0.5|ay=0.5|x=246.0|y=35.5|color=251|size=18|text=����������>
<RText|x=22.0|y=55.0|color=161|size=16|text=��ʿ�������������˵��ʵ���Ѵﵽ�Ƿ��켫֮�����Ϸ��ڴ�>
<RText|x=22.0|y=80.0|color=161|size=16|text=�Ⱥ���ǧ�ꡣ���ţ�ֻ�еõ����޽����洫��������˹����>
<RText|x=22.0|y=105.0|color=161|size=16|text=��˵����׳Ӣ�۵�����ħ��ؼ䣬�����˹���ﵽ<���״̬/FCOLOR=250>....>
<RText|x=43.0|y=135.0|size=16|color=254|text=��ͼˢ�µ��귨�������ʷǳ�֮�ߣ���սʱ������ʿС��>
<Text|ax=0.5|ay=1|x=242.0|y=170.0|size=18|color=250|text=��ս  ��  �귨֮��|link=@mingyunzhuzaizhe_jinru>

	]]
	say(actor,msg)
end

function mingyunzhuzaizhe_jinru(actor)
	if getlevel(actor) < 76 then
		sendmsg9(actor,"����ȼ���ﵽ76��������ս","#00FF00")
		return
	end
	mapmove(actor,"mfzd",26,50,2)
end

function wzad_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=360|scale9r=30|bg=1|scale9t=30|scale9b=30|move=0|scale9l=30|esc=1|loadDelay=1|img=zhangheng/176.png|reset=1|show=0>
<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
<RText|ax=0.5|ay=0.5|x=246.0|y=35.5|color=251|size=18|text=δ֪����>
<RText|x=22.0|y=55.0|color=161|size=16|text=�Ӵ˵ػ��Ż�������ʿ����������δ֪������Ϊ������ħӰΣ>
<RText|x=22.0|y=78.0|color=161|size=16|text=���Ժ�, �����Ȼѧ���˷���֮��....>
<RText|x=22.0|y=104.0|color=161|size=16|text=ɢ�˵�׷��֮��,��ͼBOSS�쳣֮��,3ֻ����1ֻ�����,����2>
<RText|x=22.0|y=127.0|color=161|size=16|text=ֻ���Ǽٵģ��ٵ�ֻ��ף���ͣ���ı��ʷǳ�֮��,<�ɱ�һ����/FCOLOR=250>>
<RText|x=22.0|y=150.0|color=161|size=16|text=<Ʒ/FCOLOR=250>,Ҳ��<����ˮ��/FCOLOR=253>��<����װ��/FCOLOR=253>��Ψһ��ȡ֮������˵����װ����>
<RText|x=22.0|y=199.0|color=161|size=16|text=�˵�ͼ�쳣���,������Ҫ��ȥ���ȸ���һ��<���/FCOLOR=70>,��Ȼ��粽>
<RText|x=22.0|y=222.0|color=161|size=16|text=����,��Ȼֻ��<����һЩ��Χ/FCOLOR=254>,��Ҳ���Է�ֹ����ĳ��˷���..>
<Text|ax=0.5|ay=1|x=242.0|y=317.0|size=18|color=250|text=̽�� �� δ֪����|link=@wzad_jinru>
<Text|x=51.0|y=266.0|color=161|size=16|text=��ͼҪ��>
<Img|x=143.0|y=250.0|img=zhangheng/231.png|esc=0>
<Img|x=283.0|y=250.0|img=zhangheng/231.png|esc=0>
<RText|x=22.0|y=173.0|size=16|color=161|text=���ʳ���ǿ�����ԣ�����<ÿ��Сʱˢ��3ֻ����/FCOLOR=251>>


	]]
	msg=msg.."<ItemShow|x=138.0|y=245.0|width=70|height=70|itemid=".. getidbyname("���") .."|itemcount=1|showtips=1|bgtype=0>"
	msg=msg.."<RText|x=207.0|y=267.0|color=255|size=16|text=(<".. itemcount(actor,"���") .."/FCOLOR=249>/<1/FCOLOR=250>)>"
	
	msg=msg.."<ItemShow|x=278.0|y=245.0|width=70|height=70|itemid=".. getidbyname("��ˮ����") .."|itemcount=1|showtips=1|bgtype=0>"
	msg=msg.."<RText|x=347.0|y=267.0|color=255|size=16|text=(<".. itemcount(actor,"��ˮ����") .."/FCOLOR=249>/<100/FCOLOR=250>)>"
	

	say(actor,msg)
end

function wzad_jinru(actor)
	if getlevel(actor) < 48 then
		sendmsg9(actor,"����ȼ���ﵽ48������̽��","#FF00FF")
		return
	end
	if itemcount(actor,"���") < 1 then
		sendmsg9(actor,"��Ҫ���1�����ܽ���")
		return
	end
	if itemcount(actor,"��ˮ����") < 100 then
		sendmsg9(actor,"��Ҫ��ˮ����100�����ܽ���")
		return
	end
	local item = linkbodyitem(actor,2)
	if item == "0" then
		sendmsg9(actor,"���������ѫ�½���")
		return
	end
	
	takeitem(actor,"���",1)
	takeitem(actor,"��ˮ����",100)
	mapmove(actor,"wzad",200,10,3)
	callscriptex(actor, "SENDDELAYMSG", "̽��ʣ��ʱ�䣺%s",7200, 251,1,"@huicheng")
	setstr(actor,"��ʱ��ͼ","wzad")
	setint(actor,"��ʱ��ͼ����ʱ��",os.time())
	setint(actor,"��ʱʱ��",7200)
end

function chdd_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=540|img=zhangheng/176.png|scale9t=30|move=0|loadDelay=1|reset=1|scale9l=30|scale9b=30|show=0|bg=1|scale9r=30|esc=1>
<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
<RText|ax=0.5|ay=0.5|x=246.0|y=35.5|color=251|size=18|text=�ɻ����>
<RText|x=22.0|y=70.0|color=161|size=18|text=��ʿ��������������������ע�����Ϸ��ڲɼ��ɲݵĹ���>
<RText|x=22.0|y=100.0|size=18|color=161|text=�з�����һ�����ܣ����<"���Ĵ���"/FCOLOR=250>��60��--65���ĵ�ͼ>
<RText|x=21.0|y=130.0|color=161|size=18|text=��ɱС����<�����ٻ���BOSS/FCOLOR=253>�����������.....>
<RText|x=21.0|y=170.0|size=18|color=249|text=��ܰ��ʾ��Ϊ��ֹ�ѻ���Ӱ��������ҵ���Ϸ�����Լ���>
<RText|x=21.0|y=225.0|size=18|color=255|text=<�����ż� ��֮���� ��Ѫħ��/FCOLOR=70> ����δ�ﵽһת ÿ�ν����>
<RText|x=21.0|y=280.0|size=18|color=255|text=<������Ԩ �һ���/FCOLOR=70> ����δ�ﵽ��ת ÿ�ν����ʹ�������>
<RText|x=21.0|y=335.0|size=18|color=255|text=<��ڤ��Ĺ/FCOLOR=70>  ����δ�ﵽ��ת ÿ�ν����ʹ���������Ϊ30>
<RText|x=21.0|y=390.0|size=18|color=255|text=<���ҵ���/FCOLOR=70>  ����δ�ﵽ��ת ÿ�ν����ʹ���������Ϊ30>
<RText|x=21.0|y=445.0|color=255|size=18|text=<�������� �ž�����/FCOLOR=70> ����δ�ﵽ��ת ÿ�ν����ʹ�����>
<RText|x=21.0|y=500.0|color=254|size=18|text=�澭��������ʮ���ɽ���ת��>
<RText|x=21.0|y=195.0|color=249|size=18|text=��Ч��.�߼���ͼ���������¹���>
<RText|x=21.0|y=250.0|color=255|size=18|text=ʹ���������Ϊ30�� �ﵽһת��ʹ�����������������>
<RText|x=21.0|y=305.0|color=255|size=18|text=��Ϊ30�� �ﵽ��ת��ʹ�����������������>
<RText|x=22.0|y=360.0|color=255|size=18|text=�� �ﵽ��ת��ʹ�����������������>
<RText|x=22.0|y=415.0|color=255|size=18|text=�� �ﵽ��ת��ʹ�����������������>
<RText|x=21.0|y=470.0|color=255|size=18|text=����Ϊ30�� �ﵽ��ת��ʹ�����������������>

	]]
	say(actor,msg)
end

function yzdlt_show(actor)
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=220|bg=1|scale9l=30|scale9r=30|scale9t=30|scale9b=30|move=0|loadDelay=1|esc=1|reset=1|img=zhangheng/176.png|show=0>
	<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
	<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
	<RText|ax=0.5|ay=0.5|x=246.0|y=35.5|size=18|color=251|text=��ͷ>
	<RText|x=22.0|y=70.0|size=18|color=161|text=�˴���ֱ�ӽ���ɳ�Ϳ˻ʹ�������ֻ������ɳ�ڼ��ÿ>
	<RText|x=22.0|y=100.0|size=18|color=161|text=���<21.30-21.55/FCOLOR=253>�����������>
	<Button|x=190.0|y=155.0|color=250|size=18|nimg=zhangheng/12.png|text=����ʹ�|link=@yzdlt_jinru>

	]]
	say(actor,msg)
end

function yzdlt_jinru(actor)
	local hour = tonumber(os.date("%H",os.time()))
	local fen = tonumber(os.date("%M",os.time()))
	if castleinfo(5) and hour == 21 and fen >= 30 and fen < 55 then
		map(actor,"0150")
	else
		sendmsg9(actor,"��ǰʱ�䲻�ɽ���")
	end
end