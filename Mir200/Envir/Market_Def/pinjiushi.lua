require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor)
	local msg = ""
	if getint(actor,"���������") >= 2 then 
		msg = [[
		<Img|x=0.0|y=0.0|width=490|height=280|scale9t=30|img=zhangheng/176.png|move=0|loadDelay=1|reset=1|scale9l=30|scale9b=30|show=0|bg=1|scale9r=30|esc=1>
		<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
		<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=Ʒ��ʦ>
		<Text|x=22.0|y=55.0|color=161|size=16|text=С���ӣ���Ҫ�����Ϸ�Ʒ�ƣ����ϰ���������Ƶļ���Խ��Խ��>
		<RText|x=22.0|y=77.0|color=161|size=16|text=��Ʈ���������.....>
		<RText|x=22.0|y=109.0|size=16|color=161|text=�Ϸ�Ҳ���Ϊ"�ƽ���"��������������, ����Զ�ǵ��Ǿ�<"������/FCOLOR=250>>
		<RText|x=22.0|y=131.0|size=16|color=161|text=<��������ħ��ؼ䣬�о�����ң���޾������"/FCOLOR=250>��׳־����, ����>
		<RText|x=22.0|y=153.0|size=16|color=161|text=�Ϸ���������ƵĹ��߿��Թ���ʹ�ã������ϻ���Ҫ������Ѱ��>
		<RText|x=22.0|y=175.0|size=16|color=161|text=��������ƵĴ���Խ��, ����һ����Ϊ<"�����ʦ"/FCOLOR=254>�����귨��>
		<RText|x=22.0|y=197.0|size=16|color=161|text=½���Ͼ��Ϸ�Ҳ�볢���Ǵ�˵�е�<"���Ǿ�"/FCOLOR=253>.......>
		<Text|ax=0.5|x=246.0|y=230.0|color=250|size=18|text=��� �� ��ʼ���|link=@niangjiu>
		]]
	else
		msg = [[
		<Img|x=0.0|y=0.0|width=490|height=180|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|reset=1|scale9l=30|esc=1|img=zhangheng/176.png|show=0>
		<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
		<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=246.0|y=34.5|size=18|color=251|text=Ʒ��ʦ>
		<Text|x=22.0|y=60.0|size=16|color=161|text=С���ӣ���Ҫ�����Ϸ�Ʒ�ƣ����ϰ���������Ƶļ���Խ��Խ��>
		<RText|x=22.0|y=87.0|size=16|color=161|text=��Ʈ���������.....>

		]]
	end
	say(actor,msg)
end
local niangjiu_t = {
	{"Ȫˮ","����","������"},
	{"Ȫˮ","����","���Ǿ�"}
}
function niangjiu(actor,id,shuoming,donghua)
	id = tonumber(id) or 1
	shuoming = tonumber(shuoming) or 0
	donghua = tonumber(donghua) or 0
	
	local msg = [[
		<Img|show=4|img=zhangheng/188.png|move=1|bg=1|reset=0|esc=1>
		<Layout|x=545|y=0|width=80|height=80|link=@exit>
		<Button|x=500.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=144.0|y=276.0|width=52|height=52|esc=0|img=zhangheng/104.png>
		<Img|x=238.0|y=276.0|width=52|height=52|esc=0|img=zhangheng/104.png>
		<Img|x=334.0|y=276.0|width=52|height=52|esc=0|img=zhangheng/104.png>
		<Button|x=37.0|y=264.0|nimg=zhangheng/189.png|color=255|size=18|link=@niangjiu,1>
		<Button|x=37.0|y=305.0|nimg=zhangheng/190.png|color=255|size=18|link=@niangjiu,2>
		<Img|x=198.0|y=283.0|img=zh/28.png|esc=0>
		<Img|x=290.0|y=286.0|img=zh/29.png|esc=0>
	]]
	
	msg=msg..'<Button|x=37.0|y=223.0|nimg=zhangheng/254.png|color=255|size=18|link=@niangjiu,'..id..',1>'
	msg=msg..'<RText|x=205.0|y=224.0|color=161|size=18|outline=1|text=����<'.. niangjiu_t[id][3] ..'/FCOLOR=250>��<'.. niangjiu_t[id][1] ..'*1+'.. niangjiu_t[id][2] ..'*1/FCOLOR=70>>'
	msg=msg..'<ItemShow|x=138.0|y=270.0|width=70|height=70|itemid='.. getidbyname(niangjiu_t[id][1]) ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<ItemShow|x=232.0|y=270.0|width=70|height=70|itemid='.. getidbyname(niangjiu_t[id][2]) ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<ItemShow|x=328.0|y=270.0|width=70|height=70|itemid='.. getidbyname(niangjiu_t[id][3]) ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<RText|ax=0.5|x=172.0|y=306.0|color=250|size=16|outline=1|text=<'.. itemcount(actor,niangjiu_t[id][1]) ..'/FCOLOR=249>/1>'
	msg=msg..'<RText|ax=0.5|x=266.0|y=306.0|color=250|size=16|outline=1|text=<'.. itemcount(actor,niangjiu_t[id][2]) ..'/FCOLOR=249>/1>'
	msg=msg..'<Button|x=402.0|y=287.0|nimg=zhangheng/191.png|color=255|size=18|link=@niang,'..id..','..shuoming..'>'
	if shuoming == 1 then
		msg=msg..[[
		<Img|ay=0.5|x=138.0|y=151.0|width=352|height=212|scale9t=10|scale9l=10|img=zh/7.png|scale9r=10|esc=0|scale9b=10>
		<RText|x=292.0|y=55.0|color=251|size=16|text=���˵��>
		<RText|x=147.0|y=82.0|width=344|size=16|color=255|text=�Ϸ�������ṩ����<"������"/FCOLOR=250>��<"���Ǿ�"/FCOLOR=250>�Ĺ���>
		<RText|x=147.0|y=104.0|width=344|size=16|color=255|text=����������<"����������"/FCOLOR=70>���κε�ͼ��־���>
		<RText|x=147.0|y=126.0|width=344|size=16|color=255|text=���䣬<Ȫˮ/FCOLOR=253>����Ҫ��60-65����ͼ�ɼ�����Ȼ��>
		<RText|x=147.0|y=148.0|width=344|color=255|size=16|text=������Ҳ�ɹ���ǰ��ֻ�����Ƹ����ƣ�������>
		<RText|x=147.0|y=170.0|width=344|color=255|size=16|text=�����Ƶ������ﵽ1000̳ʱ���ɻ��<"�����ʦ"/FCOLOR=253>>
		<RText|x=147.0|y=192.0|width=344|color=255|size=16|text=�ƺţ��������ƴ�˵�е�<"���Ǿ�"/FCOLOR=253>��...>
		<RText|x=163.0|y=225.0|width=344|size=16|color=254|text=����һƿȪˮ��Ҫ50Ԫ��>
		]]
		msg=msg..'<Text|x=392.0|y=225.0|width=344|size=16|color=70|text=ȷ������|link=@goumai,'..id..'>'
	end
	if donghua == 1 then
		msg=msg..'<Frames|x=138.0|y=45.0|speed=10|finishhide=1|loop=1|prefix=niangjiu/niangjiu_|count=20|suffix=.png>'
	end
	say(actor,msg)
end

function goumai(actor,id)
	if not subingot(actor,50) then
		sendmsg9(actor,"Ԫ������")
		return
	end
	setsysint("����Ȫˮ��Ԫ��",getsysint("����Ȫˮ��Ԫ��")+50)
	setsysint("ÿ�չ���Ȫˮ��Ԫ��",getsysint("ÿ�չ���Ȫˮ��Ԫ��")+50)
	
	giveitem(actor,"Ȫˮ",1)
	return niangjiu(actor,id,1)
end

function niang(actor,id,shuoming)
	id = tonumber(id)
	
	if id == 2 then
		if getskillinfo(actor,3001,1) ~= 3 then
			sendmsg9(actor,"�ﵽ<font color='#00FF00'>�����ʦ</font>�ſ�������<font color='#00FF00'>���Ǿ�</font>")
			return
		end
	end
	if itemcount(actor,niangjiu_t[id][1]) < 1 then
		sendmsg9(actor,"���ϲ���")
		return
	end
	if itemcount(actor,niangjiu_t[id][2]) < 1 then
		sendmsg9(actor,"���ϲ���")
		return
	end
	takeitem(actor,niangjiu_t[id][1],1)
	takeitem(actor,niangjiu_t[id][2],1)
	local bind = 0
	if getint(actor,"���������") == 2 then
		addskill(actor,3001,0)
		setint(actor,"���������",3)
		bind = 371
		confertitle(actor, '���ѧͽ')
		callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show")
	end
	if getskillinfo(actor,3001,1) < 3 then
		setskillinfo(actor,3001,3,getskillinfo(actor,3001,3)+1)
		--sendmsg6(actor,"���������+1��")
		sendmsg9(actor,"���Ƴɹ������������+1��")
	end
	if getskillinfo(actor,3001,1) == 0 and getskillinfo(actor,3001,3) >= 1000 then
		setskillinfo(actor,3001,1,3)
		setskillinfo(actor,3001,3,1)
		confertitle(actor, '�����ʦ')
		deprivetitle(actor, '���ѧͽ')
	end
	
	giveitem(actor,niangjiu_t[id][3],1,bind)
	--sendmsg9(actor,"���Ƴɹ�")
	return niangjiu(actor,id,shuoming,1)
end


