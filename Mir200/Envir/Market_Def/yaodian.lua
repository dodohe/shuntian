require("Envir/Market_Def/zh.lua") --���˷�װ����

-----------------------------��·��NPC
function show(actor)
	if getint(actor,"�������id") == 15 then
		newdeletetask(actor,16) --ɾ������16
		setint(actor,"�������id",16)
		addbindgold(actor,10000)
		sendmsg9(actor,"�˽�ҩƷ����ý��*10000")
		callscriptex(actor, "CallLua", "QFunction-0", "@renwupanduan") --����ϵͳ
	end
	
	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
	<Img|x=9.0|y=9.0|height=232|img=zhangheng/210.png|esc=0>
	<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
	<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=ҩ���ϰ�>
	<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
	<Text|x=25.0|y=65.0|color=255|size=18|text=��ã����Ǹ�ð�����ṩҩƷ��������ߣ�������Ҫ��ʲô��>
	<Text|ay=0.5|x=51.0|y=111.5|size=18|color=250|text=����ҩƷ|link=@goumaiyaopin>
	<Img|x=26.0|y=103.0|img=zhangheng/211.png|esc=0>
	<Text|ay=0.5|x=51.0|y=156.5|size=18|color=250|text=�������鱦��|link=@jingyanbaodian>
	<Img|x=26.0|y=148.0|img=zhangheng/211.png|esc=0>
	
	<Text|ay=0.5|x=51.0|y=201.5|color=250|size=18|text=�õģ���֪����|link=@exit>
	<Img|x=26.0|y=193.0|img=zhangheng/211.png|esc=0>

	]]
	--[[if getmap(actor) == "3" then
		msg=msg.."<Text|ay=0.5|x=337.0|y=201.5|color=253|size=18|text=����ҩ��Ҳ����ҩŶ>"
		msg=msg.."<Img|x=312.0|y=193.0|img=zhangheng/211.png|esc=0>"
	end--]]
	
	--if getlevel(actor) >= 52 then
		msg=msg.."<Text|ay=0.5|x=337.0|y=156.5|size=18|color=250|text=����ҩƷ����|link=@kunsheng>"
		msg=msg.."<Img|x=312.0|y=148.0|img=zhangheng/211.png|esc=0>"
	--end
	say(actor,msg)
end

function kunsheng(actor)
	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
	<Img|x=9.0|y=9.0|height=232|img=zhangheng/210.png|esc=0>
	<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
	<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=ҩ���ϰ�>
	<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
	<Text|x=25.0|y=65.0|color=255|size=18|text=�Ϸ�ӳ���Ͽ�ȴ��ص��������ɽ�����ѩ˪������ҩ����>
	<Text|x=25.0|y=94.0|color=255|size=18|text=��Ը����ҩƷ�������㽻���޻�ֵ����������Ը����>
	
	<Text|x=404.0|y=140.0|size=18|color=250|text=ȷ������|link=@kun,1>
	<Text|x=404.0|y=190.0|size=18|color=250|text=ȷ������|link=@kun,2>

	]]
	msg=msg.."<RText|x=25.0|y=140.0|color=255|size=18|text=<15/FCOLOR=250>���޻�ɽ���<ҩƷ����/FCOLOR=116>*10>"
	msg=msg.."<RText|x=25.0|y=190.0|color=255|size=18|text=<50/FCOLOR=250>�������ɽ���<ҩƷ����/FCOLOR=116>*10>"
	say(actor,msg)
end

function kun(actor,par)
	par = tonumber(par)
	if par == 1 then
		if getshouhunzhi(actor) < 15 then
			sendmsg9(actor,"�޻�ֵ����")
			return
		end
		subshouhunzhi(actor,15)
	else
		if getshengwang(actor) < 50 then
			sendmsg9(actor,"��������")
			return
		end
		subshengwang(actor,50)
	end
	giveitem(actor,"ҩƷ����",10,370)
	sendmsg9(actor,"�һ��ɹ�")
	return kunsheng(actor)
end


function jingyanbaodian(actor)
	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
	<Img|x=9.0|y=9.0|height=232|img=zhangheng/210.png|esc=0>
	<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
	<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=ҩ���ϰ�>
	<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
	<Text|x=25.0|y=65.0|color=255|size=18|text=��ã��Ϸ�����ṩʹ��������ı��䣬������Ҫ���߽�����>
	
	<Text|ay=0.5|x=51.0|y=201.5|color=250|size=18|text=������ҳ|link=@show>
	<Img|x=26.0|y=193.0|img=zhangheng/211.png|esc=0>
	<Text|ay=0.5|x=350.0|y=202.0|color=250|size=18|text=ȷ������|link=@jiaohuan>
	<Img|x=325.0|y=193.0|img=zhangheng/211.png|esc=0>
	]]
	msg=msg.."<RText|x=25.0|y=114.0|color=255|size=18|text=��Ҫ��<15/FCOLOR=250>����ˮ���� + <300/FCOLOR=250>��<�귨�ᾧ/FCOLOR=253>�ɽ���<���鱦��/FCOLOR=116>*1>"
	say(actor,msg)
end

function jiaohuan(actor)
	if itemcount(actor,"��ˮ����") < 15 or itemcount(actor,"�귨�ᾧ") < 300 then
		sendmsg9(actor,"��ˮ������귨�ᾧ����")
		return
	end
	takeitem(actor,"��ˮ����",15)
	takeitem(actor,"�귨�ᾧ",300)
	giveitem(actor,"���鱦��",1,370)
	sendmsg9(actor,"�һ��ɹ�")
	return jingyanbaodian(actor)
end

local yao_t = {
	{"ǿЧ��ҩ��",1,5000},{"ǿЧħ��ҩ��",1,5000},{"ǿЧ̫��ˮ",1,500},{"����ѩ˪",1,1500},{"����ҩ",1,2500},{"ǿЧ̫��ˮ��",1,2500},{"����ѩ˪",10,15000},{"����ҩ",10,25000},{"ǿЧ̫��ˮ��",1,1},{"����ѩ˪",10,6},{"����ҩ",10,10},{"����ѩ˪��",1,10},{"����ҩ��",1,12}
}
function goumaiyaopin(actor,yemian,xzid)
	yemian = tonumber(yemian) or 1
	xzid = tonumber(xzid) or 0
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Img|x=9.0|y=9.0|height=232|img=zhangheng/210.png|esc=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=ҩ���ϰ�>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|x=25.0|y=60.0|color=255|size=16|text=Ϊ�˸����㹻�����飬������ͨҩƷ��ռ��������Ч����>
		<RText|x=25.0|y=83.0|color=255|size=16|text=������Ϊ���PK��ҩ������>
		<RText|x=25.0|y=106.0|color=255|size=16|text=ǿЧ��ҩ���Լ�ǿЧħ��ҩ��������Զ������ڹұ���������>
		<RText|x=25.0|y=129.0|color=255|size=16|text=�����ڹұ��������ú�ʹ�ù���>
		<RText|x=25.0|y=152.0|color=255|size=16|text=ÿ�ι���洢������<5000/FCOLOR=250>��������������<50��/FCOLOR=250>����>
		
		<Text|ay=0.5|x=51.0|y=214.5|size=18|color=250|text=����|link=@show>
		<Img|x=26.0|y=206.0|img=zhangheng/211.png|esc=0>
		<Img|x=1.0|y=250.0|img=zh/80.png|link=@kong>
			
	]]

	if yemian == 1 then
		msg=msg.."<Button|x=28.0|y=488.0|nimg=zh/82.png|color=255|size=18|pimg=zh/83.png|link=@kong>"
		msg=msg.."<Button|x=123.0|y=488.0|nimg=zh/84.png|color=255|size=18|pimg=zh/85.png|link=@goumaiyaopin,2>"
	else
		msg=msg.."<Button|x=28.0|y=488.0|nimg=zh/82.png|color=255|size=18|pimg=zh/83.png|link=@goumaiyaopin,1>"
		msg=msg.."<Button|x=123.0|y=488.0|nimg=zh/84.png|color=255|size=18|pimg=zh/85.png|link=@kong>"
	end
	
	msg=msg.."<Text|ax=0.5|ay=0.5|x=99.5|y=512.5|color=255|size=18|text=".. yemian .."/2>"
	
	

	local xuhao = 0
	for i = 1+(yemian-1)*8,8+(yemian-1)*8 do
		if yao_t[i] == nil then
			break
		end
		if i >= 12 then
			if getlevel(actor) < 65 and getbaseinfo(actor,39) == 0 then
				break
			end
		end
		
		msg=msg.."<Img|x=".. 19+xuhao%2*149 .."|y=".. 268+math.floor(xuhao/2)*52 .."|width=145|height=50|esc=0|img=zhangheng/148.png|link=@goumaiyaopin,".. yemian..",".. i ..">"
		msg=msg.."<Img|x=".. 20+xuhao%2*149 .."|y=".. 269+math.floor(xuhao/2)*52 .."|img=zh/81.png|esc=0>"
		msg=msg.."<ItemShow|x=".. 11+xuhao%2*149 .."|y=".. 260+math.floor(xuhao/2)*52 .."|width=70|height=70|itemid=".. getidbyname(yao_t[i][1]) .."|itemcount=1|showtips=1|bgtype=0>"
		if yao_t[i][2] > 1 then
			msg=msg.."<Text|ay=0.5|x=".. 23+xuhao%2*149 .."|y=".. 305+math.floor(xuhao/2)*52 .."|outline=1|color=255|size=14|text=".. yao_t[i][2] ..">"
		end
		msg=msg.."<Text|ay=0.5|x=".. 70+xuhao%2*149 .."|y=".. 283+math.floor(xuhao/2)*52 .."|color=255|size=14|text=".. yao_t[i][1] ..">"
		if i >= 9 then
			msg=msg.."<Text|ay=0.5|x=".. 70+xuhao%2*149 .."|y=".. 305+math.floor(xuhao/2)*52 .."|color=255|size=14|text=".. yao_t[i][3] .."Ԫ��>"
		else
			msg=msg.."<Text|ay=0.5|x=".. 70+xuhao%2*149 .."|y=".. 305+math.floor(xuhao/2)*52 .."|color=255|size=14|text=".. yao_t[i][3] .."���>"
		end
		if xzid == i then
			msg=msg.."<Img|x=".. 18+xuhao%2*149 .."|y=".. 267+math.floor(xuhao/2)*52 .."|width=147|height=52|scale9b=0|scale9r=0|scale9t=0|img=zhangheng/45.png|scale9l=0|esc=0>"
		end

		xuhao = xuhao + 1
	end
		
	msg=msg.."<Button|x=228.0|y=497.0|nimg=zh/86.png|color=255|size=18|pimg=zh/87.png|link=@goumai,".. xzid ..">"
	say(actor,msg)
end

function goumai(actor,par)
	local sh_data = getshouhunbuffdata(actor) --��ȡ�޻�buff����
	local zhekou = 1
	for i = 1,#sh_data do
		if sh_data[i] == "��������" then
			zhekou = 0.8
		end
	end
	
	par = tonumber(par)
	if par == 0 then
		sendmsg9(actor,"��ѡ�����ҩƷ")
		return
	end
	if par == 1 then
		if getint(actor,"�洢����") >= 500000 then
			sendmsg9(actor,"HP�洢������")
			return
		end
		if getbindgold(actor) < 5000*zhekou then
			sendmsg9(actor,"��Ҳ���".. 5000*zhekou)
			return
		end
		subbindgold(actor,5000*zhekou)
		setint(actor,"�洢����",getint(actor,"�洢����")+5000)
		if getint(actor,"�洢����") >= 500000 then
			setint(actor,"�洢����",500000)
		end
		sendmsg9(actor,"����ɹ�����ǰHP����"..getint(actor,"�洢����"))
		callscriptex(actor, "CallLua", "QFunction-0", "@chuliangxiangshi")
		return
	end
	if par == 2 then
		if getint(actor,"�洢����") >= 500000 then
			sendmsg9(actor,"MP�洢������")
			return
		end
		if getbindgold(actor) < 5000*zhekou then
			sendmsg9(actor,"��Ҳ���".. 5000*zhekou)
			return
		end
		subbindgold(actor,5000*zhekou)
		setint(actor,"�洢����",getint(actor,"�洢����")+5000)
		if getint(actor,"�洢����") >= 500000 then
			setint(actor,"�洢����",500000)
		end
		sendmsg9(actor,"����ɹ�����ǰMP����"..getint(actor,"�洢����"))
		callscriptex(actor, "CallLua", "QFunction-0", "@chuliangxiangshi")
		return
	end
	if par >= 9 then
		if getbagblank(actor) < yao_t[par][2] then
			sendmsg9(actor,"�����ո���".. yao_t[par][2] .."��")
			return
		end
		if getingot(actor) < yao_t[par][3] then
			sendmsg9(actor,"Ԫ������".. yao_t[par][3])
			return
		end
		subingot(actor,yao_t[par][3],"��ҩ")
		giveitem(actor,yao_t[par][1],yao_t[par][2],0)
		sendmsg9(actor,"����ɹ�")
		return
	end

	if getbagblank(actor) < yao_t[par][2] then
		sendmsg9(actor,"�����ո���")
		return
	end
	if getbindgold(actor) < yao_t[par][3]*zhekou then
		sendmsg9(actor,"��Ҳ���"..yao_t[par][3]*zhekou)
		return
	end
	local bind = 0
	if getbindjinbi(actor) > 0 then
		bind = 370
	end
	subbindgold(actor,yao_t[par][3]*zhekou)
	giveitem(actor,yao_t[par][1],yao_t[par][2],bind)
	sendmsg9(actor,"����ɹ�")

	return
end

function getshouhunbuffdata(actor) --��ȡ�޻�buff����
	local data = {"","","","","",""}
	local sh_str = getstr(actor,"�޻�buff����")
	if sh_str ~= "" then
		data=json2tbl(sh_str)
	end
	return data
end
