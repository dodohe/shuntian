require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor)
	local xl_t = getfengyinxiangliang(actor)
	local jz_t = getfengyinjiezhi(actor)
	if #xl_t < 1 and #jz_t < 1 then
		sendmsg9(actor,"�����ˣ�û�²�Ҫ����������...")
		close()
		return
	end 
	
	local msg = [[
		<Img|x=0|width=518|height=378|bg=1|show=4|scale9r=50|scale9t=50|scale9b=50|move=1|scale9l=50|loadDelay=1|reset=0|img=zhangheng/1.png|esc=1>
		<Button|x=513.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.5|y=37.5|width=482|esc=0|img=zhangheng/185.png>
		<RText|ax=0|ay=0.5|x=219.0|y=65.5|size=20|color=251|text=��編ʦ>
		<RText|x=34.0|y=92.0|size=18|color=161|text=���ħ�޾��Ŵ�����������ͼ����"���µ�"�����������>
		<RText|x=34.0|y=119.0|size=18|color=161|text=�ȴ���Ե�ˣ��縺�Ž��2��������������....>
		<RText|x=34.0|y=146.0|size=18|color=161|text=��ʿ�����õ��˱��ֻ�����һ��<"���"/FCOLOR=251>�Ϳ�����ʾ>
		<RText|x=34.0|y=173.0|size=18|color=161|text=������������,�����ܻ�ö������ԣ��Ϳ�����컯��...>
		<RText|x=67.0|y=236.0|color=254|size=18|text=�������������>
		<Img|x=199.0|y=221.0|width=52|height=50|esc=0|img=zhangheng/158.png>
		<Img|x=275.0|y=221.0|width=52|height=50|esc=0|img=zhangheng/158.png>
		<RText|x=67.0|y=302.0|color=254|size=18|text=����ָ������>
		<Img|x=199.0|y=287.0|width=52|height=50|esc=0|img=zhangheng/158.png>
		<Img|x=275.0|y=287.0|width=52|height=50|esc=0|img=zhangheng/158.png>
		<Img|x=310.0|y=59.0|img=zhangheng/178.png|esc=0>
		<Img|x=141.0|y=60.0|img=zhangheng/177.png|esc=0>
	]]
	
	
	
	msg=msg..'<ItemShow|x=192.0|y=214.0|width=70|height=70|itemid='.. getidbyname("��������(��ӡ)") ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<ItemShow|x=269.0|y=214.0|width=70|height=70|itemid='.. getidbyname("���") ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<RText|ax=0.5|x=225.0|y=253.0|size=16|color=255|outline=1|text=<'.. #xl_t ..'/FCOLOR=249>/<1/FCOLOR=250>>'
	msg=msg..'<RText|ax=0.5|x=302.0|y=253.0|size=16|color=255|outline=1|text=<'.. itemcount(actor,"���") ..'/FCOLOR=249>/<1/FCOLOR=250>>'
	msg=msg..'<Button|x=361.0|y=227.0|color=10051|nimg=zhangheng/13.png|size=18|text=ȷ�����|link=@jiefeng,1>'
	
	msg=msg..'<ItemShow|x=192.0|y=280.0|width=70|height=70|itemid='.. getidbyname("�����ָ(��ӡ)") ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<ItemShow|x=269.0|y=280.0|width=70|height=70|itemid='.. getidbyname("���") ..'|itemcount=1|showtips=1|bgtype=0>'
	msg=msg..'<RText|ax=0.5|x=225.0|y=319.0|size=16|color=255|outline=1|text=<'.. #jz_t ..'/FCOLOR=249>/<1/FCOLOR=250>>'
	msg=msg..'<RText|ax=0.5|x=302.0|y=319.0|size=16|color=255|outline=1|text=<'.. itemcount(actor,"���") ..'/FCOLOR=249>/<1/FCOLOR=250>>'
	msg=msg..'<Button|x=361.0|y=293.0|color=10051|nimg=zhangheng/13.png|size=18|text=ȷ�����|link=@jiefeng,2>'
	
	say(actor,msg)
end

function jiefeng(actor,par)
	local t = getfengyinxiangliang(actor)
	if par == "2" then
		t = getfengyinjiezhi(actor)
	end
	if #t < 1 or itemcount(actor,"���") < 1 then
		sendmsg9(actor,"���ϲ���")
		return
	end
	takeitem(actor,"���",1)
	callscriptex(actor, "CallLua", "QFunction-0", "@pickupitemex,"..t[1]..",1")
	local jsonstr = getitemcustomabil(actor,t[1])
	--sendmsg6(actor,jsonstr)
	local json_t = json2tbl(jsonstr)
	if par == "1" then
		json_t["name"] = "��������"
	else
		json_t["name"] = "�����ָ"
	end
	setitemcustomabil(actor,t[1],tbl2json(json_t))
	if math.random(1,100) < 50 then
		setitemaddvalue(actor,t[1],2,2,249) --���ú�ɫ
	end
	refreshitem(actor,t[1])
	sendmsg9(actor,"�����ӡ�ɹ�")
	return show(actor)
end

function getfengyinxiangliang(actor)
	local baglist = getbaglist(actor)
	local t = {}
	for i = 1,#baglist do
		if getitemname(actor,baglist[i]) == "��������(��ӡ)" and getisjianquguo(actor,baglist[i]) == 0 then --û��������
			table.insert(t,baglist[i])
		end
	end
	return t
end

function getfengyinjiezhi(actor)
	local baglist = getbaglist(actor)
	local t = {}
	for i = 1,#baglist do
		if getitemname(actor,baglist[i]) == "�����ָ(��ӡ)" and getisjianquguo(actor,baglist[i]) == 0 then --û��������
			table.insert(t,baglist[i])
		end
	end
	return t
end