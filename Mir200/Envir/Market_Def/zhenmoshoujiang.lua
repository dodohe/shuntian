require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor)
	local xz_t = getfengyinxiezi(actor)
	local yd_t = getfengyinyaodai(actor)
	if #xz_t < 1 and #yd_t < 1 then
		sendmsg9(actor,"��ʿ�����¶�ħ�Ѿ�ս����......")
		close()
		return
	end 
	local msg = [[
		<Img|x=0|width=518|height=378|bg=1|scale9l=50|scale9r=50|scale9t=50|scale9b=50|move=1|reset=0|loadDelay=1|esc=1|img=zhangheng/1.png|show=4>
		<Button|x=513.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.5|y=37.5|width=482|img=zhangheng/185.png|esc=0>
		<RText|ax=0|ay=0.5|x=219.0|y=65.5|size=20|color=251|text=��ħʹ��>
		<RText|x=34.0|y=92.0|size=18|color=161|text=����"Զ�ų��¶�ħ"��ս��, �����ܵĹ�����,  �����Ϲ���>
		<RText|x=34.0|y=119.0|size=18|color=161|text=��, ���Ϸ��о� �ɽ������ӡ�Ķ�ħװ��....>
		<RText|x=34.0|y=146.0|size=18|color=161|text=���ڴ�װ���̺�а��֮�������Ҹ�������buff����Ҳֻ��>
		<RText|x=34.0|y=173.0|size=18|color=161|text=<50%�ļ���/FCOLOR=254>���ɹ����ܻ�ö������ԣ��Ϳ�����컯��>
		<Img|x=310.0|y=59.0|img=zhangheng/178.png|esc=0>
		<Img|x=141.0|y=60.0|img=zhangheng/177.png|esc=0>

		<RText|x=36.0|y=236.0|color=254|size=18|text=���ѥ�ӡ�����>
		<Img|x=168.0|y=221.0|width=52|height=50|esc=0|img=zhangheng/158.png>
		<Img|x=244.0|y=221.0|width=52|height=50|esc=0|img=zhangheng/158.png>
		<Img|x=320.0|y=221.0|width=52|height=50|esc=0|img=zhangheng/158.png>
		<RText|x=36.0|y=302.0|color=254|size=18|text=�������������>
		<Img|x=168.0|y=287.0|width=52|height=50|esc=0|img=zhangheng/158.png>
		<Img|x=244.0|y=287.0|width=52|height=50|esc=0|img=zhangheng/158.png>
		<Img|x=320.0|y=287.0|width=52|height=50|esc=0|img=zhangheng/158.png>
	]]
	
	msg=msg..'<ItemShow|x=161.0|y=214.0|width=70|height=70|itemid='.. getidbyname("��ħ֮ѥ(��ӡ)") ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<ItemShow|x=238.0|y=214.0|width=70|height=70|itemid='.. getidbyname("����֮��") ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<ItemShow|x=315.0|y=214.0|width=70|height=70|itemid='.. getidbyname("���") ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<RText|ax=0.5|x=194.0|y=253.0|size=16|color=255|outline=1|text=<'.. #xz_t ..'/FCOLOR=249>/<1/FCOLOR=250>>'
	msg=msg..'<RText|ax=0.5|x=271.0|y=253.0|size=16|color=255|outline=1|text=<'.. itemcount(actor,"����֮��") ..'/FCOLOR=249>/<100/FCOLOR=250>>'
	msg=msg..'<RText|ax=0.5|x=348.0|y=253.0|size=16|color=255|outline=1|text=<'.. itemcount(actor,"���") ..'/FCOLOR=249>/<3/FCOLOR=250>>'
	msg=msg..'<Button|x=389.0|y=227.0|color=10051|nimg=zhangheng/13.png|size=18|text=ȷ�����|link=@jiefeng,1>'
	
	msg=msg..'<ItemShow|x=161.0|y=280.0|width=70|height=70|itemid='.. getidbyname("��ħ֮��(��ӡ)") ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<ItemShow|x=238.0|y=280.0|width=70|height=70|itemid='.. getidbyname("����֮��") ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<ItemShow|x=315.0|y=280.0|width=70|height=70|itemid='.. getidbyname("���") ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<RText|ax=0.5|x=193.5|y=319.0|size=16|color=255|outline=1|text=<'.. #yd_t ..'/FCOLOR=249>/<1/FCOLOR=250>>'
	msg=msg..'<RText|ax=0.5|x=271.0|y=319.0|size=16|color=255|outline=1|text=<'.. itemcount(actor,"����֮��") ..'/FCOLOR=249>/<100/FCOLOR=250>>'
	msg=msg..'<RText|ax=0.5|x=348.0|y=319.0|size=16|color=255|outline=1|text=<'.. itemcount(actor,"���") ..'/FCOLOR=249>/<3/FCOLOR=250>>'
	msg=msg..'<Button|x=389.0|y=293.0|color=10051|nimg=zhangheng/13.png|size=18|text=ȷ�����|link=@jiefeng,2>'
	
	say(actor,msg)
end

function jiefeng(actor,par)
	local t = getfengyinxiezi(actor)
	if par == "2" then
		t = getfengyinyaodai(actor)
	end
	if #t < 1 or itemcount(actor,"���") < 3 or itemcount(actor,"����֮��") < 100 then
		sendmsg9(actor,"���ϲ���")
		return
	end
	takeitem(actor,"���",3)
	takeitem(actor,"����֮��",100)
	if math.random(1,100) < 50 then
		delitem(actor,t[1])
		sendmsg9(actor,"�����ӡʧ��")
		sendmsg6(actor,"�����ӡʧ��")
		if itemcount(actor,"��ħ֮ѥ(��ӡ)") < 1 and itemcount(actor,"��ħ֮��(��ӡ)") < 1 then
			close()
			return
		end
		return show(actor)
	end

	callscriptex(actor, "CallLua", "QFunction-0", "@pickupitemex,"..t[1]..",1")
	local jsonstr = getitemcustomabil(actor,t[1])
	--sendmsg6(actor,jsonstr)
	local json_t = json2tbl(jsonstr)
	if par == "1" then
		json_t["name"] = "��ħ֮ѥ"
	else
		json_t["name"] = "��ħ֮��"
	end
	setitemcustomabil(actor,t[1],tbl2json(json_t))
	if math.random(1,100) < 50 then
		setitemaddvalue(actor,t[1],2,2,249) --���ú�ɫ
	end
	refreshitem(actor,t[1])
	sendmsg9(actor,"�����ӡ�ɹ�")
	sendmsg6(actor,"�����ӡ�ɹ�")
	return show(actor)
end

function getfengyinxiezi(actor)
	local baglist = getbaglist(actor)
	local t = {}
	for i = 1,#baglist do
		if getitemname(actor,baglist[i]) == "��ħ֮ѥ(��ӡ)" and getisjianquguo(actor,baglist[i]) == 0 then --û��������
			table.insert(t,baglist[i])
		end
	end
	return t
end

function getfengyinyaodai(actor)
	local baglist = getbaglist(actor)
	local t = {}
	for i = 1,#baglist do
		if getitemname(actor,baglist[i]) == "��ħ֮��(��ӡ)" and getisjianquguo(actor,baglist[i]) == 0 then --û��������
			table.insert(t,baglist[i])
		end
	end
	return t
end