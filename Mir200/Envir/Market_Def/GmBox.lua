release_print("~~~~~~~~~����GmBox.lua~~~~~~~~~")
require("Envir/Market_Def/texiao.lua") --��Ч����
---------gm������
local zhanghao = {["1979583"]=1,["9071622"]=1,["10202743"]=1} --������˺�
function usercmd1(actor,mima)

	---------sendmsg6(actor,getconst(actor,"<$IPADDR>"))
	-- if ( zhanghao[getconst(actor,"<$USERACCOUNT>")] == 1 and getconst(actor,"<$IPADDR>") == "171.114.160.81"  and getmap(actor)=="hao5" ) or getconst(actor,"<$SERVERNAME>") == "" then
		-- if mima == "" then
			sendmsg9(actor,"����������","#00FFFF",2)
			gmbox(actor)
			setgmlevel(actor,10)
		-- end
	-- end
end
----------gm���������

local yijiannius = {
	"�������","��������","��ֵ����","�����","���߲���","�������","NPC����","�Ǳ����","��ͼ����","ˢװ��","��Чչʾ"
}
local erjiannius = {
	["�������"] = {"����","�ȼ�","ְҵ","�Ա�","������","BUFF"},
	["��������"] = {"��������","����int����","����str����","����int�����","����str�����","ϵͳint����","ϵͳstr����"},
	["��ֵ����"] = {"��ֵ"},
	["���߲���"] = {"��Ʒ����","�����Ʒ"},
	["��ͼ����"] = {"�����ͼ��Ʒ","�����ͼ����"},
	["ˢװ��"] = {"ˢװ��"},
	["��Чչʾ"] = {"��Чչʾ"},
	["�Ǳ����"] = {"��������"},
	["�������"] = {"��ͼ����"},
	["NPC����"] = {"NPC����"},
	["�����"] = {"�����"},
}

function closegmbox(actor)
	delbutton(actor,102,19)
end

function gmbox(actor,anniu1id,anniu2id)
	local str = [[				
				<Button|x=-614.0|y=1.0|width=130|color=251|size=20|nimg=zh/18.png|outline=2|text=GM������|link=@gmbox>
				<Button|x=-483.0|y=1.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@closegmbox>"
				]]

	addbutton(actor,102,19,str)
	
	anniu1id = tonumber(anniu1id) or 0
	anniu2id = tonumber(anniu2id) or 0
	local msg = [[
		<Img|show=4|bg=1|loadDelay=0|move=1|esc=1|img=zh/1.png|reset=1|reload=0>
		<Button|x=780.0|y=10.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Text|x=25.0|y=16.0|outline=2|color=149|size=20|text=GM������>
		<Img|x=232.0|y=53.0|height=444|img=zh/8.png|esc=0>
		<ListView|children={2}|x=30.0|y=55.0|width=200|height=440|bounce=0|direction=1|reload=0|margin=1>
	]]
	
	local ids = ""
	for i = 4,500 do
		ids = ids .. i .. ","
	end
	
	local addgaodu = 0
	local anniujiange = 45 --��ť���
	local gao = #yijiannius * anniujiange --һ����ť�߶�
	local wenzigao = 0
	if anniu1id ~= 0 then
		wenzigao = #erjiannius[yijiannius[anniu1id]]*30 --������ť�߶�
	end
	msg = msg ..'<Img|id=2|children={3}|height='.. gao + wenzigao ..'|img=zh/0.png|esc=0>' --���õ�ͼ�� ��
	msg = msg ..'<Img|id=3|children={'.. ids ..'}|height='.. gao + wenzigao ..'|img=zh/0.png|esc=0>' --���õ�ͼ�� ��
	
	local qsid = 4
	for i = 1,#yijiannius do
		if i == anniu1id then
			msg = msg ..'<Button|id='..qsid..'|x=4.0|y='.. 5+(i-1)*anniujiange ..'|size=18|width=190|nimg=zh/10.png|color=250|outline=2|text='..yijiannius[i]..'|link=@gmbox>'
			qsid = qsid + 1
			addgaodu = wenzigao
			local t = erjiannius[yijiannius[anniu1id]]
			for j = 1,#t do
				msg = msg ..'<Button|id='..qsid..'|x=4.0|y='.. i*45+(j-1)*30 ..'|size=18|width=190|nimg=zh/21.png|color=250|outline=2|text='..t[j]..'|link=@gmbox,'.. i ..","..j..'>'
				qsid = qsid + 1
				if anniu2id == j then
					msg = msg ..'<Img|id='..qsid..'|x=4.0|y='.. i*45+(j-1)*30 ..'|size=18|width=190|height=31|img=zh/22.png>'
					qsid = qsid + 1
				end
			end
		else
			msg = msg ..'<Button|id='..qsid..'|x=4.0|y='.. 5+(i-1)*anniujiange + addgaodu ..'|size=18|width=190|nimg=zh/11.png|color=140|outline=2|text='..yijiannius[i]..'|link=@gmbox,'.. i ..'>'
			qsid = qsid + 1			
		end
	end
	local xuanxiang = ""
	if anniu1id ~= 0 and anniu2id ~= 0 then
		xuanxiang = erjiannius[yijiannius[anniu1id]][anniu2id]
		--sendmsg9(actor,xuanxiang)
	end
	if xuanxiang == "��������" then
		msg = msg .. kaiqutianshu(actor,anniu1id,anniu2id)
	end
	if xuanxiang == "����int����" then
		msg = msg .. intbianliang(actor,anniu1id,anniu2id)
	end
	if xuanxiang == "����str����" then
		msg = msg .. strbianliang(actor,anniu1id,anniu2id)
	end
	if xuanxiang == "����int�����" then
		msg = msg .. intdaybianliang(actor,anniu1id,anniu2id)
	end
	if xuanxiang == "����str�����" then
		msg = msg .. strdaybianliang(actor,anniu1id,anniu2id)
	end
	if xuanxiang == "ϵͳint����" then
		msg = msg .. sysintbianliang(actor,anniu1id,anniu2id)
	end
	if xuanxiang == "ϵͳstr����" then
		msg = msg .. sysstrbianliang(actor,anniu1id,anniu2id)
	end
	if xuanxiang == "�����Ʒ" then
		msg = msg .. tianjiaitem(actor,anniu1id,anniu2id)
	end
	----���������
	if xuanxiang == "����" then
		msg = msg .. huobicaozuo(actor,anniu1id,anniu2id)
	end
	if xuanxiang == "�ȼ�" then
		msg = msg .. dengjicaozuo(actor,anniu1id,anniu2id)
	end
	if xuanxiang == "ְҵ" then
		msg = msg .. jobcaozuo(actor,anniu1id,anniu2id)
	end
	if xuanxiang == "�Ա�" then
		msg = msg .. sexcaozuo(actor,anniu1id,anniu2id)
	end
	if xuanxiang == "BUFF" then
		msg = msg .. buffcaozuo(actor,anniu1id,anniu2id)
	end
	----��������ν���
	if xuanxiang == "ˢװ��" then
		msg = msg .. shuazhuangbei(actor,anniu1id,anniu2id)
	end
	----��ֵ�����ν���
	if xuanxiang == "��ֵ" then
		msg = msg .. gmboxchongzhi(actor,anniu1id,anniu2id)
	end
	----��Чչʾ
	if xuanxiang == "��Чչʾ" then
		delaygoto(actor,200,"texiaoshow")
	end
	----�������
	if xuanxiang == "��������" then
		msg = msg .. kaiqigongcheng(actor,anniu1id,anniu2id)
	end
	----ˢ��ʱ��
	if xuanxiang == "��ͼ����" then
		msg = msg .. dituguaiwu(actor,anniu1id,anniu2id)
	end
	----��Ʒ����
	if xuanxiang == "��Ʒ����" then
		msg = msg .. jipinshuxingcaozuo(actor,anniu1id,anniu2id)
	end
	--�����
	if xuanxiang == "�����" then
		msg = msg .. huodongkongzhi(actor,anniu1id,anniu2id)
	end
	say(actor,msg)
end

---�����
function huodongkongzhi(actor,anniu1id,anniu2id)
	local msg = ""
	msg = msg ..'<Text|x=255.0|y=68.0|color=255|size=18|text=�������>'
	msg = msg ..'<Text|x=257.0|y=96.0|color=255|size=18|text=������ң�'.. getsysstr("�������������") ..'>'
	msg = msg ..'<Button|x=257.0|y=131.0|width=120|size=18|color=255|nimg=zh/3.png|text=������ҿ���|link=@huodongkongzhi_kj,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=419.0|y=131.0|width=120|color=255|nimg=zh/3.png|size=18|text=�������˽���|link=@huodongkongzhi_fj,'.. anniu1id ..','.. anniu2id ..'>'
	return msg
end

function huodongkongzhi_kj(actor,anniu1id,anniu2id)
	auto_qxt_kaijiang()
	sendmsg9(actor,"�����ɹ�")
	sendmsg6(actor,"�����ɹ�")
	return gmbox(actor,anniu1id,anniu2id)
end

function huodongkongzhi_fj(actor,anniu1id,anniu2id)
	auto_qxt_fajiang()
	sendmsg9(actor,"�����ɹ�")
	sendmsg6(actor,"�����ɹ�")
	return gmbox(actor,anniu1id,anniu2id)
end

---ˢ��ʱ�����ò���
function dituguaiwu(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=244.0|y=108.0|color=255|size=18|text=������>
	<Img|x=306.0|y=101.0|img=zh/30.png|esc=0>
	<Input|x=310.0|y=103.0|width=180|height=25|type=0|place=��Ϊ���й�|size=16|color=255|inputid=2>
	]]
	msg = msg ..'<Text|x=244.0|y=70.0|color=255|size=18|text=��ͼid    '.. getmap(actor) ..'>'
	msg = msg ..'<Button|x=541.0|y=65.0|nimg=zh/3.png|color=255|size=18|submitInput=2|text=��ѯ|link=@dituguaiwuex,'.. anniu1id ..','.. anniu2id ..'>'
	
	msg = msg ..'<Button|x=541.0|y=165.0|nimg=zh/3.png|color=255|size=18|text=�����ѯ|link=@diturenwu>'
	return msg
end

function diturenwu(actor)
	local guai_t = getobjectinmap(getmap(actor),500,500,500,1)
	sendmsg6(actor,tbl2json(guai_t))
	for i = 1,#guai_t do
		local name = getname(guai_t[i])
		sendmsg6(actor,name ..'  ����'..getx(guai_t[i])..','..gety(guai_t[i])..' ��ֵ��'..getint(guai_t[i],"�ۼƳ�ֵ")..' �ȼ���'..getlevel(guai_t[i]))	
	end
	sendmsg6(actor,"����������"..#guai_t)
end

function dituguaiwuex(actor,anniu1id,anniu2id,ye)
	local monname = getconst(actor,'<$NPCINPUT(2)>') --������
	local guai_t = getmapmon(getmap(actor),monname,500,500,500)
	local ye = tonumber(ye) or 1
	sendmsg6(actor,tbl2json(guai_t))
	for i = 1,#guai_t do
		local name = getbaseinfo(guai_t[i],1,1) --������
		sendmsg6(actor,name ..'  ����'..getx(guai_t[i])..','..gety(guai_t[i]))	
	end
	sendmsg6(actor,"����������"..#guai_t)
end
-----------------------------

---��ֵ����
function gmboxchongzhi(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=���ý��Ԫ>
	<Text|x=320.0|y=226.0|color=255|size=18|text=�����>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=1|inputid=1|size=16|place=0>
	<Input|x=415.0|y=221.0|width=180|height=25|size=16|inputid=2|type=0|color=255|place=��Ϊ�Լ�>
	]]
	msg = msg ..'<Button|x=341.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=2|text=��ѯ|link=@gmboxchongzhiex,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=545.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2|text=��ֵ|link=@gmboxchongzhiex,2,'.. anniu1id ..','.. anniu2id ..'>'

	return msg
end

function gmboxchongzhiex(actor,caozuo,anniu1id,anniu2id)
	local zhi = getconst(actor,'<$NPCINPUT(1)>')
	zhi = tonumber(zhi)

	local name = getconst(actor,'<$NPCINPUT(2)>')
	local player = actor
	if name ~= "" then
		if queryhumnameexist(actor,name) ~= 3 then
			sendmsg9(actor,"��Ҳ�����")
			return 
		end
		if not callcheckscriptex(actor,name..".checkonline") then
			sendmsg9(actor,"��Ҳ�����")
			return
		end
		player = getplayerbyname(name)
	end
		
	if caozuo == "1" then
		sendmsg6(actor,"��ҡ�"..getname(player).."���ۼƳ�ֵ��".. getint(player,"�ۼƳ�ֵ") .." ���ճ�ֵ��"..getdayint(player,"���ճ�ֵ"))
	else
		addingot(player,zhi*100)
		recharge(player,zhi,1,10,0)
		sendmsg6(actor,"��ҡ�"..getname(player).."���ۼƳ�ֵ��".. getint(player,"�ۼƳ�ֵ") .." ���ճ�ֵ��"..getdayint(player,"���ճ�ֵ"))
	end
end

---�Ա����
function sexcaozuo(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=�����Ա�>
	<Text|x=320.0|y=226.0|color=255|size=18|text=�����>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=1|inputid=1|size=16|place=0�� 1Ů>
	<Input|x=415.0|y=221.0|width=180|height=25|size=16|inputid=2|type=0|color=255|place=��Ϊ�Լ�>
	]]
	msg = msg ..'<Button|x=341.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=2|text=��ѯ|link=@sexcaozuoex,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=545.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2|text=����|link=@sexcaozuoex,2,'.. anniu1id ..','.. anniu2id ..'>'

	return msg
end

function sexcaozuoex(actor,caozuo,anniu1id,anniu2id)
	local zhi = getconst(actor,'<$NPCINPUT(1)>')
	zhi = tonumber(zhi)
	if zhi ~= nil and (zhi < 0 or zhi > 1) then
		sendmsg9(actor,"ֻ������0 1")
		return 
	end
	local name = getconst(actor,'<$NPCINPUT(2)>')
	local player = actor
	if name ~= "" then
		if queryhumnameexist(actor,name) ~= 3 then
			sendmsg9(actor,"��Ҳ�����")
			return 
		end
		if not callcheckscriptex(actor,name..".checkonline") then
			sendmsg9(actor,"��Ҳ�����")
			return
		end
		player = getplayerbyname(name)
	end
		
	if caozuo == "1" then
		sendmsg9(actor,"��ҡ�"..getname(player).."���Ա�".. getsex(player))
	else
		setsex(player,zhi)
		sendmsg9(actor,"���óɹ�")
		sendmsg6(actor,"��ҡ�"..getname(player).."����ǰ�Ա�".. getsex(player))
	end
end

---ְҵ����
function jobcaozuo(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=����ְҵ>
	<Text|x=320.0|y=226.0|color=255|size=18|text=�����>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=1|inputid=1|size=16|place=0սʿ 1��ʦ 2����>
	<Input|x=415.0|y=221.0|width=180|height=25|size=16|inputid=2|type=0|color=255|place=��Ϊ�Լ�>
	]]
	msg = msg ..'<Button|x=341.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=2|text=��ѯ|link=@jobcaozuoex,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=545.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2|text=����|link=@jobcaozuoex,2,'.. anniu1id ..','.. anniu2id ..'>'

	return msg
end

function jobcaozuoex(actor,caozuo,anniu1id,anniu2id)
	local job = getconst(actor,'<$NPCINPUT(1)>')
	job = tonumber(job)
	if job ~= nil and (job < 0 or job > 2) then
		sendmsg9(actor,"ֻ������0 1 2")
		return 
	end
	local name = getconst(actor,'<$NPCINPUT(2)>')
	local player = actor
	if name ~= "" then
		if queryhumnameexist(actor,name) ~= 3 then
			sendmsg9(actor,"��Ҳ�����")
			return 
		end
		if not callcheckscriptex(actor,name..".checkonline") then
			sendmsg9(actor,"��Ҳ�����")
			return
		end
		player = getplayerbyname(name)
	end
		
	if caozuo == "1" then
		sendmsg9(actor,"��ҡ�"..getname(player).."��ְҵ��".. getjob(player))
	else
		setjob(player,job)
		sendmsg9(actor,"���óɹ�")
		sendmsg6(actor,"��ҡ�"..getname(player).."����ǰְҵ��".. getjob(player))
	end
end

---�ȼ�����
function dengjicaozuo(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=���õȼ�>
	<Text|x=320.0|y=226.0|color=255|size=18|text=�����>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=1|inputid=1|size=16>
	<Input|x=415.0|y=221.0|width=180|height=25|size=16|inputid=2|type=0|color=255|place=��Ϊ�Լ�>
	]]
	msg = msg ..'<Button|x=341.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=2|text=��ѯ|link=@dengjicaozuoex,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=545.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2|text=����|link=@dengjicaozuoex,2,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=545.0|y=429.0|size=18|nimg=zh/3.png|color=255|submitInput=1|text=��������|link=@tiren>'
	msg = msg ..'<Button|x=345.0|y=429.0|size=18|nimg=zh/3.png|color=255|submitInput=1|text=������|link=@tilixian>'
	return msg
end
function tilixian(actor)
	local dengji = getconst(actor,'<$NPCINPUT(1)>')
	callscriptex(actor, "Tdummy", "3",dengji, "20")
	sendmsg9(actor,"�߳�20�����߳ɹ�")
end
function tiren(actor)
	local dengji = getconst(actor,'<$NPCINPUT(1)>')
	dengji = tonumber(dengji)
	local sl = 0
	local players = getobjectinmap("3",330,330,15,1)
	for i=1,#players do
		if not getbaseinfo(players[i],61) then 
			if getlevel(players[i]) < dengji then
				gmexecute(actor,"kick", getname(players[i]))
				sendmsg6(actor,"�߳�"..getname(players[i]))
				sl = sl + 1
			end
		end
		if sl >= 5 then
			break
		end
	end
end

function dengjicaozuoex(actor,caozuo,anniu1id,anniu2id)
	local dengji = getconst(actor,'<$NPCINPUT(1)>')
	dengji = tonumber(dengji)
	local name = getconst(actor,'<$NPCINPUT(2)>')
	local player = actor
	if name ~= "" then
		if queryhumnameexist(actor,name) ~= 3 then
			sendmsg9(actor,"��Ҳ�����")
			return 
		end
		if not callcheckscriptex(actor,name..".checkonline") then
			sendmsg9(actor,"��Ҳ�����")
			return
		end
		player = getplayerbyname(name)
	end
		
	if caozuo == "1" then
		sendmsg9(actor,"��ҡ�"..getname(player).."���ȼ���".. getlevel(player))
	else
		setlevel(player,dengji)
		sendmsg9(actor,"���óɹ�")
		sendmsg6(actor,"��ҡ�"..getname(player).."����ǰ�ȼ���".. getlevel(player))
	end
end
---�ȼ�����
-----���Ҳ�����
local huobi_t = {
	--��ť���� ����1��2��  ����id 
	{title="�ӽ��",caozuo=1,huobiid=7},
	{title="�����",caozuo=2,huobiid=7},
	{title="�Ӱ󶨽��",caozuo=1,huobiid=8},
	{title="���󶨽��",caozuo=2,huobiid=8},
	{title="��Ԫ��",caozuo=1,huobiid=2},
	{title="��Ԫ��",caozuo=2,huobiid=2},
	--{title="�Ӱ�Ԫ��",caozuo=1,huobiid=4},
	--{title="����Ԫ��",caozuo=2,huobiid=4},
	{title="��ҵ���1��",caozuo=3,huobiid=7},
	{title="������1��",caozuo=3,huobiid=8},
	{title="��������",caozuo=1,huobiid=15},
	{title="��������",caozuo=2,huobiid=15},
	{title="���޻�ֵ",caozuo=1,huobiid=10},
	{title="���޻�ֵ",caozuo=2,huobiid=10},
	{title="���츳��",caozuo=1,huobiid=5},
	{title="���츳��",caozuo=2,huobiid=5},
	{title="���ͽ��",caozuo=1,huobiid=11},
	{title="���ͽ��",caozuo=2,huobiid=11},
}
function huobicaozuo(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=��������>
	<Text|x=320.0|y=226.0|color=255|size=18|text=�����>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=0|inputid=1|size=16|place=��0Ϊ��ѯ>
	<Input|x=415.0|y=221.0|width=180|height=25|size=16|inputid=2|type=0|color=255|place=��Ϊ�Լ�>
	]]
	for i = 1,#huobi_t do
		msg = msg ..'<Button|x='.. 256+((i-1)%4)*125 ..'|y='.. 291+math.floor((i-1)/4)*50 ..'|color=255|size=18|submitInput=1,2|nimg=zh/3.png|text='..huobi_t[i].title..'|link=@huobicaozuoex,'..huobi_t[i].caozuo..','..huobi_t[i].huobiid..','.. anniu1id ..','.. anniu2id ..','..huobi_t[i].title..'>'
	end

	return msg
end

function huobicaozuoex(actor,caozuo,huobiid,anniu1id,anniu2id,huobiname)
	huobiid = tonumber(huobiid)
	local sl = getconst(actor,'<$NPCINPUT(1)>')
	sl = tonumber(sl)
	local name = getconst(actor,'<$NPCINPUT(2)>')
	local player = actor
	if name ~= "" then
		if queryhumnameexist(actor,name) ~= 3 then
			sendmsg9(actor,"��Ҳ�����")
			return 
		end
		if not callcheckscriptex(actor,name..".checkonline") then
			sendmsg9(actor,"��Ҳ�����")
			return
		end
		player = getplayerbyname(name)
	end
		
	if caozuo == "1" then
		if changemoney(player,huobiid,"+",sl,"",true) then
			sendmsg6(actor,"��ӳɹ�,��ǰ"..string.gsub(string.gsub(huobiname,"��",""),"��","").."������"..querymoney(player,huobiid))
			sendmsg9(actor,"��ӳɹ�","#00FFFF",2)
		else
			sendmsg9(actor,"���ʧ��","#00FFFF",2)
		end
		
	elseif caozuo == "2" then
		if changemoney(player,huobiid,"-",sl,"",true) then
			sendmsg6(actor,"�۳��ɹ�,��ǰ"..huobiname.."������"..querymoney(player,huobiid))
			sendmsg9(actor,"�۳��ɹ�","#00FFFF",2)
		else
			sendmsg9(actor,"�۳�ʧ��","#00FFFF",2)
		end
	else
		changemoney(player,huobiid,"-",querymoney(player,huobiid),"",true)
		changemoney(player,huobiid,"+",100000000,"",true)
	end
end

-------

-----buff������
function buffcaozuo(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=buffID>
	<Text|x=320.0|y=180.0|color=255|size=18|text=buffʱ��>
	<Text|x=320.0|y=226.0|color=255|size=18|text=�����>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=174.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=0|size=16|inputid=1>
	<Input|x=415.0|y=176.0|width=180|height=25|color=255|type=0|size=16|place=��ΪĬ��0|inputid=2>
	<Input|x=415.0|y=221.0|width=180|height=25|color=255|type=0|size=16|place=��Ϊ�Լ�|inputid=3>
	]]
	msg = msg ..'<Button|x=305.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=1,3|text=��ѯbuff|link=@buffcaozuoex,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=445.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2,3|text=���buff|link=@buffcaozuoex,2,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=585.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,3|text=ɾ��buff|link=@buffcaozuoex,3,'.. anniu1id ..','.. anniu2id ..'>'
	return msg
end
function buffcaozuoex(actor,caozuo,anniu1id,anniu2id)
	local buffid = getconst(actor,'<$NPCINPUT(1)>')
	local bufftime = getconst(actor,'<$NPCINPUT(2)>')
	if bufftime == "" then
		bufftime = 0
	else
		bufftime = tonumber(bufftime)
	end
	local name = getconst(actor,'<$NPCINPUT(3)>')
	local player = actor
	if name ~= "" then
		if queryhumnameexist(actor,name) ~= 3 then
			sendmsg9(actor,"��Ҳ�����")
			return 
		end
		if not callcheckscriptex(actor,name..".checkonline") then
			sendmsg9(actor,"��Ҳ�����")
			return
		end
		player = getplayerbyname(name)
	end
		
	if caozuo == "1" then
		for i = 0,30000 do
			if hasbuff(player,i) then
				sendmsg6(actor,"buffID��"..i .. " ���Ӳ�����"..getbuffinfo(player,i,1).. "  ʣ��ʱ�䣺"..getbuffinfo(player,i,2))
			end
		end
		
		sendmsg9(actor,"��ѯ�ɹ�","#00FFFF",2)
	else
		if buffid == "" then return sendmsg9(actor,"������buffid") end
		buffid = tonumber(buffid)
		if caozuo == "2" then		
			if addbuff(player,buffid,bufftime) then
				sendmsg9(actor,"��ӳɹ�")
			else
				sendmsg9(actor,"���ʧ��")
			end
		else
			delbuff(player,buffid)
			sendmsg9(actor,"ɾ���ɹ�")
		end
	end
end

-------

-------�����Ʒ��
function tianjiaitem(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=������>
	<Text|x=320.0|y=180.0|color=255|size=18|text=����>
	<Text|x=320.0|y=226.0|color=255|size=18|text=��ֵ>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=174.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=0|size=16|inputid=1>
	<Input|x=415.0|y=176.0|width=180|height=25|color=255|type=0|size=16|place=��ΪĬ��1|inputid=2>
	<Input|x=415.0|y=221.0|width=180|height=25|color=255|type=0|size=16|place=��ΪĬ��0�ǰ�|inputid=3>
	]]
	msg = msg ..'<Button|x=381.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=1,2,3|text=�����Ʒ|link=@tianjiaitemex,'.. anniu1id ..','.. anniu2id ..'>'
	return msg
end

function tianjiaitemex(actor,anniu1id,anniu2id)
	local name = getconst(actor,'<$NPCINPUT(1)>')
	local sl = getconst(actor,'<$NPCINPUT(2)>')
	local bindzhi = getconst(actor,'<$NPCINPUT(3)>')
	if bindzhi == "" then
		bindzhi = 0
	else
		bindzhi = tonumber(bindzhi)
	end
	if sl == "" then
		sl = 1
	else
		sl = tonumber(sl)
	end
	if giveitem(actor,name,sl,bindzhi) then
		sendmsg9(actor,"�����Ʒ�ɹ�","#00FFFF",2)
	else
		sendmsg9(actor,"�����Ʒʧ��","#00FFFF",2)
	end
	
end
-------�����Ʒ�ν���

-------����int������
function intbianliang(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=������>
	<Text|x=320.0|y=180.0|color=255|size=18|text=����ֵ>
	<Text|x=320.0|y=226.0|color=255|size=18|text=�����>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=174.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=0|size=16|inputid=1>
	<Input|x=415.0|y=176.0|width=180|height=25|color=255|type=1|size=16|inputid=2>
	<Input|x=415.0|y=221.0|width=180|height=25|color=255|type=0|size=16|place=��Ϊ�Լ�|inputid=3>
	]]
	msg = msg ..'<Button|x=341.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=1,3|text=��ѯ|link=@intbianliangex,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=545.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2,3|text=����|link=@intbianliangex,2,'.. anniu1id ..','.. anniu2id ..'>'
	return msg
end
function intbianliangex(actor,caozuo,anniu1id,anniu2id)
	local bianliang = getconst(actor,'<$NPCINPUT(1)>')
	local bianliangzhi = getconst(actor,'<$NPCINPUT(2)>')
	local name = getconst(actor,'<$NPCINPUT(3)>')
	local player = actor
	if name ~= "" then
		if queryhumnameexist(actor,name) ~= 3 then
			sendmsg9(actor,"��Ҳ�����")
			return 
		end
		if not callcheckscriptex(actor,name..".checkonline") then
			sendmsg9(actor,"��Ҳ�����")
			return
		end
		player = getplayerbyname(name)
	end
	if bianliang == "" then return sendmsg9(actor,"���������") end
	
	if caozuo == "1" then
		sendmsg6(actor,"����ֵ��"..getint(player,bianliang))
		sendmsg9(actor,"��ѯ�ɹ�","#00FFFF",2)
	else
		setint(player,bianliang,tonumber(bianliangzhi))
		sendmsg9(actor,"���óɹ�","#00FFFF",2)
	end
	
end
-------����int�����ν���

-------����str������
function strbianliang(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=������>
	<Text|x=320.0|y=180.0|color=255|size=18|text=����ֵ>
	<Text|x=320.0|y=226.0|color=255|size=18|text=�����>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=174.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=0|size=16|inputid=1>
	<Input|x=415.0|y=176.0|width=180|height=25|color=255|type=0|size=16|inputid=2>
	<Input|x=415.0|y=221.0|width=180|height=25|color=255|type=0|size=16|place=��Ϊ�Լ�|inputid=3>
	]]
	msg = msg ..'<Button|x=341.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=1,3|text=��ѯ|link=@strbianliangex,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=545.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2,3|text=����|link=@strbianliangex,2,'.. anniu1id ..','.. anniu2id ..'>'
	return msg
end
function strbianliangex(actor,caozuo,anniu1id,anniu2id)
	local bianliang = getconst(actor,'<$NPCINPUT(1)>')
	local bianliangzhi = getconst(actor,'<$NPCINPUT(2)>')
	local name = getconst(actor,'<$NPCINPUT(3)>')
	local player = actor
	if name ~= "" then
		if queryhumnameexist(actor,name) ~= 3 then
			sendmsg9(actor,"��Ҳ�����")
			return 
		end
		if not callcheckscriptex(actor,name..".checkonline") then
			sendmsg9(actor,"��Ҳ�����")
			return
		end
		player = getplayerbyname(name)
	end
	if bianliang == "" then return sendmsg9(actor,"���������") end
	
	if caozuo == "1" then
		sendmsg6(actor,"����ֵ��"..getstr(player,bianliang))
		sendmsg9(actor,"��ѯ�ɹ�","#00FFFF",2)
	else
		setstr(player,bianliang,bianliangzhi)
		sendmsg9(actor,"���óɹ�","#00FFFF",2)
	end
	
end
-------����str�����ν���

-------����int�������
function intdaybianliang(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=������>
	<Text|x=320.0|y=180.0|color=255|size=18|text=����ֵ>
	<Text|x=320.0|y=226.0|color=255|size=18|text=�����>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=174.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=0|size=16|inputid=1>
	<Input|x=415.0|y=176.0|width=180|height=25|color=255|type=1|size=16|inputid=2>
	<Input|x=415.0|y=221.0|width=180|height=25|color=255|type=0|size=16|place=��Ϊ�Լ�|inputid=3>
	]]
	msg = msg ..'<Button|x=341.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=1,3|text=��ѯ|link=@intdaybianliangex,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=545.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2,3|text=����|link=@intdaybianliangex,2,'.. anniu1id ..','.. anniu2id ..'>'
	return msg
end
function intdaybianliangex(actor,caozuo,anniu1id,anniu2id)
	local bianliang = getconst(actor,'<$NPCINPUT(1)>')
	local bianliangzhi = getconst(actor,'<$NPCINPUT(2)>')
	local name = getconst(actor,'<$NPCINPUT(3)>')
	local player = actor
	if name ~= "" then
		if queryhumnameexist(actor,name) ~= 3 then
			sendmsg9(actor,"��Ҳ�����")
			return 
		end
		if not callcheckscriptex(actor,name..".checkonline") then
			sendmsg9(actor,"��Ҳ�����")
			return
		end
		player = getplayerbyname(name)
	end
	if bianliang == "" then return sendmsg9(actor,"���������") end
	
	if caozuo == "1" then
		sendmsg6(actor,"����ֵ��"..getdayint(player,bianliang))
		sendmsg9(actor,"��ѯ�ɹ�","#00FFFF",2)
	else
		setdayint(player,bianliang,tonumber(bianliangzhi))
		sendmsg9(actor,"���óɹ�","#00FFFF",2)
	end
	
end
-------����int������ν���

-------����str�������
function strdaybianliang(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=������>
	<Text|x=320.0|y=180.0|color=255|size=18|text=����ֵ>
	<Text|x=320.0|y=226.0|color=255|size=18|text=�����>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=174.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=0|size=16|inputid=1>
	<Input|x=415.0|y=176.0|width=180|height=25|color=255|type=0|size=16|inputid=2>
	<Input|x=415.0|y=221.0|width=180|height=25|color=255|type=0|size=16|place=��Ϊ�Լ�|inputid=3>
	]]
	msg = msg ..'<Button|x=341.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=1,3|text=��ѯ|link=@strdaybianliangex,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=545.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2,3|text=����|link=@strdaybianliangex,2,'.. anniu1id ..','.. anniu2id ..'>'
	return msg
end
function strdaybianliangex(actor,caozuo,anniu1id,anniu2id)
	local bianliang = getconst(actor,'<$NPCINPUT(1)>')
	local bianliangzhi = getconst(actor,'<$NPCINPUT(2)>')
	local name = getconst(actor,'<$NPCINPUT(3)>')
	local player = actor
	if name ~= "" then
		if queryhumnameexist(actor,name) ~= 3 then
			sendmsg9(actor,"��Ҳ�����")
			return 
		end
		if not callcheckscriptex(actor,name..".checkonline") then
			sendmsg9(actor,"��Ҳ�����")
			return
		end
		player = getplayerbyname(name)
	end
	if bianliang == "" then return sendmsg9(actor,"���������") end
	
	if caozuo == "1" then
		sendmsg6(actor,"����ֵ��"..getdaystr(player,bianliang))
		sendmsg9(actor,"��ѯ�ɹ�","#00FFFF",2)
	else
		setdaystr(player,bianliang,bianliangzhi)
		sendmsg9(actor,"���óɹ�","#00FFFF",2)
	end
	
end
-------����str������ν���

-------ϵͳint������
function sysintbianliang(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=������>
	<Text|x=320.0|y=180.0|color=255|size=18|text=����ֵ>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=174.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=0|size=16|inputid=1>
	<Input|x=415.0|y=176.0|width=180|height=25|color=255|type=1|size=16|inputid=2>
	]]
	msg = msg ..'<Button|x=341.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=1|text=��ѯ|link=@sysintbianliangex,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=545.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2|text=����|link=@sysintbianliangex,2,'.. anniu1id ..','.. anniu2id ..'>'
	return msg
end
function sysintbianliangex(actor,caozuo,anniu1id,anniu2id)
	local bianliang = getconst(actor,'<$NPCINPUT(1)>')
	local bianliangzhi = getconst(actor,'<$NPCINPUT(2)>')

	if bianliang == "" then return sendmsg9(actor,"���������") end
	
	if caozuo == "1" then
		sendmsg6(actor,"����ֵ��"..getsysint(bianliang))
		sendmsg9(actor,"��ѯ�ɹ�","#00FFFF",2)
	else
		setsysint(bianliang,tonumber(bianliangzhi))
		sendmsg9(actor,"���óɹ�","#00FFFF",2)
	end
end
-------ϵͳint�����ν���

-------ϵͳstr������
function sysstrbianliang(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=136.0|color=255|size=18|text=������>
	<Text|x=320.0|y=180.0|color=255|size=18|text=����ֵ>
	<Img|x=411.0|y=129.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=174.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=131.0|width=180|height=25|color=255|type=0|size=16|inputid=1>
	<Input|x=415.0|y=176.0|width=180|height=25|color=255|type=0|size=16|inputid=2>
	]]
	msg = msg ..'<Button|x=341.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=1|text=��ѯ|link=@sysstrbianliangex,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=545.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2|text=����|link=@sysstrbianliangex,2,'.. anniu1id ..','.. anniu2id ..'>'
	return msg
end
function sysstrbianliangex(actor,caozuo,anniu1id,anniu2id)
	local bianliang = getconst(actor,'<$NPCINPUT(1)>')
	local bianliangzhi = getconst(actor,'<$NPCINPUT(2)>')
	
	if bianliang == "" then return sendmsg9(actor,"���������") end
	
	if caozuo == "1" then
		sendmsg6(actor,"����ֵ��"..getsysstr(bianliang))
		sendmsg9(actor,"��ѯ�ɹ�","#00FFFF",2)
	else
		if bianliangzhi == "" then
			setsysstr(bianliang,"")
		else
			setsysstr(bianliang,bianliangzhi)
		end
		
		
		sendmsg9(actor,"���óɹ�","#00FFFF",2)
	end
end
-------ϵͳstr�����ν���

-------����������
function kaiqutianshu(actor,anniu1id,anniu2id)
	local msg = ""
	msg = msg ..'<Text|x=304.0|y=85.0|color=255|size=18|text=����ʱ�����'.. getsysint("����ʱ��") ..'>'
	msg = msg ..'<Text|x=304.0|y=120.0|color=255|size=18|text=����ʱ�䣺'.. os.date("%Y��%m��%d�� %H:%M:%S",getsysint("����ʱ��")) ..'>'
	msg = msg ..'<Text|x=304.0|y=155.0|color=255|size=18|text=��ǰ����������'.. getkaiquday() ..'>'
	msg = msg ..'<Text|x=304.0|y=190.0|color=255|size=18|text=��ǰ����������'.. getsysint("��������") ..'>'
	msg = msg ..'<Text|x=304.0|y=225.0|color=255|size=18|text=������������'.. getsysint("����������") ..'>'
	msg = msg ..'<Text|x=304.0|y=260.0|color=255|size=18|text=�ٷ���ȡ�ĺ���������'.. getsysint("�ٷ���������") ..'>'

	msg = msg ..'<Button|x=359.0|y=310.0|nimg=zh/3.png|color=255|size=18|text=��һ��|link=@changetianshu,1,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=525.0|y=310.0|size=18|nimg=zh/3.png|color=255|text=��һ��|link=@changetianshu,2,'.. anniu1id ..','.. anniu2id ..'>'
	
	msg = msg ..'<Button|x=359.0|y=360.0|nimg=zh/3.png|color=255|size=18|text=��һСʱ|link=@changetianshu,3,'.. anniu1id ..','.. anniu2id ..'>'
	msg = msg ..'<Button|x=525.0|y=360.0|size=18|nimg=zh/3.png|color=255|text=��һСʱ|link=@changetianshu,4,'.. anniu1id ..','.. anniu2id ..'>'
	
	msg = msg ..'<Button|x=525.0|y=410.0|size=18|nimg=zh/3.png|color=255|text=���ÿ���ʱ��|link=@changetianshu,5,'.. anniu1id ..','.. anniu2id ..'>'
	return msg
end

function changetianshu(actor,caozuo,anniu1id,anniu2id)
	if caozuo == "1" then
		setsysint("����ʱ��",getsysint("����ʱ��")-86400)
		sendmsg9(actor,"���óɹ�","#00FFFF",2)
	elseif caozuo == "2" then 
		setsysint("����ʱ��",getsysint("����ʱ��")+86400)
		sendmsg9(actor,"���óɹ�","#00FFFF",2)
	elseif caozuo == "3" then 
		setsysint("����ʱ��",getsysint("����ʱ��")-3600)
		sendmsg9(actor,"���óɹ�","#00FFFF",2)
	elseif caozuo == "4" then 
		setsysint("����ʱ��",getsysint("����ʱ��")+3600)
		sendmsg9(actor,"���óɹ�","#00FFFF",2)
	elseif caozuo == "5" then 
		setsysint("����ʱ��",os.time())
		sendmsg9(actor,"���óɹ�","#00FFFF",2)
	end
	return gmbox(actor,anniu1id,anniu2id)
end
-------���������ν���
-------ˢװ����
local szbt = {"����װ��","����װ��","����װ��","����װ��","��֮����","ս��װ��","��սװ��","����װ��","����װ��","��Ӱװ��","����װ��","��������","����","����","ѫ��","����","�޻�"}
local zbt = {
		["����װ��"]={"ħ��","��������","˼��������","�챦ʯ��ָ","����","�޼���","��������",
"��������","�����ָ","����","������","��������","��������","��֮��ָ","������","¹Ƥѥ",},

["����װ��"]={"����Ȩ��","��ħ����","��֮����","�ϱ���","���ƽ�","�������","��������","̩̹��ָ","�þ�֮��","��ɫ����","��ʿ����","������ָ","��������","����ѥ��","��ħ����",
"��ħѥ��","̩̹����","̩̹ѥ��",},

["����װ��"]={"ʥսͷ��","ʥս����","ʥս����","ʥս��ָ","����ͷ��","��������","��������","�����ָ","����ͷ��","��������","��������","�����ָ","��ħ���","ʥս����",
"Ѫ��","��������","��������","�������","��ʦ����","ʥս����","ʥսѥ��","��������","����ѥ��","��������","����ѥ��",},

["����װ��"]={"ŭն","����","��ң��","��������","����սѥ","����ħѥ","��������","��â��ѥ","��â����","ʥ����","��������","��������","����ս��","ħ����","��������",
"���滤��","����ħ��","������","��â����","��â����","��â����",},

["��֮����"]={"����","�Ȼ귨��","����֮��","����ս��(��)","����ս��(Ů)","����ħ��(��)","����ħ��(Ů)","��â����(��)","��â����(Ů)","��֮ʥ����","��֮��������","��֮��������",
"��֮����ս��","��֮��������","��֮����սѥ","��֮ħ����","��֮��������","��֮���滤��","��֮����ħ��","��֮����ħѥ","��֮��������","��֮������","��֮��â����",
"��֮��â����","��֮��â����","��֮��â��ѥ","��֮��â����",},
["ս��װ��"]={
"�ƽ�����","ս��ͷ��","ս������","ս������","ս���ָ","ս������","ս��ʥѥ","�Ͻ��Ȼ귨��","ʥħͷ��","ʥħ����","ʥħ����","ʥħ��ָ","ʥħ����","ʥħ��ѥ","�����ң��","���ͷ��",
"�������","�������","����ָ","�������","����ѥ","����ս��(��)","����ս��(Ů)","ŭ��ħ��(��)","ŭ��ħ��(Ů)","�������(��)","�������(Ů)",},

["��սװ��"]={"�ϹŹ���","����ս��","����ս��","��սͷ��","��ս����","��ս����","��ս��ָ","��ս����","��սʥѥ","���֮��","��ħ����","��ħ����","����ͷ��","��������","��������","������ָ","��������",
"������ѥ","�����޼�","������","�����","̫��ͷ��","̫������","̫������","̫����ָ","̫������","̫����ѥ",},

["����װ��"]={"����¾","ʥ��ս��","ʥ��ս��","����ս��","��������","��������","������ָ","��������","����սѥ","���鷨��","ħ������","ħ������","����ħ��","��������","��������","���׽�ָ","��������",
"����ħѥ","������","��������","��������","�������","��������","��������","�����ָ","��������","�����ѥ",},

["����װ��"]={"����������","��Ұս��","��Ұս��","���졩ʥ��","���졩ʥ��","���졩ʥ��","���졩ʥ��","���졩ʥ��","���졩ʥѥ","����Ȩ��","���֮��","���֮��","���졩ħ��","���졩ħ��","���졩ħ��",
"���졩ħ��","���졩ħ��","���졩ħѥ","̫������","��ʹ֮��","��ʹ֮��","���졩����","���졩����","���졩����","���졩����","���졩����","���졩��ѥ",},

["��Ӱװ��"]={"��˵:��Ӱ��","����(��)","����(Ů)","��Ӱ��ʥ��","��Ӱ��ʥ��","��Ӱ��ʥ��","��Ӱ��ʥ��","��Ӱ��ʥ��","��Ӱ��ʥѥ","��˵:��ˮ��","ڤ��(��)","ڤ��(Ů)","�����ħ��","�����ħ��",
"�����ħ��","�����ħ��","�����ħ��","�����ħѥ","��˵:̫����","�췣(��)","�췣(Ů)","Զ�š����","Զ�š����","Զ�š����","Զ�š����","Զ�š����","Զ�š��ѥ",},

["����װ��"]={"������׶��ն","������׶�ļ�","������׶����","������׶�Ŀ�","������׶����","������׶����","������׶�Ľ�","������׶�Ĵ�","������׶��ѥ","������ŭ����","������ŭ���","������ŭ����",
"������ŭ���","������ŭ����","������ŭ����","������ŭ���","������ŭ���","������ŭ��ѥ","��Լ���񷣽�","��Լ���񷣼�","��Լ������","��Լ���񷣿�","��Լ������","��Լ������",
"��Լ���񷣽�","��Լ���񷣴�","��Լ����ѥ",},

["��������"]={"�����ޤ�����֮��","�����ޤ����","�����ޤ�����","�����ޤ����","�����ޤ�����","�����ޤ�����","�����ޤ����","�����ޤ����","�����ޤ���ѥ","�����������֮��","����������","�����������",
"����������","�����������","�����������","����������","����������","���������ѥ","��¥�ޤ��򽣹���","��¥�ޤ����","��¥�ޤ�����","��¥�ޤ����","��¥�ޤ�����","��¥�ޤ�����",
"��¥�ޤ����","��¥�ޤ����","��¥�ޤ���ѥ",},

["����"]={"����","��Ԫ�����","�׹���","������","����֮ͫ","�����","���ӡ","������","�ζ����ķ���","��ƿ","����������","����ӡ","�����",
"������¯","�����","������","���ؾ�","��ɫ�ķ���","Ǭ����","�ڷ��","������Ϲ�","�Ϲ�����","��Ԫ��","����ʯ","��ȸ��","��ũ��",
"��ˮ��","������","������","����","��ɫ�ķ���","������","�Ͻ��","̫����ӡ","����ǹ","����","�����","��ɫ�ķ���","��ľ��","��ħ��",
"�����","�����ӻ���","�����","������","�����","�Ϸ���¼","������","ħ��ӡ","����Ϣ��","��ţ��","������","�������",},

["����"]= {"43�Ŷ���","44�Ŷ���","45�Ŷ���","��������","��ħ����","̩̹����","ʥս����","������","������","��������","���涷��","��â����","��֮��������","��֮���涷��","��֮��â����","ս����","ʥħ����",
"��궷��","��ս����","��������","̫������","��������","���׶���","���鶷��","���졩����","���졩����","���졩����","��ħ�ˡﶷ��(��˵)","��ħ�ˡﶷ��(��)","��ħ�ˡﶷ��(����)","��ħ�ˡﶷ��",},

["ѫ��"]= {"43��ѫ��","44��ѫ��","45��ѫ��","����ѫ��","��ħѫ��","̩̹ѫ��","ʥսѫ��","����ѫ��","����ѫ��","����ѫ��","����ѫ��","��âѫ��","��֮����ѫ��","��֮����ѫ��","��֮��âѫ��","ս��ѫ��","ʥħѫ��",
"���ѫ��","��սѫ��","����ѫ��","̫��ѫ��","����ѫ��","����ѫ��","����ѫ��","���졩ѫ��","���졩ѫ��","���졩ѫ��","��ħ�ˡ�ѫ��(��˵)","��ħ�ˡ�ѫ��(��)","��ħ�ˡ�ѫ��(����)","��ħ�ˡ�ѫ��",},
["����"]= {
"��ħ����","��ħ����","��ħ��ָ","��Ѫ����","��Ѫ����","��Ѫ��ָ","ħѪ����","ħѪ����","ħѪ��ָ","ŭѪ����","ŭѪ����","ŭѪ��ָ","��ͷ��","������",
"������","����ָ","�ػ�ͷ��","�ػ�ѥ��","�ػ�����","��̵���������","1.1��������","1.2��������","�Ƽ�ָ��","����ͷ��","��������","������ħ��","������ħ��",
"��Ұ��","ħ��ͷ��","ħ������","ħ��ѥ��","����ͷ��","��������","����ѥ��","ף������(��ӡ)","�ϵ�֮��","����֮��","�����ָ","��Ԩ��ָ","�������","����ָ","��������(��ӡ)",
"�����ָ(��ӡ)","��ɫ��������","��а����","�������","���ն�����","�����ָ","��ħ֮ѥ(��ӡ)","��ħ֮��(��ӡ)","����ͷ��","��������","���ؽ�ָ","������ָ","�����ָ","��ħ��ָ",
"��������","��������","��ħ����","��������","������ָ","��������","̩̹ʥѥ","̩̹ʥ��","��������Դ��","��������Դ��","��������Դѥ","��������Դ��","��������Դ��","��������Դ��",
"������������","������������","����������ѥ","������������","������������","������������","������޳���","������޳���","������޳�ѥ","������޳���","������޳���","������޳���",
"���������","����������","��������ѥ","���������","���������","����������","��ħ���ѽ�","��ħ������","��ħ����ѥ","��ħ���Ѵ�","��ħ���ѿ�","��ħ������",	},
	
["�޻�"]= {
	"������","�๳è","����","ʳ�˻�","��֩��","ɭ��ѩ��","���Ͷ�ǳ�","����ͳ��","������ʿ","���껤��","��������","����ս��","���깭����","�������","������ʿ","�������","��Ұ��","а����",
	"��Ұ��","������","��ħЫ��","��ħ����","ǧ������","��ħ����","���ó�ǹ��","���ô���","���õ�����","ţħսʿ","ţħ��ʦ","ţħ��˾","ţħ����","ţħ��","����֩��","����֩��","����֩��",
	"����֩��","ѪӰ����","˫ͷ���","˫ͷѪħ","���¶�ħ","ħ��а��","ħ��Ѫ��","ħ������","ħ������","ħ��ս��","ħ����ʿ","ħ���޶�","ħ������",
	},
}


function shuazhuangbei(actor,anniu1id,anniu2id)
	local msg = ""
	for i = 1,#szbt do
		msg = msg ..'<Button|x='.. 290 + 150 * ((i-1)%3) ..'|y='.. 100 + 50 * math.floor((i-1)/3) ..'|size=18|nimg=zh/3.png|color=255|outline=2|text='..szbt[i]..'|link=@zb_zhizao,'.. szbt[i] ..'>'	
	end
	msg = msg ..'<Button|x=600|y=400|size=18|nimg=zh/3.png|color=255|outline=2|text=������|link=@zb_clearbag>'	
	return msg
end
function zb_clearbag(actor)
	gmexecute(actor,"clearbag")
end
function zb_zhizao(actor,par)
	local t = zbt[par]
	for i = 1,#t do
		giveitem(actor,t[i],1)
	end
end
-------ˢװ���ν���

-------�������Ƕ�
function kaiqigongcheng(actor,anniu1id,anniu2id)
	local msg = ""
	if castleinfo(5) then
		msg = msg ..'<Text|x=304.0|y=85.0|color=255|size=18|text=����״̬�������� >'
		msg = msg ..'<Button|x=359.0|y=310.0|nimg=zh/3.png|color=255|size=18|text=ֹͣ����|link=@kaiqigongchengex,'.. anniu1id ..','.. anniu2id ..'>'
	else
		msg = msg ..'<Text|x=304.0|y=85.0|color=255|size=18|text=����״̬��δ���� >'
		msg = msg ..'<Button|x=359.0|y=310.0|nimg=zh/3.png|color=255|size=18|text=��ʼ����|link=@kaiqigongchengex,'.. anniu1id ..','.. anniu2id ..'>'
	end
	return msg
end

function kaiqigongchengex(actor,anniu1id,anniu2id)
	addattacksabakall()
	gmexecute(0,"gongcheng")
	delaymsggoto(actor,1000,"gmbox,"..anniu1id..","..anniu2id)
	return
end
-------�������Ƕν���

---��Ʒ���Բ���
function jipinshuxingcaozuo(actor,anniu1id,anniu2id)
	local msg = [[
	<Text|x=320.0|y=181.0|color=255|size=18|text=���Դ���>
	<Text|x=320.0|y=226.0|color=255|size=18|text=����id>
	<Text|x=320.0|y=272.0|size=18|color=255|text=����ֵ>
	<Img|x=411.0|y=174.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=219.0|img=zh/30.png|esc=0>
	<Img|x=411.0|y=265.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=176.0|width=180|height=25|color=255|type=0|inputid=1|size=16>
	<Input|x=415.0|y=221.0|width=180|height=25|color=255|type=0|inputid=2|size=16>
	<Input|x=415.0|y=267.0|width=180|height=25|color=255|type=0|inputid=3|size=16>
	<ITEMBOX|x=469.0|y=80.0|width=70|height=70|boxindex=0|stdmode=*|boxindex=0|img=public/1900000651_3.png>
	<Text|x=320.0|y=380.0|color=255|size=18|text=�Զ�������ֵ>
	<Img|x=411.0|y=373.0|img=zh/30.png|esc=0>
	<Input|x=415.0|y=376.0|width=180|height=25|color=255|type=0|size=16|inputid=4>
	<Button|x=320.0|y=408.0|width=140|size=18|color=255|nimg=zhangheng/13.png|submitInput=4|text=��ѯ�Զ�������|link=@zidingshicaozuo,1>
	<Button|x=519.0|y=408.0|width=140|size=18|color=255|nimg=zhangheng/13.png|submitInput=4|text=�����Զ�������|link=@zidingshicaozuo,2>

	]]
	msg = msg ..'<Button|x=341.0|y=329.0|nimg=zh/3.png|color=255|size=18|submitInput=1,2|text=��ѯ|link=@jipinshuxingex,1>'
	msg = msg ..'<Button|x=545.0|y=329.0|size=18|nimg=zh/3.png|color=255|submitInput=1,2,3|text=����|link=@jipinshuxingex,2>'
	
	msg = msg ..'<Button|x=545.0|y=449.0|size=18|nimg=zh/3.png|color=255|submitInput=1|text=���ó־�|link=@shezhichijiu>'
	return msg
end
function zidingshicaozuo(actor,caozuo)
	callscriptex(actor, "SetUpgradeItem", 0)
	local item = linkbodyitem(actor,-1)
	
	local jsonstr = getconst(actor,'<$NPCINPUT(4)>')
	if caozuo == "1" then
		local str = getitemcustomabil(actor,item)
		sendmsg6(actor,"�Զ������� "..str)
	else
		setitemcustomabil(actor,item,jsonstr)
	end
end

function shezhichijiu(actor)
	callscriptex(actor, "SetUpgradeItem", 0)
	local item = linkbodyitem(actor,-1)
	local chijiu = tonumber(getconst(actor,'<$NPCINPUT(1)>'))
	sendmsg6(actor,"�־�"..chijiu)
	
	--ChangeItemDura 0 = 10000 0
	callscriptex(actor, "ChangeItemDura", -1, "=",chijiu*1000)
	--local makeid = getiteminfo(actor,item,1)
	--setdura(actor,makeid,"=",chijiu * 1000)
	sendmsg9(actor,"���óɹ�","#00FFFF",2)
end


function jipinshuxingex(actor,caozuo,anniu1id,anniu2id)
	--sendmsg9(actor,"ddd")
		callscriptex(actor, "SetUpgradeItem", 0)
		local item = linkbodyitem(actor,-1)
		local attlei = getconst(actor,'<$NPCINPUT(1)>')
		local attid = getconst(actor,'<$NPCINPUT(2)>')
		local attid_zhi = getconst(actor,'<$NPCINPUT(3)>')

		if attlei == "" then return sendmsg9(actor,"����������id") end
		if attid == "" then return sendmsg9(actor,"����������id") end
		if caozuo == "1" then
			sendmsg6(actor,"���ԣ�"..getitemaddvalue(actor,item,tonumber(attlei),tonumber(attid)))
			sendmsg9(actor,"��ѯ�ɹ�","#00FFFF",2)
		else
			if attid_zhi == "" then return sendmsg9(actor,"����������ֵ") end
			setitemaddvalue(actor,item,tonumber(attlei),tonumber(attid),tonumber(attid_zhi))
			sendmsg9(actor,"���óɹ�","#00FFFF",2)
		end
	
end


------����Ԫ������
function usercmd2(actor)
	local yuanbao = getingot(actor)
	if yuanbao < 1 then
		sendmsg9(actor,"��û��Ԫ��")
		return
	end
	subingot(actor,yuanbao)
	
	post(actor,"��ֵ��".. getint(actor,"�ۼƳ�ֵ") .."Ԫ�����ճ�ֵ"..getdayint(actor,"���ճ�ֵ").." ������ע��Ԫ��*".. yuanbao .."��")
end

local keyong = {
	["12407275"] = 1,["13216418"] = 1,["18936379"] = 1,
	["19313238"] = 1,
	["25891743"] = 1, ["9071622"] = 1, ["5225660"] = 1, ["10202743"] = 1,
	}
-----����
function usercmd3(actor,name)
	if not keyong[getconst(actor,"<$USERACCOUNT>")] then
		return
	end
	if not name then
		return
	end
	local player = getplayerbyname(name)
	if player then
		map(player,"waigua")
	end
end

----�������Ϣ
function usercmd4(actor)
	if not keyong[getconst(actor,"<$USERACCOUNT>")] then
		return
	end
	local t=getplayerlst() --����б�
	for i = 1,#t do
		local str = ""
		local player = t[i] --���
		local duizhangname = getconst(player,"<$TEAM0>") --�ӳ���
		if getname(player) == duizhangname then
			local duiyuant = getgroupmember(player)
			local bh = 1
			for j = 1,#duiyuant do
				str = str .. "��Ա"..bh .." ".. getname(duiyuant[j]) .. " "..getbaseinfo(duiyuant[j],45) .." PKֵ "..getbaseinfo(duiyuant[j],46)	.." ��ֵ "..getint(duiyuant[j],"�ۼƳ�ֵ")	.." "
				bh = bh + 1
			end
		end
		if str ~= "" then
			sendmsg6(actor,str)
		end
	end
	
end

function usercmd5(actor)
	-- mapmove(actor,"xinshou",25,32,4) --�ɵ�������
	-- local hasbuff = hasbuff(actor, 20087)
	-- sendmsg9(actor, "�Ƿ���20087buff:"..tostring(hasbuff))
	-- local wuqi_zengfu_data = {
	-- 	{"����0",100,7,"���",20000,10016,"һ������",1,35,35,"����",19,1000,0},
	-- 	{"����1",70,7,"���",40000,10016,"��������",1,35,35,"����",19,1000,0},
	-- 	{"����2",60,7,"���",60000,10016,"��������",1,35,35,"����",19,1000,0},
	-- 	{"����3",50,7,"���",80000,10016,"�ļ�����",1,35,35,"����",19,1000,0}
	-- }
	-- sendmsg9(actor, "�yԇ�Y��:"..tostring(wuqi_zengfu_data[1][3]))


-- 	local skilltab = {
-- 	[0]={"��������","��ɱ����","��ɱ����","Ұ����ײ","�����䵶","�һ𽣷�"},
-- 	{"�ջ�֮��","�׵���","��ǽ","�����Ӱ","�����׹�","ħ����","������","���ܻ�"},
-- 	{"������","������ս��","ʩ����","�����","�����","��ʥս����","������","����������","Ⱥ��������","�ٻ�����","��ħ��","�����ٻ�","������ʾ"},
-- }

-- 	sendmsg9(actor,"���ԣ�".. skilltab[0][1])
-- 	sendmsg9(actor,"����1��".. skilltab[1][1])


	-- local shengji_t = {  [4] = 'ͷ�������ȼ�' ,  [3] = '���������ȼ�' ,  [6] = '���������ȼ�' ,  [5] = '���������ȼ�' ,  [8] = '��������ȼ�' ,  [7] = '�ҽ������ȼ�' ,  [10] = '���������ȼ�' ,  [11] = 'ѥ�������ȼ�' ,  [1] = '���������ȼ�' ,  [0] = '�·������ȼ�'  }
	-- sendmsg0(actor, shengji_t[4])

	-- local count = itemcount(actor,"���")
	-- sendmsg9(actor, "����������"..tostring(count))

	-- local count1 = itemcount(actor,"һ������")
	-- sendmsg9(actor, "����������"..tostring(count1))

	-- sendmsg9(actor, "���Խ��������"..getbindgold(actor))
	-- local keshengxing = {{0,"�·�"},{4,"ͷ��"},{3,"����"},{5,"����"},{6,"����"},{7,"��ָ"},{8,"��ָ"},{10,"����"},{11,"ѥ��"}} --��̽����װ��
	-- for i=1,#keshengxing do
	-- 	local item = linkbodyitem(actor,keshengxing[i][1])
	-- 	sendmsg0(actor, getitemaddvalue(actor,item,2,2))
	
	-- end

	-- local item = linkbodyitem(actor, 1)
	-- setitemaddvalue(actor,item,1,5,6)

	-- local jinzhi_dai = {"��������(��ӡ)","�����ָ(��ӡ)"}
	-- if jinzhi_dai["����"] == nil then
	-- 	sendmsg0(actor, "����1")
	-- end


	-- changemoney(actor,11,"+",500,"",true)


	-- local zbw = {0,4,3,5,6,7,8,10,11,}

	-- for i=1, #zbw do
	-- 	local item = linkbodyitem(actor,zbw[i]) --����װ��
	-- 	sendmsg0(actor, item)
	-- 	if item ~= "0" then
	-- 		local jsonstr = getitemcustomabil(actor,item)
	-- 		sendmsg0(actor, "��Ʒ�Զ�������:"..jsonstr)
	-- 	end
	-- end

	for i = 0,30000 do
		if hasbuff(actor,i) then
			sendmsg0(actor,"buffID��"..i .. " ������"..getbuffinfo(actor,i,1).. "  ʣ��ʱ�䣺"..getbuffinfo(actor,i,2))
		end
	end

end