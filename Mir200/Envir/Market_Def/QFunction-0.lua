math.randomseed(tostring(os.time()):reverse():sub(1, 7)) --���������
require("Envir/Robot_def/zidongjiaoben.lua") --�����˽ű�
require("Envir/Market_Def/zh.lua") --���˷�װ����
require("Envir/Market_Def/denglujiemian.lua") --��¼��������
require("Envir/Market_Def/UseItem.lua") --ʹ�õ���31��˫������
require("Envir/Market_Def/GmBox.lua") --GM������
require("Envir/Market_Def/youshangtubiao.lua") --����ͼ��
require("Envir/Market_Def/buffjiemian.lua") --buff����
require("Envir/Market_Def/dingshiqi.lua") --��ʱ��
require("Envir/Market_Def/shouhunshanghai.lua") --�޻��˺�����
require("Envir/Market_Def/wumuyishuxiaoguochuli.lua") --��������Ч������
require("Envir/Market_Def/huishou.lua") --����
require("Envir/Market_Def/renwuxitong.lua") --����ϵͳ
require("Envir/Market_Def/zhuangbeizengfu.lua") --����ϵͳ
----------------------------------------------------------------
function startup()
	release_print("ϵͳ����")
	-----���ú�������
	local hequcishu = getsysint("��������") --��������
	local lasthequtianshu = getsysint("����������") --����������
	local gfhequcishu = getsysint("�ٷ���������") --ϵͳ��Ĺٷ���������
	local guanfanghequcishu = globalinfo(3) --��ȡ�Ĺٷ��ĺ�������
	local kaiqutianshu = getkaiquday() --��������
	
	if gfhequcishu ~= guanfanghequcishu then --��Ĵ����ͻ�ȡ�Ĺٷ�������������� ��ʾ���������
		setsysint("�ٷ���������",guanfanghequcishu)
		if lasthequtianshu ~= kaiqutianshu then --����û���ù�����
			setsysint("����������",kaiqutianshu)
			setsysint("��������",hequcishu+1)
			
			local tongjibiaoti = {
			"�������ĵ�Ԫ��","�������ĵ�Ԫ��","��ҩ���ĵ�Ԫ��","���������ĵ�Ԫ��","�������ĵ�Ԫ��","�ҵ��Ĵ���","ϴ�����������ĵ�Ԫ��","ϴ��������Ĵ���","�����������ĵ�Ԫ��",
			"�����ͷ���ĵ�Ԫ��","������������ĸ���","�����󻨷ѵ�Ԫ��","������ˮ���󻨷ѵ�Ԫ��","������ʦ���ĵ�Ԫ��","��Ѹ�����Ҷһ���Ԫ��",
			"����Ͷ������ĸ���","����Ͷ�ʴ�ʹ�ĸ���","����Ͷ�ʴ��˵ĸ���","����Ͷ��ר�ҵĸ���","��ȡ�׳�ĸ���","�ںϵĴ���",
			"�ҵ�����ͳ��","�ҵ��������","�ҵ���ħ����","�ҵ�ţħ��","�ҵ����¶�ħ","�ҵ�ħ������","�ͽ����˳�ȡ�Ĵ���",
			"��ȡ�����","��ȡ������¯","��ȡ����������","��ȡ������","��ȡ���ؾ�","��ȡ�����","��ȡ����ӡ","��ȡ��ƿ",
			"��ȡ�����","��ȡ����֮ͫ","��ȡ������","��ȡ��Ԫ�����","��ȡ�׹���","��ȡ������","��ȡ���ӡ","��ȡ����",
			"����Ȫˮ��Ԫ��","��ʵ��ֵԪ��","��̨��ֵԪ��","�����ܿ�����Ԫ��","�ͷ�����","���ϲ���","���ز���","���ղ���","��Ŀ����"
			}
			for i = 1,#tongjibiaoti do
				setsysint(tongjibiaoti[i],0)
			end
			
			local diaoluoxilie = {
			"ǿ��ϵ��","���������·�ϵ��","S1����ϵ��","S1����ϵ��","S1�·�ϵ��","S1����ϵ��","S2ϵ��","S2����ϵ��","S2�·�ϵ��","S2����ϵ��","S3ϵ��","S3����ϵ��","S3�·�ϵ��","S3����ϵ��","S4ϵ��","S4����ϵ��","S4�·�ϵ��","S5ϵ��","S5�·�ϵ��",
			"S6ϵ��","S6�·�ϵ��","S7ϵ��","S7�·�ϵ��","12�����","50�����","�޻군","��ҳ","���ʯ","����֮Ѫ","����","ׯ������","�ۺ�֮��","������ʯ","����ˮ��","ħ��֮Ѫ","����ƾ֤","��ˮ����",
			}
			for i = 1,#diaoluoxilie do
				setsysint("��������"..diaoluoxilie[i],0)
			end
			for i = 1,6 do
				setsysstr("����"..i,"")
			end		
		end
	end
	-----
	--����������ˢ��
	setsysint("����������ʱ��",0)
	setsysint("������BOSS����ʱ��",0)
	setsysint("Ȫ������ʱ��",0)
	qixingtashuaiguai() --ˢ��
	--qixingtashuaiboss() --ˢ��boss
	setsysstr("Ȫˮ����","")
	quanshuishuaiguai()--Ȫˮˢ��
	setsysint("Ȫ��ˢ��ʱ��",os.time())
	setontimerex(1, 1, 0) --ȫ�ֶ�ʱ��
	
	genmon("hlsd",50,50,"��������",50,2,253)
	
	setenvirontimer("hlsd",1,1,"@huolongshuaguai") --��ͼ��ʱ��
end

function huolongshuaguai()
	if #getobjectinmap("hlsd",37,53,6,1) > 0 and #getmapmon("hlsd","����֩��",50,50,50) < 150 then
		genmon("hlsd",37,54,"����֩��",0,2,255)
	end
	--sendmsg0(0,"��ʱ��")
end

function ontimerex1() --ȫ�ֶ�ʱ��
	if os.time() - getsysint("����������ʱ��") == 3600*3 then
		qixingtashuaiguai()
	end

	if (os.time() - getsysint("Ȫ��ˢ��ʱ��")) % (60*30) == 0 then
		quanshuishuaiguai()
	end
	
	quanshuijiance() --Ȫˮ1Сʱ��ʧ���
end

function quanshuijiance()
	local data = getquanshuidata()
	for i = 1,#data do
		local mon = data[i] --Ȫˮ
		local chushengtime = tonumber(getcurrent(mon,"9")) --Ȫˮ��ʧʱ��
		if not chushengtime or os.time() - chushengtime >= 60*60 then
			killmonbyobj(globalinfo(0),mon,false,false,false) --ɱ��
			table.remove(data,i)
			setsysstr("Ȫˮ����",tbl2json(data))
			release_print("�Ƴ�Ȫˮ",mon)
			break
		end
	end
end

function removequanshuidata(mon)
	local data = getquanshuidata()
	for i = 1,#data do
		local guai = data[i] --Ȫˮ
		if guai == mon then
			table.remove(data,i)
			setsysstr("Ȫˮ����",tbl2json(data))
			release_print("�Ƴ�Ȫˮ",mon)
			break
		end
	end
end

local quanshuiditu = {"mhyj1","mhyj2","mhyj3","lzsy1","lzsy2","lzsy3","txmk1","txmk2","txmk3","dlsy1",
					"dlsy2","dlsy3","dlsy4","thg1","thg2","thg3","thg4","ymgm1","ymgm2","ymgm3",
					"rydy1","rydy2","rydy3","rydy4"}
function quanshuishuaiguai()
	math.randomseed(tostring(os.time()):reverse():sub(1, 7)) --���������
	local mapid = quanshuiditu[math.random(1,#quanshuiditu)]
	local guai_t = genmon(mapid,500,500,"Ȫ��",500,1,253)
	local mon = guai_t[1]
	if mon then
		setcurrent(mon,"9",tostring(os.time())) --���ó���ʱ�䣬1��Сʱû�˲ɾ���ʧ
		setcurrent(mon,"8",tostring(20)) --�ɲɼ�����
		release_print("ˢ��Ȫˮ",mon,mapid,getx(mon),gety(mon))
		local qs_t = getquanshuidata() --Ȫˮ����
		table.insert(qs_t,mon)
		setsysstr("Ȫˮ����",tbl2json(qs_t))
	end
end

function getquanshuidata()
	local t = {}
	local quanshuistr = getsysstr("Ȫˮ����")
	if quanshuistr ~= "" then
		t = json2tbl(quanshuistr)
	end
	return t
end

local qxt_guai = {"��˿����", "����֮��", "ͨ�����", "�귨�й�", "������", "�Ϲ�����", "�̻�����", "аħͳ˧"}
function qixingtashuaiguai()
	math.randomseed(tostring(os.time()):reverse():sub(1, 7)) --���������
	local name = qxt_guai[math.random(1,#qxt_guai)]
	--release_print(name)
	genmon("qxt5",17,21,name,20,1,249)
end


local skilltab = {
	[0]={"��������","��ɱ����","��ɱ����","Ұ����ײ","�����䵶","�һ𽣷�"},
	{"�ջ�֮��","�׵���","��ǽ","�����Ӱ","�����׹�","ħ����","������","���ܻ�"},
	{"������","������ս��","ʩ����","�����","�����","��ʥս����","������","����������","Ⱥ��������","�ٻ�����","��ħ��","�����ٻ�","������ʾ"},
}


function login(actor) --��¼����
	if hasbuff(actor,20117) then
		delbuff(actor,20117)
	end
	if getint(actor,"���κ�") == 1 then
		setattackmode(actor,-1)
		setint(actor,"���κ�",0)
	end	
	
	local zslv = getbaseinfo(actor,39) --ת���ȼ�
	if zslv >= 7 then
		setbaseinfo(actor,40,70)
	elseif zslv >= 6 then
		setbaseinfo(actor,40,75)
	elseif zslv >= 5 then
		setbaseinfo(actor,40,80)
	elseif zslv >= 4 then
		setbaseinfo(actor,40,85)
	elseif zslv >= 3 then
		setbaseinfo(actor,40,90)	
	end

	setint(actor,"gmȨ��",0)
	if getint(actor,"�ۼƳ�ֵ") >= 10 then
		gmexecute(actor,"ReleaseShutup",getname(actor))
	end
	--�̶�����
	sendmsg(actor,1,'{"Msg":"180��ɫ��ְҵ.��������.��ҿ���.��������.����www.st099.com����Ƶ��80890�Ҷ���.��Ϸ���������������ѯ","FColor":255,"BColor":252,"Type":8,"Time":999999}')
	sendmsg(actor,1,'{"Msg":"���ֽ�����鿴��������ķ�ƭ˵��","FColor":116,"BColor":0,"Type":8,"Time":180}')
	sendmsg(actor,1,'{"Msg":"�����Լ�����.�����˺�װ������κ���","FColor":116,"BColor":0,"Type":8,"Time":180}')
	
	renwupanduan(actor) --����ϵͳ�жϽ�ȡ����
	setint(actor,"ɱ�������",0)
	
	local beigong = 1+getbaseinfo(actor,51,67)/10000
	sendmsg6(actor,"[��ʾ]����ǰ����������"..beigong,"#035403")
	
	--------���˵�¼��
	if getbaseinfo(actor,47) then --���˵�¼
		setint(actor,"�����ָ��ٷֱ�",90)
		setint(actor,"�����ָ��ٷֱ�",80)
		setint(actor,"�����Զ��ָ�",1)
		setint(actor,"�����Զ��ָ�",1)
		setint(actor,"�洢����",500000)
		setint(actor,"�洢����",500000)
		
		setint(actor,"��ɫ����ʱ��",os.time())
		giveonitem(actor,1,"ľ��",1,370)
		if getsex(actor) == 0 then
			giveonitem(actor,0,"����(��)",1,370)
		else
			giveonitem(actor,0,"����(Ů)",1,370)
		end
		
		giveitem(actor,"ҩƷ���ÿ�",10,370)
		giveitem(actor,"���鱦��",1,370)
        --���ε�½��Ӽ���

		local job = getbaseinfo(actor, 7) --��ȡְҵ 0ս 1�� 2��
        for _, skill_name in ipairs(skilltab[job]) do
            addskill(actor, getskillidbyname(skill_name), 3)
        end
		changestorage(actor, 24) --�ֿ����  
        setbagcount(actor, 50) --��������
		setint(actor,"�ѿ�������������",50)
		--setsndaitembox(actor,1) --�������κ�
		sendmsg0(actor,"ϵͳ���ﻶӭ����ҡ�".. getname(actor) .."������˳�촫�棬�Ӵ��ݺ��귨��ָ�տɴ�.....")	
		mapmove(actor,"xinshou",25,32,4) --�ɵ�������
		--changeattackmode(actor,4) --�޸�Ϊ����ģʽ
		callscriptex(actor, "CLIENTSWITCH", 0, 1)
		callscriptex(actor, "CLIENTSWITCH", 2, 1)
	end
	-------���˵�½�ν���
	
	if getsysint("����ʱ��") == 0 then	-----���ÿ���ʱ��
		setsysint("����ʱ��",os.time())
	end
	addbuttons(actor) --��Ӱ�ť ���ļ�denglujiemian��
	tubiaoxianshi(actor) --���Ϲ���ͼ��
	buff_show(actor) --buff��ť buffjiemian�ļ���
	
	if hasbuff(actor,20041) then --����buff ����ɾ��
		delbuff(actor,20041)
	end
	
	setontimer(actor, 1, 1, 0,1) --��ʱ��id ,ʱ���� ������������Ƿ���� --�����Ҫ�����޻�buff
	setontimer(actor, 10, 60, 0,1) --1���Ӷ�ʱ�� �������ף��ֵ
	setontimer(actor, 11, 30, 0,1) --30�붨ʱ�� �洢���������
	if getlevel(actor) < 30 then
		setontimer(actor, 55, 1, 0,1) --��ʱ��55 ���˼Ӿ��鶨ʱ��
	end
	chulizhufuzhi(actor) --����ף��ֵ --���ļ�dingshiqi����
	callscriptex(actor, "CallLua", "zhuangbeitansuo", "@jinengtexiao_sz") --���ü�����Ч
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --�ڿ�������ʾ
	delbutton(actor,106,122) --ɾ���ֻ��������ȥ����
	
	delaygoto(actor,300,"hezichenghao") --���ӳƺ�
	
	qixingta_buffchuli(actor) --������buff���
	touwangchuli(actor) --����buff���
	wulinzhizunchuli(actor) --����������
end

function hezichenghao(actor) --���ӳƺ�
	if getlevel(actor) >= 38 or hasbuff(actor,10001) or hasbuff(actor,20083) then
		seticon(actor, 10, -1)
	end
end

--------����������
local equ_tab1 = {
	[0] = {{"����",1},{"�ؿ���(��)",0},{"���������",3},{"ħ������",5},{"ħ������",6},{"���ý�ָ",7},{"���ý�ָ",8},{"��������",15}},
	[1] = {{"����",1},{"ħ������(��)",0},{"�Ŵ�",3},{"ħ������",5},{"ħ������",6},{"���۽�ָ",7},{"���۽�ָ",8},{"��������",15}},
	[2] = {{"��ħ",1},{"���ս��(��)",0},{"���",3},{"��ʿ����",5},{"��ʿ����",6},{"���½�ָ",7},{"���½�ָ",8},{"��������",15}}
	}

local equ_tab2 = {
	[0] = {{"����",1},{"�ؿ���(Ů)",0},{"���������",3},{"ħ������",5},{"ħ������",6},{"���ý�ָ",7},{"���ý�ָ",8},{"��������",15}},
	[1] = {{"����",1},{"ħ������(Ů)",0},{"�Ŵ�",3},{"ħ������",5},{"ħ������",6},{"���۽�ָ",7},{"���۽�ָ",8},{"��������",15}},
	[2] = {{"��ħ",1},{"���ս��(Ů)",0},{"���",3},{"��ʿ����",5},{"��ʿ����",6},{"���½�ָ",7},{"���½�ָ",8},{"��������",15}},
	}
	
local dengjijingyan = {[65]=60000000,[66]=80000000,[67]=100000000,[68]=120000000,[69]=150000000,[70]=200000000,[71]=250000000,[72]=300000000,[73]=400000000,[74]=500000000,
}
function playlevelup(actor)
	if getlevel(actor) >= 48 then
		setint(actor,"�ش������",1)
	end
	if getlevel(actor) == 35 or getlevel(actor) == 40 then
		setint(actor,"�ͷ������ʾ",1)
	end
	setint(actor,"Ͷ�ʺ��",0)
	hezichenghao(actor) --���ӳƺ�
	local job = getbaseinfo(actor, 7) --��ȡְҵ 0ս 1�� 2��
	if not getskillinfo(actor,getskillidbyname(skilltab[job][1])) then
		for _, skill_name in ipairs(skilltab[job]) do
			addskill(actor, getskillidbyname(skill_name), 3)
		end
	end
	if getint(actor,"�ѿ�������������") < 50 then
		changestorage(actor, 24) --�ֿ����  
		setbagcount(actor, 50) --��������
		setint(actor,"�ѿ�������������",50)
	end
	tubiaoxianshi(actor) --ˢ�¶�����ť���
	if getint(actor,"�������id") == 0  then --��ǰ����id==1��ʱ��
		shuaxinrenwu(actor)
	end
	if getlevel(actor) == 26 then
		local sex = getbaseinfo(actor, 8) --��ȡ�Ա�
		local job = getbaseinfo(actor, 7) --��ȡְҵ
		local t = {}
		if sex == 0 then
			t = equ_tab1
		else
			t = equ_tab2
		end
		local tab = t[job]
		for i=1,#tab do
			local guize = 370
			if tab[i][1] == "��������" then
				guize = 371
			end
			local item = giveitem(actor,tab[i][1],1,guize)
			takeonitem(actor,tab[i][2],getiteminfo(actor,item,1))
		end
		takeitem(actor,"ľ��",1)
		takeitem(actor,"����(��)",1)
		takeitem(actor,"����(Ů)",1)
		giveitem(actor,"�������ʯ",2,370)
		giveitem(actor,"���ش���ʯ",1,370)
		giveitem(actor,"ǿЧ̫��ˮ��",6,370)
		callscriptex(actor, "CallLua", "wumuyishu", "@addwmysjy,0") --������������
		--giveitem(actor,"ǿЧ��ҩ",99,370)
		--giveitem(actor,"ǿЧħ��ҩ",99,370)
	end
	if getlevel(actor) == 30 then
		setofftimer(actor,55) --�Ƴ���ʱ�������ݵ�
		mapmove(actor,"3",333,333,5)
		local str = [[
			<Img|width=569|height=250|loadDelay=1|bg=1|scale9r=10|scale9t=10|show=4|scale9b=10|reset=1|move=0|img=public/bg_npc_01.png|esc=1|scale9l=10>
			<Button|x=567.5|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
			<RText|x=18.5|y=66.0|size=18|color=255|text=���������𱬣�����һ�㣬ʯĹ����ǰ��Ϊ����ˢ��ģʽ������ǰ>
			<RText|x=18.5|y=99.0|size=18|color=255|text=�ڽ���ǰ���˴���������ǰ�����ص�ͼ��ͨ����ֻ����������л�>
			<RText|x=18.5|y=132.0|size=18|color=255|text=�þ���������������ʮ���ɿ��������˶���������ܸ���ˢ����>
			<Text|x=247.5|y=204.0|color=251|size=18|text=��֪����|link=@exit>
			<Img|x=227.5|y=205.0|img=zhangheng/211.png|esc=0>
			<COUNTDOWN|id=5|x=332.5|y=205.0|time=30|count=1|size=16|color=250|link=@exit>
			<RText|x=18.5|y=165.0|size=18|color=255|text=Ȥ�� һ�в���������ѯ��Ϸר���ͷ�>
		]]
		str=str..'<RText|ax=0.5|x=292.5|y=33.0|color=255|size=18|text=�װ�����ң�<'.. getname(actor) ..'/FCOLOR=251>     ��ӭ����<��˳�촫�桿/FCOLOR=254>>'
		
		say(actor,str)
	end

	
	if getname(actor) == getsysstr("������������") then
		local dengji = getlevel(actor) --�ȼ�
		local jingyan = getbaseinfo(actor,13) --����
		setsysint("��������ȼ�",dengji)
		setsysstr("����������",tostring(jingyan))
		setsysstr("���������л�",getbaseinfo(actor,36))
	end
	if getlevel(actor) == 59 then
		setjingyan(actor,getbaseinfo(actor,13))
		--sendmsg6(actor,"������ǰ����"..getbaseinfo(actor,13))
	end
	if getlevel(actor) == 75 then
		setjingyan(actor,0)
	end
	if getlevel(actor) < 59 then
		setjingyan(actor,getbaseinfo(actor,13))
	end
	if getlevel(actor) == 60 then
		setjingyan(actor,getjingyan(actor))
	end
	
	if getlevel(actor) == 49 then
		renwupanduan(actor) --����ϵͳ�жϽ�ȡ����
	end
	
	if getlevel(actor) == 40 and not getispc(actor) then
		navigation(actor,201,0,"��Ϸ���ܰ�ť")
	end
	
	--[[if (getlevel(actor) == 41 or getlevel(actor) == 44) and getint(actor,"��Ա�ȼ�") < 2 then
		if getispc(actor) then --����
			local str = "<Button|x=260|y=-256|color=255|size=18|nimg=zhangheng/324.png|link=@huiyuantishi>"
			str = str.."<Effect|x=284.8|y=-232.2|scale=0.7|speed=1|dir=5|effectid=4004|effecttype=0|act=0>"
			addbutton(actor,103,5,str)
		else
			local str = "<Button|x=-150|y=-264|color=255|size=18|nimg=zhangheng/324.png|link=@huiyuantishi>"
			str = str.."<Effect|x=-125.8|y=-241.2|scale=0.7|speed=1|dir=5|effectid=4004|effecttype=0|act=0>"
			addbutton(actor,108,56,str)
		end
	end--]]
	
end

function huiyuantishi(actor)
	if getispc(actor) then --����
		delbutton(actor,103,5)
	else
		delbutton(actor,108,56)
	end
	local msg = [[
	<Img|x=0.0|y=0.0|width=540|height=310|reset=1|scale9r=30|scale9t=30|bg=1|scale9b=30|move=0|scale9l=30|loadDelay=1|esc=1|img=zhangheng/176.png|show=4>
<Button|x=540.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=154.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=323.0|y=27.0|img=zhangheng/178.png|esc=0>
<Text|ax=0.5|ay=0.5|x=272.0|y=34.5|color=251|size=18|text=��ܰ��ʾ>
<RText|x=24.0|y=55.0|color=161|size=18|text=�װ������.��û�п���<Ͷ�ʴ�ʹ/FCOLOR=250>֮ǰ��ֻ�ȡ�Ĳ�����Ʒ<����/FCOLOR=250>>
<RText|x=24.0|y=75.0|color=161|size=18|text=<�ǰ󶨵�/FCOLOR=250>.�˾ٹٷ�Ҳ������.��΢Ӱ����������Ϸ����������>
<RText|x=24.0|y=95.0|color=161|size=18|text=�˲���<���Ǹ��/FCOLOR=249>��Ϊ���������ÿһֻ��������������Ʒ.����>
<RText|x=24.0|y=115.0|color=161|size=18|text=<�൱�ߵļ�ֵ/FCOLOR=253>.(��ͨ��ͷ����ť<������/FCOLOR=250>�����˽�).��ʱ���Ա���.>
<RText|x=24.0|y=135.0|color=161|size=18|text=����������̫���˽ű��ѻ�������Ӱ����������ҵ�����.����>
<RText|x=24.0|y=155.0|color=161|size=18|text=����������ôһ���ż�.�����ֻ�����Լ�����.���Բ��û�һ��>
<RText|x=24.0|y=175.0|color=161|size=18|text=Ǯ������Ϸ.�����������κ�Ӱ��.������ש.ֻ�軨��<6600Ԫ/FCOLOR=251>>
<Text|x=237.0|y=265.0|color=250|outline=1|size=18|text=��֪����|link=@exit>
<RText|x=24.0|y=195.0|color=161|size=18|text=<��/FCOLOR=251><����Ͷ�ʴ�ʹ/FCOLOR=250>���ɻ��<���Ȩ��/FCOLOR=254>.���������Ĳ��㻹���½�.>
<RText|x=24.0|y=215.0|color=161|size=18|text=<������������۳��������ް���/FCOLOR=70>.����ƽ��.ȫ��Ψһһ��Ͷ�ʴ�>
<RText|x=24.0|y=235.0|color=161|size=18|text=ʹ.����ȫ�����֮�����ɽ��׻��.>

	]]
	say(actor,msg)
	
end

function getexp(actor,jy) --��ȡ���鴥��
	--sendmsg6(actor,"����"..jy)
	jy= tonumber(jy)
	if getlevel(actor) >= 59 then
		changeexp(actor,"=",0,false)
	end
	
	
	
	if getlevel(actor) < 44 then
		changeexp(actor,"+",math.floor(jy*0.3),false)
	end
	if getlevel(actor) >= 75 then
		
	elseif getlevel(actor) >= 59 then
		setjingyan(actor,getjingyan(actor)+jy)
	else
		setjingyan(actor,getbaseinfo(actor,13))
	end
	--sendmsg9(actor,"��ǰ����"..getbaseinfo(actor,13))
	if getlevel(actor) >= 59 then
		playshengji(actor)
	end
	
	if getname(actor) == getsysstr("������������") then
		local dengji = getlevel(actor) --�ȼ�
		local jingyan = getjingyan(actor) --����
		--sendmsg9(actor,"��ǰ����"..jingyan)
		setsysint("��������ȼ�",dengji)
		setsysstr("����������",tostring(jingyan))
		setsysstr("���������л�",getbaseinfo(actor,36))
	end
	
end

function playshengji(actor)
	local zslv = getbaseinfo(actor,39) --ת���ȼ�
	local dengjisx = 65 + zslv --��ߵȼ� 
	local lv = getlevel(actor) --����ȼ�
	local curjingyan = getjingyan(actor) --��ǰ����
	local shengjijingyan = getbaseinfo(actor,14) --��������
	if lv < dengjisx and curjingyan >= shengjijingyan then
		setlevel(actor,lv + 1)
		setjingyan(actor,curjingyan-shengjijingyan)
	end
end

function walk(actor) --��·����
	--sendmsg6(actor,"��·����"..getx(actor).." "..gety(actor))
	if getmap(actor) == "11" and getx(actor) == 174 and gety(actor) == 334 then
		local hour = tonumber(os.date("%H",os.time())) --Сʱ
		if hour == 13 or hour == 23 then
			map(actor,"wjly")
		end
	end
	if os.time() - getint(actor,"����ƶ�ʱ��") >= 3 then
		setint(actor,"����ƶ�ʱ��",os.time(),0) --�����浽���ݿ�
	end
end

function run(actor) --�ܴ���
	--sendmsg6(actor,"�ܴ���"..getx(actor).." "..gety(actor))
	local hour = tonumber(os.date("%H",os.time())) --Сʱ
	if getmap(actor) == "11" and getx(actor) == 174 and gety(actor) == 334 then
		if hour == 13 or hour == 23 then
			map(actor,"wjly")
		end
	end

	if hour == 20 or hour == 21 then		
		if os.time() - getint(actor,"����ƶ�ʱ��") >= 3 then
			setint(actor,"����ƶ�ʱ��",os.time(),0) --�����浽���ݿ�
		end
	end
end

local yanshiditutishi = {
	["63"]=1,["64"]=1,["65"]=1,["66"]=1,["h202"]=1,["h203"]=1,["h106"]=1,["maya1"]=1,["maya2"]=1,["maya3"]=1,["mhyj1"]=1,["mhyj2"]=1,["lzsy1"]=1,["lzsy2"]=1,
	["txmk1"]=1,["txmk2"]=1,["dlsy1"]=1,["dlsy2"]=1,["dlsy3"]=1,["thg1"]=1,["thg2"]=1,["thg3"]=1,["ymgm1"]=1,["ymgm2"]=1,["rydy1"]=1,["rydy2"]=1,["rydy3"]=1,["fdgy1"]=1,
	["fdgy2"]=1,["fdgy3"]=1,["jjhl1"]=1,["jjhl2"]=1,["jjhl3"]=1,["jjhl4"]=1,["mgrk"]=1
}
function entermap(actor) --�����ͼ����
	--callscriptex(actor, "SENDDELAYMSG", "��ʣ��%s�뿪����ͼ",0, 251,1,"")
	local oldmap = getconst(actor,'$oldmap')
	local curmap = getmap(actor)
	if getint(actor,"������") ~= 0 then
		setint(actor,"������",0)
	end
	
	if oldmap == curmap then --ͬһ��ͼ �����
		if getbaseinfo(actor,45) == "BOSS�Թ�" and os.time() ~= getint(actor,"���Թ�ʱ��") then
			setint(actor,"���Թ�ʱ��",os.time())
			mapmove(actor,curmap,getx(actor),gety(actor),0)
		end
		return
	end
	
	setstr(actor,"�ɵ�ͼ��",getstr(actor,"��ǰ��ͼ��"))
	setstr(actor,"��ǰ��ͼ��",getbaseinfo(actor,45))
	
	if oldmap == "mgrk" and getbaseinfo(actor,45) == "BOSS�Թ�" then
		callscriptex(actor, "SENDDELAYMSG", "��ʣ��%s�뿪����ͼ",3600, 251,0,"@huicheng")
	end
	
	if getstr(actor,"�ɵ�ͼ��") == "BOSS�Թ�" and getbaseinfo(actor,45) ~= "BOSS�Թ�" then
		callscriptex(actor, "SENDDELAYMSG", "��ʣ��%s�뿪����ͼ",0, 251,1,"")
	end
	
	if yanshiditutishi[curmap] and oldmap ~= curmap then
		sendmsg9(actor,"Ϊ��ֹ�ѻ�Ӱ�������������,�˵�ͼʹ���������ʯ�ӳ�1��","#00FF00")
	end
	
	if curmap == "wlsz" then
		setattackmode(actor,5,999999) --ǿ���лṥ��ģʽ
	elseif oldmap == "wlsz" then
		setattackmode(actor,-1,0) --ǿ���лṥ��ģʽ
	end
	
	if curmap == "xszc" then
		if checkrangemoncount("xszc",'',38,38,50) < 200 then
			genmon("xszc",38,38,"��",50,50)
			genmon("xszc",38,38,"������",100,50)
			genmon("xszc",38,38,"��",50,50)
			genmon("xszc",38,38,"¹",50,50)
		end
	end
	if curmap == getname(actor) then --����һ���ͼ
		setontimer(actor, 15, 60, 0,1) --��ʱ��id ,ʱ���� ������������Ƿ���� --15�Ŷ�ʱ�������ƹǻҹһ�
		setint(actor,"�һ�ʱ��",0)
	elseif oldmap == getname(actor) then --�뿪�һ���ͼ
		setofftimer(actor, 15)
		delmirrormap(getname(actor))
	end
	
	if oldmap == "3" then --��ȫ����������Ϣ����
		releasemagic(actor,getskillidbyname("�����ٻ�"),1,3,2,0)
	end
	if curmap == "tuoji" or curmap == "waigua" or oldmap == "tuoji" or oldmap == "waigua" then
		tubiaoxianshi(actor)
	end
	--sendmsg6(actor,"�����ͼ����"..curmap)
	if getplaydef(actor,"N$�һ�״̬") == 1 and curmap ~= "3" then --�һ���
		delaygoto(actor,1000,"zidongguaji_jixu")
	end
end

function ontimer15(actor)
	--sendmsg9(actor,"���ƹǻҹһ���ʱ��")
	if getint(actor,"�һ�����") < 5 then
		mapmove(actor,"3",333,333,6)
		return
	end
	setint(actor,"�һ�����",getint(actor,"�һ�����")-5)
	setint(actor,"�һ�ʱ��",getint(actor,"�һ�ʱ��")+1)
	if getint(actor,"�һ�ʱ��") == 60 then
		if getint(actor,"�Զ�����") == 1 then
			if getbindgold(actor) >= 10000 then
				subbindgold(actor,10000)
				repairall(actor)
			end
		end
	end
	if getint(actor,"�һ�ʱ��")%8 == 0 then
		local sl = checkrangemoncount(getname(actor),'��Ұ��4',200,200,200)
		if sl < 150 then
			genmon(getname(actor),200,200,"��Ұ��4",200,150-sl)
		end
	end
	if getint(actor,"�һ�ʱ��")%8 == 0 then
		local sl = checkrangemoncount(getname(actor),'��Ұ��4',200,200,200)
		if sl < 150 then
			genmon(getname(actor),200,200,"��Ұ��4",200,150-sl)
		end
	end
	if getint(actor,"�һ�ʱ��")%9 == 0 then
		local sl = checkrangemoncount(getname(actor),'��ɫ����4',200,200,200)
		if sl < 150 then
			genmon(getname(actor),200,200,"��ɫ����4",200,150-sl)
		end
	end
	if getint(actor,"�һ�ʱ��")%10 == 0 then
		local sl = checkrangemoncount(getname(actor),'Ы��4',200,200,200)
		if sl < 150 then
			genmon(getname(actor),200,200,"Ы��4",200,150-sl)
		end
	end
end

---------���ʹ�����
function findpathbegin(actor)
	local mapid = getmap(actor)
	local x = getconst(actor,"<$ToPointX>")
	local y = getconst(actor,"<$ToPointY>")
	local kechuansong = false
	for i=0,20 do
		local item = linkbodyitem(actor,i)
		if item ~= "0" then
			local itemid = getiteminfo(actor,item,2)
			local itemname = getstditeminfo(itemid,1)
			if itemname == "gm��" then
				kechuansong = true
				break
			end
		end
	end
	
	local cszcs = 0 --ÿ���ܵĿɴ��ʹ���
	
	if getbaseinfo(actor,39) >= 10 then -- 10��ת����20��
		cszcs = cszcs + 20
	end
	if getint(actor,"��������3���")==27 then
		cszcs = cszcs + 50
	end
	
	if getint(actor,"��������3���")==28 then
		cszcs = cszcs + 25
	end
	
	if getdayint(actor,"ÿ�մ��ʹ���") < cszcs and getint(actor,"�Ƿ���") == 1 then
		kechuansong = true
	end
	
	if not kechuansong then
		return
	end
	local chuansongtime = getint(actor,"����ʱ��")
	local curtime = os.time() --��ǰʱ��
	if curtime - chuansongtime < 10 then
		--callscriptex(actor, "SendCustomMsg", 1, "Ŀǰ����ʣ����ȴʱ��".. 10 - (curtime - chuansongtime),249 ,0 ,550, 393)
		--return
	end
	mapmove(actor,mapid,x,y,2)
	setint(actor,"����ʱ��",curtime)
	setdayint(actor,"ÿ�մ��ʹ���",getdayint(actor,"ÿ�մ��ʹ���")+1)
	ditujiemian(actor) --ˢ�µ�ͼ����
end
---------���ʹ����ν���
local qidaotao = {{5,"������"},{6,"������"},{7,"����ָ"},{8,"����ָ"}}
--��������
local tjxianzhiditu111 = {
	["d022"]=2,["d023"]=2,["d713"]=2,["d714"]=2,["d715"]=2,["d716"]=2,
	["d505"]=1,["d5071"]=1,["d2008"]=1,["d2010"]=1,["d2011"]=1,["d2012"]=1,["d2063"]=1,["d2064"]=1,["d2073"]=1,["d2075"]=1,["d2076"]=1,["d1004"]=1,
	["d10051"]=1,["d10052"]=1,["d10061"]=1,["d10062"]=1,["63"]=2,["64"]=2,["65"]=2,["66"]=2,
	["mgrk"]=5,["h201"]=5,["h202"]=5,["h203"]=5,["h106"]=5,["maya1"]=5,["maya2"]=5,["maya3"]=5,
}
function playdie(actor, hiter) --��ɱ ɱ����
	if getjob(actor) == 1 then
		local bb_t = getbaobaolist(actor)
		for i = 1,#bb_t do
			killmonbyobj(globalinfo(0),bb_t[i],false,false,false) --ɱ��
		end
	end
	
	setint(actor,"ɱ�������",0)
	cleardelaygoto(actor)
	
	for i = 1,#qidaotao do
		local item = linkbodyitem(actor,qidaotao[i][1])
		if item ~= "0" and getitemname(actor,item) == qidaotao[i][2] then
			delitem(actor,item)
		end
	end
	
	if hiter ~= "0" and getbaseinfo(hiter,-1) then
		if getlevel(actor) == 76 then
			setlevel(actor,75)
		end
	end
	setdayint(actor,"������������",getdayint(actor,"������������")+1)
	
	if hiter ~= "0" then
		if getbaseinfo(hiter,-1) then --�����ɱ
			-------ɱ�񱩴���
			if (hasbuff(actor,10001) or hasbuff(actor,20083)) and not isingongchengquyu(actor) and not isingongchengquyu(hiter) and (hasbuff(hiter,10001) or hasbuff(hiter,20083)) then --�п񱩲��Ҳ��ڹ�������
				local addyb = 500
				local sh_sj = getshouhunbuffdata(hiter) --��ȡ�������޻�buff����
				for i = 1,#sh_sj do
					if sh_sj[i] == "���⾪ϲ" then
						addyb = addyb + 100
					end
				end

				addingot(hiter,addyb)
				sendmsg(hiter,1,'{"Msg":"����ϵͳ����ʿ['.. getname(hiter) ..']�ѿ��������Ĵ��ˡ���['.. getname(actor) ..']ɱ����.�����'..addyb..'Ԫ��������","FColor":194,"BColor":149,"Type":1,"Time":3}')
				if hasbuff(actor,10001) then
					delbuff(actor,10001)
				end
				if hasbuff(actor,20083) then
					delbuff(actor,20083)			
				end
				--[[local str = "<ս����/FCOLOR=254><��".. getname(hiter) .."��/FCOLOR=251><�ɵ���ӵ�С����Ĵ��ˡ���/FCOLOR=254><��".. getname(actor) .."��/FCOLOR=251><���"..addyb.."Ԫ������������/FCOLOR=254>"
				--sendmsg13(actor,str)
				callscriptex(actor, "sendcentermsg", 251, 0, str, 1 ,5 )--]]
				setdayint(hiter,"ÿ��ɱ������",getdayint(hiter,"ÿ��ɱ������")+1)
			end
			-------ɱ�񱩴���end
			-------ɱ�ѻ���֤����
			if getint(actor,"���ѻ���֤") == 1 and tjxianzhiditu111[getmap(actor)] and getsysint("��������") >= tjxianzhiditu111[getmap(actor)] then
				addbindgold(hiter,50000)
				setint(actor,"���ѻ���֤",0)
				deprivetitle(actor,"���ѻ���֤")
				local item_num = getbaseinfo(hiter, 46)
				if item_num >= 100 then
					callscriptex(hiter, "CHANGEPKPOINT","-", 99)
				end
				
			end
			-------ɱ�ѻ���֤����end
			sendmsg0(actor,"����ϵͳ��ţ�ư����ġ�".. getname(hiter) .."����".. getbaseinfo(hiter,45) .."�ѡ�"..getname(actor).."��ɱ����.����һ�䲻Ҫ��ү��ǰװ�ơ���",253,162)
		else
			--callscriptex(actor, "sendmsg",1,"�׺ݵĹ���{��"..getname(hiter).."��|250:0}��:{%m(%x:%y)|251:0}�����{"..getname(actor).."|250:0}�ɵ��ˣ� ")
			sendmsg0(actor,"����ϵͳ���ײе�"..getname(hiter).."��".. getbaseinfo(hiter,45) .."����ҡ�"..getname(actor).."������ʬ��.����һ����ɵ����𲻿������ʵ������",250,0)
		end
	end
	
	----������������
	local kuan,gao = getpingmusize(actor)
	local bgkuan = 294
	local bggao = 147
	local x = (kuan - bgkuan)/2
	local y = (gao - bggao)/2
	local msg = ''
	msg = msg .. '<Img|x='..x..'|y='..y..'|img=private/revive/bg_swfh_1.png|move=1|show=0|bg=1|reset=1>'
	msg = msg .. '<Text|x='..x+114 ..'|y='..y+16 ..'|outline=1|color=251|size=18|text=��������>'
	msg = msg .. '<RText|a=4|x='..x+153 ..'|y='..y+54 ..'|color=255|size=16|outline=1|text=�㱻 <'..getname(hiter)..'/FCOLOR=249> ɱ���ˣ�>'
	msg = msg .. '<COUNTDOWN|x='..x+132 ..'|y='..y+73 ..'|color=249|count=1|size=18|time=30|outline=1|link=@mianfeifuhuo>'
	msg = msg .. '<Button|x='..x+108 ..'|y='..y+100 ..'|nimg=public/1900000653.png|pimg=public/1900000652.png|outline=1|size=17|color=243|text=�سǸ���|link=@mianfeifuhuo>'
	addbutton(actor,106,122,msg)
	----���������������
	
	if hiter ~= "0" and getbaseinfo(hiter,-1) then --�����ɱ
		-----��������
		if getint(hiter,"��������3���") == 16 then --���Լ�ɱ������ҵ��ս��͹�ħ��10-10���ջָ������ɱ����ӣ�
			if getdayint(actor,"�������齵����") == 0 then
				setdayint(actor,"�������齵����",1)
				sendmsg9(actor,"������".. getname(hiter) .."��'���־���'���չ�ħ������10-10���ջָ�")
			end
		end
		if getint(hiter,"��������3���") == 17 then --���Լ�ɱ������ҷ���ħ������15-15���ջָ������ɱ����ӣ�
			if getdayint(actor,"�������齵����") == 0 then
				setdayint(actor,"�������齵����",1)
				sendmsg9(actor,"������".. getname(hiter) .."��'����ѷ�'����˫������10-10���ջָ�")
			end
		end
		
		-----�޻�
		local sh_data = getshouhunbuffdata(actor) --��ȡ�޻�buff����
		for i = 1,#sh_data do
			if sh_data[i] == "��ʯ���" and not hasbuff(hiter,10052) then --
				if not hasbuff(hiter,20037) then
					addbuff(hiter,20037)
					--sendmsg6(actor,"�����꼼����ʯ��١���������Ѫ������10% ����180��")
				end
			end
			if sh_data[i] == "����֮ŭ" then --
				if not hasbuff(actor,20047) then
					addbuff(actor,20047)
					--sendmsg6(actor,"�����꼼������֮ŭ����������������5%,����3600��")
				end
			end
			if sh_data[i] == "�г�ر�" and getbaseinfo(hiter,-1) and os.time() - getint(hiter,"�г�ر�ʱ��") > 10 and not hasbuff(hiter,10052) then --
				if not hasbuff(hiter,20096) then
					addbuff(hiter,20096,0,1,actor)
					setint(hiter,"�г�ر�ʱ��",os.time())
					sendmsg9(actor,"�㴥����'�г�ر�'���Է�8����ÿ����ʧ3%��Ѫ��")
					
					--sendmsg6(actor,"�����꼼������֮�꡿�����˽�����������15%����1800��")
				end
			end
		end
		sh_data = getshouhunbuffdata(hiter) --��ȡ�������޻�buff����
		for i = 1,#sh_data do
			if sh_data[i] == "����ն��" and getbaseinfo(hiter,46) >= 200 then --
				local maxhp = getbaseinfo(hiter,10)
				humanhp(hiter,"+",math.floor(maxhp*0.3),1)
				--sendmsg6(hiter,"�����꼼������ն������նɱ1�����������ظ�30%Ѫ��")
			end
			if sh_data[i] == "ԽսԽ��" then --
				addbuff(hiter,20040)
				--sendmsg6(hiter,"�����꼼��ԽսԽ�¡��������˺�����10% ����30��")
			end
		end
	end
end

function mianfeifuhuo(actor)
	realive(actor)
	mapmove(actor,"3",330,330,6)
	delbutton(actor,106,122)
end

--���ǿ�ʼ����
function castlewarstart() 
    --LOGWrite("���ǿ�ʼ����")
	setsysstr("���ǽ�������","")
    sendmsg(nil, 2, '{"Msg":"ɳ�Ϳ˹���ս�ѿ��������������ڼ䲿�ֵ�ͼ���رգ�����","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"30"}')
    sendmsg(nil, 2, '{"Msg":"ɳ�Ϳ˹���ս�ѿ��������������ڼ䲿�ֵ�ͼ���رգ�����","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"60"}')
    sendmsg(nil, 2, '{"Msg":"ɳ�Ϳ˹���ս�ѿ��������������ڼ䲿�ֵ�ͼ���رգ�����","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"90"}')
end

--���ǽ�������
function castlewarend()
    --LOGWrite("���ǽ�������")
	setsysint("����ɳ��",1) --����Ϊ������ɳ����
	sendmsg(nil, 2, '{"Msg":"ɳ�Ϳ˹���ս�ѽ���������","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"30"}')
    sendmsg(nil, 2, '{"Msg":"ɳ�Ϳ˹���ս�ѽ���������","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"60"}')
    sendmsg(nil, 2, '{"Msg":"ɳ�Ϳ˹���ս�ѽ���������","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"90"}')
	--release_print("���ǽ���ռ���л�"..sbkhh)
end

--ɱ�ִ���
local fuhuo_guai_t = {
	["d024"] = {mapname="����������",guai={{"���֮��",6}}},
	["jxdt"] = {mapname="�������",guai={{"����ħ��",6},{"����֮��",8}}},
	["d2013"] = {mapname="��ħ��",guai={{"��ħڤ��̸�",6}}},
	["d515"] = {mapname="�������֮��",guai={{"Զ������̸�",6}}},
	["d2067"] = {mapname="��ħ�����",guai={{"����ۻ�",6}}},
	["d2079"] = {mapname="ţħ�������",guai={{"������",6}}},
	["d10061"] = {mapname="��ħ��̳",guai={{"Զ��˫ͷ���",6},{"Զ��˫ͷѪħ",6}}},
	["d10062"] = {mapname="����ħѨ",guai={{"Զ�ų��¶�ħ",6}}},
	["yhsd1"] = {mapname="�̻����",guai={{"�̻�����",8}}},
	["yhsd2"] = {mapname="�̻����",guai={{"�̻�����",8}}},
	["yhsd3"] = {mapname="�̻����",guai={{"�̻�����",8}}},
	["yhsd4"] = {mapname="�̻����",guai={{"�̻�����",8}}},
	["66"] = {mapname="ħ��Ѫ��",guai={{"��֮ħ������",6}}},
	["mld"] = {mapname="ħ����",guai={{"аħͳ˧",6}}},
	["mhyj3"] = {mapname="���Ľ���",guai={{"���İ���",6},{"�������㽣ʥ",8}}},
	["lzsy3"] = {mapname="��֮������",guai={{"�������",6},{"����������",8}}},
	["txmk3"] = {mapname="��Ѫħ�߶���",guai={{"��Ѫ�ػ���",6},{"��������",8}}},
	["dlsy4"] = {mapname="������Ԩ",guai={{"����Ů��",6},{"��Ԩ������",8}}},
	["thg4"] = {mapname="�һ��ȵ�",guai={{"�һ�����֮��",6},{"�һ���ħ����",8}}},
	["ymgm3"] = {mapname="��ڤ��Ĺ����",guai={{"��ڤ��Ĺǧ��",6},{"��ڤ����ħ��",8}}},
	["rydy4"] = {mapname="���ҵ����س�",guai={{"������ħ�̸�",6},{"������ħ����",8}}},
	["fdgy4"] = {mapname="ۺ��������",guai={{"ۺ���й�",6},{"ۺ��������",8}}},
	["jjhl5"] = {mapname="�ž�֮·",guai={{"���߱�����",6},{"����������",8}}},
	["d021"] = {mapname="��������",guai={{"��˿����",8}}},
	["d2001"] = {mapname="ͨ��֮·",guai={{"ͨ�����",8}}},
	["dm002"] = {mapname="������Ĺ",guai={{"��ʼ��",8}}},
	["zmjt"] = {mapname="�����̳",guai={{"�귨�й�",8}}},
	["nhq"] = {mapname="�κ���",guai={{"������",8}}},
	["qlsy"] = {mapname="Ǳ����Ԩ",guai={{"�Ϲ�����",8}}},
	["h204"] = {mapname="ɳ�Ϳ˲ر���",guai={{"�ز�ħ��",8}}},
	["d10071"] = {mapname="���֮Դ",guai={{"���֮��",8}}},
	["maya4"] = {mapname="���Żʹ�",guai={{"�����ػ���",8}}},
	["wlsz"] = {mapname="����ɽׯ",guai={{"����ׯ��",8}}},
	["qxt5"] = {mapname="����������",guai={{"��������",8}}},
	["wzad"] = {mapname="δ֪����",guai={{"����",8}}},
}

local qxt_shaguai = {["��˿����"]=1, ["����֮��"]=1, ["ͨ�����"]=1, ["�귨�й�"]=1, ["������"]=1, ["�Ϲ�����"]=1, ["�̻�����"]=1, ["аħͳ˧"]=1}
local shoushatbl = {
	["��֮������"]={mapid="d609",mapname="��򼶴Ѩ",	monname="��֮������",	yb=1000},
	["���֮��"]={mapid="d024",mapname="��������",	monname="���֮��",		yb=1000},
	["��˿����"]={mapid="d021",mapname="�������",	monname="��˿����",		yb=3000},
	["Զ������̸�"]={mapid="d515",mapname="��������",	monname="Զ������̸�",	yb=1000},
	["�귨�й�"]={mapid="zmjt",mapname="�����̳",	monname="�귨�й�",		yb=3000},
	["����ħ��"]={mapid="jxdt",mapname="ʯĹ��",	monname="����ħ��",		yb=1000},
	["����֮��"]={mapid="jxdt",mapname="ʯĹ��",	monname="����֮��",		yb=3000},
	["������"]={mapid="d2079",mapname="ţħ����",	monname="������",		yb=1000},
	["�Ϲ�����"]={mapid="qlsy",mapname="Ǳ����Ԩ",	monname="�Ϲ�����",		yb=3000},
	["����ۻ�"]={mapid="d2067",mapname="��ħ��Ѩ",	monname="����ۻ�",		yb=1000},
	["������"]={mapid="hqsy",mapname="��Ȫ��Ԩ",	monname="������",		yb=3000},
	["��ħڤ��̸�"]={mapid="d2013",mapname="��ħ����",	monname="��ħڤ��̸�",	yb=1000},
	["ͨ�����"]={mapid="d2001",mapname="ͨ��֮·",	monname="ͨ�����",		yb=3000},
	["��ʼ��"]={mapid="dm002",mapname="������Ĺ",	monname="��ʼ��",		yb=5000},
	["Զ�ų��¶�ħ"]={mapid="d10062",mapname="����Ͽ��",	monname="Զ�ų��¶�ħ",	yb=1000},
	["�̻�����"]={mapid="yhsd",mapname="�̻����",	monname="�̻�����",		yb=5000},
	["��֮ħ������"]={mapid="66",mapname="ħ����",		monname="��֮ħ������",	yb=1000},
	["аħͳ˧"]={mapid="mld",mapname="ħ����",		monname="аħͳ˧",		yb=3000},
	["�̹Ŵ��"]={mapid="pgjd",mapname="�̹Ž���",	monname="�̹Ŵ��",		yb=3000},
	["������"]={mapid="hlsd",mapname="�������",	monname="������",		yb=5000},
	["�ز�ħ��"]={mapid="h204",mapname="ɳ�ر���",	monname="�ز�ħ��",		yb=3000},
	["���֮��"]={mapid="d10071",mapname="���֮Դ",	monname="���֮��",		yb=3000},
	["�����ػ���"]={mapid="maya4",mapname="���Żʹ�",	monname="�����ػ���",	yb=3000},
	["����ׯ��"]={mapid="wlsz",mapname="����ɽׯ",	monname="����ׯ��",		yb=5000},
	["��������"]={mapid="qxt5",mapname="������",		monname="��������",		yb=5000},
	["δ֪��ħ"]={mapid="wzad",mapname="δ֪����",	monname="δ֪��ħ",		yb=1000},
	["δ֪����"]={mapid="wzad",mapname="δ֪����",	monname="δ֪����",		yb=1000},
	["����"]={mapid="wzad",mapname="δ֪����",	monname="����",			yb=5000},
	["�������㽣ʥ"]={mapid="mhyj3",mapname="�����ż�",	monname="�������㽣ʥ",	yb=5000},
	["����������"]={mapid="lzsy3",mapname="��֮����",	monname="����������",	yb=5000},
	["��������"]={mapid="txmk3",mapname="��Ѫħ��",	monname="��������",	yb=5000},
	["��Ԩ������"]={mapid="dlsy4",mapname="������Ԩ",	monname="��Ԩ������",	yb=5000},
	["�һ���ħ����"]={mapid="thg4",mapname="�һ���",		monname="�һ���ħ����",	yb=5000},
	["��ڤ����ħ��"]={mapid="ymgm3",mapname="��ڤ��Ĺ",	monname="��ڤ����ħ��",	yb=10000},
	["������ħ����"]={mapid="rydy4",mapname="���ҵ���",	monname="������ħ����",	yb=10000},
}

local giveshangjin_t = {
["������ʿ"]=1,["���þ���"]=1,["���Ұ��"]=1,["а����"]=1,["����è��"]=1,["����ո���"]=1,["��Ӱ����"]=1,["��β�ں���"]=1,["�����غ���"]=1,["��צ�����"]=1,["ū����ʿ"]=1,
["ū������"]=1,["ū������"]=1,["���ô���"]=1,["���õ���"]=1,["��ҹ��ʦ"]=1,["�ڰ�����"]=1,["���㽫��"]=1,["а�����"]=1,["ħ��ս��"]=1,["ħ���޶�"]=1,["ħ����ʿ"]=1,
["���Ķ���"]=1,["��������"]=1,["���Ļ���"]=1,["����ħ��"]=1,["��֮����"]=1,["�л�ʹ��"]=1,["��Ѫ����"]=1,["ħ������"]=1,["������ʧ��"]=1,["�ڰ���ţ"]=1,["��Ԩ����"]=1,
["�ɻ���"]=1,["�һ�������"]=1,["�һ��ȼ���"]=1,["�������"]=1,["��ħ����"]=1,["ţħ��"]=1,["��Ȫ����"]=1,["˫ͷ���"]=1,["˫ͷѪħ"]=1,["������"]=1,["ǧ������"]=1,

["ɥ��ʬ"]=1,["�ڻ��"]=1,["��ڤ�ȷ�"]=1,["��ڤ����"]=1,["������"]=1,["��ڤ�Ⱥ�"]=1,["����"]=1,["����ëЫ"]=1,["����˫ͷ��"]=1,["����ʹ��"]=1,["����Թ��"]=1,["����Ѫ��ʬ"]=1,["������ħ"]=1,
["������ʿ"]=1,["ۺ������"]=2,["ۺ��������"]=2,["ۺ�������"]=2,["ۺ������˾"]=2,["ۺ������"]=2,["ۺ����"]=2,["ۺ����ʿ"]=2,["��������"]=2,["�����"]=2,["����ʧ��ħ"]=2,["�������ޱ�"]=2,
["���귨ʦ"]=2,["��Ƥ��ţ"]=2,

["������ʿ�ӳ�"]=2,["������ʿ�ӳ�"]=2,["���þ���ӳ�"]=2,["���þ���ӳ�"]=2,["а��������"]=2,["а��������"]=2,["���Ұ������"]=2,["���Ұ������"]=2,["��ħ���"]=2,["��ħЫ��"]=2,
["ū������ͷĿ"]=2,["ū������ͷĿ"]=2,["ū������ͷĿ"]=2,["���ô���ͳ��"]=2,["���ô���ͳ��"]=2,["���õ���ͳ��"]=2,["���õ���ͳ��"]=2,["��ҹ��ʦ"]=2,["�ڰ������"]=2,["����󽫾�"]=2,
["ħ����Ѫս��"]=2,["ħ������޶�"]=2,["ħ��ǧ����ʿ"]=2,["ū��ͷĿ"]=2,["������ʿ"]=2,["����ͳ��"]=2,["����ս��"]=2,["����ս��"]=2,["��������"]=2,["��������"]=2,["����ħ��"]=2,
["��Ѫ����"]=2,["�ɻ���ʦ"]=2,["�����ʨ"]=2,["�������"]=2,["а������"]=2,["�һ��ȳ���"]=2,["�һ��Ȼ���"]=2,["����ս��"]=2,["�������"]=2,["ĩ·����"]=2,["���߼�˾"]=2,["�İ�����"]=2,
["����ͳ��"]=2,["������ڤЫ"]=2,["���޳�"]=2,["���޳�"]=2,["ţͷ����"]=2,["�������Ž�"]=2,["��������Ы"]=2,["����ͳ˧"]=2,

["����̻�"]=3,["ʯĹ�̻�"]=3,["�����󻤷�"]=3,["�����һ���"]=3,["�Ϲź�ħ����"]=3,["��������"]=3,["�������"]=3,["��֮������"]=3,["��װʹ��"]=3,["��̳����"]=3,["�ϹŻ�Ȫ����"]=3,
["�Ϲ�ţħ��"]=3,["���¶�ħ"]=3,["�̻�����"]=3,["�̻���ţ"]=3,["�̻�����"]=3,["ħ������"]=3,["ū������"]=3,["�������"]=3,["���潫��"]=3,["���Ľ���"]=3,["�ɻ����"]=3,
["��Ѫħ��"]=3,["����а��"]=3,["а�񺣻���"]=3,["��������"]=3,["���ױ���"]=3,["ۺ������"]=3,["�ž��̻�"]=3,

["���֮��"]=5,["����ħ��"]=5,["��ħڤ��̸�"]=5,["Զ������̸�"]=5,["����ۻ�"]=5,["������"]=5,["Զ��˫ͷ���"]=5,["Զ��˫ͷѪħ"]=5,["Զ�ų��¶�ħ"]=5,["��֮ħ������"]=5,
["ħ������"]=5,["�زػ���"]=5,["����Ѫţ"]=5,["��������"]=5,["���İ���"]=5,["�������"]=5,["��Ѫ�ػ���"]=5,["����Ů��"]=5,["�һ�����֮��"]=5,["��ڤ��Ĺǧ��"]=5,
["������ħ�̸�"]=5,["ۺ���й�"]=5,["���߱�����"]=5,["δ֪����"]=5,["δ֪��ħ"]=5,

["��˿����"]=10,["����֮��"]=10,["ͨ�����"]=10,["��ʼ��"]=10,["�귨�й�"]=10,["������"]=10,["�Ϲ�����"]=10,["�̻�����"]=10,["аħͳ˧"]=10,["�ز�ħ��"]=10,["���֮��"]=10,
["�����ػ���"]=10,["�������㽣ʥ"]=10,["����������"]=10,["��������"]=10,["��Ԩ������"]=10,["�һ���ħ����"]=10,["��ڤ����ħ��"]=10,["������ħ����"]=10,["ۺ��������"]=10,
["����������"]=10,["��������֮��"]=10,["��������"]=10,["�귨����"]=10,["����"]=10,

}

local bianshidata = {
["���Ķ���"] = {ditu="�����ż�",boss={"������ʿ","����ͳ��","����ս��"}},     
["������ҽ"] = {ditu="�����ż�",boss={"������ʿ","����ͳ��","����ս��"}},
["����֩��"] = {ditu="�����ż�",boss={"������ʿ","����ͳ��","����ս��"}},
["��������"] = {ditu="�����ż�",boss={"������ʿ","����ͳ��","����ս��"}},
["����Ұ��"] = {ditu="�����ż�",boss={"������ʿ","����ͳ��","����ս��"}},
["���Ŀ���"] = {ditu="�����ż�",boss={"������ʿ","����ͳ��","����ս��"}},
["���Ļ���"] = {ditu="�����ż�",boss={"������ʿ","����ͳ��","����ս��"}},

["�ɻ���"] = {ditu="��֮����",boss={"����ս��","��������","��������"}},  
["�ϼ���"] = {ditu="��֮����",boss={"����ս��","��������","��������"}},  
["��֮����"] = {ditu="��֮����",boss={"����ս��","��������","��������"}},  
["��ҹѲ��"] = {ditu="��֮����",boss={"����ս��","��������","��������"}},  
["��ͫ����"] = {ditu="��֮����",boss={"����ս��","��������","��������"}},  
["�ظ�����"] = {ditu="��֮����",boss={"����ս��","��������","��������"}},  
["����ħ��"] = {ditu="��֮����",boss={"����ս��","��������","��������"}},  

["ʯ����"] = {ditu="��Ѫħ��",boss={"����ħ��","��Ѫ����","�ɻ���ʦ"}},   
["ħ������"] = {ditu="��Ѫħ��",boss={"����ħ��","��Ѫ����","�ɻ���ʦ"}},   
["ѪӰ��"] = {ditu="��Ѫħ��",boss={"����ħ��","��Ѫ����","�ɻ���ʦ"}},   
["�л�ʹ��"] = {ditu="��Ѫħ��",boss={"����ħ��","��Ѫ����","�ɻ���ʦ"}},   
["��Ѫ��ʿ"] = {ditu="��Ѫħ��",boss={"����ħ��","��Ѫ����","�ɻ���ʦ"}},   
["��Ѫ����"] = {ditu="��Ѫħ��",boss={"����ħ��","��Ѫ����","�ɻ���ʦ"}},   

["��Ԩ����"] = {ditu="������Ԩ",boss={"�����ʨ","�������","а������"}},   
["͵Ϯ��"] = {ditu="������Ԩ",boss={"�����ʨ","�������","а������"}}, 
["�ڰ���ţ"] = {ditu="������Ԩ",boss={"�����ʨ","�������","а������"}}, 
["�ϼ׻���"] = {ditu="������Ԩ",boss={"�����ʨ","�������","а������"}}, 
["����ս��"] = {ditu="������Ԩ",boss={"�����ʨ","�������","а������"}}, 
["������ʧ��"] = {ditu="������Ԩ",boss={"�����ʨ","�������","а������"}}, 

["�ɻ���"] = {ditu="�һ���",boss={"�һ��ȳ���","�һ��Ȼ���","����ս��"}},  
["���ֶ���"] = {ditu="�һ���",boss={"�һ��ȳ���","�һ��Ȼ���","����ս��"}},
["�һ�������"] = {ditu="�һ���",boss={"�һ��ȳ���","�һ��Ȼ���","����ս��"}},
["�һ�������"] = {ditu="�һ���",boss={"�һ��ȳ���","�һ��Ȼ���","����ս��"}},
["�һ��ȼ���"] = {ditu="�һ���",boss={"�һ��ȳ���","�һ��Ȼ���","����ս��"}},
["�һ���սʿ"] = {ditu="�һ���",boss={"�һ��ȳ���","�һ��Ȼ���","����ս��"}},
["�һ��Ȼ���"] = {ditu="�һ���",boss={"�һ��ȳ���","�һ��Ȼ���","����ս��"}},

["ɥ��ʬ"] = {ditu="��ڤ��Ĺ",boss={"�������","ĩ·����","���߼�˾"}},
["�ڻ��"] = {ditu="��ڤ��Ĺ",boss={"�������","ĩ·����","���߼�˾"}},
["��ڤ�ȷ�"] = {ditu="��ڤ��Ĺ",boss={"�������","ĩ·����","���߼�˾"}},
["��ڤ����"] = {ditu="��ڤ��Ĺ",boss={"�������","ĩ·����","���߼�˾"}},
["������"] = {ditu="��ڤ��Ĺ",boss={"�������","ĩ·����","���߼�˾"}},
["��ڤ�Ⱥ�"] = {ditu="��ڤ��Ĺ",boss={"�������","ĩ·����","���߼�˾"}},
["����"] = {ditu="��ڤ��Ĺ",boss={"�������","ĩ·����","���߼�˾"}},

["����ëЫ"] = {ditu="���ҵ���",boss={"�İ�����","����ͳ��","������ڤЫ"}},
["����˫ͷ��"] = {ditu="���ҵ���",boss={"�İ�����","����ͳ��","������ڤЫ"}},
["����ʹ��"] = {ditu="���ҵ���",boss={"�İ�����","����ͳ��","������ڤЫ"}},
["����Թ��"] = {ditu="���ҵ���",boss={"�İ�����","����ͳ��","������ڤЫ"}},
["����Ѫ��ʬ"] = {ditu="���ҵ���",boss={"�İ�����","����ͳ��","������ڤЫ"}},
["������ħ"] = {ditu="���ҵ���",boss={"�İ�����","����ͳ��","������ڤЫ"}},
["������ʿ"] = {ditu="���ҵ���",boss={"�İ�����","����ͳ��","������ڤЫ"}},

["ۺ������"] = {ditu="ۺ������",boss={"���޳�","���޳�","ţͷ����"}},
["ۺ��������"] = {ditu="ۺ������",boss={"���޳�","���޳�","ţͷ����"}},
["ۺ�������"] = {ditu="ۺ������",boss={"���޳�","���޳�","ţͷ����"}},  
["ۺ������˾"] = {ditu="ۺ������",boss={"���޳�","���޳�","ţͷ����"}},
["ۺ������"] = {ditu="ۺ������",boss={"���޳�","���޳�","ţͷ����"}},
["ۺ����"] = {ditu="ۺ������",boss={"���޳�","���޳�","ţͷ����"}},
["ۺ�������"] = {ditu="ۺ������",boss={"���޳�","���޳�","ţͷ����"}},  

["���귨ʦ"] = {ditu="�ž�֮·",boss={"�������Ž�","��������Ы","����ͳ˧"}},
["�����"] = {ditu="�ž�֮·",boss={"�������Ž�","��������Ы","����ͳ˧"}},
["��Ƥ��ţ"] = {ditu="�ž�֮·",boss={"�������Ž�","��������Ы","����ͳ˧"}},
["����ʧ��ħ"] = {ditu="�ž�֮·",boss={"�������Ž�","��������Ы","����ͳ˧"}},
["�������ޱ�"] = {ditu="�ž�֮·",boss={"�������Ž�","��������Ы","����ͳ˧"}},
["��������"] = {ditu="�ž�֮·",boss={"�������Ž�","��������Ы","����ͳ˧"}},
}

local jinzhibianshiditu = {
	["mhyj3"]=1,["lzsy3"]=1,["txmk3"]=1,["dlsy4"]=1,["thg4"]=1,["ymgm3"]=1,["rydy4"]=1,["fdgy4"]=1,["jjhl5"]=1,
}

local daguairenwuid = {[1]=1,[3]=1,[4]=1,[5]=1,[6]=1,[10]=1,[12]=1,[13]=1,[14]=1}

local xinqushuaguai = {
	{"������ʿ",24},{"������ʿ1 ",30},{"������ʿ2",5},{"������ʿ3",48},{"����ս��",24},{"����ս��1",30},{"����ս��2",5},{"����ս��3",48},
	{"��������",24},{"��������1",30},{"��������2",5},{"��������3",48},
}

local zhudongshua = {
	{"��Ұ��",24},{"��Ұ��1 ",30},{"��Ұ��2",5},{"��Ұ��3",54},{"��Ұ��",24},{"��Ұ��1",30},{"��Ұ��2",5},{"��Ұ��3",54},
	{"Ы��",24},{"Ы��1",30},{"Ы��2",5},{"Ы��3",54},
}

function killmon(actor,mon) --actor �����Ǳ����������� �����������
	-----����ʱ����
	if getname(actor) == getsysstr("���˱��������") then
		if getbaseinfo(mon,1,1) == getsysstr("���˱��ʹ�����") then
			additemtodroplist(actor,mon,getsysstr("���˱�����Ʒ��"))
			setcurrent(mon,5,getsysstr("���˱�����Ʒ��"))
			post1(actor,"�ͷ����ŵ�"..getsysstr("���˱���������").."���������˱�����ң�".. getsysstr("���˱��������") .."  ���".. getsysstr("���˱��ʹ�����") .."  ��Ʒ��".. getsysstr("���˱�����Ʒ��"))
			setsysstr("���˱���������","")
			setsysstr("���˱��������","")
			setsysstr("���˱��ʹ�����","")
			setsysstr("���˱�����Ʒ��","")
		end
	end
	----------------------
	
	
	
	if daguairenwuid[getint(actor,"�������id")] and getmap(mon) ~= "xszc" then
		setint(actor,"����ɱ������",getint(actor,"����ɱ������")+1)
		shuaxinrenwu(actor)
	end
	local guainame = getname(mon)
	local mapid = getmap(actor)
	
	if mapid == "0139" then --����������
		local guai_t = getobjectinmap("0139",23,27,100,2)
		if #guai_t < 50 then
			genmon("0139",23,27,"������10",100,150,255)
		end
	end
	
	if guainame == "��������" then
		genmon("hlsd",50,50,"��������",50,1,253)
	end
	
	if guainame == "ɽׯ����" then
		sendmail(getbaseinfo(actor,2),1,"��������","��ɱɽׯ��������","����#10")
		local hour = tonumber(os.date("%H",os.time()))
		if hour == 19 or hour == 20 then
			callscriptex(actor, "RECALLMOB", "��������", 0,200,0)
			darttime(actor,30*60,1)
			local bb_list = getbaobaolist(actor)
			for i = 1,#bb_list do
				if getname(bb_list[i]) == "��������" then		 	
					makeposion(bb_list[i],5,170)
					setcurrent(bb_list[i],0,tostring(os.time())) --��ʶ����ʱ��
					callscriptex(actor, "MoveMonToPos", "��������", getmap(bb_list[i]), getx(bb_list[i]), gety(bb_list[i]), 75, 47)
					
				end
			end

			sendtopchatboardmsg(actor,0,251,0,180,"Ư����<��������/FCOLOR=249>����<����ɽׯ/FCOLOR=250>��ԡ���£�%d���ɿ�ʼ������..........",1)
			sendmsg(nil, 2, '{"Msg":"Ư����<��������/FCOLOR=249>����<����ɽׯ/FCOLOR=250>��ԡ���£�180���ɻ����������ͳɹ���ɻ�ø߶��....","FColor":251,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"200"}')
			sendmsg(nil, 2, '{"Msg":"Ư����<��������/FCOLOR=249>����<����ɽׯ/FCOLOR=250>��ԡ���£�180���ɻ����������ͳɹ���ɻ�ø߶��....","FColor":251,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"250"}')
			sendmsg(nil, 2, '{"Msg":"Ư����<��������/FCOLOR=249>����<����ɽׯ/FCOLOR=250>��ԡ���£�180���ɻ����������ͳɹ���ɻ�ø߶��....","FColor":251,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"300"}')
		end
		
	end
	
	
	if os.time() - getsysint("����ʱ��") < 7200 then
		if mapid == "d022" or mapid == "womajingxiang" then
			local guai_t = getmapmon(mapid,"*",250,250,250)
			if #guai_t < 300 then
				for i = 1,#xinqushuaguai do
					genmon(mapid,250,250,xinqushuaguai[i][1],250,math.floor(xinqushuaguai[i][2] *1.7),255)
				end
			end
		end
		if mapid == "d713" then
			local guai_t = getmapmon(mapid,"*",200,200,200)
			if #guai_t < 200 then
				for i = 1,#zhudongshua do
					genmon(mapid,200,200,zhudongshua[i][1],200,zhudongshua[i][2],255)
				end
			end
		end
	end
	
	
	if shoushatbl[guainame] then
		if getsysint(guainame) == 0 then
			if guainame == "�̻�����" and (mapid == "yhsd1" or mapid == "yhsd2" or mapid == "yhsd3" or mapid == "yhsd4" ) then
				addingot(actor,shoushatbl[guainame].yb)
				setsysint(guainame,1)
				sendmsg(actor,2,'{"Msg":"<��ɱ������/FCOLOR=250>��ϲ���<��'.. getname(actor) ..'��/FCOLOR=254>�״λ�ɱ����<��'.. guainame ..'��/FCOLOR=245>��ϵͳ����<'.. shoushatbl[guainame].yb ..'>Ԫ�����������е�ͼ���ɱ�������װ��","FColor":251,"BColor":0,"Type":5,"Y":100}')
				sendmsg0(actor,"[��ɱ]����ϲ���[".. getname(actor) .."]��ɱBOSS["..guainame.."]�����"..shoushatbl[guainame].yb.."Ԫ��������",249,251)
				sendmsg0(actor,"[��ɱ]����ϲ���[".. getname(actor) .."]��ɱBOSS["..guainame.."]�����"..shoushatbl[guainame].yb.."Ԫ��������",249,251)
				sendmsg0(actor,"[��ɱ]����ϲ���[".. getname(actor) .."]��ɱBOSS["..guainame.."]�����"..shoushatbl[guainame].yb.."Ԫ��������",249,251)
				sendmsg0(actor,"[��ɱ]����ϲ���[".. getname(actor) .."]��ɱBOSS["..guainame.."]�����"..shoushatbl[guainame].yb.."Ԫ��������",249,251)
				sendmsg0(actor,"[��ɱ]����ϲ���[".. getname(actor) .."]��ɱBOSS["..guainame.."]�����"..shoushatbl[guainame].yb.."Ԫ��������",249,251)
			else
				if getmap(actor) == shoushatbl[guainame].mapid then
					addingot(actor,shoushatbl[guainame].yb)
					setsysint(guainame,1)
					sendmsg(actor,2,'{"Msg":"<��ɱ������/FCOLOR=250>��ϲ���<��'.. getname(actor) ..'��/FCOLOR=254>�״λ�ɱ����<��'.. guainame ..'��/FCOLOR=245>��ϵͳ����<'.. shoushatbl[guainame].yb ..'>Ԫ�����������е�ͼ���ɱ�������װ��","FColor":251,"BColor":0,"Type":5,"Y":100}')
					sendmsg0(actor,"[��ɱ]����ϲ���[".. getname(actor) .."]��ɱBOSS["..guainame.."]�����"..shoushatbl[guainame].yb.."Ԫ��������",249,251)
					sendmsg0(actor,"[��ɱ]����ϲ���[".. getname(actor) .."]��ɱBOSS["..guainame.."]�����"..shoushatbl[guainame].yb.."Ԫ��������",249,251)
					sendmsg0(actor,"[��ɱ]����ϲ���[".. getname(actor) .."]��ɱBOSS["..guainame.."]�����"..shoushatbl[guainame].yb.."Ԫ��������",249,251)
					sendmsg0(actor,"[��ɱ]����ϲ���[".. getname(actor) .."]��ɱBOSS["..guainame.."]�����"..shoushatbl[guainame].yb.."Ԫ��������",249,251)
					sendmsg0(actor,"[��ɱ]����ϲ���[".. getname(actor) .."]��ɱBOSS["..guainame.."]�����"..shoushatbl[guainame].yb.."Ԫ��������",249,251)
				end
			end
		end
	end

	--setsysint("װ������ɱ��",getsysint("װ������ɱ��")+1)   ---������ Ҫɾ��
	--release_print("ɱ���ߣ�"..getname(actor).." ���"..getname(mon).." ��ͼ��"..getmap(mon).." x���꣺"..getx(mon).." y���꣺"..gety(mon) )
	--�ƽ�������
	if getint(actor,"�ƽ��������Ƿ���ȡ") == 1 then
		if getint(actor,"�ƽ�������ɱ����") < 5 then
			if getint(actor,"�ƽ���������") == 0 then --��һ�������
				if (getmap(actor) == "mhyj1" or getmap(actor) == "mhyj2" or getmap(actor) == "mhyj3") then --�����ż�
					setint(actor,"�ƽ�������ɱ����",getint(actor,"�ƽ�������ɱ����")+1)  --����ɱ������
					callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
				end 
			end
			if getint(actor,"�ƽ���������") == 1 then --�ڶ��������
				if (getmap(actor) == "mhyj1" or getmap(actor) == "mhyj2" or getmap(actor) == "mhyj3") then --�����ż�
					setint(actor,"�ƽ�������ɱ����",getint(actor,"�ƽ�������ɱ����")+1)  --����ɱ������
					callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
				end 
			end
			if getint(actor,"�ƽ���������") == 2 then --�����������
				if (getmap(actor) == "lzsy1" or getmap(actor) == "lzsy2" or getmap(actor) == "lzsy3") then --��֮����
					setint(actor,"�ƽ�������ɱ����",getint(actor,"�ƽ�������ɱ����")+1)  --����ɱ������
					callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
				end 
			end
			if getint(actor,"�ƽ���������") == 3 then --�����������
				if (getmap(actor) == "txmk1" or getmap(actor) == "txmk2" or getmap(actor) == "txmk3") then --��Ѫħ��
					setint(actor,"�ƽ�������ɱ����",getint(actor,"�ƽ�������ɱ����")+1)  --����ɱ������
					callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
				end 
			end
			if getint(actor,"�ƽ���������") == 4 then --�����������
				if (getmap(actor) == "dlsy1" or getmap(actor) == "dlsy2" or getmap(actor) == "dlsy3" or getmap(actor) == "dlsy4") then --������Ԩ
					setint(actor,"�ƽ�������ɱ����",getint(actor,"�ƽ�������ɱ����")+1)  --����ɱ������
					callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
				end 
			end
			if getint(actor,"�ƽ���������") == 5 then --�����������
				if (getmap(actor) == "thg1" or getmap(actor) == "thg2" or getmap(actor) == "thg3" or getmap(actor) == "thg4") then --�һ���
					setint(actor,"�ƽ�������ɱ����",getint(actor,"�ƽ�������ɱ����")+1)  --����ɱ������
					callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
				end 
			end
			if getint(actor,"�ƽ���������") == 6 then --�����������
				if (getmap(actor) == "thg1" or getmap(actor) == "thg2" or getmap(actor) == "thg3" or getmap(actor) == "thg4") then --�һ���
					setint(actor,"�ƽ�������ɱ����",getint(actor,"�ƽ�������ɱ����")+1)  --����ɱ������
					callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
				end 
			end
		end
	end
	
	
	----��֮�þ�ˢ��
	if fuhuo_guai_t[getmap(mon)] then
		local t = fuhuo_guai_t[getmap(mon)].guai
		for i = 1,#t do
			--sendmsg6(actor,"ɱ����")
			if getname(mon) == t[i][1] and math.random(1,t[i][2]) == 1 then
				genmon("mzhj",200,200,t[i][1].."4",200,1,249)
				--sendmsg9(actor,t[i][1].."4".."ˢ����֮�þ���")
			end
		end
	end
	------
	setdayint(actor,"ÿ��ɱ������",getdayint(actor,"ÿ��ɱ������") + 1)
	if getbaseinfo(mon,10) >= 50000 then
		setint(actor,"ɱ�������",getint(actor,"ɱ�������") + 1)
	end
	if getint(actor,"����ɱ������") < 1000 then
		setint(actor,"����ɱ������",getint(actor,"����ɱ������")+1)
	end
	
	-----
	----�޻�buff����
	local sh_data = getshouhunbuffdata(actor) --��ȡ�޻�buff����
	for i = 1,#sh_data do
		if sh_data[i] == "����" then
			humanhp(actor,"+",5,1000)
		end
	end
	----�޻�buff�������
	
	----��ɱ����è��
	if getname(mon) == "����è��" then
		local jilv = 5
		if getint(actor,"��Ա�ȼ�") == 3 then
			jilv = 30
		end
		if getint(actor,"��Ա�ȼ�") == 4 then
			jilv = 100
		end
		if math.random(1,100) <= jilv then
			if math.random(1,100) >= 50 then
				mapmove(actor,"jxdt",49,42,2)
			else
				mapmove(actor,"jxdt",157,139,2)
			end
			--sendmsg6(actor,"��ɱ����è���������˾������")
		end
	end
	
	
	----��ɱ�����ײĵĴ�����
	if getname(mon) == "������" and getmap(mon) == "d606" then
		addmapgate("�����ײĵ�����ʯ��",getmap(mon),80,170,1,"d609",22,16,60*5)
		mapeffect(111,getmap(mon),80,170,4211,60*5,0)
		--sendmsg0(actor,"��ɱڤ���Ĥ�����������˴����󣬳���5����")
	end
	
	----��ɱħ�����ħ��а��
	if getname(mon) == "ħ��а��" and getmap(mon) == "63" then
		addmapgate("ħ���뵽ħ����","63",218,178,1,"mld",24,29,60*60)
		mapeffect(112,"63",218,178,4211,60*60,0)
		--sendmsg6(actor,"��ɱħ��а��")
	end
	
	----��ɱ��ħ�����
	if getmap(mon) == "d2013" then
		if getint(actor,"��ħ��ɱ������") < 300 then
			setint(actor,"��ħ��ɱ������",getint(actor,"��ħ��ɱ������")+1)
		end
	end
	----��ɱԶ�ų��¶�ħ
	if getname(mon) == "Զ�ų��¶�ħ" and getmap(mon) == "d10062" then
		local ditu = {"yhsd1","yhsd2","yhsd3","yhsd4"}
		local guai = {"�̻�����","�̻���ţ","�̻�����"}
		local ditubh = 0
		for i = 1,#ditu do	
			for j = 1,#guai do
				local mon_t = getmapmon(ditu[i],guai[j],66,61,80) --�������
				if #mon_t > 0 then
					ditubh = i
					--sendmsg6(actor,"�й�")
					break
				end
			end
			if ditubh ~= 0 then
				break
			end
		end
		if ditubh == 0 then
			ditubh = math.random(1,4)
			--sendmsg6(actor,"û��")
		end
		for i = 1,#guai do
			local mon_t = getmapmon(ditu[ditubh],guai[i],66,61,80) --�������
			if #mon_t < 1 then
				genmon(ditu[ditubh],66,61,guai[i],60,1,249)
				--sendmsg6(actor,"ˢ��"..guai[i])
			end
		end
		sendmsg(actor,2,'{"Msg":"���׼����<��Զ�ų��¶�ħ��/FCOLOR=253>������ħ�޷�ӡ�ѽ⣬��ʿ�ǿ�ȥ̽�����޾����ذ�............","FColor":251,"BColor":0,"Type":5,"Y":100,"Time":3}')
		--sendmsg0(actor,'ȫ����ʾ�����׼���ġ�Զ�ų��¶�ħ��������ħ�޷�ӡ�ѽ⣬��ʿ�ǿ�ȥ̽�����޾����ذ�............')
	end
	
	----��ɱ������
	if getname(mon) == "ۺ��������" then
		--sendmsg6(actor,"��ɱۺ�������� ���ֵ".. tostring(getcurrent(mon,0)))
		if math.random(1,100) <= 50 and getcurrent(mon,0) == "" then
			local fdjt_t = {"cxgl","hssl","gshy","xlhy"}
			
			local mon_t = genmon(fdjt_t[math.random(1,#fdjt_t)],38,41,"ۺ��������",3,1,249)
			setcurrent(mon_t[1],0,"����")
			--sendmsg0(actor,"�귨���¼���ۺ�������������ս�ܣ���������ڡ�ۺ����̳��............")
			sendmsg(actor,2,'{"Msg":"�귨���¼���ۺ�������<������/FCOLOR=254>ս�ܣ����������<������¥��,������¥,������԰,���һ�ԭ��/FCOLOR=253>����һ����ͼ............","FColor":251,"BColor":0,"Type":5,"Y":100,"Time":3}')
		end
	end
	
	----��ɱ��������
	if getname(mon) == "��������" and getmap(mon) == "qxt5" then
		--sendmsg6(actor,"��ɱۺ�������� ���ֵ".. tostring(getcurrent(mon,0)))
		
		local jiangchinum = getsysint("��������ɱ����")
		if jiangchinum > 0 then
			sendmail("#"..getname(actor),1,"ϵͳ","��������ɱboss����","�󶨽��#"..jiangchinum)
		end
		setsysstr("��������ɱ��",getname(actor))
		setsysint("��������ɱ����",0)
		local hanghuiming = getbaseinfo(actor,36)
		setsysstr("��������ɱ���л�",hanghuiming)
		sendmsg(actor,2,'{"Msg":"��ϲ���['..getname(actor)..']�ɹ���ɱ����������Boss��'..getname(mon)..'������ô���������","FColor":255,"BColor":0,"Type":5,"Y":100,"Time":3}')
		
		local t=getplayerlst()
		for k, v  in ipairs(t) do
			qixingta_buffchuli(v) --������buff����
		end
		--sendmsg0(actor,"��ϲ���["..getname(actor).."]�ɹ���ɱ����������Boss��"..getname(mon).."������ô���������")
		--setsysint("������BOSS����ʱ��",os.time())
	end
	
	if getmap(mon) == "qxt5" and qxt_shaguai[getname(mon)] then
		setsysint("����������ʱ��",os.time())
	end
	
	if giveshangjin_t[guainame] then
		if getingot(actor) >= 100000 then
			addshangjinzhi(actor,giveshangjin_t[guainame]*2)
		else
			addshangjinzhi(actor,giveshangjin_t[guainame])
		end
	end
	
	----�����������ʸ����֮�þ�
	
	----ɱ�ֱ�ʬ��boss
	if bianshidata[guainame] and not jinzhibianshiditu[getmap(actor)] then
		local ditu = getmap(actor)
		local bosst = bianshidata[guainame].boss
		local hour = tonumber(os.date("%H",os.time()))
		if getsysint(ditu.."��ʬСʱ") ~= 100+hour and (hasbuff(actor,10001) or hasbuff(actor,20083)) and math.random(1,600) == 1 then
			genmon(mapid,getx(mon),gety(mon),bosst[math.random(1,#bosst)],0,1,245)
			setsysint(ditu.."��ʬСʱ",hour+100)
		end
	end
end

local huoxiskill = {[13]=1,[26]=1,[56]=1,[45]=1,[22]=1,[58]=1}
--��������
function crittrigger(actor,shoujizhe,hp,MagicId) --��Ҷ����ܻ����󣬱������˺�ֵ
	--sendmsg6(actor,"��������")
	setint(actor,"�˵�����",1,0)
	if getbaseinfo(shoujizhe,-1) and getint(shoujizhe,"��������3���") == 34 and huoxiskill[MagicId] then
		--sendmsg0(0,"����ϵ����ǰ�˺�"..hp)
		hp = math.floor(hp/1.8)
		--sendmsg0(0,"����ϵ�������˺�"..hp)
		setattackefftype(actor,1)
	else	
		if getbaseinfo(shoujizhe,-1) then --�˴���
			if getint(shoujizhe,"��������3���") == 26 then
				if not hasbuff(shoujizhe,20074) then
					addbuff(shoujizhe,20074)
				end
			end
			if getint(shoujizhe,"��������3���") == 41 then
				if not hasbuff(shoujizhe,20092) then
					addbuff(shoujizhe,20092)
				end
			end
			
			local baojishanhai = getbaseinfo(actor,51,22) --�����˺�
			local baojijianmian = getbaseinfo(shoujizhe,51,24) --��������
			if baojijianmian > 0 then
				local baojibaifenbi = 80 + baojishanhai - baojijianmian
				if baojibaifenbi < 0 then
					baojibaifenbi = 0
				end
				hp = math.floor(hp/1.8) --����Ѫ��
				hp = hp + math.floor(hp * (baojibaifenbi/100))
			end
		end

		playeffect(shoujizhe,20002,0,0,1,0,0)
	end
	
	return hp
end

--local daoshu = 0
--��ҹ�����Ѫǰ   ֻ����ҹ�����Ѫǰ���� ��������ұ��� �� actorʼ�յ��� gongjizhe   ��������������ټ�����

local shabakewuqi_t = {
	["�þ�֮��"]=2,["Ѫ��"]=3,["���ƽ�"]=4,["ŭն"]=2,["����"]=3,["��ң��"]=4,["����"]=2,["�Ȼ귨��"]=3,["����֮��"]=4,["����Ȩ��"]=3,
}
--���κ��� ���¹�����������ֵ� ���������� 20-20	��κ������� 35-35	�ߴκ����Ժ� 50-50 	  �Ŵκ�����60-60
local jiagongji1 = {["���֮��"]=1,["��˿����"]=1,["��ħڤ��̸�"]=1,["ͨ�����"]=1,["��ʼ��"]=1,["Զ������̸�"]=1,["�귨�й�"]=1,
["����ۻ�"]=1,["������"]=1,["������"]=1,["�Ϲ�����"]=1,["Զ��˫ͷ���"]=1,["Զ��˫ͷѪħ"]=1,["Զ�ų��¶�ħ"]=1,
["�̻�����"]=1,["�̻�����"]=1,["��֮ħ������"]=1,["аħͳ˧"]=1,["�ز�ħ��"]=1,["���֮��"]=1,["�����ػ���"]=1,
["����ׯ��"]=1,["��������"]=1,["δ֪����"]=1,["δ֪��ħ"]=1,["����"]=1,}
--��κ����Ժ� ���µ�ͼ���¹��﹥��������20-20  �ߴκ����Ժ�����35-35	�Ŵκ�������50-50	   ʮһ�κ�����60-60
local jiagongji2 = {["���İ���"]=1,["�������㽣ʥ"]=1,["�������"]=1,["����������"]=1,["��Ѫ�ػ���"]=1,["��������"]=1,["����Ů��"]=1,["��Ԩ������"]=1,
["�һ�����֮��"]=1,["�һ���ħ����"]=1,["��ڤ��Ĺǧ��"]=1,["��ڤ����ħ��"]=1,["������ħ�̸�"]=1,["������ħ����"]=1,["ۺ���й�"]=1,
["ۺ��������"]=1,["���߱�����"]=1,["����������"]=1,}
local gongshakedaguai = {["wlsz"]=1,["0"]=1,["3"]=1,["0150"]=1,["aqgj1"]=1,["aqgj2"]=1,["aqgj3"]=1,["aqgj4"]=1} --�����ڼ�ɴ�ֵ�ͼ
function attackdamage(actor,shoujizhe,gongjizhe,skillid,hp) --���������ܻ��ߣ������ߣ�����id���˺�ֵ
	--sendmsg6(actor,"�˵�����"..getint(actor,"�˵�����"))
	--sendmsg6(actor,"����������ʼ�˺�"..hp.."  �Ƿ���ħ����"..tostring(callcheckscriptex(shoujizhe,"checkHumanState",1)))
	--sendmsg6(actor,"��������"..actor .."  �ܻ���"..shoujizhe.."  ������"..gongjizhe.."  ����id"..skillid)
	--sendmsg6(actor,"�ܻ���"..getmap(actor).."x����"..getx(actor).."y����"..gety(actor))
	
	--sendmsg6(shoujizhe,"��������"..getname(actor) .."  �ܻ��ߣ�"..getname(shoujizhe).."  �����ߣ�"..getname(gongjizhe).."  Ѫ����"..hp)
	--sendmsg0(0,"�޸�ǰ����"..getbaseinfo(shoujizhe,19).."-"..getbaseinfo(shoujizhe,20))
	if not getbaseinfo(shoujizhe,-1) then --����
		local hqcs = getsysint("��������")
		if jiagongji1[getname(shoujizhe)] then
			local addshuxing = 0
			if not hasbuff(shoujizhe,20116) then
				if hqcs >= 9 then
					addshuxing = 60
				elseif hqcs >= 7 then
					addshuxing = 50
				elseif hqcs >= 5 then
					addshuxing = 35
				elseif hqcs >= 3 then
					addshuxing = 20
				end 
				if addshuxing > 0 then
					addbuff(shoujizhe,20116,0,1,shoujizhe,{[3]=addshuxing,[4]=addshuxing})
				end
			end
		end
		if jiagongji2[getname(shoujizhe)] then
			local addshuxing = 0
			if not hasbuff(shoujizhe,20116) then
				if hqcs >= 11 then
					addshuxing = 60
				elseif hqcs >= 9 then
					addshuxing = 50
				elseif hqcs >= 7 then
					addshuxing = 35
				elseif hqcs >= 5 then
					addshuxing = 20
				end 
				if addshuxing > 0 then
					addbuff(shoujizhe,20116,0,1,shoujizhe,{[3]=addshuxing,[4]=addshuxing})
				end
			end
		end
	end
	--sendmsg0(0,"�޸ĺ󹥻�"..getbaseinfo(shoujizhe,19).."-"..getbaseinfo(shoujizhe,20))
	--haoshistart(actor) --��ʱ��ʼ
	
	
	if not getbaseinfo(shoujizhe,-1) and getbaseinfo(shoujizhe,59) == "0" and castleinfo(5) and not gongshakedaguai[getmap(actor)] then --���
		stopautoattack(actor)
		mapmove(actor,"0",289,617,10)
		messagebox(actor,"�����ڼ䲿�ֵ�ͼ��ֹ���")
		setint(actor,"�˵�����",0,0)
		return 0
	end
	---�Ե�
	local item = linkbodyitem(actor,1)
	if item ~= "0" then
		if getitem_shabake(actor,item) == 1 and skillid == 0 then
			local iname = getitemname(actor,item)
			if shabakewuqi_t[iname] then
				local attid = 2
				if shabakewuqi_t[iname] then
					attid = shabakewuqi_t[iname]
				end
				if math.random(1,100) < 50 then
					setitemaddvalue(actor,item,1,attid,getitemaddvalue(actor,item,1,attid)+1) 
					setitem_shabake(actor,item,0)
					refreshitem(actor, item)
					sendmsg(actor,1,'{"Msg":"���������ɹ�.","FColor":255,"BColor":56,"Type":1}')
				else
					delitem(actor,item)
					sendmsg(actor,1,'{"Msg":"������������.","FColor":255,"BColor":56,"Type":1}')
				end
			end
		end
	end
	--�Ե�����
	
	local gudingshanghai = 0 --�̶��˺� �������������
	
	if getbaseinfo(shoujizhe,-1) and skillid==getskillidbyname("��ɱ����") and getjob(shoujizhe) == 1 then
		if getlevel(shoujizhe) < 55 then
			hp = math.floor(hp*0.8)
		elseif getlevel(shoujizhe) < 70 then
			hp = math.floor(hp*0.9)
		end
	end
	
	if not getbaseinfo(shoujizhe,-1) then --�˴�� �Թ��������԰���
		local dgzs = getbaseinfo(actor,51,75) --�Թ���������
		if dgzs > 0 then
			if getbaseinfo(shoujizhe,10) < 200000 then
				local yshp = math.floor(hp/(1+dgzs/10000))
				hp = hp - math.floor( (yshp*dgzs/10000)/2 )
			end
		end
	end
	
--[[	if getint(actor,"��Բ���") == 1 then
		makeposion(shoujizhe,5,5)
	end
	if getint(actor,"��������") == 1 then
		makeposion(shoujizhe,13,5)
	end
	if getint(actor,"��������") == 1 then
		makeposion(shoujizhe,12,5)
	end--]]
	
--[[	if getname(shoujizhe) == "����ʦ" then
		daoshu = daoshu + 1
		if daoshu == 1 then
			setint(actor,"��һ��ʱ��",os.time())
			sendmsg6(actor,"��һ��ʱ��"..os.time())
		end
		if os.time() - getint(actor,"��һ��ʱ��") == 60 then
			sendmsg6(actor,"60�뵶��"..daoshu,"#FF0000")
		end
	end--]]
	
	if getint(actor,"��װת���˺�") > 0 and getbaseinfo(shoujizhe,-1) then
		if getbaseinfo(actor,39) <= getbaseinfo(shoujizhe,39) then
			hp = hp + math.floor(hp* getint(actor,"��װת���˺�")/100 )
		end
	end
	
	if getskillidbyname("�һ𽣷�") == skillid and getskillinfo(actor,getskillidbyname("�һ𽣷�"),1) == 4 then
		hp = math.floor(hp/1.4*1.13)
	end
	if getskillidbyname("����ն") == skillid and getskillinfo(actor,getskillidbyname("����ն"),1) == 4 then
		hp = math.floor(hp/1.2*1.1)
	end
	if getskillidbyname("���ս���") == skillid and getskillinfo(actor,getskillidbyname("���ս���"),1) == 4 then
		hp = math.floor(hp/1.2*1.1)
	end
	if getskillidbyname("���ǻ���") == skillid and getskillinfo(actor,getskillidbyname("���ǻ���"),1) == 4 then
		hp = math.floor(hp/1.04*1.10)
	end
	if getskillidbyname("��ǽ") == skillid and getskillinfo(actor,getskillidbyname("��ǽ"),1) == 4 then
		hp = math.floor(hp*1.10)
	end
	if getskillidbyname("��Ѫ��") == skillid and getskillinfo(actor,getskillidbyname("��Ѫ��"),1) == 4 then
		hp = math.floor(hp/1.04*1.10)
	end
	if os.time() - getint(actor,"������ʱ��") >= 3 then
		setint(actor,"������ʱ��",os.time(),0)
	end
	if not getbaseinfo(shoujizhe,-1) and getname(shoujizhe) == "�귨����" and getmap(shoujizhe) == "mfzd" then
		if not hasbuff(actor,10055) then
			setint(actor,"�˵�����",0,0)
			return 0
		end
	end

	if not getbaseinfo(shoujizhe,-1) and getbaseinfo(gongjizhe,-1) then
		if ((getsysint("��������") < 2 and getint(gongjizhe,"�׳���ȡ") > 0) or getdayint(gongjizhe,"�ճ�") == 1 ) and getbaseinfo(shoujizhe,10) >= 10000 then
			------�����ع��� 
			if getjob(gongjizhe) ~= 2 then
				--makeposion(shoujizhe,1,30) --�춾
				makeposion(shoujizhe,0,30,10) --�̶�30�� ÿ���10��
			else
				hp = hp*1.1
			end
			------�����ع�����end	
		end
	end
	
	if not getbaseinfo(shoujizhe,-1) and (getname(shoujizhe) == "������" or getname(shoujizhe) == "��������") then
		if skillid~=getskillidbyname("��ɱ����") then
			setint(actor,"�˵�����",0,0)
			return 0
		end
		if getname(shoujizhe) == "������" then
			if #getmapmon("hlsd","",50,50,50) < 80 then
				setint(actor,"�˵�����",0,0)
				return 0
			end
		end
	end
	
	if not getbaseinfo(shoujizhe,-1) and getname(shoujizhe) == "��������" then
		if os.time() - tonumber(getcurrent(shoujizhe,0)) < 180 then
			setint(actor,"�˵�����",0,0)
			return 0
		end
	end
	
	if not getbaseinfo(shoujizhe,-1) and getbaseinfo(actor,36) == "" and (getname(shoujizhe) == "��������" or getname(shoujizhe) == "ɽׯ����") then
		setint(actor,"�˵�����",0,0)
		return 0
	end
	
	local zhansha = 0 --նɱ�ٷֱ�
	if hasbuff(actor,10057) then --����
		zhansha = zhansha + 8
	end
	local sh_data = getshouhunbuffdata(actor) --��ȡ�޻�buff����
	for i = 1,#sh_data do
		if sh_data[i] == "����һ��" and getbaseinfo(shoujizhe,-1) and zhansha == 0 and not hasbuff(shoujizhe,10052) then
			zhansha = zhansha + 5
		end
	end
	if zhansha > 0 then
		if getbaseinfo(shoujizhe,9) == getbaseinfo(shoujizhe,10) then --��Ѫ
			local delhp = math.floor(getbaseinfo(shoujizhe,10) * zhansha/100)
			gudingshanghai = gudingshanghai + delhp
			hp = hp + delhp
			--humanhp(shoujizhe,"-",delhp,1)
			--sendmsg6(actor,"նɱ��Ѫ"..zhansha.."%")
		end
	end
	
	local zhongjilv = getbaseinfo(actor,51,201) --�ػ�������ֱ�
	local zhongjish = getbaseinfo(actor,51,202) --�ػ��˺��ӳ�
	local zhongjijm = getbaseinfo(shoujizhe,51,208) --�ػ��˺�����
	if zhongjilv > 0 and getint(actor,"�˵�����") == 0 then 
		if math.random(1,10000) <= zhongjilv then
			if getbaseinfo(shoujizhe,-1) and getint(shoujizhe,"��������3���") == 34 and huoxiskill[skillid] then
			else
				--sendmsg0(actor,"�ػ��˺��ӳ�"..zhongjish.. "  �ػ��˺�����"..zhongjijm)
				hp = math.floor(hp* (2.4+zhongjish/10000 - zhongjijm/10000)) --�ػ��˺�
				--sendmsg6(actor,"�ػ��˺�"..hp)
				sendattackeff(shoujizhe,201,hp,"*")
				--setattackefftype(gongjizhe,201)
			end
		end
	end
	
	setint(actor,"�˵�����",0,0)
	
	if hasbuff(actor,10055) then
		if not hasbuff(shoujizhe,10056) then
			addbuff(shoujizhe,10056) --�س��ӳ�
		end
	end
	
	--�������Դ���
	local jianlanzhi = getbaseinfo(actor,51,205) --������ֱ�
	if jianlanzhi > 0 and getbaseinfo(shoujizhe,-1) and getint(shoujizhe,"��������3���")~=47 and not hasbuff(shoujizhe,10052)  then
		local curmp = getbaseinfo(shoujizhe,11) --��ǰ����
		local maxmp = getbaseinfo(shoujizhe,12) --����
		local delmp = math.floor(maxmp * jianlanzhi/10000)
		if delmp > curmp then
			delmp = curmp
		end
		humanmp(shoujizhe,"-",delmp)
		humanmp(actor,"+",delmp)
		--sendmsg6(actor,"�۳�Ѫ��"..hp.." �۳�����"..delmp)
	end
	
	
	if getbaseinfo(shoujizhe,-1) then --�˴���
		if getint(gongjizhe,"���˵ȼ�") < getint(shoujizhe,"���˵ȼ�") then
			hp = math.floor(hp*0.95)
		end

		----�������
		if getint(gongjizhe,"���е�ǰ����") > 0 then
			if getint(gongjizhe,"���е�ǰ����") + 1 == getint(shoujizhe,"���е�ǰ����") or ( getint(gongjizhe,"���е�ǰ����") == 5 and getint(shoujizhe,"���е�ǰ����") == 1 ) then
				hp = math.floor(hp*1.06)
				--sendmsg6(actor,"����")
			end
		end
	end
	if not getbaseinfo(shoujizhe,-1) then --�˴��
		local sxzl = getint(gongjizhe,"����֮����ֵ")
		local sxzl_jc = getbaseinfo(actor,51,200)
		if sxzl > 0 then
			local sxzlsh = math.floor(sxzl*(1+sxzl_jc/10000))
			if getbaseinfo(shoujizhe,10) <= 5000 then
				sxzlsh = math.floor(sxzlsh/2)
			end
			hp = hp + sxzlsh
			--sendmsg6(gongjizhe,"����֮���˺�".. sxzlsh)
		end
	end
	
	----�޻�buff����
	if getbaseinfo(shoujizhe,-1) and hasbuff(shoujizhe,10052) then
	else
		local sh_data = getshouhunbuffdata(actor) --��ȡ�޻�buff����
		for i = 1,#sh_data do
			if sh_data[i] ~= "" and shouhun_gongjicl[sh_data[i]] then
				local addhp,gushang = shouhun_gongjicl[sh_data[i]](gongjizhe,shoujizhe,hp,skillid,gudingshanghai)
				hp = hp + addhp
				if gushang then
					gudingshanghai = gudingshanghai + gushang
				end
			end
		end
	end
	--
	----�޻�buff�������
	----��������buff����----------------------------------------------------------------------------
	----��������buff����----------------------------------------------------------------------------
	----��������buff����----------------------------------------------------------------------------
	if getbaseinfo(shoujizhe,-1) and hasbuff(shoujizhe,10052) then
	else
		if getbaseinfo(shoujizhe,-1) then --����
			local yinji = linkbodyitem(actor,14) --ӡ��
			if yinji ~= "0" then
				if getitemname(actor,yinji) == "����" or getitem_fabaozhi(actor,yinji) == 1 then
					if getlevel(shoujizhe) - getlevel(actor) <= 3 and math.random(1,100) < 2 then
						if getint(shoujizhe,"��������3���") == 35 then
						elseif getint(shoujizhe,"��������3���") == 5 then
							if math.random(1,100) < 50 then
								makeposion(shoujizhe,5,3)
							end
						else
							makeposion(shoujizhe,5,3)
						end
					end
				end
			end
		end
		if getint(actor,"��������2���") == 19 and skillid == getskillidbyname("��ǽ") then --��ǽ
			if getbaseinfo(shoujizhe,-1) and getint(shoujizhe,"��������3���")==34 then
			else
				if math.random(1,100) < 10 then
					hp = math.floor(hp*1.8)
					setattackefftype(actor,2)
					--sendmsg6(actor,"��ǽ��������")
				end
			end
		end

		if getbaseinfo(shoujizhe,-1) and getint(actor,"��������2���") == 20 and skillid == getskillidbyname("�����Ӱ") then --�����Ӱ
			local maxhp = getbaseinfo(shoujizhe,10)
			hp = hp + math.floor(maxhp*0.02)
			--sendmsg6(actor,"�������紩�� �ͷż����Ӱ�������Ŀ������3%���Ѫ���˺�")
		end
		
		if getbaseinfo(shoujizhe,-1) and getint(actor,"��������2���")==21 and skillid==getskillidbyname("�����") and gethumnewvalue(shoujizhe,11)==0 and gethumnewvalue(shoujizhe,12)==0 then
			local mfxx = getbaseinfo(shoujizhe,17) --ħ������
			local mfsx = getbaseinfo(shoujizhe,18) --ħ������	
			local xxz = -10
			local sxz = -15
			if mfxx + xxz < 0 then
				xxz = -mfxx
			end
			if mfsx + sxz < 0 then
				sxz = -mfsx
			end
			changehumnewvalue(shoujizhe,11,xxz,10)
			changehumnewvalue(shoujizhe,12,sxz,10)
			--sendmsg6(actor,"���ͶԷ�ħ��20-20 10�� ".. xxz .." "..sxz)
		end
		
		if getbaseinfo(shoujizhe,-1) and getint(actor,"��������2���")==25 and skillid==getskillidbyname("�����") then
			if getbaseinfo(actor,9) / getbaseinfo(actor,10) > 0.9 and math.random(1,100) <= 3 then
				local maxhp = getbaseinfo(shoujizhe,10)
				hp = hp + math.floor(maxhp*0.06)
				playeffect(shoujizhe,105,0,0,1,0,0)
				--sendmsg6(actor,"����ĩ������,նɱ�ж�Ŀ��������Ѫ��6%")
			end
		end
		
		if getbaseinfo(shoujizhe,-1) and getint(actor,"��������2���")==26 and (skillid==getskillidbyname("�����") or skillid==getskillidbyname("���ǻ���")) then
			if math.random(1,100) <= 6 then
				local mofa = getbaseinfo(actor,22)
				hp = hp + math.floor(mofa*0.6)	
				playeffect(shoujizhe,56,0,0,1,0,0)
				gudingshanghai = gudingshanghai + math.floor(mofa*0.6)
				--sendmsg6(actor,"ʹ�������������ǻ���ʱ10%�����ٻ��׵�,�������ħ������60%�Ĺ̶��˺�")
			end
		end
		
		if getint(actor,"��������2���")==27 and skillid==getskillidbyname("������") and os.time() - getint(actor,"�ϴξ�ħʱ��") >= 300 then
				local mofa = getbaseinfo(actor,22)
				hp = hp + mofa
				gudingshanghai = gudingshanghai + mofa
				setint(actor,"�ϴξ�ħʱ��",os.time())
				--sendmsg6(actor,"ÿ300����һ�ξ�ħЧ��.ʹ�ñ������������ħ������100%�Ĺ̶��˺�")
		end
		
		if getint(actor,"��������2���")==30 and skillid==getskillidbyname("�һ𽣷�") and getbaseinfo(shoujizhe,-1) then
				local maxhp = getbaseinfo(shoujizhe,10)
				hp = hp + math.floor(maxhp*0.05)
				--sendmsg6(actor,"�ͷ��һ𽣷�ÿ�����н�����նɱĿ������5%��Ѫ��")
		end
		
		if getint(actor,"��������2���")==31 and skillid==getskillidbyname("�����䵶")  then
			local gongji = getbaseinfo(actor,20)
			hp = hp + math.floor(gongji*0.1)
			gudingshanghai = gudingshanghai + math.floor(gongji*0.1)
			--sendmsg6(actor,"ʹ�ð����䵶����ÿ�θ�����������10%�Ķ���̶��˺�")
		end
		
		if getbaseinfo(shoujizhe,-1) and getint(actor,"��������2���")==32 and skillid==getskillidbyname("��ɱ����") then
			local cishajianmian = getbaseinfo(shoujizhe,51,87) --��ɱ�������
			if cishajianmian > 0 then
				hp = math.floor(hp / (1-cishajianmian/10000))
				--sendmsg6(actor,"��ɱ��������Ŀ��һ�д�ɱ�ֿ�Ч��")
			end
		end

		if getint(actor,"��������2���")==33 and skillid==getskillidbyname("��ɱ����")  then
			hp = hp + 50
			gudingshanghai = gudingshanghai + 50
			--sendmsg6(actor,"�ͷŹ�ɱ����ÿ�ι�������50��̶��˺�")
		end
		
		if getint(actor,"��������2���")==34 and skillid==getskillidbyname("�һ𽣷�")  then
			if math.random(1,100) <= 25 and getint(actor,"˫�һ�") == 0 then
				setint(actor,"˫�һ�",1)
				releasemagic(actor,skillid,1,getskilllevel(actor,"�һ𽣷�"),1,1)
				--sendmsg6(actor,"ʹ���һ𽣷�����20%�������CD�γ�˫�һ�")
			elseif getint(actor,"˫�һ�") == 1 then
				setint(actor,"˫�һ�",0)
			end
		end

		if getint(actor,"��������2���")==36 and skillid==getskillidbyname("����ն") and getbaseinfo(shoujizhe,-1)  then
			if math.random(1,100) <= 18 then
				playeffect(shoujizhe,10066,10,0,1,0,0)
				makeposion(shoujizhe,12,2)
				--sendmsg6(actor,"�ͷſ���նʱ��18%����ʹĿ�����2��")
			end
		end
		
		if getint(actor,"��������3���")==6 and getbaseinfo(shoujizhe,-1) then
			if getbaseinfo(shoujizhe,9)/getbaseinfo(shoujizhe,10) < 0.5 then
				hp = math.floor(hp*1.03)
				--sendmsg6(actor,"����Ѫ������50%��Ŀ��ʱ.��������3%���˺�")
			end
		end
		
		if getint(actor,"��������3���")==7 and getbaseinfo(shoujizhe,-1) then
			if getbaseinfo(shoujizhe,9)/getbaseinfo(shoujizhe,10) < 0.5 then
				hp = math.floor(hp*1.06)
				--sendmsg6(actor,"����Ѫ������50%��Ŀ��ʱ.��������6%���˺�")
			end
		end
		
		if getint(actor,"��������3���")==10 then
			if math.random(1,100) <= 2 and getbaseinfo(shoujizhe,-1) then
				callscriptex(shoujizhe, "changespeedex", 1, -50,5)
				--sendmsg6(actor,"����ʱ��2%�ĸ���ʹ�Է��ƶ��ٶȽ���50%����5��")
				sendmsg9(shoujizhe,"���ܵ���".. getname(gongjizhe) .."��'�粽����'��ǰ�ƶ��ٶȽ���50%����5��")
			end
		end
		
		if getint(actor,"��������3���")==12 then
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,20069) then
				addbuff(shoujizhe,20069)
				--sendmsg6(actor,"����ʱ����Ŀ��10%��ҩƷ��Ч,����30��")
			end
		end
		
		if getint(actor,"��������3���")==13 then
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,20070) then
				addbuff(shoujizhe,20070)
				--sendmsg6(actor,"����ʱ����Ŀ��20%��ҩƷ��Ч,����30��")
			end
		end
		
		if getint(actor,"��������3���")==18 and getbaseinfo(shoujizhe,-1) then  --��������MP����50% ���ܵ�15%�Ķ����˺�
			if getbaseinfo(shoujizhe,11)/getbaseinfo(shoujizhe,12) < 0.5 then
				hp = math.floor(hp*1.15)
				--sendmsg6(actor,"��������MP����60% ���ܵ�15%�Ķ����˺�")
			end
		end
		
		if getint(actor,"��������3���")==20 and getbaseinfo(shoujizhe,-1) then  --ʹ�������߽���10%��������,����20��(���ɵ���)
			if not hasbuff(shoujizhe,20072) then
				addbuff(shoujizhe,20072)
				--sendmsg6(actor,"ʹ�������߽���10%��������,����20��(���ɵ���)")
			end
		end
		
		if getint(actor,"��������3���")==21 and getbaseinfo(shoujizhe,-1) then  --�������Լ��ȼ��ߵ����ʱ��ÿ���1�������1%�Ķ����˺�
			if getlevel(actor) < getlevel(shoujizhe) then
				hp = hp + math.floor(hp * (getlevel(shoujizhe)-getlevel(actor))/100)
				--sendmsg6(actor,"�������Լ��ȼ��ߵ����ʱ��ÿ���1�������1%�Ķ����˺�")
			end
		end
		
		if getint(actor,"��������3���")==24 and getbaseinfo(shoujizhe,-1) then  --Ŀ���������8%��Ѫ��ֱ��նɱ
			if getbaseinfo(shoujizhe,9)/getbaseinfo(shoujizhe,10) < 0.08 then
				--sendmsg6(actor,"Ŀ���������5%��Ѫ��ֱ��նɱ")
				return math.floor(getbaseinfo(shoujizhe,10) * 0.1)
			end
		end
		
		if getint(actor,"��������3���")==39 and getbaseinfo(shoujizhe,-1) then  --Ŀ���������15%��Ѫ��ֱ��նɱ
			if getbaseinfo(shoujizhe,9)/getbaseinfo(shoujizhe,10) < 0.16 then
				--sendmsg6(actor,"Ŀ���������15%��Ѫ��ֱ��նɱ")
				return math.floor(getbaseinfo(shoujizhe,10) * 0.16) + 100
			end
		end
		
		if getint(actor,"��������3���")==14 and getbaseinfo(shoujizhe,-1) then  
			if math.random(1,100) <= 5 then
				if not hasbuff(shoujizhe,20075) then
					addbuff(shoujizhe,20075)
					--sendmsg6(actor,"����ʱ3%�ĸ����öԷ�����+2����12��")
				end
			end
		end
		
		if getint(actor,"��������3���")==42 and getbaseinfo(shoujizhe,-1) then  --Ŀ���ܵ��Լ�����ʱ.����Ŀ����������.����10��	
			if not hasbuff(shoujizhe,20079) then
				addbuff(shoujizhe,20079)
				--sendmsg6(actor,"Ŀ���ܵ��Լ�����ʱ.����Ŀ����������.����10��")
			end
		end
		
		if getint(actor,"��������3���")==30 and getbaseinfo(shoujizhe,-1) then  
			if getbaseinfo(shoujizhe,9)/getbaseinfo(shoujizhe,10) > 0.75 then
				hp = math.floor(hp * 1.1)
				--sendmsg6(actor,"��Ѫ�����ڰٷ�֮80��Ŀ�����1.1���˺�")
			end
		end
		
		if getint(actor,"��������3���")==31 and getbaseinfo(shoujizhe,-1) then  --ʹ����������Ŀ��������ɱ�ְҵ����������10%�Ķ���̶��˺�
			local gongji = getbaseinfo(actor,20)
			local mofa = getbaseinfo(actor,22)
			local daoshu = getbaseinfo(actor,24)
			--sendmsg6(actor,"����"..gongji.." ħ��"..mofa.." ����"..daoshu)
			local job = getjob(actor)
			if job == 0 then
				hp = hp + math.floor(gongji*0.1)
				gudingshanghai = gudingshanghai + math.floor(gongji*0.1)
			end
			if job == 1 then
				hp = hp + math.floor(mofa*0.1)
				gudingshanghai = gudingshanghai + math.floor(mofa*0.1)
			end
			if job == 2 then
				hp = hp + math.floor(daoshu*0.1)
				gudingshanghai = gudingshanghai + math.floor(daoshu*0.1)
			end
			--sendmsg6(actor,"ʹ����������Ŀ��������ɱ�ְҵ����������10%�Ķ���̶��˺�")
		end
		
		if getint(actor,"��������3���")==32 and getbaseinfo(shoujizhe,-1) then  --ʹ����������Ŀ��������ɱ�ְҵ����������20%�Ķ���̶��˺�
			local gongji = getbaseinfo(actor,20)
			local mofa = getbaseinfo(actor,22)
			local daoshu = getbaseinfo(actor,24)
			--sendmsg6(actor,"����"..gongji.." ħ��"..mofa.." ����"..daoshu)
			local job = getjob(actor)
			if job == 0 then
				hp = hp + math.floor(gongji*0.15)
				gudingshanghai = gudingshanghai + math.floor(gongji*0.15)
			end
			if job == 1 then
				hp = hp + math.floor(mofa*0.15)
				gudingshanghai = gudingshanghai + math.floor(mofa*0.15)
			end
			if job == 2 then
				hp = hp + math.floor(daoshu*0.15)
				gudingshanghai = gudingshanghai + math.floor(daoshu*0.15)
			end
			--sendmsg6(actor,"ʹ����������Ŀ��������ɱ�ְҵ����������15%�Ķ���̶��˺�")
		end
		
		if getint(actor,"��������3���")==36 and getbaseinfo(shoujizhe,-1) then --����ʱ��2%�ĸ���ʹ���˱�ɫ.���͹����ٶ�3��,�����Խ���15%,����5��
			if math.random(1,100) <= 2 then
				--callscriptex(shoujizhe, "changespeedex", 2, -30,5) --�����ٶ�
				--callscriptex(shoujizhe, "changespeedex", 3, -30,10) --ħ���ٶ�
				setbaseinfo(shoujizhe,58,146,5) --����������ɫ
				
				local gongji = getbaseinfo(shoujizhe,20)
				local mofa = getbaseinfo(shoujizhe,22)
				local daoshu = getbaseinfo(shoujizhe,24)
				--sendmsg6(actor,"����"..gongji.." ħ��"..mofa.." ����"..daoshu)
				local job = getjob(shoujizhe)
				local zhushuxing = gongji
				if job == 1 then
					zhushuxing = mofa
				elseif job == 2 then
					zhushuxing = daoshu
				end
				local zhi = math.floor(zhushuxing*0.15)
				if not hasbuff(shoujizhe,20091) then
					addbuff(shoujizhe,20091,0,zhi)
					addbuff(shoujizhe,20103,0)
					sendmsg9(shoujizhe,getname(gongjizhe).."����ʹ����'��Ѫħ��'����ǰ���ټ���5�������Խ���15%����5��")
				end
				--sendmsg6(shoujizhe,"����ʱ��2%�ĸ���ʹ���˱�ɫ.���͹����ٶ�3��,�����Խ���15%,����5��")
			end
		end
		
		if getint(actor,"��������3���")==37 and getbaseinfo(shoujizhe,-1) then  --��������MP����60% ���ܵ�15%�Ķ����˺�
			if getbaseinfo(shoujizhe,11)/getbaseinfo(shoujizhe,12) < 0.5 then
				hp = math.floor(hp*1.3)
				--sendmsg6(actor,"��������MP����50%,���ܵ�30%�Ķ����˺�")
			end
		end
		if getint(actor,"��������3���")==47 then
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,20094) then
				addbuff(shoujizhe,20094)
				--sendmsg6(actor,"����Ŀ��ħ�����50%,���ӶԷ������Լ�����BUFFЧ��")
			end
		end
		if getint(actor,"��������3���")==48 and not getbaseinfo(shoujizhe,-1) and getbaseinfo(shoujizhe,10) >= 100000 then
			if getbaseinfo(shoujizhe,9)/getbaseinfo(shoujizhe,10) < 0.1 then
				return getbaseinfo(shoujizhe,9) + 100
			end
			
			if math.random(1,100) <= 2 and os.time() - getint(actor,"��������3���48ʱ��") > 180 then
				hp = hp + math.floor(getbaseinfo(shoujizhe,9)*0.02)
				setint(actor,"��������3���48ʱ��",os.time())
			end
		end
	end
	----��������buff�������----------------------------------------------------------------------------
	----��������buff�������----------------------------------------------------------------------------
	----��������buff�������----------------------------------------------------------------------------
	
	
	local gushangjianmian = getbaseinfo(shoujizhe,51,214) 
	if gudingshanghai > 0 and gushangjianmian > 0 and getbaseinfo(shoujizhe,-1) then	
		if gushangjianmian > gudingshanghai then --������˼�����ڹ̶��˺�ʱ
			gushangjianmian = gudingshanghai
		end
		hp = hp - gushangjianmian
	end
	--sendmsg0(0,"�̶��˺�"..gudingshanghai.."  ���˼���"..gushangjianmian)
	
	--haoshiend(actor) --��ʱ����
	return hp
end


--����ǰ������ɺ� ���� ����ܻ���Ѫǰ

--����ܻ���Ѫǰ
function struckdamage(actor,gongjizhe,shoujizhe,skillid,hp)
	
	--haoshistart(actor) --��ʱ��ʼ
	--sendmsg6(actor,"��������"..getname(actor) .."  �ܻ���"..getname(shoujizhe).."  ������"..getname(gongjizhe).."  ����id"..skillid)
	if skillid == getskillidbyname("���ǻ���") and getbaseinfo(actor,48) then
		return 0
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "����֩��" then
		killmonbyobj(actor,gongjizhe,false,false,true)
		if hasbuff(actor,20105) or hasbuff(actor,20107) then --�޵�ģʽ	
			return 0
		else
			return math.floor(getbaseinfo(actor,10) * 0.05)
		end
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "��������" then
		killmonbyobj(actor,gongjizhe,false,false,true)
		genmon("hlsd",50,50,"��������",50,1,253)
	end
	
	if hasbuff(actor,20105) or hasbuff(actor,20107) then --�޵�ģʽ
		return 0
	end
	
	---�ܹ��ﴥ��
	if not getbaseinfo(gongjizhe,-1) and not hasbuff(actor,20111) then
		if getname(gongjizhe) == "���߱�����" then
			if math.random(1,100) < 10 then
				makeposion(actor,12,3)
				sendmsg9(actor,"�㱻���߱������ͷŵ�������⣬����3��","#FFD700")
				playeffect(actor,10066,10,0,1,0,0)
			end
		end
		if getname(gongjizhe) == "��˿����" then
			local lasttime = getguaigongjitime(gongjizhe) --��󹥻�ʱ��
			if os.time() - lasttime >= 60 then
				local suijizhi = math.random(1,100)
				hp = hp + math.floor(getbaseinfo(actor,10) * 0.1)
				sendmsg9(actor,"���ܵ��˹�����˿���ɵ���Ѫ�˺�","#FFD700")
				setguaigongjitime(gongjizhe,os.time())
				playeffect(actor,11021,0,0,1,0,0)
			end
		end
		if getname(gongjizhe) == "ͨ�����" then
			if skillid == -138 then
				if math.random(1,100) < 70 then
					makeposion(actor, 1, 60)
					sendmsg9(actor,"���ܵ���ͨ������Ķ����˺�","#FFD700")
				else
					makeposion(actor, 5, 5)
					sendmsg9(actor,"�㱻ͨ����������˳���5��","#FFD700")
				end
			end
		end
		if getname(gongjizhe) == "�������㽣ʥ" then
			if skillid == -126 then
				local lasttime = tonumber(getcurrent(gongjizhe,7)) or 0 --��󹥻�ʱ��
				if os.time() - lasttime >= 60 or os.time() == lasttime then
					if math.random(1,100) < 70 then
						changespeed(actor,1,-5,15)
						sendmsg9(actor,"�������������㽣ʥ���������գ��ƶ��ٶȽ���50%����15��","#FFD700")
					else
						addbuff(actor,20097,10)
						sendmsg9(actor,"�������������㽣ʥ����������˫���������10��","#FFD700")
					end
					setcurrent(gongjizhe,7,tostring(os.time()))
				end
			end
		end
		
		if getname(gongjizhe) == "аħͳ˧" then
			local texiaoid = {20030,20031,20032,20033,20034}
			for i = 1,10 do
				mapeffect(1000+i,getmap(actor),getx(actor)+math.random(-6,6),gety(actor)+math.random(-4,4),texiaoid[math.random(1,5)],2,0) 
			end
			if skillid == -140 then
				setsysint("ͳ˧����",0)
				setsysint("ͳ˧���",0)
			end
			
			if skillid == -141 then
				if getsysint("ͳ˧����") == 0 then
					if math.random(1,100) < 50 then
						setsysint("ͳ˧����",1)
						if math.random(1,100) < 50 then
							setsysint("ͳ˧���",1)
						end
					end
				end
				if getsysint("ͳ˧����") == 1 then
					mapmove(actor,getmap(gongjizhe),getx(gongjizhe),gety(gongjizhe),3)
					if getsysint("ͳ˧���") == 1 then
						makeposion(actor, 5, 2)
					end
				end
			end
		end
		
		if getname(gongjizhe) == "ɽׯ����" then
			local texiaoid = {20030,20031,20032,20033,20034}
			for i = 1,10 do
				mapeffect(1000+i,getmap(actor),getx(actor)+math.random(-6,6),gety(actor)+math.random(-4,4),texiaoid[math.random(1,5)],2,0) 
			end
			if skillid == -140 then
				setsysint("ɽׯ��������",0)
				setsysint("ɽׯ�������",0)
			end
			
			if skillid == -141 then
				if getsysint("ɽׯ��������") == 0 then
					if math.random(1,100) < 50 then
						setsysint("ɽׯ��������",1)
						if math.random(1,100) < 50 then
							setsysint("ɽׯ�������",1)
						end
					end
				end
				if getsysint("ɽׯ��������") == 1 then
					mapmove(actor,getmap(gongjizhe),getx(gongjizhe),gety(gongjizhe),3)
					if getsysint("ɽׯ�������") == 1 then
						makeposion(actor, 5, 2)
					end
				end
			end
		end
		
		if getname(gongjizhe) == "�һ���ħ����" then
			if skillid == -120 then
				local lasttime = getguaigongjitime(gongjizhe) --��󹥻�ʱ��
				if os.time() - lasttime >= 60 or os.time() == lasttime then
					hp = hp*2
					sendmsg9(actor,"���ܵ����һ���ħ����ķɻ����Ƕ�������ػ��˺�","#FFD700")
					setguaigongjitime(gongjizhe,os.time())
				end
			end
			if skillid == -121 then 
				local lasttime = tonumber(getcurrent(gongjizhe,7)) or 0 --��󹥻�ʱ��
				if os.time() - lasttime >= 30 or os.time() == lasttime then
					addbuff(actor,20097,5)
					sendmsg9(actor,"���ܵ����һ���ħ����ķ�Ӱ����˫���������5��","#FFD700")
					setcurrent(gongjizhe,7,tostring(os.time()))
				end
			end
			if skillid == -122 then 
				local lasttime = tonumber(getcurrent(gongjizhe,8)) or 0 --��󹥻�ʱ��
				if os.time() - lasttime >= 90 or os.time() == lasttime then
					hp = math.floor(getbaseinfo(actor,10) * 0.1)
					sendmsg9(actor,"�������һ���ħ������ѵ�ͻ�̵�Ѫ10%","#FFD700")
					setcurrent(gongjizhe,8,tostring(os.time()))
				end
			end
		end
		
		if getname(gongjizhe) == "����֮��" then
			if skillid == -132 then
				local lasttime = getguaigongjitime(gongjizhe) --��󹥻�ʱ��
				if os.time() - lasttime >= 40 then
					addbuff(actor,20113)
					sendmsg9(actor,"���ܵ��˾���֮��������ÿ���Ѫ3%����5��","#FFD700")
					setguaigongjitime(gongjizhe,os.time())
				end
			end
			if skillid == -133 then 
				local lasttime = tonumber(getcurrent(gongjizhe,7)) or 0 --��󹥻�ʱ��
				if os.time() - lasttime >= 120 or os.time() == lasttime then
					makeposion(actor, 1, 60)
					sendmsg9(actor,"���ܵ��˾���֮���Ķ����˺�","#FFD700")
					setcurrent(gongjizhe,7,tostring(os.time()))
				end
			end
			if skillid == -131 then 
				local lasttime = tonumber(getcurrent(gongjizhe,8)) or 0 --��󹥻�ʱ��
				if os.time() - lasttime >= 90 or os.time() == lasttime then
					changespeed(actor,1,-5,8)
					sendmsg9(actor,"���ܵ��˾���֮����ŭ���ƶ��ٶȽ���50%����8��","#FFD700")
					setcurrent(gongjizhe,8,tostring(os.time()))
				end
			end
		end
		if getname(gongjizhe) == "�귨�й�" then
			if skillid == -132 then
				local lasttime = getguaigongjitime(gongjizhe) --��󹥻�ʱ��
				if os.time() - lasttime >= 30 then
					hp = hp*3
					sendmsg9(actor,"���ܵ����귨�йٵ��ػ��˺�","#FFD700")
					setguaigongjitime(gongjizhe,os.time())
				end
			end
		end
		if getname(gongjizhe) == "�Ϲ�����" then
			if skillid == -135 then
				hp = hp*2
				sendmsg9(actor,"���ܵ����Ϲ��������ػ��˺�","#FFD700")
			end
		end
		
		if getname(gongjizhe) == "��ʼ��" then
			if skillid == -106 then
				local lasttime = getguaigongjitime(gongjizhe) --��󹥻�ʱ��
				if os.time() - lasttime >= 30 then
					hp = hp*3
					sendmsg9(actor,"���ܵ�����ʼ�ʵ��ػ��˺�","#FFD700")
					setguaigongjitime(gongjizhe,os.time())
				end
			end
			if skillid == -107 then 
				local lasttime = tonumber(getcurrent(gongjizhe,7)) or 0 --��󹥻�ʱ��
				if os.time() - lasttime >= 60 or os.time() == lasttime then
					addbuff(actor,20114)
					sendmsg9(actor,"��������ʼ�ʵĻ�֮��ÿ���Ѫ2%����10��","#FFD700")
					setcurrent(gongjizhe,7,tostring(os.time()))
				end
			end
		end
		if getname(gongjizhe) == "��������" then
			if skillid == -105 then
				if math.random(1,100) < 20 then
					hp = hp*3
					sendmsg9(actor,"���ܵ���������������깥���ܵ��˴������˺�","#FFD700")
				end	
				
			end
			if skillid == -106 then
				local lasttime = getguaigongjitime(gongjizhe) --��󹥻�ʱ��
				if os.time() - lasttime >= 30 then
					hp = math.floor(getbaseinfo(actor,10) * 0.2)
					sendmsg9(actor,"���ܵ���������������괩͸����Ѫ������20%","#FFD700")
					setguaigongjitime(gongjizhe,os.time())
				end
			end
			if skillid == -107 then 
				local lasttime = tonumber(getcurrent(gongjizhe,7)) or 0 --��󹥻�ʱ��
				if os.time() - lasttime >= 40 or os.time() == lasttime then
					local sjz = math.random(1,100)
					if sjz <= 30 then
						makeposion(actor, 1, 60)
						sendmsg9(actor,"���ܵ������������Ķ����˺�","#FFD700")
					elseif sjz <= 50 then
						addbuff(shoujizhe,20013,5)
						sendmsg9(actor,"���ܵ�������������ѣ���˺�����5��","#FFD700")
					else
						addbuff(actor,20115)
						sendmsg9(actor,"���ܵ�����������������ÿ���Ѫ5%����5��","#FFD700")
					end			
					setcurrent(gongjizhe,7,tostring(os.time()))
					
				end
			end
		end
		if getname(gongjizhe) == "�����ػ���" then
			if skillid == -103 then
				local lasttime = getguaigongjitime(gongjizhe) --��󹥻�ʱ��
				if os.time() - lasttime >= 30 then
					hp = math.floor(hp*2.5)
					sendmsg9(actor,"���ܵ��������ػ�����ػ��˺�","#FFD700")
					setguaigongjitime(gongjizhe,os.time())
				end
			end
			if skillid == -104 then
				local lasttime = tonumber(getcurrent(gongjizhe,7)) or 0 --��󹥻�ʱ��
				if os.time() - lasttime >= 60 or os.time() == lasttime then
					addbuff(actor,20111,10)
					sendmsg9(actor,"���ܵ��������ػ��������֮ŭ˫������50%����10��","#FFD700")
					setcurrent(gongjizhe,7,tostring(os.time()))
				end
			end
		end
		if getname(gongjizhe) == "����������" then
			if skillid == -103 then
				local lasttime = getguaigongjitime(gongjizhe) --��󹥻�ʱ��
				if os.time() - lasttime >= 30 then
					hp = math.floor(hp*2.5)
					sendmsg9(actor,"���ܵ��˵��������ߵ��ػ��˺�","#FFD700")
					setguaigongjitime(gongjizhe,os.time())
				end
			end
			if skillid == -104 then
				local lasttime = tonumber(getcurrent(gongjizhe,7)) or 0 --��󹥻�ʱ��
				if os.time() - lasttime >= 60 or os.time() == lasttime then
					addbuff(actor,20111,10)
					sendmsg9(actor,"���ܵ��˵��������ߵ�����֮ŭ˫������50%����10��","#FFD700")
					setcurrent(gongjizhe,7,tostring(os.time()))
				end
			end
		end
		if getname(gongjizhe) == "�̻�����" then
			if skillid == -126 then
				local lasttime = tonumber(getcurrent(gongjizhe,7)) or 0 --��󹥻�ʱ��
				if os.time() - lasttime >= 60 or os.time() == lasttime then
					if math.random(1,100) < 70 then
						addbuff(actor,20097,5)
						sendmsg9(actor,"�������̻���������������˫���������5��","#FFD700")
					else
						addbuff(actor,20114,5)
						sendmsg9(actor,"�������̻���������������ÿ���Ѫ2%����5��","#FFD700")
					end
					setcurrent(gongjizhe,7,tostring(os.time()))
				end
			end
		end
		if getname(gongjizhe) == "���֮��" then
			if skillid == -114 then
				addbuff(actor,20111,15)
				sendmsg9(actor,"���������֮���ľ������˫������50%����15��","#FFD700")
			end
		end
		if getname(gongjizhe) == "����������" then
			if skillid == -114 then
				addbuff(actor,20111,15)
				sendmsg9(actor,"���������������ߵľ������˫������50%����15��","#FFD700")
			end
		end
		if getname(gongjizhe) == "�л�ʹ��" then
			if math.random(1,100) < 50 then
				if not hasbuff(actor,20111) then
					addbuff(actor,20111,3)
				end
			end
		end
		
		if getname(gongjizhe) == "͵Ϯ��" then
			if math.random(1,100) < 20 then
				if not hasbuff(actor,20111) then
					addbuff(actor,20111,5)
				end
			end
		end
		if getname(gongjizhe) == "��ڤ����" then
			if math.random(1,100) < 10 then
				if not hasbuff(actor,20111) then
					addbuff(actor,20111,5)
				end
			end
		end
		
		if getname(gongjizhe) == "���İ���" then
			if math.random(1,100) < 20 then
				hp = math.floor(hp*2)
				playeffect(actor,11066,0,0,1,0,0)
				sendmsg9(actor,"���ܵ������İ������ػ��˺�","#FFD700")
			end
		end
		if getname(gongjizhe) == "��Ѫħ��" then
			if math.random(1,100) < 20 then
				hp = math.floor(hp*2)
				playeffect(actor,11066,0,0,1,0,0)
				sendmsg9(actor,"���ܵ�����Ѫħ�����ػ��˺�","#FFD700")
			end
		end
		if getname(gongjizhe) == "����ս��" then
			if math.random(1,100) < 5 then
				hp = math.floor(hp*2)
				playeffect(actor,11066,0,0,1,0,0)
				sendmsg9(actor,"����ս������������ػ��˺�","#FFD700")
			end
		end
		
		if getname(gongjizhe) == "����ʹ��" then
			if math.random(1,100) < 20 then
				changespeed(actor,1,-5,3)
			end
		end
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "�����غ���" and not hasbuff(actor,20111) then --���ͷ���50%
		addbuff(actor,20111)
		sendmsg6(shoujizhe,"���ܵ������غ�������������ħ������10��")
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "��������" and not hasbuff(actor,20111) then --���ͷ���50%
		addbuff(actor,20111)
		sendmsg6(shoujizhe,"���ܵ��������빥��������ħ������10��")
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "ۺ������˾" and not hasbuff(actor,20111) then --���ͷ���50%
		addbuff(actor,20111)
		sendmsg6(shoujizhe,"���ܵ�ۺ������˾����������ħ������10��")
	end
	
	if getbaseinfo(shoujizhe,9)/getbaseinfo(shoujizhe,10) < 0.6 then
		if hasbuff(shoujizhe,10054) or hasbuff(shoujizhe,10055) then --�о���ֵ
			local item = linkbodyitem(shoujizhe,16) --��λ��װ�� �ƺ�«
			if item ~= "0" then
				local jiuqizhi = getitem_jiuqizhi(shoujizhe,item) --����ֵ
				local dikangzhi = math.floor(hp * 0.2) --�ֿ�ֵ
				if jiuqizhi < dikangzhi*2 then
					dikangzhi = math.floor(jiuqizhi/2)
				end
				addhulujiuqizhi(shoujizhe,-dikangzhi*2)
				hp = hp - dikangzhi
				--sendmsg6(shoujizhe,"�������壬�ֿ��˺�"..dikangzhi)
				--sendmsg6(actor,"�ֿ����ػ��˺�"..hp)
			end
		end
	end

	
	
	if skillid == -126 and not hasbuff(actor,10052) then
		if not hasbuff(actor,20108) then
			addbuff(actor,20108)
		end
	end
	if skillid == -107 and not hasbuff(actor,10052) then
		if not hasbuff(actor,20108) then
			addbuff(actor,20108,5)
		end
	end
	if skillid == -114 and not hasbuff(actor,10052) then
		if not hasbuff(actor,20109) then
			addbuff(actor,20109)
		end
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "ĩ·����" and math.random(1,100) <= 20 and not hasbuff(actor,10052) then
		hp = math.floor(hp*2)
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "�زػ���" and math.random(1,100) <= 10 and not hasbuff(actor,10052) then
		makeposion(actor, 5, 3)
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "������ҽ" and math.random(1,100) <= 10 and not hasbuff(actor,10052) then
		makeposion(actor, 0, 20,30)
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "�ɻ���" and math.random(1,100) <= 10 and not hasbuff(actor,10052) then
		makeposion(actor, 0, 20,30)
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "�һ�������" and math.random(1,100) <= 10 and not hasbuff(actor,10052) then
		makeposion(actor, 0, 20,30)
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "��������" and math.random(1,100) <= 20 and not hasbuff(actor,10052) then
		makeposion(actor, 13, 3)
	end
	
	if not getbaseinfo(gongjizhe,-1) and getname(gongjizhe) == "Զ������̸�" and math.random(1,100) <= 10 then
		hp = math.floor(hp*1.5)
	end
	
	if getbaseinfo(gongjizhe,-1) and getjob(gongjizhe) == 0 then
		local bili = getbaseinfo(actor,51,210) --��ս������ֱ�
		if bili > 0 then
			hp = math.floor(hp * (1 - bili/10000))
		end
	end
	if getbaseinfo(gongjizhe,-1) and getjob(gongjizhe) == 1 then
		local bili = getbaseinfo(actor,51,211) --�ܷ�������ֱ�
		if bili > 0 then
			hp = math.floor(hp * (1 - bili/10000))
		end
	end
	if getbaseinfo(gongjizhe,-1) and getjob(gongjizhe) == 2 then
		local bili = getbaseinfo(actor,51,212) --�ܵ�������ֱ�
		if bili > 0 then
			hp = math.floor(hp * (1 - bili/10000))
		end
	end
	
	
	if skillid ~= getskillidbyname("��ɱ����") and callcheckscriptex(actor,"CheckHumanState",1) and getskillinfo(actor,getskillidbyname("ħ����"),1) == 4 then
		hp = math.floor(hp*1.1/1.36)
		--sendmsg6(actor,"4���ܴ����"..hp)
	end
	----�޻�buff����
	local sh_data = getshouhunbuffdata(actor) --��ȡ�޻�buff����
	for i = 1,#sh_data do
		if sh_data[i] == "�����" and not getbaseinfo(gongjizhe,-1) then --�ִ���
			if math.random(1,100) <= 3 then
				--sendmsg6(shoujizhe,"�����꼼��������������ܱ����˺�")
				return 0
			end
		end
		
		if sh_data[i] == "��������" then 
			if  getbaseinfo(shoujizhe,9)/getbaseinfo(shoujizhe,10) < 0.3 and math.random(1,100) <= 10 then
				--sendmsg6(shoujizhe,"�����꼼�����������������ܱ����˺�")
				return 0
			end
		end
		
		if sh_data[i] ~= "" and shouhun_shoujicl[sh_data[i]] then
			hp = hp + shouhun_shoujicl[sh_data[i]](gongjizhe,shoujizhe,hp,skillid)
		end
	end
	----�޻�buff�������
	
	----��������buff����----------------------------------------------------------------------------
	----��������buff����----------------------------------------------------------------------------
	----��������buff����----------------------------------------------------------------------------
	if getint(actor,"��������2���") == 23 then --��ʦ����ħ��������������˺�����30%
		if getjob(actor) == 1 then
			if not callcheckscriptex(actor,"checkHumanState",1) then --��ħ����
				hp = math.floor(hp*0.7)
				--sendmsg6(shoujizhe,"��ħ���ܼ���30%")
			end
		end
	end
	
	--[[if getint(actor,"��������3���") == 11 and getbaseinfo(gongjizhe,-1) then --ÿ�����ܵ��Ĺ����˺�����60��(ֻ���ٶ��⸽���Ĺ̶��˺�)
		local shz = getbaseinfo(gongjizhe,51,68) --���˹̶��˺�ֵ
		local del = 60
		if shz < 60 then
			del = shz
		end
		hp = hp - del
	end--]]
	
	if getint(actor,"��������3���") == 43 then
		if hasbuff(actor,10054) or hasbuff(actor,10055) and getbaseinfo(gongjizhe,-1) then
			local shz = getbaseinfo(gongjizhe,51,68) --���˹̶��˺�ֵ
			local del = 50
			if shz < 50 then
				del = shz
			end
			hp = hp - del
		end
	end
	
	if getint(actor,"��������3���") == 15 then --�ܵ���������˺�������������Ѫ��25%
		local maxhp = getbaseinfo(actor,10) --��Ѫ��
		local hp_4fen1 = math.floor(maxhp*0.20)
		if hp > hp_4fen1 and os.time() - getint(actor,"��������3���ʱ��") > 15 then
			--sendmsg6(shoujizhe,"�ܵ���������˺�������������Ѫ��25%")
			hp = hp_4fen1
			setint(actor,"��������3���ʱ��",os.time())
		end
	end
	
	if getint(actor,"��������3���") == 19 then --����Ѫ������40%�����ÿ��2%������ָ�.����10�� CD60��
		if getbaseinfo(actor,9)/getbaseinfo(actor,10) < 0.4 and os.time() - getint(actor,"��������3���19ʱ��") >= 60 then
			setontimer(actor,19,1,10) --1���Ѫ ����10��
			--sendmsg6(shoujizhe,"����Ѫ������40%�����ÿ��2%������ָ�.����10�� CD60��")
			setint(actor,"��������3���19ʱ��",os.time())
		end
	end
	
	if getint(actor,"��������3���") == 22 then --������ʱ,����2%�ĸ��ʸ񵲱��������˺�
		if math.random(1,100) <= 2 then
			--sendmsg6(shoujizhe,"������ʱ,����2%�ĸ��ʸ񵲱��������˺�")
			return 0
		end
	end
	
	if getint(actor,"��������3���") == 23 then --������ʱ,����5%�ĸ��ʸ񵲱��������˺�
		if math.random(1,100) <= 5 then
			--sendmsg6(shoujizhe,"������ʱ,����5%�ĸ��ʸ񵲱��������˺�")
			return 0
		end
	end
	
	if getint(actor,"��������3���") == 38 then --Ѫ������30%,����ö��˶Թֳ�������3��(CD120��)
		if getbaseinfo(actor,9)/getbaseinfo(actor,10) < 0.3 and os.time() - getint(actor,"��������3���38ʱ��") >= 120 then
			changemode(actor,2,3)
			setint(actor,"��������3���38ʱ��",os.time())
			sendmsg9(actor,"��������״̬������3��")
			--sendmsg6(shoujizhe,"Ѫ������30%,����ö��˶Թֳ�������3��(CD120��)")
		end
	end
	
	if getint(actor,"��������3���") == 44 then --ÿ120����һ�λ���,2���������˺���ֱ�ӱ�����(���ɱ���һ�ι�������)
		if os.time() - getint(actor,"��������3���44ʱ��") >= 120 then
			setint(actor,"��������3���44ʱ��",os.time())
			--sendmsg6(shoujizhe,"ÿ120����һ�λ���,2���������˺���ֱ�ӱ�����")
			--changemode(actor, 1, 2) --�޵�2��
			addbuff(actor,20107)
		end
	end
	----��������buff�������----------------------------------------------------------------------------
	----��������buff�������----------------------------------------------------------------------------
	----��������buff�������----------------------------------------------------------------------------
	
	if getbaseinfo(gongjizhe,-1) and skillid == getskillidbyname("ʮ��һɱ") and not hasbuff(actor,10052) then
		local roles = getobjectinmap(getmap(gongjizhe),getx(gongjizhe),gety(gongjizhe),3,1)
		--sendmsg6(gongjizhe,tbl2json(roles))
		if #roles < 3 then
			if math.random(1,100) < 50 and getlevel(actor) < getlevel(gongjizhe) then			
				callscriptex(actor, "SetFeature", 0, 50001,3,0,3)
				callscriptex(actor, "SetFeature", 1, 9999,3,0,3)
				callscriptex(actor, "SetFeature", 2, 9999,3,0,3)
				callscriptex(actor, "SetFeature", 3, 9999,3,0,3)
				makeposion(actor,13,3)
				addbuff(actor,10038,3)
				--sendmsg6(gongjizhe,"�Է�������")
			end
		end
	end
	
	if getbaseinfo(gongjizhe,-1) and skillid == getskillidbyname("��˪Ⱥ��") then
		if math.random(1,100) < 20 and getlevel(actor) <= getlevel(gongjizhe) and not hasbuff(actor,10052) then	
			callscriptex(actor,"ChangeModeEx",11,3,1)	
			--sendmsg6(gongjizhe,"�Է�������")
			addbuff(actor,10040,3)
		end
		local maxhp = getbaseinfo(actor,10)
		local addhp = math.floor(maxhp*0.08) --��Ѫ��
		hp = addhp
	end
	
	--����Ч������
	local hushenhp = getint(actor,"����Ѫ��") --����Ѫ���ٷֱ�
	if hushenhp > 0 then
		local curmp = getbaseinfo(actor,11) --��ǰ����
		local delmp = math.floor(hp * hushenhp/100)
		if delmp > curmp then
			delmp = curmp
		end
		hp = hp - delmp
		if delmp > 0 then
			humanmp(actor,"-",delmp)
		end
		--sendmsg6(actor,"�۳�Ѫ��"..hp.." �۳�����"..delmp)
	end
	--haoshiend(actor)  --��ʱ����
	return hp
end

----������������
function killslave(actor,baobao) --������ ����
	--release_print("������������"..getname(actor),getname(baobao))
	
	local player = getbaseinfo(baobao,59) --����
	if player and getint(player,"��������2���") == 44 then
		mapeffect(44,getmap(baobao),getx(baobao),gety(baobao),121,1,0)
		local players = getobjectinmap(getmap(baobao),getx(baobao),gety(baobao),2,1)
		--release_print("������"..#players)
		for i = 1,#players do
			if player ~= players[i] then
				if ispropertarget(player,players[i]) and not hasbuff(players[i],10052) then --�ɹ�������û������֮��
					local maxhp = getbaseinfo(players[i],10)
					local delhp = math.floor(maxhp*0.15) --��Ѫ��
					humanhp(players[i],"-",delhp,1)
					--sendmsg6(players[i],"��ը�� ��10%��Ѫ")
					sendmsg9(players[i],getname(player).."�ı�������������<font color='#00FF00'>'���ܾ���'</font>���㵱ǰѪ������15%")
					
				end
			end
		end
	end
	
	if getname(baobao) == "��������" then
		callscriptex(actor, "RECALLMOB", "��������", 0,200,0)
		darttime(actor,30*60,1)
		local bb_list = getbaobaolist(actor)
		for i = 1,#bb_list do
			if getname(bb_list[i]) == "��������" then		 	
				makeposion(bb_list[i],5,170)
				setcurrent(bb_list[i],0,tostring(os.time())) --��ʶ����ʱ��
				callscriptex(actor, "MoveMonToPos", "��������", getmap(bb_list[i]), getx(bb_list[i]), gety(bb_list[i]), 75, 47)		
			end
		end
		sendtopchatboardmsg(actor,0,251,0,180,"Ư����<��������/FCOLOR=249>����<����ɽׯ/FCOLOR=250>��ԡ���£�%d���ɿ�ʼ������..........",1)
		sendmsg(nil, 2, '{"Msg":"�����<��'.. getname(actor) ..'��/FCOLOR=249>��������ֺú���ɱ��<��������/FCOLOR=250>����˹���Ȩ���������˽�����ʼ�㸴�<180��/FCOLOR=253>��ɻ���.....","FColor":161,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"200"}')
		sendmsg(nil, 2, '{"Msg":"�����<��'.. getname(actor) ..'��/FCOLOR=249>��������ֺú���ɱ��<��������/FCOLOR=250>����˹���Ȩ���������˽�����ʼ�㸴�<180��/FCOLOR=253>��ɻ���.....","FColor":161,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"250"}')
		sendmsg(nil, 2, '{"Msg":"�����<��'.. getname(actor) ..'��/FCOLOR=249>��������ֺú���ɱ��<��������/FCOLOR=250>����˹���Ȩ���������˽�����ʼ�㸴�<180��/FCOLOR=253>��ɻ���.....","FColor":161,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"300"}')
		
	end
end
--����֮�۵�ͼ��ʱ��
function ditudingshiqi(mapobj,actor,id,mapid,x,y)
	--haoshistart(actor)
	id = tonumber(id)
	x = tonumber(x)
	y = tonumber(y)
	--sendmsg0(0,"�ĸ�����ͷŵ�"..getname(actor).."��ʱ��id"..id.."��ͼid"..mapid.."����x"..x.."����y"..y)
	--sendmsg0(0,"�����Ƿ����"..tostring(isnotnull(actor)))
	local sec = getsysint("��ʱ��"..id.."ʱ��")
	if sec >= 10 or not isnotnull(actor) then
		local id_t = {}
		local id_tstr = getsysstr("����֮�۶�ʱ��id��")
		if id_tstr ~= "" then
			id_t = json2tbl(id_tstr)
		end
		id_t[tostring(id)] = nil
		setsysstr("����֮�۶�ʱ��id��",tbl2json(id_t))
		setenvirofftimer(mapid,id)
		return
	end
	setsysint("��ʱ��"..id.."ʱ��",sec+1)
	
	local players = getobjectinmap(mapid,x,y,3,1)
	for i = 1,#players do
		if ispropertarget(actor,players[i]) and not hasbuff(players[i],10052) then --���Թ���
			if getint(players[i],"����֮�۵�Ѫʱ��") < os.time() then		
				setint(players[i],"����֮�۵�Ѫʱ��",os.time())	
				local maxhp = getbaseinfo(players[i],10)
				local addhp = math.floor(maxhp*0.03) --��Ѫ��
				humanhp(players[i],"-",addhp,1000)
				--sendmsg6(players[i],"������Ѫ2% ")
			end
		end
	end
	
	--��ȡ��ͼ��ָ����Χ�ڵĶ���
	--haoshiend(actor)
	--setenvirofftimer("3",1)
	--setenvirofftimer("3",2)
end
function xiaochudu(actor)
	detoxifcation(actor,-1)
end
--ʹ�ü���ǰ����
function beginmagic(actor,skillid,skillname,TargetActor,x,y) --������� ����ID �������� ���ѡ������п��ܿ� 	���X  	���Y
	--sendmsg6(actor,"����"..skillname.."  Ŀ��"..tostring(TargetActor).. "  ���X"..tostring(x).. "  ���Y"..tostring(y))
	if (getname(TargetActor) == "��������" or getname(TargetActor) == "ɽׯ����") and not getbaseinfo(TargetActor,-1) then
		if getbaseinfo(actor,36) == "" then
			sendmsg9(actor,"���л��޷��Դ�Ŀ��ʩ��")
			return false
		end
	end
	
	if skillname == "�ջ�֮��" and TargetActor ~= "0" and not getbaseinfo(TargetActor,-1) and getname(TargetActor) == "����" then
		if getlevel(actor) < 46 then
			sendmsg9(actor,"�ջ�����ȼ��ﵽ46��")
			return false
		end
	end

	if skillname == "�ջ�֮��" and TargetActor ~= "0" and not getbaseinfo(TargetActor,-1) and ( getname(TargetActor) == "����ׯ��" or getname(TargetActor) == "�̹Ŵ��" ) then
		sendmsg9(actor,"Ŀ���ֹ�ջ�")
		return false
	end
	if skillname == "ʩ����" and TargetActor ~= "0" and getbaseinfo(TargetActor,-1) and hasbuff(TargetActor,10052) then
		sendmsg9(actor,"Ŀ�괦������֮��״̬�У���ֹʩ��")
		return false
	end
	if skillname == "����֮��" then
		if os.time() - getint(actor,"����֮��CD") < 150 then
			local str = "����".. 150 - (os.time() - getint(actor,"����֮��CD")) .."������ͷ�����֮��"
			sendmsg(actor,1,'{"Msg":"'..str..'","FColor":255,"BColor":56,"Type":1,"Time":3}')
			return false
		end
		local jichutime = 15
		local addtime = 0
		if getint(actor,"��������3���") == 29 then
			addtime = 5
		elseif getint(actor,"��������3���") == 45 then
			addtime = 12
		end
		addbuff(actor,10052,jichutime+addtime) --����֮��buff
		callscriptex(actor, "SHOWPHANTOM", 100, jichutime+addtime)
		detoxifcation(actor,-1)
		delaygoto(actor,1000,"@xiaochudu")
		sendmsg6(actor,"�ͷ�����֮���ɹ�������ʱ��"..jichutime+addtime.."��")
		setint(actor,"����֮��CD",os.time())
	end
	if skillname == "����֮��" then
		local id_t = {}
		local id_tstr = getsysstr("����֮�۶�ʱ��id��")
		if id_tstr ~= "" then
			id_t = json2tbl(id_tstr)
		end
		local id = 1
		for i = 1,1000 do
			local sijiid = math.random(1,100000)
			if id_t[tostring(sijiid)] == nil then
				id = sijiid
				id_t[tostring(sijiid)] = 1
				break
			end
		end
		setsysstr("����֮�۶�ʱ��id��",tbl2json(id_t))
		setsysint("��ʱ��"..id.."ʱ��",0)
		setenvirontimer(getmap(actor),id,1,"ditudingshiqi,"..actor..","..id..","..getmap(actor)..","..x..","..y)
	end
	
	--[[if skillid == 28 and getint(actor,"��������2���") == 45 then
		local curtime = os.time()
		local sctime = getint(actor,"��������ʾʱ��")
		local chazhi = curtime - sctime
		if chazhi < 60 then
			sendmsg6(actor,"cdʱ�仹��".. 60 - chazhi.."��")
			return false
		end
		if TargetActor ~= "0" and not getbaseinfo(TargetActor,-1) and getlevel(actor) > getlevel(TargetActor) then
			--sendmsg6(actor,"��������")
			callscriptex(actor, "MoveMonToPos", getbaseinfo(TargetActor,1,1),getmap(TargetActor),getx(TargetActor),gety(TargetActor),getx(actor),gety(actor))
			setint(actor,"��������ʾʱ��",curtime)
		else
			return false
		end
	end--]]

	
	
	if getint(actor,"��������2���") == 37 and skillid == 2 then --������
		local curtime = os.time()
		local sctime = getint(actor,"��������ʱ��")
		local chazhi = curtime - sctime
		if chazhi < 60 then
			sendmsg6(actor,"cdʱ�仹��".. 60 - chazhi.."��")
			return false
		end
		setint(actor,"��������ʱ��",curtime)
	end
	
	
	if skillname == "�ջ�֮��" and TargetActor ~= "0" and not getbaseinfo(TargetActor,-1) and getint(actor,"��������2���") == 24 then --ʹ���ջ�֮��ɽ����ﱦ���ջ�20s�޷�����(���жϵȼ�)
		if getbaseinfo(TargetActor,59) ~= "0" then
			makeposion(TargetActor,5,30)
			--sendmsg6(actor,"��ס60��")
		end
	end
	local duimian = getoppositeobj(actor)
	if skillname == "Ұ����ײ" and duimian ~= "0" and getbaseinfo(duimian,-1) then
		
		if not ispropertarget(actor,duimian) then
			return false
		end
		
		if hasbuff(duimian,20088) then
			--sendmsg9(actor,"�Է�3���ڽ�ֹ��Ұ��")
			return false
		end
		local fangxiang_t = {[0]={0,-2},[1]={2,-2},[2]={2,0},[3]={2,2},[4]={0,2},[5]={-2,2},[6]={-2,0},[7]={-2,-2}}
		local fangxiang_t1 = {[0]={0,-3},[1]={3,-3},[2]={3,0},[3]={3,3},[4]={0,3},[5]={-3,3},[6]={-3,0},[7]={-3,-3}}
		local fangxiang = tonumber(getconst(actor,"<$DIR>")) --��ǰ���� (��0 ����1 ��2 ����3 ��4 ����5 ��6 ����7)
		local x = getx(actor)
		local y = gety(actor)
		if getlevel(duimian) > getlevel(actor) then
			--sendmsg6(actor,"�ȼ����ڶԷ� Ұ��ʧ��")
			return false
		end
		
		local player_t = getobjectinmap(getmap(actor),x+fangxiang_t[fangxiang][1],y+fangxiang_t[fangxiang][2],0,1) --����б�
		if #player_t > 0 then --�����
			if getlevel(player_t[1]) == getlevel(actor) then
				if getint(actor,"��������2���") ~= 28 or hasbuff(player_t[1],10052) then
					--sendmsg6(actor,"ͬ�ȼ���û��28��� Ұ��ʧ��")
					sendmsg(actor,1,'{"Msg":"ϵͳ����ײ������","FColor":255,"BColor":56,"Type":1,"Time":5}')
					return false
				end
			end
		end
		player_t = getobjectinmap(getmap(actor),x+fangxiang_t1[fangxiang][1],y+fangxiang_t1[fangxiang][2],0,1) --����б�
		if #player_t > 0 then --�����
			if getlevel(player_t[1]) == getlevel(actor) then
				if getint(actor,"��������2���") ~= 28 or hasbuff(player_t[1],10052) then
					--sendmsg6(actor,"ͬ�ȼ���û��28��� Ұ��ʧ��")
					sendmsg(actor,1,'{"Msg":"ϵͳ����ײ������","FColor":255,"BColor":56,"Type":1,"Time":5}')
					return false
				end
			end
		end
		
		if getlevel(duimian) == getlevel(actor) then
			if getint(actor,"��������2���") ~= 28 or hasbuff(duimian,10052) then
				--sendmsg6(actor,"ͬ�ȼ���û��28��� Ұ��ʧ��")
				sendmsg(actor,1,'{"Msg":"��ײ������","FColor":255,"BColor":56,"Type":1,"Time":5}')
				return false
			end
		end
		
		
		
		if getint(actor,"��������2���") == 29 and not hasbuff(duimian,10052) then --�з���Լ��ʵ� �����
			
			
			if isemptyinmap(getmap(actor),x+fangxiang_t[fangxiang][1],y+fangxiang_t[fangxiang][2]) then
				if getint(shoujizhe,"��������3���") == 35 then
				elseif getint(duimian,"��������3���") == 5 then
					if math.random(1,100) < 50 then
						makeposion(duimian,5,3)
						sendmsg9(duimian,"���ܵ���".. getname(actor) .."��'���ֱײ'�����3��")
					end
				else
					makeposion(duimian,5,3)
					sendmsg9(duimian,"���ܵ���".. getname(actor) .."��'���ֱײ'�����3��")
				end		
			end
		end
		
		if getint(actor,"��������2���") == 35 and getbaseinfo(duimian,-1) and not hasbuff(duimian,10052) then
			if isemptyinmap(getmap(actor),x+fangxiang_t[fangxiang][1],y+fangxiang_t[fangxiang][2]) then
				local maxhp = getbaseinfo(duimian,10)
				local delhp = math.floor(maxhp*0.1) --��Ѫ��
				humanhp(duimian,"-",delhp,1)
			--sendmsg6(actor,"Ұ����ײʹ��ײĿ����ʧ10%��Ѫ��")
			end
		end
		if getint(actor,"��������2���") == 28 then
			if not hasbuff(actor,20088) then
				addbuff(actor,20088)
			end
		end
		local sh_data = getshouhunbuffdata(actor) --��ȡ�޻�buff����
		for i = 1,#sh_data do
			if sh_data[i] == "���аԵ�" then
				--sendmsg0(0,"���аԵ�����"..getname(duimian)) 
				if isemptyinmap(getmap(actor),x+fangxiang_t[fangxiang][1],y+fangxiang_t[fangxiang][2]) and not hasbuff(duimian,20076) and not hasbuff(duimian,10052) then
					if not hasbuff(duimian,20102) then
						addbuff(duimian,20102)
						--sendmsg0(0,"5���ֹ��ҩ���"..getname(duimian))
						sendmsg9(duimian,"���ܵ���".. getname(actor) .."��'���аԵ�'��ֹʹ������ҩƷ5��")
					end
				end
			end
		end

	end
	
	return true
end


--��������ǰ����
function attackdamagebb(actor,shoujizhe,gongjizhe,skillid,hp)
	if not getbaseinfo(shoujizhe,-1) and getbaseinfo(shoujizhe,59) == "0" and castleinfo(5) and  not gongshakedaguai[getmap(actor)]  then --���
		mapmove(actor,"0",289,617,10)
		messagebox(actor,"�����ڼ䲿�ֵ�ͼ��ֹ���")
		return 0
	end
	
	--sendmsg6(actor,"�ı�ǰ�˺�"..hp)
	local bbsh = getbaseinfo(actor,51,204) --�����˺��ӳ�
	if bbsh > 0 then
		hp = math.floor(hp*(1+bbsh/10000))
	end
	
	if getint(actor,"��������2���") == 15 then
		hp = math.floor(hp*(1+getint(actor,"��������2ֵ")/100))
	end
	if getint(actor,"��������2���") == 41 then
		hp = math.floor(hp*1.3)
	end
	
	if getbaseinfo(shoujizhe,-1) then --����������
		if getint(shoujizhe,"��������3���") == 8 and not hasbuff(actor,10052) then
			humanhp(actor,"-",math.floor(hp*0.3),100)
		end
		if getint(shoujizhe,"��������3���") == 9 and not hasbuff(actor,10052) then
			humanhp(actor,"-",math.floor(hp*0.6),100)
		end
	end
	--sendmsg6(actor,"����4������ǰ"..hp)
	if getskilllevel(actor,getskillidbyname("�ٻ�����")) == 4 then
		local minf = getbaseinfo(shoujizhe,15) --��������
		local maxf = getbaseinfo(shoujizhe,16) --��������
		--sendmsg6(actor,"�� "..maxf)
		local fang = math.floor(math.random(minf,maxf)/2) --��
		hp = hp + fang
		hp = math.floor(hp*1.1)
	end
	if getbaseinfo(shoujizhe,-1) and getjob(shoujizhe) == 1 then
		hp = math.floor(hp*0.5)
	end
	
	--sendmsg6(actor,"�ı���˺�"..hp)
	return hp
end

function getshouhunbuffdata(actor) --��ȡ�޻�buff����
	local data = {"","","","","",""}
	local sh_str = getstr(actor,"�޻�buff����")
	if sh_str ~= "" then
		data=json2tbl(sh_str)
	end
	return data
end

--��ֵ����
function recharge(actor,money,chanpinid,moneyid,zj) --�������Ʒid������id ��仹�Ǽٳ�
	money = tonumber(money)
	chanpinid = tonumber(chanpinid)
	moneyid = tonumber(moneyid)
	--release_print(actor,"��ֵ���� ������".. money .. "��ƷID��"..chanpinid.."����ID��".. moneyid)
	--sendmsg6(actor,"��ֵ���� ������".. money .. "��ƷID��"..chanpinid.."����ID��".. moneyid)
	if moneyid == 12 and money == 28 then
		richong_giveitem(actor)
		setdayint(actor,"�ճ�",1)
		setint(actor,"�ճ����",getint(actor,"�ճ����")+1)
	else
		local ewyb = 0
		if money >= 10000 then
			ewyb = money*100*0.3
		elseif money >= 5000 then
			ewyb = money*100*0.2
		elseif money >= 1000 then
			ewyb = money*100*0.1
		end
		if ewyb > 0 then
			addingot(actor,ewyb)
		end
		setint(actor,"�ۼƳ�ֵ",getint(actor,"�ۼƳ�ֵ") + money )
		setdayint(actor,"���ճ�ֵ",getdayint(actor,"���ճ�ֵ") + money )
		sendmsg0(actor,"ϵͳ����ҡ�".. getname(actor) .."����ֵ��".. money*100+ewyb .."Ԫ����")
		chongzhijiemian(actor)
		if moneyid == 10 then
			setsysint("��̨��ֵԪ��",getsysint("��̨��ֵԪ��")+money*100+ewyb)
			setsysint("ÿ�պ�̨��ֵԪ��",getsysint("ÿ�պ�̨��ֵԪ��")+money*100+ewyb)
		else
			setsysint("��ʵ��ֵԪ��",getsysint("��ʵ��ֵԪ��")+money*100+ewyb)
			setsysint("ÿ����ʵ��ֵԪ��",getsysint("ÿ����ʵ��ֵԪ��")+money*100+ewyb)
		end
	end
	--[[if getdayint(actor,"���ճ�ֵ") >= 10 and getdayint(actor,"�ճ�����������") == 0 then
		setint(actor,"�ճ�����",getint(actor,"�ճ�����")%7 + 1)
		setdayint(actor,"�ճ�����������",1)
		setint(actor,"����ֵ����",math.ceil(os.time()/86400))
	end--]]
	if moneyid == 12 then
		changemoney(actor,12,"=",0,"�����ճ����",true)
	end
end


function moneychange2(actor) --Ԫ���ı�
	bagxianshi(actor)
	if getingot(actor) >= 100000 then
		if not checktitle(actor,"���˵�ͷ") then --û�гƺ�
			confertitle(actor, "���˵�ͷ")
		end
	else
		if checktitle(actor,"���˵�ͷ") then --�гƺ�
			deprivetitle(actor, "���˵�ͷ")
		end
	end
end
function moneychange7(actor) --��Ҹı�
	bagxianshi(actor)
	changemoney(actor,1,"=",getgold(actor),"��Ҹı�",true)
end
function moneychange8(actor) --�󶨽�Ҹı�
	bagxianshi(actor)
	changemoney(actor,3,"=",getbindjinbi(actor),"�󶨽�Ҹı�",true)
end

--��װ������
function takeonex(actor,item,weizhi,iname,weiyiid)
	--sendmsg6(actor,"��װ������")
	callscriptex(actor, "CallLua", "zhuangbeishengxing", "@shengxing_sz") --������������
	callscriptex(actor, "CallLua", "zhuangbeikaifeng", "@kaifeng_sz") --���ÿ�������
	callscriptex(actor, "CallLua", "zhuangbeitansuo", "@setjineng") --����װ��̽�����ܵȼ�
	if weizhi == 15 then
		callscriptex(actor, "CallLua", "wumuyishu", "@setbuff") --������������buff
	end
	if weizhi == 1 or weizhi == 3 then
		xingyunwuqi(actor)
		callscriptex(actor, "CallLua", "wuqishengji", "@setcuilianzhishuxing") --���ô���ֵ����
	end
	if weizhi == 16 then
		setjiuhulubuff(actor)--���þƺ�«buff
		--callscriptex(actor, "CallLua", "UseItem", "@setjiuhulubuff") --���þƺ�«buff
	end
	setfuhuocd(actor) --���ø����
	setbbsudu(actor) --���ñ����ٶ�
end
--��װ������
function takeoffex(actor,item,weizhi,iname,weiyiid)
	--sendmsg6(actor,"��װ������")
	callscriptex(actor, "CallLua", "zhuangbeishengxing", "@shengxing_sz") --������������
	callscriptex(actor, "CallLua", "zhuangbeikaifeng", "@kaifeng_sz") --���ÿ�������
	callscriptex(actor, "CallLua", "zhuangbeitansuo", "@setjineng") --����װ��̽�����ܵȼ�
	if weizhi == 15 then
		callscriptex(actor, "CallLua", "wumuyishu", "@setbuff") --������������buff
	end
	if weizhi == 1 or weizhi == 3 then
		xingyunwuqi(actor)
		callscriptex(actor, "CallLua", "wuqishengji", "@setcuilianzhishuxing") --���ô���ֵ����
	end
	if weizhi == 16 then
		setjiuhulubuff(actor)--���þƺ�«buff
		--callscriptex(actor, "CallLua", "UseItem", "@setjiuhulubuff") --���þƺ�«buff
	end
	setfuhuocd(actor) --���ø����
	setbbsudu(actor) --���ñ����ٶ�
end

local fuhuo_zb = 	{["���������"]=1,["����������"]=1,["��������ѥ"]=1,["���������"]=1,["���������"]=1,["����������"]=1}
local hushen_zb = 	{["��ħ���ѽ�"]=1,["��ħ������"]=1,["��ħ����ѥ"]=1,["��ħ���Ѵ�"]=1,["��ħ���ѿ�"]=1,["��ħ������"]=1}
local fuhuo_zbwz = {"3","4","5","6","7","8","10","11"}
function setfuhuocd(actor)
	local fuhuosl = 0 --������װ����
	local hushensl = 0 --������װ����
	for i = 1,#fuhuo_zbwz do
		local item = linkbodyitem(actor,fuhuo_zbwz[i])
		if item ~= "0" then
			local name = getitemname(actor,item)
			if fuhuo_zb[name] then
				fuhuosl = fuhuosl + 1
			end
			if hushen_zb[name] then
				hushensl = hushensl + 1
			end
		end
	end
	--sendmsg6(actor,"������װ����"..fuhuosl.."  ������װ����"..hushensl)
	if fuhuosl >= 4 then
		setint(actor,"�����",100)
		setint(actor,"����Ѫ��",60)
		setint(actor,"����CD",180)
	elseif fuhuosl >= 3 then
		setint(actor,"�����",100)
		setint(actor,"����Ѫ��",30)
		setint(actor,"����CD",240)
	elseif fuhuosl >= 2 then
		setint(actor,"�����",50)
		setint(actor,"����Ѫ��",30)
		setint(actor,"����CD",300)
	else
		setint(actor,"�����",0)
		setint(actor,"����Ѫ��",0)
		setint(actor,"����CD",0)
	end
	if hushensl >= 4 then
		setint(actor,"����Ѫ��",50)
	elseif hushensl >= 3 then
		setint(actor,"����Ѫ��",30)
	elseif hushensl >= 2 then
		setint(actor,"����Ѫ��",10)
	else
		setint(actor,"����Ѫ��",0)
	end
	
end
--����ǰ�����
function nextdie(actor)
	local fuhuojilv = getint(actor,"�����")
	local fuhuotime = getint(actor,"����ʱ��")
	local fuhuocd = getint(actor,"����CD")
	if os.time() - fuhuotime >= fuhuocd and math.random(1,100) <= fuhuojilv then
		realive(actor)
		local fuhuoHP =  math.floor(getbaseinfo(actor,10) * getint(actor,"����Ѫ��")/100)
		setbaseinfo(actor,9, fuhuoHP)
		healthspellchanged(actor)
		sendmsg6(actor,"������Ч")
		setint(actor,"����ʱ��",os.time())
	end
end


----���߹һ�
function playoffline(actor)
	setint(actor,"����ʱ��",os.time())
	setofftimer(actor,1) --�Ƴ���ʱ��
	setofftimer(actor,10) --�Ƴ���������Ķ�ʱ��
	setofftimer(actor,11) --�Ƴ�������ⶨʱ��
	if getconst(actor,"<$SERVERNAME>") ~= "" and getmap(actor) == "3" and getbaseinfo(actor,48) and getlevel(actor) >= 30 then --�����ǰ�ȫ��
		--sendmsg0(0,"���߹һ�")
		local players = getobjectinmap(3,330,330,9,1) --��ȡ����б�
		if #players < 100 then
			callscriptex(actor, "KILLSLAVE")
			callscriptex(actor,"OFFLINEPLAY",999999)
			return false
		end
	end
	return true
end

--С�˴���
function playreconnection(actor)
	setint(actor,"����ʱ��",os.time())
	setofftimer(actor,1) --�Ƴ���ʱ��
	setofftimer(actor,10) --�Ƴ���������Ķ�ʱ��
	return true
end


local jianding_t = {
	--ս��
	["ս��ͷ��"]=5,["ս������"]=5,["ս������"]=5,["ս���ָ"]=5,["ս������"]=5,["ս��ʥѥ"]=5,["ʥħͷ��"]=5,["ʥħ����"]=5,["ʥħ����"]=5,["ʥħ��ָ"]=5,["ʥħ����"]=5,
	["ʥħ��ѥ"]=5,["���ͷ��"]=5,["�������"]=5,["�������"]=5,["����ָ"]=5,["�������"]=5,["����ѥ"]=5,["����ս��(��)"]=10,["����ս��(Ů)"]=10,["ŭ��ħ��(��)"]=10,["ŭ��ħ��(Ů)"]=10,
	["�������(��)"]=10,["�������(Ů)"]=10,
	--��ս
	["����ս��"]=30,["����ս��"]=30,["��սͷ��"]=15,["��ս����"]=15,["��ս����"]=15,["��ս��ָ"]=15,["��ս����"]=15,["��սʥѥ"]=15,["��ħ����"]=30,["��ħ����"]=30,["����ͷ��"]=15,
	["��������"]=15,["��������"]=15,["������ָ"]=15,["��������"]=15,["������ѥ"]=15,["������"]=30,["�����"]=30,["̫��ͷ��"]=15,["̫������"]=15,["̫������"]=15, ["̫����ָ"]=15, 
	["̫������"]=15,["̫����ѥ"]=15,
	--����
	["ʥ��ս��"]=60,["ʥ��ս��"]=60,["����ս��"]=30,["��������"]=30,["��������"]=30,["������ָ"]=30,["��������"]=30,["����սѥ"]=30,["ħ������"]=60,["ħ������"]=60,["����ħ��"]=30,
	["��������"]=30,["��������"]=30,["���׽�ָ"]=30,["��������"]=30,["����ħѥ"]=30,["��������"]=60,["��������"]=60,["�������"]=30,["��������"]=30,["��������"]=30, ["�����ָ"]=30, 
	["��������"]=30,["�����ѥ"]=30,
	--����
	["��Ұս��"]=100,["��Ұս��"]=100,["���졩ʥ��"]=50,["���졩ʥ��"]=50,["���졩ʥ��"]=50,["���졩ʥ��"]=50,["���졩ʥ��"]=50,["���졩ʥѥ"]=50,["���֮��"]=100,["���֮��"]=100,
	["���졩ħ��"]=50,["���졩ħ��"]=50,["���졩ħ��"]=50,["���졩ħ��"]=50,["���졩ħ��"]=50,["���졩ħѥ"]=50,["��ʹ֮��"]=100,["��ʹ֮��"]=100,["���졩����"]=50,["���졩����"]=50,
	["���졩����"]=50, ["���졩����"]=50, ["���졩����"]=50,["���졩��ѥ"]=50,
	--��Ӱ
	["����(��)"]=100,["����(Ů)"]=100,["��Ӱ��ʥ��"]=80,["��Ӱ��ʥ��"]=80,["��Ӱ��ʥ��"]=80,["��Ӱ��ʥ��"]=80,["��Ӱ��ʥ��"]=80,["��Ӱ��ʥѥ"]=80,["ڤ��(��)"]=100,
	["ڤ��(Ů)"]=100,["�����ħ��"]=80,["�����ħ��"]=80,["�����ħ��"]=80,["�����ħ��"]=80,["�����ħ��"]=80,["�����ħѥ"]=80,["�췣(��)"]=100,["�췣(Ů)"]=100,
	["Զ�š����"]=80,["Զ�š����"]=80,["Զ�š����"]=80,["Զ�š����"]=80,["Զ�š����"]=80,["Զ�š��ѥ"]=80,
	--����
	["������׶�ļ�"]=100,["������׶����"]=100,["������׶�Ŀ�"]=100,["������׶����"]=100,["������׶����"]=100,["������׶�Ľ�"]=100,["������׶�Ĵ�"]=100,["������׶��ѥ"]=100,
	["������ŭ���"]=100,["������ŭ����"]=100,["������ŭ���"]=100,["������ŭ����"]=100,["������ŭ����"]=100,["������ŭ���"]=100,["������ŭ���"]=100,["������ŭ��ѥ"]=100,
	["��Լ���񷣼�"]=100,["��Լ������"]=100,["��Լ���񷣿�"]=100,["��Լ������"]=100,["��Լ������"]=100,["��Լ���񷣽�"]=100,["��Լ���񷣴�"]=100,["��Լ����ѥ"]=100,
	--������
	["�����ޤ����"]=100,["�����ޤ�����"]=100,["�����ޤ����"]=100,["�����ޤ�����"]=100,["�����ޤ�����"]=100,["�����ޤ����"]=100,["�����ޤ����"]=100,["�����ޤ���ѥ"]=100,
	["����������"]=100,["�����������"]=100,["����������"]=100,["�����������"]=100,["�����������"]=100,["����������"]=100,["����������"]=100,["���������ѥ"]=100,
	["��¥�ޤ����"]=100,["��¥�ޤ�����"]=100,["��¥�ޤ����"]=100,["��¥�ޤ�����"]=100,["��¥�ޤ�����"]=100,["��¥�ޤ����"]=100,["��¥�ޤ����"]=100,["��¥�ޤ���ѥ"]=100,
	--����
	["��ħ��ָ"]=5,["��ħ����"]=5,["��ħ����"]=5,["��Ѫ��ָ"]=30,["��Ѫ����"]=30,["��Ѫ����"]=30,["ŭѪ��ָ"]=30,["ŭѪ����"]=30,["ŭѪ����"]=30,["�ػ�ͷ��"]=15,["�ػ�ѥ��"]=15,
	["�ػ�����"]=15,["��̵���������"]=15,["1.1��������"]=5,["1.2��������"]=50,["�Ƽ�ָ��"]=15,["��Ұ��"]=30,["����ͷ��"]=5,["��������"]=5,["����ѥ��"]=5,
	["�ϵ�֮��"]=5,["����֮��"]=50,["�����ָ"]=5,["��Ԩ��ָ"]=15,["�������"]=5,["����ָ"]=5,["��ɫ��������"]=5,
	["��а����"]=5,["�������"]=5,["���ն�����"]=5,["�����ָ"]=5,["����ͷ��"]=5,["��������"]=5,["���ؽ�ָ"]=5,["��������"]=5,["��������"]=5,
	["��ħ����"]=5,["��������"]=5,["������ħ��"]=30,
	
}

local diaoluoceshi = {
["��֮ʥ����"]="ǿ��ϵ��",
["��֮��������"]="ǿ��ϵ��",
["��֮��������"]="ǿ��ϵ��",
["��֮����ս��"]="ǿ��ϵ��",
["��֮��������"]="ǿ��ϵ��",
["��֮����սѥ"]="ǿ��ϵ��",
["��֮ħ����"]="ǿ��ϵ��",
["��֮��������"]="ǿ��ϵ��",
["��֮���滤��"]="ǿ��ϵ��",
["��֮����ħ��"]="ǿ��ϵ��",
["��֮����ħѥ"]="ǿ��ϵ��",
["��֮��������"]="ǿ��ϵ��",
["��֮������"]="ǿ��ϵ��",
["��֮��â����"]="ǿ��ϵ��",
["��֮��â����"]="ǿ��ϵ��",
["��֮��â����"]="ǿ��ϵ��",
["��֮��â��ѥ"]="ǿ��ϵ��",
["��֮��â����"]="ǿ��ϵ��",

["����"]="���������·�ϵ��",
["�Ȼ귨��"]="���������·�ϵ��",
["����֮��"]="���������·�ϵ��",
["����ս��(��)"]="���������·�ϵ��",
["����ս��(Ů)"]="���������·�ϵ��",
["����ħ��(��)"]="���������·�ϵ��",
["����ħ��(Ů)"]="���������·�ϵ��",
["��â����(��)"]="���������·�ϵ��",
["��â����(Ů)"]="���������·�ϵ��",

["ս��ͷ��"]="S1����ϵ��",
["ս������"]="S1����ϵ��",
["ս������"]="S1����ϵ��",
["ս���ָ"]="S1����ϵ��",
["ս������"]="S1����ϵ��",
["ս��ʥѥ"]="S1����ϵ��",
["ʥħͷ��"]="S1����ϵ��",
["ʥħ����"]="S1����ϵ��",
["ʥħ����"]="S1����ϵ��",
["ʥħ��ָ"]="S1����ϵ��",
["ʥħ����"]="S1����ϵ��",
["ʥħ��ѥ"]="S1����ϵ��",
["���ͷ��"]="S1����ϵ��",
["�������"]="S1����ϵ��",
["�������"]="S1����ϵ��",
["����ָ"]="S1����ϵ��",
["�������"]="S1����ϵ��",
["����ѥ"]="S1����ϵ��",

["��ħ��ָ"]="S1����ϵ��",
["��ħ����"]="S1����ϵ��",
["��ħ����"]="S1����ϵ��",
["1.1��������"]="S1����ϵ��",
["����ͷ��"]="S1����ϵ��",
["��������"]="S1����ϵ��",
["����ѥ��"]="S1����ϵ��",
["�ϵ�֮��"]="S1����ϵ��",
["�����ָ"]="S1����ϵ��",
["�������"]="S1����ϵ��",
["����ָ"]="S1����ϵ��",
["��ɫ��������"]="S1����ϵ��",
["��а����"]="S1����ϵ��",
["�������"]="S1����ϵ��",
["���ն�����"]="S1����ϵ��",
["�����ָ"]="S1����ϵ��",
["��������"]="S1����ϵ��",
["��������"]="S1����ϵ��",
["��ħ����"]="S1����ϵ��",
["��������"]="S1����ϵ��",

["����ս��(��)"]="S1�·�ϵ��",
["����ս��(Ů)"]="S1�·�ϵ��",
["ŭ��ħ��(��)"]="S1�·�ϵ��",
["ŭ��ħ��(Ů)"]="S1�·�ϵ��",
["�������(��)"]="S1�·�ϵ��",
["�������(Ů)"]="S1�·�ϵ��",

["����"]="S1����ϵ��",
["����"]="S1����ϵ��",
["����"]="S1����ϵ��",

["��սͷ��"]="S2ϵ��",
["��ս����"]="S2ϵ��",
["��ս����"]="S2ϵ��",
["��ս��ָ"]="S2ϵ��",
["��ս����"]="S2ϵ��",
["��սʥѥ"]="S2ϵ��",
["����ͷ��"]="S2ϵ��",
["��������"]="S2ϵ��",
["��������"]="S2ϵ��",
["������ָ"]="S2ϵ��",
["��������"]="S2ϵ��",
["������ѥ"]="S2ϵ��",
["̫��ͷ��"]="S2ϵ��",
["̫������"]="S2ϵ��",
["̫������"]="S2ϵ��",
["̫����ָ"]="S2ϵ��",
["̫������"]="S2ϵ��",
["̫����ѥ"]="S2ϵ��",
["��Ԩ��ָ"]="S2����ϵ��",
["�Ƽ�ָ��"]="S2����ϵ��",
["������"]="S2����ϵ��",
["����ָ"]="S2����ϵ��",
["�ػ�ͷ��"]="S2����ϵ��",
["�ػ�ѥ��"]="S2����ϵ��",
["�ػ�����"]="S2����ϵ��",
["��̵���������"]="S2����ϵ��",

["����ս��"]="S2�·�ϵ��",
["����ս��"]="S2�·�ϵ��",
["��ħ����"]="S2�·�ϵ��",
["��ħ����"]="S2�·�ϵ��",
["������"]="S2�·�ϵ��",
["�����"]="S2�·�ϵ��",

["�ϹŹ���"]="S2����ϵ��",
["���֮��"]="S2����ϵ��",
["�����޼�"]="S2����ϵ��",

["����ս��"]="S3ϵ��",
["��������"]="S3ϵ��",
["��������"]="S3ϵ��",
["������ָ"]="S3ϵ��",
["��������"]="S3ϵ��",
["����սѥ"]="S3ϵ��",
["����ħ��"]="S3ϵ��",
["��������"]="S3ϵ��",
["��������"]="S3ϵ��",
["���׽�ָ"]="S3ϵ��",
["��������"]="S3ϵ��",
["����ħѥ"]="S3ϵ��",
["�������"]="S3ϵ��",
["��������"]="S3ϵ��",
["��������"]="S3ϵ��",
["�����ָ"]="S3ϵ��",
["��������"]="S3ϵ��",
["�����ѥ"]="S3ϵ��",
["��Ѫ��ָ"]="S3����ϵ��",
["��Ѫ����"]="S3����ϵ��",
["��Ѫ����"]="S3����ϵ��",
["ŭѪ��ָ"]="S3����ϵ��",
["ŭѪ����"]="S3����ϵ��",
["ŭѪ����"]="S3����ϵ��",
["������ħ��"]="S3����ϵ��",
["��Ұ��"]="S3����ϵ��",
["ף������(��ӡ)"]="S3����ϵ��",

["ʥ��ս��"]="S3�·�ϵ��",
["ʥ��ս��"]="S3�·�ϵ��",
["ħ������"]="S3�·�ϵ��",
["ħ������"]="S3�·�ϵ��",
["��������"]="S3�·�ϵ��",
["��������"]="S3�·�ϵ��",

["����¾"]="S3����ϵ��",
["���鷨��"]="S3����ϵ��",
["������"]="S3����ϵ��",

["���졩ʥ��"]="S4ϵ��",
["���졩ʥ��"]="S4ϵ��",
["���졩ʥ��"]="S4ϵ��",
["���졩ʥ��"]="S4ϵ��",
["���졩ʥ��"]="S4ϵ��",
["���졩ʥѥ"]="S4ϵ��",
["���졩ħ��"]="S4ϵ��",
["���졩ħ��"]="S4ϵ��",
["���졩ħ��"]="S4ϵ��",
["���졩ħ��"]="S4ϵ��",
["���졩ħ��"]="S4ϵ��",
["���졩ħѥ"]="S4ϵ��",
["���졩����"]="S4ϵ��",
["���졩����"]="S4ϵ��",
["���졩����"]="S4ϵ��",
["���졩����"]="S4ϵ��",
["���졩����"]="S4ϵ��",
["���졩��ѥ"]="S4ϵ��",
["����֮��"]="S4����ϵ��",
["��������(��ӡ)"]="S4����ϵ��",
["�����ָ(��ӡ)"]="S4����ϵ��",
["��ħ֮ѥ(��ӡ)"]="S4����ϵ��",
["��ħ֮��(��ӡ)"]="S4����ϵ��",
["1.2��������"]="S4����ϵ��",

["��Ұս��"]="S4�·�ϵ��",
["��Ұս��"]="S4�·�ϵ��",
["���֮��"]="S4�·�ϵ��",
["���֮��"]="S4�·�ϵ��",
["��ʹ֮��"]="S4�·�ϵ��",
["��ʹ֮��"]="S4�·�ϵ��",

["��Ӱ��ʥ��"]="S5ϵ��",
["��Ӱ��ʥ��"]="S5ϵ��",
["��Ӱ��ʥ��"]="S5ϵ��",
["��Ӱ��ʥ��"]="S5ϵ��",
["��Ӱ��ʥ��"]="S5ϵ��",
["��Ӱ��ʥѥ"]="S5ϵ��",
["�����ħ��"]="S5ϵ��",
["�����ħ��"]="S5ϵ��",
["�����ħ��"]="S5ϵ��",
["�����ħ��"]="S5ϵ��",
["�����ħ��"]="S5ϵ��",
["�����ħѥ"]="S5ϵ��",
["Զ�š����"]="S5ϵ��",
["Զ�š����"]="S5ϵ��",
["Զ�š����"]="S5ϵ��",
["Զ�š����"]="S5ϵ��",
["Զ�š����"]="S5ϵ��",
["Զ�š��ѥ"]="S5ϵ��",

["����(��)"]="S5�·�ϵ��",
["����(Ů)"]="S5�·�ϵ��",
["ڤ��(��)"]="S5�·�ϵ��",
["ڤ��(Ů)"]="S5�·�ϵ��",
["�췣(��)"]="S5�·�ϵ��",
["�췣(Ů)"]="S5�·�ϵ��",

["������׶�Ŀ�"]="S6ϵ��",
["������׶����"]="S6ϵ��",
["������׶����"]="S6ϵ��",
["������׶�Ľ�"]="S6ϵ��",
["������׶�Ĵ�"]="S6ϵ��",
["������׶��ѥ"]="S6ϵ��",
["������ŭ���"]="S6ϵ��",
["������ŭ����"]="S6ϵ��",
["������ŭ����"]="S6ϵ��",
["������ŭ���"]="S6ϵ��",
["������ŭ���"]="S6ϵ��",
["������ŭ��ѥ"]="S6ϵ��",
["��Լ���񷣿�"]="S6ϵ��",
["��Լ������"]="S6ϵ��",
["��Լ������"]="S6ϵ��",
["��Լ���񷣽�"]="S6ϵ��",
["��Լ���񷣴�"]="S6ϵ��",
["��Լ����ѥ"]="S6ϵ��",

["������׶�ļ�"]="S6�·�ϵ��",
["������׶����"]="S6�·�ϵ��",
["������ŭ���"]="S6�·�ϵ��",
["������ŭ����"]="S6�·�ϵ��",
["��Լ���񷣼�"]="S6�·�ϵ��",
["��Լ������"]="S6�·�ϵ��",

["�����ޤ����"]="S7ϵ��",
["�����ޤ�����"]="S7ϵ��",
["�����ޤ�����"]="S7ϵ��",
["�����ޤ����"]="S7ϵ��",
["�����ޤ����"]="S7ϵ��",
["�����ޤ���ѥ"]="S7ϵ��",
["����������"]="S7ϵ��",
["�����������"]="S7ϵ��",
["�����������"]="S7ϵ��",
["����������"]="S7ϵ��",
["����������"]="S7ϵ��",
["���������ѥ"]="S7ϵ��",
["��¥�ޤ����"]="S7ϵ��",
["��¥�ޤ�����"]="S7ϵ��",
["��¥�ޤ�����"]="S7ϵ��",
["��¥�ޤ����"]="S7ϵ��",
["��¥�ޤ����"]="S7ϵ��",
["��¥�ޤ���ѥ"]="S7ϵ��",

["�����ޤ����"]="S7�·�ϵ��",
["�����ޤ�����"]="S7�·�ϵ��",
["����������"]="S7�·�ϵ��",
["�����������"]="S7�·�ϵ��",
["��¥�ޤ����"]="S7�·�ϵ��",
["��¥�ޤ�����"]="S7�·�ϵ��",

["12�����"]="12�����",
["50�����"]="50�����",
["�޻군"]="�޻군",
["��ҳ"]="��ҳ",
["���ʯ"]="���ʯ",
["����֮Ѫ"]="����֮Ѫ",
["����"]="����",
["ׯ������"]="ׯ������",
["�ۺ�֮��"]="�ۺ�֮��",
["������ʯ"]="������ʯ",
["����ˮ��"]="����ˮ��",
["ħ��֮Ѫ"]="ħ��֮Ѫ",
["����ƾ֤"]="����ƾ֤",
["��ˮ����"]="��ˮ����",
}

----����ǰ��ֹ������Ʒ
local hequqianjinzhibao = {
["��Ѫ��ָ"]=1,["��Ѫ����"]=1,["��Ѫ����"]=1,["ŭѪ��ָ"]=1,["ŭѪ����"]=1,["ŭѪ����"]=1,["������ħ��"]=1,["��Ұ��"]=1,["ף������(��ӡ)"]=1,["����֮��"]=1,
["��������(��ӡ)"]=1,["�����ָ(��ӡ)"]=1,["��ħ֮ѥ(��ӡ)"]=1,["��ħ֮��(��ӡ)"]=1,["1.2��������"]=1,

["����¾"]=1,["���鷨��"]=1,["������"]=1,
["��Ұս��"]=1,["��Ұս��"]=1,["���֮��"]=1,["���֮��"]=1,["��ʹ֮��"]=1,["��ʹ֮��"]=1,["����(��)"]=1,["����(Ů)"]=1,["ڤ��(��)"]=1,["ڤ��(Ů)"]=1,["�췣(��)"]=1,["�췣(Ů)"]=1,
["��Ӱ��ʥ��"]=1,["��Ӱ��ʥ��"]=1,["��Ӱ��ʥ��"]=1,["��Ӱ��ʥ��"]=1,["��Ӱ��ʥ��"]=1,["��Ӱ��ʥѥ"]=1,["�����ħ��"]=1,["�����ħ��"]=1,["�����ħ��"]=1,["�����ħ��"]=1,["�����ħ��"]=1,
["�����ħѥ"]=1,["Զ�š����"]=1,["Զ�š����"]=1,["Զ�š����"]=1,["Զ�š����"]=1,["Զ�š����"]=1,["Զ�š��ѥ"]=1,
["���졩ʥ��"]=1,["���졩ʥ��"]=1,["���졩ʥ��"]=1,["���졩ʥ��"]=1,["���졩ʥ��"]=1,["���졩ʥѥ"]=1,["���졩ħ��"]=1,["���졩ħ��"]=1,["���졩ħ��"]=1,["���졩ħ��"]=1,["���졩ħ��"]=1,
["���졩ħѥ"]=1,["���졩����"]=1,["���졩����"]=1,["���졩����"]=1,["���졩����"]=1,["���졩����"]=1,["���졩��ѥ"]=1,

["������׶�ļ�"]=1,["������׶����"]=1,["������ŭ���"]=1,["������ŭ����"]=1,
["��Լ���񷣼�"]=1,["��Լ������"]=1,["������׶�Ŀ�"]=1,["������׶����"]=1,["������׶����"]=1,["������׶�Ľ�"]=1,["������׶�Ĵ�"]=1,["������׶��ѥ"]=1,["������ŭ���"]=1,["������ŭ����"]=1,
["������ŭ����"]=1,["������ŭ���"]=1,["������ŭ���"]=1,["������ŭ��ѥ"]=1,["��Լ���񷣿�"]=1,["��Լ������"]=1,["��Լ������"]=1,["��Լ���񷣽�"]=1,["��Լ���񷣴�"]=1,["��Լ����ѥ"]=1,
["�����ޤ����"]=1,["�����ޤ�����"]=1,["����������"]=1,["�����������"]=1,["��¥�ޤ����"]=1,["��¥�ޤ�����"]=1,["�����ޤ����"]=1,["�����ޤ�����"]=1,["�����ޤ�����"]=1,["�����ޤ����"]=1,
["�����ޤ����"]=1,["�����ޤ���ѥ"]=1,["����������"]=1,["�����������"]=1,["�����������"]=1,["����������"]=1,["����������"]=1,["���������ѥ"]=1,["��¥�ޤ����"]=1,["��¥�ޤ�����"]=1,
["��¥�ޤ�����"]=1,["��¥�ޤ����"]=1,["��¥�ޤ����"]=1,["��¥�ޤ���ѥ"]=1,
}

local erhejinzhibao = {
["��Ұս��"]=1,["��Ұս��"]=1,["���֮��"]=1,["���֮��"]=1,["��ʹ֮��"]=1,["��ʹ֮��"]=1,
["����(��)"]=1,["����(Ů)"]=1,["ڤ��(��)"]=1,["ڤ��(Ů)"]=1,["�췣(��)"]=1,["�췣(Ů)"]=1,
["��Ӱ��ʥ��"]=1,["��Ӱ��ʥ��"]=1,["��Ӱ��ʥ��"]=1,["��Ӱ��ʥ��"]=1,["��Ӱ��ʥ��"]=1,["��Ӱ��ʥѥ"]=1,["�����ħ��"]=1,["�����ħ��"]=1,["�����ħ��"]=1,["�����ħ��"]=1,["�����ħ��"]=1,
["�����ħѥ"]=1,["Զ�š����"]=1,["Զ�š����"]=1,["Զ�š����"]=1,["Զ�š����"]=1,["Զ�š����"]=1,["Զ�š��ѥ"]=1,
["������׶�ļ�"]=1,["������׶����"]=1,["������ŭ���"]=1,["������ŭ����"]=1,["��Լ���񷣼�"]=1,["��Լ������"]=1,
["������׶�Ŀ�"]=1,["������׶����"]=1,["������׶����"]=1,["������׶�Ľ�"]=1,["������׶�Ĵ�"]=1,["������׶��ѥ"]=1,
["������ŭ���"]=1,["������ŭ����"]=1,["������ŭ����"]=1,["������ŭ���"]=1,["������ŭ���"]=1,["������ŭ��ѥ"]=1,
["��Լ���񷣿�"]=1,["��Լ������"]=1,["��Լ������"]=1,["��Լ���񷣽�"]=1,["��Լ���񷣴�"]=1,["��Լ����ѥ"]=1,
["�����ޤ����"]=1,["�����ޤ�����"]=1,["����������"]=1,["�����������"]=1,["��¥�ޤ����"]=1,["��¥�ޤ�����"]=1,
["�����ޤ����"]=1,["�����ޤ�����"]=1,["�����ޤ�����"]=1,["�����ޤ����"]=1,["�����ޤ����"]=1,["�����ޤ���ѥ"]=1,
["����������"]=1,["�����������"]=1,["�����������"]=1,["����������"]=1,["����������"]=1,["���������ѥ"]=1,
["��¥�ޤ����"]=1,["��¥�ޤ�����"]=1,["��¥�ޤ�����"]=1,["��¥�ޤ����"]=1,["��¥�ޤ����"]=1,["��¥�ޤ���ѥ"]=1,
}

local sanhejinzhibao = {
["��Ұս��"]=1,["��Ұս��"]=1,
["����(��)"]=1,["����(Ů)"]=1,["ڤ��(��)"]=1,["ڤ��(Ů)"]=1,["�췣(��)"]=1,["�췣(Ů)"]=1,
["������׶�ļ�"]=1,["������׶����"]=1,["������ŭ���"]=1,["������ŭ����"]=1,["��Լ���񷣼�"]=1,["��Լ������"]=1,
["������׶�Ŀ�"]=1,["������׶����"]=1,["������׶����"]=1,["������׶�Ľ�"]=1,["������׶�Ĵ�"]=1,["������׶��ѥ"]=1,
["������ŭ���"]=1,["������ŭ����"]=1,["������ŭ����"]=1,["������ŭ���"]=1,["������ŭ���"]=1,["������ŭ��ѥ"]=1,
["��Լ���񷣿�"]=1,["��Լ������"]=1,["��Լ������"]=1,["��Լ���񷣽�"]=1,["��Լ���񷣴�"]=1,["��Լ����ѥ"]=1,
["�����ޤ����"]=1,["�����ޤ�����"]=1,["����������"]=1,["�����������"]=1,["��¥�ޤ����"]=1,["��¥�ޤ�����"]=1,
["�����ޤ����"]=1,["�����ޤ�����"]=1,["�����ޤ�����"]=1,["�����ޤ����"]=1,["�����ޤ����"]=1,["�����ޤ���ѥ"]=1,
["����������"]=1,["�����������"]=1,["�����������"]=1,["����������"]=1,["����������"]=1,["���������ѥ"]=1,
["��¥�ޤ����"]=1,["��¥�ޤ�����"]=1,["��¥�ޤ�����"]=1,["��¥�ޤ����"]=1,["��¥�ޤ����"]=1,["��¥�ޤ���ѥ"]=1,
}

local sihejinzhibao = {
["����(��)"]=1,["����(Ů)"]=1,["ڤ��(��)"]=1,["ڤ��(Ů)"]=1,["�췣(��)"]=1,["�췣(Ů)"]=1,
["������׶�ļ�"]=1,["������׶����"]=1,["������ŭ���"]=1,["������ŭ����"]=1,["��Լ���񷣼�"]=1,["��Լ������"]=1,
["������׶�Ŀ�"]=1,["������׶����"]=1,["������׶����"]=1,["������׶�Ľ�"]=1,["������׶�Ĵ�"]=1,["������׶��ѥ"]=1,
["������ŭ���"]=1,["������ŭ����"]=1,["������ŭ����"]=1,["������ŭ���"]=1,["������ŭ���"]=1,["������ŭ��ѥ"]=1,
["��Լ���񷣿�"]=1,["��Լ������"]=1,["��Լ������"]=1,["��Լ���񷣽�"]=1,["��Լ���񷣴�"]=1,["��Լ����ѥ"]=1,
["�����ޤ����"]=1,["�����ޤ�����"]=1,["����������"]=1,["�����������"]=1,["��¥�ޤ����"]=1,["��¥�ޤ�����"]=1,
["�����ޤ����"]=1,["�����ޤ�����"]=1,["�����ޤ�����"]=1,["�����ޤ����"]=1,["�����ޤ����"]=1,["�����ޤ���ѥ"]=1,
["����������"]=1,["�����������"]=1,["�����������"]=1,["����������"]=1,["����������"]=1,["���������ѥ"]=1,
["��¥�ޤ����"]=1,["��¥�ޤ�����"]=1,["��¥�ޤ�����"]=1,["��¥�ޤ����"]=1,["��¥�ޤ����"]=1,["��¥�ޤ���ѥ"]=1,
}

local bahejinzhibao = {
["������׶�ļ�"]=1,["������׶����"]=1,["������ŭ���"]=1,["������ŭ����"]=1,["��Լ���񷣼�"]=1,["��Լ������"]=1,
["�����ޤ����"]=1,["�����ޤ�����"]=1,["����������"]=1,["�����������"]=1,["��¥�ޤ����"]=1,["��¥�ޤ�����"]=1,
["�����ޤ����"]=1,["�����ޤ�����"]=1,["�����ޤ�����"]=1,["�����ޤ����"]=1,["�����ޤ����"]=1,["�����ޤ���ѥ"]=1,
["����������"]=1,["�����������"]=1,["�����������"]=1,["����������"]=1,["����������"]=1,["���������ѥ"]=1,
["��¥�ޤ����"]=1,["��¥�ޤ�����"]=1,["��¥�ޤ�����"]=1,["��¥�ޤ����"]=1,["��¥�ޤ����"]=1,["��¥�ޤ���ѥ"]=1,
}

----��������������������
local danduguaiwu_t ={
["ǯ��"]=1,["���"]=1,["��ɫ����"]=1,["������"]=1,["�������"]=1,["а��ǯ��"]=1,["����սʿ"]=1,["������ʿ"]=1,["����ս��"]=1,["��������"]=1,["������ʿ"]=1,["���þ���"]=1,
["��Ұ��"]=1,["��Ұ��"]=1,["��Ұ��"]=1,["Ы��"]=1,["Ш��"]=1,["���Ұ��"]=1,["а����"]=1,["����ո���"]=1,["��Ӱ����"]=1,["������"]=1,["���깭����"]=1,["�������"]=1,
["������ʿ"]=1,["ū����ʿ"]=1,["ū������"]=1,["ū������"]=1,["���ù�����"]=1,["���ó�ǹ��"]=1,["���õ�����"]=1,["���ô���"]=1,["���õ���"]=1,["ţͷħ"]=1,["ţħ����"]=1,
["ţħ��ʿ"]=1,["ţħ��˾"]=1,["ţħ����"]=1,["ţħ��ʦ"]=1,["��ҹ��ʦ"]=1,["�ڰ�����"]=1,["���㽫��"]=1,
["����֩��"]=1,["����֩��"]=1,["����֩��"]=1,["����֩��"]=1,["Ѫ��ʬ"]=1,["а�����"]=1,["��ħ����"]=1,["��Ȫ����"]=1,["ţħ��"]=1,["˫ͷ���"]=1,
["˫ͷѪħ"]=1,["�������"]=1,["������ʿ�ӳ�"]=1,["���þ���ӳ�"]=1,["а��������"]=1,["���Ұ������"]=1,["��ħ���"]=1,["��ħЫ��"]=1,["ū������ͷĿ"]=1,
["ū������ͷĿ"]=1,["ū����ʿͷĿ"]=1,["���õ���ͳ��"]=1,["���ô���ͳ��"]=1,["��ҹ��ʦ"]=1,["�ڰ������"]=1,["����󽫾�"]=1,

}
local jiangbaolv_wupin = {
["ʥսͷ��"]=1,["ʥս����"]=1,["ʥս����"]=1,["ʥս��ָ"]=1,["����ͷ��"]=1,["��������"]=1,["��������"]=1,["�����ָ"]=1,["����ͷ��"]=1,["��������"]=1,["��������"]=1,
["�����ָ"]=1,["��ħ���"]=1,["ʥս����"]=1,["Ѫ��"]=1,["��������"]=1,["��������"]=1,["�������"]=1,["��ʦ����"]=1,["ʥս����"]=1,["ʥսѥ��"]=1,["��������"]=1,
["����ѥ��"]=1,["��������"]=1,["����ѥ��"]=1,["ŭն"]=1,["����"]=1,["��ң��"]=1,["��������"]=1,["����սѥ"]=1,["����ħѥ"]=1,["��������"]=1,["��â��ѥ"]=1,["��â����"]=1,
["ʥ����"]=1,["��������"]=1,["��������"]=1,["����ս��"]=1,["ħ����"]=1,["��������"]=1,["���滤��"]=1,["����ħ��"]=1,["������"]=1,["��â����"]=1,["��â����"]=1,["��â����"]=1,
["����"]=1,["�Ȼ귨��"]=1,["����֮��"]=1,["����ս��(��)"]=1,["����ս��(Ů)"]=1,["����ħ��(��)"]=1,["����ħ��(Ů)"]=1,["��â����(��)"]=1,["��â����(Ů)"]=1,["��֮ʥ����"]=1,
["��֮��������"]=1,["��֮��������"]=1,["��֮����ս��"]=1,["��֮��������"]=1,["��֮����սѥ"]=1,["��֮ħ����"]=1,["��֮��������"]=1,["��֮���滤��"]=1,["��֮����ħ��"]=1,
["��֮����ħѥ"]=1,["��֮��������"]=1,["��֮������"]=1,["��֮��â����"]=1,["��֮��â����"]=1,["��֮��â����"]=1,["��֮��â��ѥ"]=1,["��֮��â����"]=1,
}

local kz_ditu={
["d609"]=1,["womajingxiang"]=1,["d022"]=1,["d023"]=1,["d024"]=1,["d021"]=1,["d713"]=1,["d714"]=1,["d715"]=1,["d716"]=1,["d717"]=1,["jxdt"]=1,["d2008"]=1,["d2010"]=1,["d2011"]=1,
["d2012"]=1,["d2013"]=1,["d2001"]=1,["d505"]=1,["d5071"]=1,["d5072"]=1,["d5073"]=1,["d5074"]=1,["d515"]=1,["zmjt"]=1,["d2063"]=1,["d2064"]=1,["d2067"]=1,["nhq"]=1,["hqsy"]=1,
["niumojingxiang"]=1,["d2073"]=1,["d2075"]=1,["d2076"]=1,["d2078"]=1,["d2079"]=1,["qlsy"]=1,["d1004"]=1,["d10051"]=1,["d10052"]=1,
}
local kz_guaiwu={
["��֮������"]=1,["������ʿ�ӳ�"]=1,["���þ���ӳ�"]=1,["����̻�"]=1,["а��������"]=1,["���Ұ������"]=1,["ʯĹ�̻�"]=1,["�����󻤷�"]=1,["�����һ���"]=1,["��ħ���"]=1,
["��ħЫ��"]=1,["�Ϲź�ħ����"]=1,["ū������ͷĿ"]=1,["ū������ͷĿ"]=1,["ū����ʿͷĿ"]=1,["�������"]=1,["��������"]=1,["��̳����"]=1,
["���õ���ͳ��"]=1,["���ô���ͳ��"]=1,["�ϹŻ�Ȫ����"]=1,["��������"]=1,["��ҹ��ʦ"]=1,["�ڰ������"]=1,["����󽫾�"]=1,["�Ϲ�ţħ��"]=1,["���¶�ħ"]=1,
}
local kz_wupin={
["�ϹŹ���"]=1,["�����޼�"]=1,["���֮��"]=1,["����ս��"]=1,["����ս��"]=1,["��ħ����"]=1,["��ħ����"]=1,["������"]=1,["�����"]=1,["��սͷ��"]=1,["��ս����"]=1,["��ս����"]=1,
["��ս��ָ"]=1,["��ս����"]=1,["��սʥѥ"]=1,["����ͷ��"]=1,["��������"]=1,["��������"]=1,["������ָ"]=1,["��������"]=1,["������ѥ"]=1,["̫��ͷ��"]=1,["̫������"]=1,["̫������"]=1,
["̫����ָ"]=1,["̫������"]=1,["̫����ѥ"]=1,["����¾"]=1,["���鷨��"]=1,["������"]=1,["ʥ��ս��"]=1,["ʥ��ս��"]=1,["ħ������"]=1,["ħ������"]=1,["��������"]=1,["��������"]=1,
["����ս��"]=1,["��������"]=1,["��������"]=1,["������ָ"]=1,["��������"]=1,["����սѥ"]=1,["����ħ��"]=1,["��������"]=1,["��������"]=1,["���׽�ָ"]=1,["��������"]=1,["����ħѥ"]=1,
["�������"]=1,["��������"]=1,["��������"]=1,["�����ָ"]=1,["��������"]=1,["�����ѥ"]=1,
}
local kz_jyguaiwu={
["��֮������"]=1,["������ʿ�ӳ�"]=1,["���þ���ӳ�"]=1,["����̻�"]=1,["а��������"]=1,["���Ұ������"]=1,["ʯĹ�̻�"]=1,["��ħ���"]=1,
["��ħЫ��"]=1,["�Ϲź�ħ����"]=1,["ū������ͷĿ"]=1,["ū������ͷĿ"]=1,["ū����ʿͷĿ"]=1,["�������"]=1,
["���õ���ͳ��"]=1,["���ô���ͳ��"]=1,["�ϹŻ�Ȫ����"]=1,["��ҹ��ʦ"]=1,["�ڰ������"]=1,["����󽫾�"]=1,["�Ϲ�ţħ��"]=1,["���¶�ħ"]=1,
}

local jykz_guai = {["ħ��ս��"]=1,["ħ���޶�"]=1,["ħ����ʿ"]=1,}

local jiluwupin = {["����"]=249,["����"]=249,["����"]=249,["����ս��(��)"]=249,["����ս��(Ů)"]=249,["ŭ��ħ��(��)"]=249,["ŭ��ħ��(Ů)"]=249,["�������(��)"]=249,["�������(Ů)"]=249,
["ս��ͷ��"]=70,["ս������"]=70,["ս������"]=70,["ս���ָ"]=70,["ս������"]=70,["ս��ʥѥ"]=70,["ʥħͷ��"]=70,["ʥħ����"]=70,["ʥħ����"]=70,["ʥħ��ָ"]=70,["ʥħ����"]=70,["ʥħ��ѥ"]=70,
["���ͷ��"]=70,["�������"]=70,["�������"]=70,["����ָ"]=70,["�������"]=70,["����ѥ"]=70,["�ϹŹ���"]=249,["���֮��"]=249,["�����޼�"]=249,["����ս��"]=249,["����ս��"]=249,["��ħ����"]=249,
["��ħ����"]=249,["������"]=249,["�����"]=249,["��սͷ��"]=249,["��ս����"]=249,["��ս����"]=249,["��ս��ָ"]=249,["��ս����"]=249,["��սʥѥ"]=249,["����ͷ��"]=249,["��������"]=249,
["��������"]=249,["������ָ"]=249,["��������"]=249,["������ѥ"]=249,["̫��ͷ��"]=249,["̫������"]=249,["̫������"]=249,["̫����ָ"]=249,["̫������"]=249,["̫����ѥ"]=249,["����¾"]=249,
["���鷨��"]=249,["������"]=249,["ʥ��ս��"]=249,["ʥ��ս��"]=249,["ħ������"]=249,["ħ������"]=249,["��������"]=249,["��������"]=249,["����ս��"]=249,["��������"]=249,["��������"]=249,
["������ָ"]=249,["��������"]=249,["����սѥ"]=249,["����ħ��"]=249,["��������"]=249,["��������"]=249,["���׽�ָ"]=249,["��������"]=249,["����ħѥ"]=249,["�������"]=249,["��������"]=249,
["��������"]=249,["�����ָ"]=249,["��������"]=249,["�����ѥ"]=249,["��Ұս��"]=249,["��Ұս��"]=249,["���֮��"]=249,["���֮��"]=249,["��ʹ֮��"]=249,["��ʹ֮��"]=249,["���졩ʥ��"]=249,
["���졩ʥ��"]=249,["���졩ʥ��"]=249,["���졩ʥ��"]=249,["���졩ʥ��"]=249,["���졩ʥѥ"]=249,["���졩ħ��"]=249,["���졩ħ��"]=249,["���졩ħ��"]=249,["���졩ħ��"]=249,["���졩ħ��"]=249,
["���졩ħѥ"]=249,["���졩����"]=249,["���졩����"]=249,["���졩����"]=249,["���졩����"]=249,["���졩����"]=249,["���졩��ѥ"]=249,["����(��)"]=249,["����(Ů)"]=249,["ڤ��(��)"]=249,
["ڤ��(Ů)"]=249,["�췣(��)"]=249,["�췣(Ů)"]=249,["��Ӱ��ʥ��"]=249,["��Ӱ��ʥ��"]=249,["��Ӱ��ʥ��"]=249,["��Ӱ��ʥ��"]=249,["��Ӱ��ʥ��"]=249,["��Ӱ��ʥѥ"]=249,["�����ħ��"]=249,
["�����ħ��"]=249,["�����ħ��"]=249,["�����ħ��"]=249,["�����ħ��"]=249,["�����ħѥ"]=249,["Զ�š����"]=249,["Զ�š����"]=249,["Զ�š����"]=249,["Զ�š����"]=249,["Զ�š����"]=249,
["Զ�š��ѥ"]=249,["������׶�ļ�"]=249,["������׶����"]=249,["������ŭ���"]=249,["������ŭ����"]=249,["��Լ���񷣼�"]=249,["��Լ������"]=249,["������׶�Ŀ�"]=249,["������׶����"]=249,
["������׶����"]=249,["������׶�Ľ�"]=249,["������׶�Ĵ�"]=249,["������׶��ѥ"]=249,["������ŭ���"]=249,["������ŭ����"]=249,["������ŭ����"]=249,["������ŭ���"]=249,["������ŭ���"]=249,
["������ŭ��ѥ"]=249,["��Լ���񷣿�"]=249,["��Լ������"]=249,["��Լ������"]=249,["��Լ���񷣽�"]=249,["��Լ���񷣴�"]=249,["��Լ����ѥ"]=249,["�����ޤ����"]=249,["�����ޤ�����"]=249,
["����������"]=249,["�����������"]=249,["��¥�ޤ����"]=249,["��¥�ޤ�����"]=249,["�����ޤ����"]=249,["�����ޤ�����"]=249,["�����ޤ�����"]=249,["�����ޤ����"]=249,["�����ޤ����"]=249,
["�����ޤ���ѥ"]=249,["����������"]=249,["�����������"]=249,["�����������"]=249,["����������"]=249,["����������"]=249,["���������ѥ"]=249,["��¥�ޤ����"]=249,["��¥�ޤ�����"]=249,
["��¥�ޤ�����"]=249,["��¥�ޤ����"]=249,["��¥�ޤ����"]=249,["��¥�ޤ���ѥ"]=249,
["��ħ��ָ"]=70,["��ħ����"]=70,["��ħ����"]=70,["1.1��������"]=70,["����ͷ�� "]=70,["�������� "]=70,["����ѥ��"]=70,["�ϵ�֮��"]=70,["�����ָ"]=70,["�������"]=70,["����ָ"]=70,
["��ɫ��������"]=70,["��а����"]=70,["�������"]=70,["���ն�����"]=70,["�����ָ"]=70,["����ͷ��"]=70,["��������"]=70,["���ؽ�ָ"]=70,["��������"]=70,["��������"]=70,["��ħ����"]=70,["��������"]=70,
["��Ԩ��ָ"]=249,["�Ƽ�ָ��"]=249,["������"]=249,["����ָ"]=249,["�ػ�ͷ��"]=249,["�ػ�ѥ��"]=249,["�ػ�����"]=249,["��̵���������"]=249,
["��Ѫ��ָ"]=249,["��Ѫ����"]=249,["��Ѫ����"]=249,["ŭѪ��ָ"]=249,["ŭѪ����"]=249,["ŭѪ����"]=249,["������ħ��"]=249,["��Ұ��"]=249,["ף������(��ӡ)"]=249,
["����֮��"]=249,["��������(��ӡ)"]=249,["�����ָ(��ӡ)"]=249,["��ħ֮ѥ(��ӡ)"]=249,["��ħ֮��(��ӡ)"]=249,["1.2��������"]=249,}

local teshukz_guai = {["��ħ����"]=1,["��Ȫ����"]=1,["ţħ��"]=1,["˫ͷ���"]=1,["˫ͷѪħ"]=1,["�������"]=1,["ħ��ս��"]=1,["ħ���޶�"]=1,["ħ����ʿ"]=1,}

local teshukz_wupin = {
["��ħ��ָ"]=1,["��ħ����"]=1,["��ħ����"]=1,["1.1��������"]=1,["����ͷ��"]=1,["��������"]=1,["����ѥ��"]=1,["�ϵ�֮��"]=1,["�����ָ"]=1,
["�������"]=1,["����ָ"]=1,["��ɫ��������"]=1,["��а����"]=1,["�������"]=1,["���ն�����"]=1,["�����ָ"]=1,["����ͷ��"]=1,["��������"]=1,
["���ؽ�ָ"]=1,["��������"]=1,["��������"]=1,["��ħ����"]=1,["��������"]=1,
}

local xinkz_wupin={
["����"]=1,["����"]=1,["����"]=1,["����ս��(��)"]=1,["����ս��(Ů)"]=1,["ŭ��ħ��(��)"]=1,["ŭ��ħ��(Ů)"]=1,["�������(��)"]=1,["�������(Ů)"]=1,
["ս��ͷ��"]=1,["ս������"]=1,["ս������"]=1,["ս���ָ"]=1,["ս������"]=1,["ս��ʥѥ"]=1,["ʥħͷ��"]=1,["ʥħ����"]=1,["ʥħ����"]=1,["ʥħ��ָ"]=1,
["ʥħ����"]=1,["ʥħ��ѥ"]=1,["���ͷ��"]=1,["�������"]=1,["�������"]=1,["����ָ"]=1,["�������"]=1,["����ѥ"]=1,}

local xinkz_guai = {["���֮��"]=1,["����ħ��"]=1,["��ħڤ��̸�"]=1,["Զ������̸�"]=1,["����ۻ�"]=1,["������"]=1,["Զ��˫ͷ���"]=1,["Զ��˫ͷѪħ"]=1,["Զ�ų��¶�ħ"]=1,}


local xinjykzguai = {["��ħ����"]=1,["��Ȫ����"]=1,["ţħ��"]=1,["˫ͷ���"]=1,["˫ͷѪħ"]=1,["�������"]=1,}
--�������ǰ����
function mondropitemex(actor,item,mon,x,y)
	--sendmsg0(0,"����"..getname(actor))
	local monname = getname(mon)
	local name = getitemname(actor,item)
	local mapid = getmap(mon)
	if xinkz_guai[monname] and xinkz_wupin[name] then
		if getsysint("��������") > 3 then
			if math.random(1,100) <= 30 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") > 2 then
			if math.random(1,100) <= 20 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") > 1 then
			if math.random(1,100) <= 10 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		end
	end
	
	
	if kz_ditu[mapid] and kz_guaiwu[monname] and xinkz_wupin[name] then
		if getsysint("��������") > 3 then
			if math.random(1,100) <= 80 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") > 2 then
			if math.random(1,100) <= 60 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") > 1 then
			if math.random(1,100) <= 40 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") > 0 then
			if math.random(1,100) <= 20 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		end
	end
	
	if teshukz_guai[monname] and teshukz_wupin[name] then
		if getsysint("��������") > 1 then
			return false
		elseif getsysint("��������") > 0 then
			if math.random(1,100) <= 50 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		end
	end
	
	
	if kz_ditu[mapid] and kz_guaiwu[monname] and kz_wupin[name] then
		if getsysint("��������") > 1 then
			if math.random(1,100) <= 70 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
			if name == "�ϹŹ���" or name == "�����޼�" then
				return false
			end
		elseif getsysint("��������") > 0 then
			if math.random(1,100) <= 50 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
			if name == "�ϹŹ���" or name == "�����޼�" then
				return false
			end
		end
	end
	if kz_ditu[mapid] and kz_jyguaiwu[monname] and name == "12�����" then
		if getsysint("��������") > 1 then
			if math.random(1,100) <= 50 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") > 0 then
			if math.random(1,100) <= 25 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		end
	end
	
	if jykz_guai[getbaseinfo(mon,1,1)] and name == "12�����" then
		if getsysint("��������") > 2 then
			if math.random(1,100) <= 50 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") > 1 then
			if math.random(1,100) <= 20 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		end
	end
	
	if xinjykzguai[monname] and name == "12�����" then
		if getsysint("��������") > 3 then
			return false
		elseif	getsysint("��������") > 2 then
			if math.random(1,100) <= 80 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif	getsysint("��������") > 1 then
			if math.random(1,100) <= 60 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") > 0 then
			if math.random(1,100) <= 50 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		end
	end
	
	
	
	--------------���˱��ʵ���Ʒ����
	local biaojiitem = getcurrent(mon,5)
	local baochubiaoji = getcurrent(mon,4) --�ѱ������
	--sendmsg6(actor,biaojiitem)
	--sendmsg6(actor,baochubiaoji)
	if name == biaojiitem then
		if baochubiaoji == "yibao" then
			--sendmsg9(actor,"�Ѿ�������")
			return false
		else
			setcurrent(mon,4,"yibao")
		end
	end
	--------------
	
	--callscriptex(actor, "HTTPPOST", "http://www.9yxk.com/shuntianchuanqi/CunShuju.php", 0,'1111|2222|3333|4444')
	setsysint("Ӧ��"..name,getsysint("Ӧ��"..name)+1,0)
	if bahejinzhibao[name] and getsysint("��������") < 8 then
		return false
	end
	if sihejinzhibao[name] and getsysint("��������") <=6 then
		return false
	end
	if sanhejinzhibao[name] and getsysint("��������") <=3 then
		return false
	end
	if erhejinzhibao[name] and getsysint("��������") <=2 then
		return false
	end
	if hequqianjinzhibao[name] and getsysint("��������") < 1 then
		return false
	end
	
	if danduguaiwu_t[monname] and jiangbaolv_wupin[name] then
		if getsysint("��������") >= 6 then
			if math.random(1,100) <= 50 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") >= 4 then
			if math.random(1,100) <= 40 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") >= 3 then
			if math.random(1,100) <= 30 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") >= 2 then
			if math.random(1,100) <= 20 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") >= 1 then
			if math.random(1,100) <= 10 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		end
	end
	
	if name == "��ˮ����" and getsysint("��������") >= 1 then
		if math.random(1,100) <= 50 then
			--sendmsg6(actor,name.."��ֹ����")
			return false
		end
	end
	if name == "���ʯ" then
		if getsysint("��������") >= 2 then
			if math.random(1,100) <= 90 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		elseif getsysint("��������") >= 1 then
			if math.random(1,100) <= 90 then
				--sendmsg6(actor,name.."��ֹ����")
				return false
			end
		end
	end
	
	callscriptex(actor, "LINKPICKUPITEM") --����������Ʒ
	if jianding_t[name] ~= nil then
		if math.random(1,100) <= jianding_t[name] then
			callscriptex(actor, "CHANGEITEMNAMECOLOR", -1, 249)
		end
	end
	----������ ����ɾ��
	if diaoluoceshi[name] then
		local bianliang = diaoluoceshi[name] --����
		setsysint("��������"..bianliang,getsysint("��������"..bianliang) + 1,0 )
		setsysint("ÿ�յ�������"..bianliang,getsysint("ÿ�յ�������"..bianliang) + 1,0 )
	end
	callscriptex(actor, "SetItemFlag",-1,4,1) --�����Ƿ���ﱬ��
	
	setsysint("ʵ��"..name,getsysint("ʵ��"..name)+1,0)
	
	if name == "���ʯ" then
		post(actor,"���ʯ����*1 ���"..getbaseinfo(mon,1,1) .. "��ͼ��"..getbaseinfo(mon,45))
	end
	if name == "��ħ�ˡﶷ��" or name == "��ħ�ˡ�ѫ��" then
		post(actor,name.."����*1 ���"..getbaseinfo(mon,1,1) .. "��ͼ��"..getbaseinfo(mon,45))
	end
	
	if jiluwupin[name] then
		local t = getdiaoluodata()
		local biao = {shijian=os.date("%d��%H:%M:%S", os.time()),ditu=getbaseinfo(mon,45),guaiwu=getname(mon),wupin=name,yanse=jiluwupin[name],name=getname(actor)}
		table.insert(t,1,biao)
		for i = #t,501,-1 do
			table.remove(t,i)
		end
		setsysstr("�����ѯ����",tbl2json(t))
	end
	
	return true
end



--�����������װ��ǰ����
function checkdropuseitems(actor,weizhi,idx) --װ��λ�ã���Ʒidx
	if weizhi == 14 then --����λ��
		local item = linkbodyitem(actor,weizhi) --����
		if getitem_fabaozhi(actor,item) > 0 then --�ںϹ���
			setisjianqu(actor,item,1) --���ý�ֹ��ȡ
		end
	end
	return true
end


--ʰȡǰ����
local bangdingdaoju = {
["һ������"]=1,["��������"]=1,["��������"]=1,["��������"]=1,["�귨�ᾧ"]=1,["1��������"]=1,["2��������"]=1,["5��������"]=1,["10��������"]=1,["��ˮ����"]=1,["�޻군"]=1,["��ҳ"]=1,
["ף����"]=1,["�����ܺ�"]=1,["������"]=1,["����ͷ��"]=1,["ţħ�����Ƽ���"]=1,["����������"]=1,["�а�ƾ֤"]=1,["���ʯ"]=1,["����֮Ѫ"]=1,["����ף����"]=1,["�׶���"]=1,["�ϳ���"]=1,
["������"]=1,["����"]=1,["ͨ�����"]=1,["ħ������"]=1,["���"]=1,["ׯ������"]=1,["��"]=1,["1�����"]=1,["12�����"]=1,["50�����"]=1,["�ۺ�֮��"]=1,["��ħ�ˡﶷ��"]=1,
["��ħ�ˡ�ѫ��"]=1,["������ʯ"]=1,["����ˮ��"]=1,["ħ��֮Ѫ"]=1,["����ƾ֤"]=1,["���ߵ�����"]=1,["����������"]=1,["��ħ����Լ"]=1,["һ������"]=1,["��������"]=1,["��������"]=1,
["��������"]=1,["��������"]=1,}

function pickupitemfrontex(actor,item)
	if getisjianqu(actor,item) == 1 then
		sendmsg9(actor,"����Ʒ��ֹʰȡ")
		return false
	end
	if getisguaibao(actor,item) == 1 then --�ǹ��ﱬ����Ʒ
		--sendmsg6(actor,"���ﱬ��")
		if getint(actor,"��Ա�ȼ�") < 2 then
			setitemaddvalue(actor,item,2,1,370)
		end
		setisguaibao(actor,item,0) --������ﱬ��
	end
	if getitemname(actor,item) == "1�����" then
		setitemaddvalue(actor,item,2,1,370)
	end
	if getlevel(actor) >= 45 then
		local iname = getitemname(actor,item)
		nothintitem(actor,3,iname)
	end
	--sendmsg9(actor,"װ�����"..getitemname(actor,item))
	
	return true
end

--�ڿ󴥷�
function wakuangchufa(actor)
	--sendmsg6(actor,"�ڿ󴥷�")
	if math.random(1,100) <= 20 then
		if itemcount(actor,"ͭ��ʯ") < 50 then
			giveitem(actor,"ͭ��ʯ",1,371)
			callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --�ڿ�������ʾ
		end
	end
end

----ˢ�ִ���
function shuaguaichufa(mon)
	--local str = "ϵͳ��ʾ����".. getname(mon) .."��ˢ���ڵ�ͼ��".. getbaseinfo(mon,45) .."��������"
	--release_print(str)
end

local tzsh_t = {[16]=3,[17]=3,[18]=3,[19]=6,[20]=6,[21]=6,[22]=10,[23]=10,[24]=10} --��װ��ת���ȼ����˺�
local jineng_tao = {[80] = {job=0,name="ʮ��һɱ"},[81] = {job=1,name="��˪Ⱥ��"},[82] = {job=2,name="����֮��"}, }
function groupitemonex(actor,id)
	id = tonumber(id)
	if tzsh_t[id] then
		setint(actor,"��װת���˺�",tzsh_t[id])
	end
	
	if jineng_tao[id] then
		if getjob(actor) == jineng_tao[id].job then
			addskill(actor, getskillidbyname(jineng_tao[id].name),3)
		end
	end
	--sendmsg6(actor,"����װ"..id)
end

function groupitemoffex(actor,id)
	id = tonumber(id)
	if tzsh_t[id] then
		setint(actor,"��װת���˺�",0)
	end
	
	if jineng_tao[id] then
		if getjob(actor) == jineng_tao[id].job then
			delskill(actor, getskillidbyname(jineng_tao[id].name))
		end
	end
	--sendmsg6(actor,"������װ"..id)
end

---��ȡ����									�������� 					��Ӧÿ�����Ե�min��max
local pickitems = {
					["��ħ��ָ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{6,10},jilv=90},{{0,0},{6,13},jilv=10}}},
					["��ħ����"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{3,6},jilv=90},{{0,0},{3,8},jilv=10}}},
					["��ħ����"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{6,9},jilv=90},{{0,0},{6,12},jilv=10}}},
					
					["��Ѫ��ָ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{12,15},jilv=90},{{0,0},{12,19},jilv=10}}},
					["��Ѫ����"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{7,10},jilv=90},{{0,0},{7,13},jilv=10}}},
					["��Ѫ����"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{11,14},jilv=90},{{0,0},{11,18},jilv=10}}},
					
					["ħѪ��ָ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{4,7},jilv=100},{{0,0},{4,7},jilv=0}}},
					["ħѪ����"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{2,4},jilv=100},{{0,0},{2,4},jilv=0}}},
					["ħѪ����"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{4,8},jilv=100},{{0,0},{4,8},jilv=0}}},
					
					["ŭѪ��ָ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{7,12},jilv=100},{{0,0},{7,12},jilv=0}}},
					["ŭѪ����"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{4,9},jilv=100},{{0,0},{4,9},jilv=0}}},
					["ŭѪ����"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{8,13},jilv=100},{{0,0},{8,13},jilv=0}}},
					
					["������"]={shuxing={{5,6},{7,8}},zhi={{{0,0},{5,9},jilv=80},{{0,0},{5,12},jilv=20}}},
					["������"]={shuxing={{5,6},{7,8}},zhi={{{0,0},{7,10},jilv=80},{{0,0},{7,13},jilv=20}}},
					["����ָ"]={shuxing={{5,6},{7,8}},zhi={{{0,0},{11,14},jilv=80},{{0,0},{11,17},jilv=20}}},
					
					["�ػ�ͷ��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{3,5},jilv=90},{{0,0},{3,7},jilv=10}}},
					["�ػ�ѥ��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{3,5},jilv=90},{{0,0},{3,7},jilv=10}}},
					["�ػ�����"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{3,5},jilv=90},{{0,0},{3,7},jilv=10}}},
					
					["��̵���������"]={shuxing={{9,10},{11,12}},zhi={{{8,8},{8,12},jilv=60},{{8,8},{8,16},jilv=40}}},
					
					["1.1��������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{0,2},jilv=80},{{0,0},{0,3},jilv=20}}},
					["1.2��������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{3,4},jilv=80},{{0,0},{3,6},jilv=20}}},
					
					["�Ƽ�ָ��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{9,13},jilv=90},{{0,0},{9,16},jilv=10}}},
					
					["������ħ��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{3,5},jilv=90},{{0,0},{3,7},jilv=10}}},
					["������ħ��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{12,15},jilv=90},{{0,0},{12,19},jilv=10}}},
					
					--["��Ұ��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{3,5},jilv=80},{{0,0},{3,7},jilv=20}}},
					
					["ħ��ͷ��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{0,2},jilv=90},{{0,0},{0,3},jilv=10}}},
					["ħ������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{0,2},jilv=90},{{0,0},{0,3},jilv=10}}},
					["ħ��ѥ��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{0,2},jilv=90},{{0,0},{0,3},jilv=10}}},
					
					["����ͷ��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{2,3},jilv=90},{{0,0},{2,5},jilv=10}}},
					["��������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{2,3},jilv=90},{{0,0},{2,5},jilv=10}}},
					["����ѥ��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{2,3},jilv=90},{{0,0},{2,5},jilv=10}}},
					
					["�ϵ�֮��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{3,6},jilv=90},{{0,0},{3,8},jilv=10}}},
					["����֮��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{8,12},jilv=90},{{0,0},{8,15},jilv=10}}},
					
					["�����ָ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{6,10},jilv=80},{{0,0},{6,13},jilv=20}}},
					["��Ԩ��ָ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{9,13},jilv=80},{{0,0},{9,16},jilv=20}}},
					
					["�������"]={shuxing={{3,4}},zhi={{{0,0},{5,8},jilv=90},{{0,0},{5,10},jilv=10}}},
					["����ָ"]={shuxing={{3,4}},zhi={{{0,0},{7,10},jilv=90},{{0,0},{7,13},jilv=10}}},
					
					["��ɫ��������"]={shuxing={{3,4,15},{5,6,15},{7,8,15}},zhi={{{0,0},{5,7},{1,1},jilv=70},{{0,0},{5,10},{1,1},jilv=20},{{0,0},{5,10},{1,2},jilv=10},{{0,0},{5,10},{3,3},jilv=1}}},
					
					["��а����"]={shuxing={{3,4,14},{5,6,14},{7,8,14}},zhi={{{0,0},{3,6},{3,5},jilv=80},{{0,0},{3,8},{3,5},jilv=10},{{0,0},{3,8},{3,8},jilv=10}}},
					
					["�������"]={shuxing={{3,4,14},{5,6,14},{7,8,14}},zhi={{{0,0},{6,9},{3,6},jilv=80},{{0,0},{6,12},{3,6},jilv=10},{{0,0},{6,12},{3,9},jilv=10}}},
					
					["���ն�����"]={shuxing={{3,4,13}},zhi={{{0,0},{3,6},{4,7},jilv=80},{{0,0},{3,8},{4,7},jilv=10},{{0,0},{3,8},{4,10},jilv=10}}},
					
					["�����ָ"]={shuxing={{5,6},{7,8}},zhi={{{0,0},{7,10},jilv=90},{{0,0},{7,13},jilv=10}}},
					
					["����ͷ��"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{2,4},jilv=90},{{0,0},{2,6},jilv=10}}},
					["��������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{2,4},jilv=90},{{0,0},{2,6},jilv=10}}},
					["���ؽ�ָ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{7,11},jilv=90},{{0,0},{7,15},jilv=10}}},
					
					["������ָ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{6,9},jilv=90},{{0,0},{6,11},jilv=10}}},
					["�����ָ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{6,9},jilv=90},{{0,0},{6,11},jilv=10}}},
					["��ħ��ָ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{6,9},jilv=90},{{0,0},{6,11},jilv=10}}},
					
					["��������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{4,6},jilv=90},{{0,0},{4,9},jilv=10}}},
					["��������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{4,6},jilv=90},{{0,0},{4,9},jilv=10}}},
					["��ħ����"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{4,6},jilv=90},{{0,0},{4,9},jilv=10}}},
					
					["��������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{6,8},jilv=60},{{0,0},{6,9},jilv=40}}},
					["������ָ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{6,8},jilv=60},{{0,0},{6,9},jilv=40}}},
					["��������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{4,7},jilv=90},{{0,0},{4,9},jilv=10}}},
					
					["��������Դ��"]={shuxing={{3,4}},zhi={{{1,1},{14,18},jilv=50},{{1,1},{14,21},jilv=50}}},
					["��������Դ��"]={shuxing={{3,4}},zhi={{{1,1},{9,12},jilv=50},{{1,1},{9,14},jilv=50}}},
					["��������Դѥ"]={shuxing={{3,4}},zhi={{{1,1},{5,7},jilv=50},{{1,1},{5,9},jilv=50}}},
					["��������Դ��"]={shuxing={{3,4}},zhi={{{1,1},{5,7},jilv=50},{{1,1},{5,9},jilv=50}}},
					["��������Դ��"]={shuxing={{3,4}},zhi={{{1,1},{5,7},jilv=50},{{1,1},{5,9},jilv=50}}},
					["��������Դ��"]={shuxing={{3,4}},zhi={{{1,1},{13,16},jilv=50},{{1,1},{13,18},jilv=50}}},

					["������������"]={shuxing={{5,6}},zhi={{{1,1},{13,17},jilv=50},{{1,1},{13,20},jilv=50}}},
					["������������"]={shuxing={{5,6}},zhi={{{1,1},{10,13},jilv=50},{{1,1},{10,15},jilv=50}}},
					["����������ѥ"]={shuxing={{5,6}},zhi={{{1,1},{5,7},jilv=50},{{1,1},{5,9},jilv=50}}},
					["������������"]={shuxing={{5,6}},zhi={{{1,1},{5,7},jilv=50},{{1,1},{5,9},jilv=50}}},
					["������������"]={shuxing={{5,6}},zhi={{{1,1},{5,7},jilv=50},{{1,1},{5,9},jilv=50}}},
					["������������"]={shuxing={{5,6}},zhi={{{1,1},{15,18},jilv=50},{{1,1},{15,20},jilv=50}}},
					
					["������޳���"]={shuxing={{7,8}},zhi={{{1,1},{14,18},jilv=50},{{1,1},{14,21},jilv=50}}},
					["������޳���"]={shuxing={{7,8}},zhi={{{1,1},{10,13},jilv=50},{{1,1},{10,15},jilv=50}}},
					["������޳�ѥ"]={shuxing={{7,8}},zhi={{{1,1},{5,7},jilv=50},{{1,1},{5,9},jilv=50}}},
					["������޳���"]={shuxing={{7,8}},zhi={{{1,1},{5,7},jilv=50},{{1,1},{5,9},jilv=50}}},
					["������޳���"]={shuxing={{7,8}},zhi={{{1,1},{5,7},jilv=50},{{1,1},{5,9},jilv=50}}},
					["������޳���"]={shuxing={{7,8}},zhi={{{1,1},{14,17},jilv=50},{{1,1},{14,19},jilv=50}}},

					["���������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{1,1},{17,21},jilv=50},{{1,1},{17,26},jilv=50}}},
					["����������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{1,1},{11,15},jilv=50},{{1,1},{11,19},jilv=50}}},
					["��������ѥ"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{1,1},{7,9},jilv=50},{{1,1},{7,12},jilv=50}}},
					["���������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{1,1},{7,9},jilv=50},{{1,1},{7,12},jilv=50}}},
					["���������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{1,1},{7,9},jilv=50},{{1,1},{7,12},jilv=50}}},
					["����������"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{1,1},{17,20},jilv=50},{{1,1},{17,24},jilv=50}}},

					["��ħ���ѽ�"]={shuxing={{5,6},{7,8}},zhi={{{1,1},{17,21},jilv=50},{{1,1},{17,26},jilv=50}}},
					["��ħ������"]={shuxing={{5,6},{7,8}},zhi={{{1,1},{11,15},jilv=50},{{1,1},{11,19},jilv=50}}},
					["��ħ����ѥ"]={shuxing={{5,6},{7,8}},zhi={{{1,1},{7,9},jilv=50},{{1,1},{7,12},jilv=50}}},
					["��ħ���Ѵ�"]={shuxing={{5,6},{7,8}},zhi={{{1,1},{7,9},jilv=50},{{1,1},{7,12},jilv=50}}},
					["��ħ���ѿ�"]={shuxing={{5,6},{7,8}},zhi={{{1,1},{7,9},jilv=50},{{1,1},{7,12},jilv=50}}},
					["��ħ������"]={shuxing={{5,6},{7,8}},zhi={{{1,1},{17,20},jilv=50},{{1,1},{17,24},jilv=50}}},
					
					["ף������(��ӡ)"]={shuxing={{3,4,39},{5,6,39},{7,8,39}},zhi={{{0,0},{8,13},{1,1},jilv=80},{{0,0},{8,18},{1,2},jilv=20}}},
					
					["��������(��ӡ)"]={shuxing={{3,4,20},},zhi={{{0,0},{11,14},{2,2},jilv=70},{{0,0},{11,16},{2,2},jilv=30}}},
					["�����ָ(��ӡ)"]={shuxing={{3,4,20},},zhi={{{0,0},{12,16},{1,1},jilv=70},{{0,0},{12,20},{1,1},jilv=30}}},
					
					["��ħ֮ѥ(��ӡ)"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{4,6},jilv=70},{{0,0},{4,9},jilv=30}}},
					["��ħ֮��(��ӡ)"]={shuxing={{3,4},{5,6},{7,8}},zhi={{{0,0},{4,6},jilv=70},{{0,0},{4,9},jilv=30}}},
					}
										
function pickupitemex(actor,item,jiefeng)
	jiefeng = tonumber(jiefeng) or 0
	local itemname = getitemname(actor,item) --��Ʒ��
	if itemname == "ׯ������" then
		if getitem_daoqishijian(actor,item) == 0 then
			--sendmsg6(actor,"���õ���ʱ��")
			local daoqishijian = 0 --����ʱ��
			local hour = tonumber(os.date("%H",os.time()))
			local fen = tonumber(os.date("%M",os.time()))
			local miao = tonumber(os.date("%S",os.time()))
			local jtygsj = hour*3600 + fen*60 + miao --�����Ѿ�����ʱ��
			--sendmsg6(actor,"����ʱ�� "..hour..":"..fen..":"..miao .."  ��ʱ�� "..jtygsj)
			if hour < 22 then
				daoqishijian = os.time() + 3600*22 - jtygsj --����ʱ��
				--sendmsg6(actor,"�����Ѿ�����ʱ��"..os.time()%86400)
			else
				daoqishijian = os.time() + 86400 - jtygsj + 3600*22
			end
			setitem_daoqishijian(actor,item,daoqishijian)
			refreshitem(actor, item)
		end
	end
	
	
	if pickitems[itemname] and getisjianquguo(actor,item) == 0 then
		if (itemname == "ף������(��ӡ)" or itemname == "��������(��ӡ)" or itemname == "�����ָ(��ӡ)" or itemname == "��ħ֮ѥ(��ӡ)" or itemname == "��ħ֮��(��ӡ)") and jiefeng == 0 then
		else
			changecustomitemtext(actor,item,"",4)
			local t = pickitems[itemname]
			local shuxing = t.shuxing[math.random(1,#t.shuxing)]
			local zhi_t = t.zhi --{{{6,6},{6,10},jilv=80},{{6,6},{6,13},jilv=20},}
			local zongfazhi = 0 --��������ֵ
			for i = 1,#zhi_t do
				zongfazhi = zongfazhi + zhi_t[i].jilv
			end
			local attzhi_t = {}
			local jilvzhi = math.random(1,zongfazhi)
			local bijiaozhi = 0
			for i = 1,#zhi_t do
				bijiaozhi = bijiaozhi + zhi_t[i].jilv
				if jilvzhi <= bijiaozhi then
					attzhi_t = zhi_t[i]
					break
				end
			end
			--sendmsg6(actor,tbl2json(shuxing))
			--sendmsg6(actor,tbl2json(attzhi_t))
			for i = 1,#shuxing do
				changecustomitemabil(actor,item,i,1,shuxing[i],4) --����4  1Ϊ��att����
				changecustomitemvalue(actor,item,i,"=",math.random(attzhi_t[i][1],attzhi_t[i][2]),4) --���ð�att���Ե�ֵ
			end
			setisjianquguo(actor,item,1)
		end
	end
	----�Զ�����
	if getint(actor,"�Զ�����") == 1 and getbagblank(actor) < 8 then
		huishoucaozuo(actor)
	end
end
	


-----------------------------------------------------�ɼ�����
function caijiwancheng(actor)
	giveitem(actor,getstr(actor,"�ɼ���"),1,371)
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
	sendmsg9(actor,"�ɼ����")
end

function caijihuxinlian(actor) --��ɽ�����ļ��ص������Ĳɼ���
	giveitem(actor,"������",1,371)
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
	sendmsg9(actor,"�ɼ����")
end

--�ɼ�����
function collectmon773(actor) --����5
	if getint(actor,"�ƽ��������Ƿ���ȡ") == 1 and getint(actor,"�ƽ���������") == 4 then 
		if itemcount(actor,"������") < 5 then
			setstr(actor,"�ɼ���","������")
			showprogressbardlg(actor,5,"@caijiwancheng","���ڲɼ�,����%d%...",1)
		end
	end
	--sendmsg9(actor,"�����ݴ���")
end

function collectmon775(actor) --����2
	if getint(actor,"�ƽ��������Ƿ���ȡ") == 1 and getint(actor,"�ƽ���������") == 1 then 
		if itemcount(actor,"���β�") < 5 then
			setstr(actor,"�ɼ���","���β�")
			showprogressbardlg(actor,5,"@caijiwancheng","���ڲɼ�,����%d%...",1)
		end
	end
	--sendmsg9(actor,"���βݴ���")
end

function collectmon776(actor) --����1
	if getint(actor,"�ƽ��������Ƿ���ȡ") == 1 and getint(actor,"�ƽ���������") == 0 then 
		if itemcount(actor,"�����") < 5 then
			setstr(actor,"�ɼ���","�����")
			showprogressbardlg(actor,5,"@caijiwancheng","���ڲɼ�,����%d%...",1)
		end
	end
	--sendmsg9(actor,"����̴���")
end

function collectmon777(actor) --����6
	if getint(actor,"�ƽ��������Ƿ���ȡ") == 1 and getint(actor,"�ƽ���������") == 5 then 
		if itemcount(actor,"�˲ι���") < 5 then
			setstr(actor,"�ɼ���","�˲ι���")
			showprogressbardlg(actor,5,"@caijiwancheng","���ڲɼ�,����%d%...",1)
		end
	end
	--sendmsg9(actor,"�˲ι�������")
end

function collectmon778(actor) --����4
	if getint(actor,"�ƽ��������Ƿ���ȡ") == 1 and getint(actor,"�ƽ���������") == 3 then 
		if itemcount(actor,"��ڤ��") < 5 then
			setstr(actor,"�ɼ���","��ڤ��")
			showprogressbardlg(actor,5,"@caijiwancheng","���ڲɼ�,����%d%...",1)
		end
	end
	--sendmsg9(actor,"��ڤ������")
end

function collectmon779(actor) --����3
	if getint(actor,"�ƽ��������Ƿ���ȡ") == 1 and getint(actor,"�ƽ���������") == 2 then 
		if itemcount(actor,"������") < 5 then
			setstr(actor,"�ɼ���","������")
			showprogressbardlg(actor,5,"@caijiwancheng","���ڲɼ�,����%d%...",1)
		end
	end
	--sendmsg9(actor,"����������")
end

function collectmon780(actor) --�ɼ�Ȫ��
	local listmon = getmapmon(getmap(actor),"Ȫ��",getx(actor),gety(actor),1)
	local mon = listmon[1]
	if mon then
		showprogressbardlg(actor,15,"@caijiquanshui","���ڲɼ�,����%d%...",1)
	end
end

function caijiquanshui(actor)
	local listmon = getmapmon(getmap(actor),"Ȫ��",getx(actor),gety(actor),1)
	local mon = listmon[1]
	if mon then
	else
		sendmsg9(actor,"Ȫ���ѱ��ɼ�һ��")
		return
	end
	
	local cishu = tonumber(getcurrent(mon,"8")) --�ɲɼ�����
	if not cishu then --��ֹ���� ֱ��ɾ��
		killmonbyobj(globalinfo(0),mon,false,false,false) --ɱ��
		return
	end
	
	if cishu < 1 then
		sendmsg9(actor,"Ȫ���ѱ��ɼ�һ��")
		return
	end
	
	giveitem(actor,"Ȫˮ")
	setcurrent(mon,"8",tostring(cishu - 1))
	if cishu - 1 <= 0 then
		killmonbyobj(globalinfo(0),mon,false,false,false) --ɱ��
		removequanshuidata(mon)
		sendmsg9(actor,"�ɼ��ɹ���Ȫ���ѱ��ɼ�һ��")
		sendmsg6(actor,"�ɼ��ɹ���Ȫ���ѱ��ɼ�һ��")
	else
		sendmsg9(actor,"�ɼ��ɹ���Ȫ��ʣ��Ȫˮ".. cishu - 1 .."/20")
		sendmsg6(actor,"�ɼ��ɹ���Ȫ��ʣ��Ȫˮ".. cishu - 1 .."/20")
		sendmsg0(actor,"���<font color='#FF00FF'>".. getname(actor) .."</font>��<font color='#00ff00'>".. getbaseinfo(actor,45) .."</font>��ͼ�ɼ��˴���Ȫˮ�������ķ�",251,0)
	end
end

--�˳��л�ǰ
function guilddelmemberbefore(actor)
	local ncount=getbaseinfo(actor,38) --��ñ����б�
    for i = 0 ,ncount-1 do
        local mon =  getslavebyindex(actor, i) --��ñ�������
		if getname(mon) == "��������" then
			sendmsg9(actor,"���ͷ����ڼ��ֹ�˳��л�")
			return false
		end
    end
	return true
end

--��ɢ�л�ǰ
function guildclosebefore(actor)
	local ncount=getbaseinfo(actor,38) --��ñ����б�
    for i = 0 ,ncount-1 do
        local mon =  getslavebyindex(actor, i) --��ñ�������
		if getname(mon) == "��������" then
			sendmsg9(actor,"���ͷ����ڼ��ֹ��ɢ�л�")
			return false
		end
    end
	return true
end


--buff�ı䴥��
function buffchange(actor,buffid,buffzu,caozuo) --buffid buffzu ���� 1����2����4ɾ�� 
	--sendmsg6(actor,tostring(a)..tostring(b)..tostring(c))
	if buffid == 10068 and caozuo== 4 then
		sendmsg6(actor,"�����ָ�����","#024502")
	end
end

--���տͻ��˴��ݹ�������Ϣ
function handlerequest(actor,msgid,n1,n2,n3,msg)
	--sendmsg6(actor,"�Զ��޼�����"..msg.."  �Զ��ٻ�����"..n3)
	if msgid == 111 and getjob(actor) == 2 then
		if getint(actor,"�Զ��޼�����") ~= tonumber(msg) then
			setint(actor,"�Զ��޼�����",tonumber(msg))
		end
		if getint(actor,"�Զ��ٻ�����") ~= tonumber(n3) then
			setint(actor,"�Զ��ٻ�����",tonumber(n3))
		end
	end
	if msgid == 112 then
		if itemcount(actor,"�������ʯ") > 0 then
			eatitem(actor,"�������ʯ",1)
		elseif itemcount(actor,"�������ʯ") > 0 then
			eatitem(actor,"�������ʯ",1)
		end
		--sendmsg6(actor,"������Ϣ�Զ�ʹ�����")
	end
end


--��װ��ǰ
local jinzhi_dai = {["��������(��ӡ)"]=1,["�����ָ(��ӡ)"]=1,["��ħ֮ѥ(��ӡ)"]=1,["��ħ֮��(��ӡ)"]=1,["ף������(��ӡ)"]=1,}
function takeonbeforeex(actor,item)
	local name = getitemname(actor,item)
	if jinzhi_dai[name] == 1 and getisjianquguo(actor,item) == 0 then
		sendmsg9(actor,"��װ����⿪��ӡ���ܴ���","#00FF00")
		return false
	end
	return true
end
--��װ��ǰ
function takeoffbeforeex(actor,item)
	local name = getitemname(actor,item)
	if name == "�ɽ����ƺ�«" then
		sendmsg9(actor,"��װ����ֹȡ��","#00FF00")
		return false
	end
	return true
end

--����
function canshowshopitem17(actor)
	if getint(actor,"�ۼƳ�ֵ") >= 1000 or getint(actor,"���������ש�ɼ�") == 1 or getint(actor,"�����ȼ�") >= 8 then
		notallowshow(actor,0)
	else
		notallowshow(actor,1)
	end
end

function canshowshopitem18(actor)
	if getbaseinfo(actor,39) >= 1 or getlevel(actor) >= 65 then
		notallowshow(actor,0)
	else
		notallowshow(actor,1)
	end
end

function canshowshopitem11(actor) --��ˮ����������ʾ����
	if getlevel(actor) >= 45 then
		notallowshow(actor,0)
	else
		notallowshow(actor,1)
	end
end

function magselffunc8(actor)
	local sh_data = getshouhunbuffdata(actor) --��ȡ�޻�buff����
	local you = false
	for i = 1,#sh_data do
		if sh_data[i] == "���аԵ�" then
			you = true
			break
		end
	end
	if not you then
		return
	end
	local fangxiang_t = {[0]={0,-2},[1]={2,-2},[2]={2,0},[3]={2,2},[4]={0,2},[5]={-2,2},[6]={-2,0},[7]={-2,-2}}
	--sendmsg6(actor,"����")
	--��ȡ��Χһ����Χ�ڵ����
	local x = getx(actor)
	local y = gety(actor)
	local players = getobjectinmap(getmap(actor),x,y,1,1)
	for i = 1,#players do
		local player = players[i]
		if ispropertarget(actor,player) and ( getx(actor) ~= getx(player) or gety(actor) ~= gety(player) ) and getlevel(actor) > getlevel(player) and not hasbuff(player,20076) and not hasbuff(player,10052) then --�ܱ�������
			--sendmsg6(actor,"�������"..getname(player))
			local fangxiang = getxiangduifangxiang(actor,player)
			if isemptyinmap(getmap(actor),x+fangxiang_t[fangxiang][1],y+fangxiang_t[fangxiang][2]) then
				if not hasbuff(player,20102) then
					addbuff(player,20102)
					sendmsg9(player,"���ܵ���".. getname(actor) .."��'���аԵ�'��ֹʹ������ҩƷ5��")
					--sendmsg0(0,"5���ֹ��ҩ���"..getname(player))
				end
			end
		end
	end
end

function magselffunc48(actor)
	local sh_data = getshouhunbuffdata(actor) --��ȡ�޻�buff����
	local you = false
	for i = 1,#sh_data do
		if sh_data[i] == "���аԵ�" then
			you = true
			break
		end
	end
	if not you then
		return
	end
	local fangxiang_t = {[0]={0,-2},[1]={2,-2},[2]={2,0},[3]={2,2},[4]={0,2},[5]={-2,2},[6]={-2,0},[7]={-2,-2}}
	--sendmsg0(actor,"������")
	--��ȡ��Χһ����Χ�ڵ����
	local x = getx(actor)
	local y = gety(actor)
	local players = getobjectinmap(getmap(actor),x,y,1,1)
	for i = 1,#players do
		local player = players[i]
		if ispropertarget(actor,player) and ( getx(actor) ~= getx(player) or gety(actor) ~= gety(player) ) and getlevel(actor) >= getlevel(player) and not hasbuff(player,20076) and not hasbuff(player,10052) then --�ܱ�������
			--sendmsg6(actor,"�������"..getname(player))
			local fangxiang = getxiangduifangxiang(actor,player)
			if isemptyinmap(getmap(actor),x+fangxiang_t[fangxiang][1],y+fangxiang_t[fangxiang][2]) then
				if not hasbuff(player,20102) then
					addbuff(player,20102)
					--sendmsg0(0,"5���ֹ��ҩ���"..getname(player))
					
					sendmsg9(player,"���ܵ���".. getname(actor) .."��'���аԵ�'��ֹʹ������ҩƷ5��")
				end
			end
		end
	end
end

function getxiangduifangxiang(actor,player)
	local x = getx(actor)
	local y = gety(actor)
	local x1 = getx(player)
	local y1 = gety(player)
	if x == x1 and y1 < y then
		return 0
	end
	if x1 > x and y1 < y then
		return 1
	end
	if x1 > x and y == y1 then
		return 2
	end
	if x1 > x and y1 > y then
		return 3
	end
	if x1 == x and y1 > y then
		return 4
	end
	if x1 < x and y1 > y then
		return 5
	end
	if x1 < x and y1 == y then
		return 6
	end
	if x1 < x and y1 < y then
		return 7
	end
	return nil
end

function sendability(actor) --���Ըı䴥��
	sendmsg0(actor, "���Ըı䴥��")
	--haoshistart(actor)
	xinyunbeigong(actor) --��10 ��11 ���˱�������
	xueliangjisuan(actor)
	baolvjisuan(actor)
	--haoshiend(actor)
end

function xueliangjisuan(actor)
	local tiliyuansu = getbaseinfo(actor,51,213) --����Ԫ��
	local smz = getusebonuspoint(actor,11) --����ֵ��������
	local maxhp = getbaseinfo(actor,10) --��������ֵ����
	local jichuzhi = maxhp - smz  --û�м�������Ԫ��ʱ���ֵ
	local jisuanzhi = math.ceil(jichuzhi * (1+tiliyuansu/10000)) --������ֵ
	if jisuanzhi == maxhp or jisuanzhi-jichuzhi < 0 then
		return
	end
	--setusebonuspoint(actor,11,jisuanzhi-jichuzhi)
	setusebonuspoint(actor,11,jisuanzhi-jichuzhi)
	recalcabilitys(actor)
	--release_print(getname(actor),"����Ԫ��"..tiliyuansu,"��������ֵ"..smz,"��������"..maxhp,"û�м���ʱ���ֵ"..jichuzhi,"������ֵ"..jisuanzhi )
end

function baolvjisuan(actor)
	local shijibaolv = getbaseinfo(actor,51,65) --ʵ�ʱ���
	local xianshibaolv = getbaseinfo(actor,51,215) --��ʾ����
	sendmsg6(actor,"ʵ�ʱ���"..shijibaolv.."��ʾ���ʣ�"..xianshibaolv)
	local givebaolv = math.floor(xianshibaolv/300)*100 --��Ҫ���ı���
	if givebaolv == shijibaolv then
		return
	end
	if hasbuff(actor,20110) then
		delbuff(actor,20110)
	end
	if givebaolv > 0 then
		addbuff(actor,20110,0,1,actor,{[65]=givebaolv})
	end
	recalcabilitys(actor)
end

function canbuyshopitem21(actor)
	if getint(actor,"�ۼƳ�ֵ") < 300 then
		sendmsg9(actor,"����ƭ�Ӻ��� Ϊ��ֹ����ϵ���ƭ ����Žǹ������ֵ�ﵽ����")
		notallowbuy(actor,1)
	else
		notallowbuy(actor,0)
	end
end

function canbuyshopitem5(actor)
	if getgold(actor) < 300000 then
		sendmsg9(actor,"�ǰ󶨽�Ҳ���","#FFFF00")
		notallowbuy(actor,1)
	else
		notallowbuy(actor,0)
	end
end

function buyshopitem(actor)
	local itemname = getplaydef(actor,"S0")
	local shuliang = getplaydef(actor,"N0")
	local jiage = getplaydef(actor,"M0")
	local huobiid = getplaydef(actor,"M1")
	--release_print("����"..itemname,"����"..shuliang,"�ܼ�"..jiage,"����"..huobiid)

	if huobiid == 7 or huobiid == 0 then
		setint(actor,"��ҹ����Ӹ���",getint(actor,"��ҹ����Ӹ���")+shuliang)
		post(actor,"�̳ǹ���".. itemname .."*"..shuliang.."|�������*"..jiage)
	elseif huobiid == 2 then
		post(actor,"�̳ǹ���".. itemname .."*"..shuliang.."|Ԫ������*"..jiage)
		if itemname == "ҩƷ����" then
			setsysint("���������ĵ�Ԫ��",getsysint("���������ĵ�Ԫ��")+jiage)
			setsysint("ÿ�����������ĵ�Ԫ��",getsysint("ÿ�����������ĵ�Ԫ��")+jiage)
		elseif itemname == "����֮��" then
			setsysint("�������ĵ�Ԫ��",getsysint("�������ĵ�Ԫ��")+jiage)
			setsysint("ÿ���������ĵ�Ԫ��",getsysint("ÿ���������ĵ�Ԫ��")+jiage)
		elseif itemname == "���ʯ" then
			setsysint("�����󻨷ѵ�Ԫ��",getsysint("�����󻨷ѵ�Ԫ��")+jiage)
			setsysint("ÿ�չ����󻨷ѵ�Ԫ��",getsysint("ÿ�չ����󻨷ѵ�Ԫ��")+jiage)
		elseif itemname == "��ˮ����" then
			setsysint("������ˮ���󻨷ѵ�Ԫ��",getsysint("������ˮ���󻨷ѵ�Ԫ��")+jiage)
			setsysint("ÿ�չ�����ˮ���󻨷ѵ�Ԫ��",getsysint("ÿ�չ�����ˮ���󻨷ѵ�Ԫ��")+jiage)
		end
	end
	
end


function struck(actor,gongjizhe,shoujizhe,skillid)
	local sh_data = getshouhunbuffdata(actor) --��ȡ�޻�buff����
	local you = false
	for i = 1,#sh_data do
		if sh_data[i] == "��ս֮��" then
			if getbaseinfo(gongjizhe,-1) then --������
				if os.time() - getint(shoujizhe,"��ս֮��ʱ��") >= 1 then
					local addhp = math.floor(getbaseinfo(shoujizhe,10)*0.005)
					if addhp > 0 then
						humanhp(shoujizhe,"+",addhp,0)
						--sendmsg0(actor,"��ս֮����Ѫ"..addhp)
					end
					setint(shoujizhe,"��ս֮��ʱ��",os.time())
				end
			end
			break
		end
	end
end
--�л�༭ǰ����
function updateguildnotice(actor)
	if getlevel(actor) < 55 then
		sendmsg9(actor,"�༭�лṫ����Ҫ55��")
		return false
	end
	return true
end

--�����ϼ�ǰ
function canpaimaiitem(actor)
	if getmap(actor) == "tuoji" or getmap(actor) == "waigua" then
		callscriptex(actor, "ALLOWPAIMAI",1)
		sendmsg9(actor,"�˵�ͼ�޷��ϼ�")
		return false
	end
	callscriptex(actor, "ALLOWPAIMAI",0)
	return true
end

function buypaimaiitem(actor)

	if getmap(actor) == "tuoji" or getmap(actor) == "waigua" then
		callscriptex(actor, "ALLOWPAIMAI",1)
		sendmsg9(actor,"�˵�ͼ�޷�����")
		return false
	end
	
	if os.time() - getint(actor,"��������ʱ��") < 1 then
		callscriptex(actor, "ALLOWPAIMAI",1)
		sendmsg9(actor,"1������ֻ�ܹ���һ��")
		return false
	end
	callscriptex(actor, "ALLOWPAIMAI",0)
	setint(actor,"��������ʱ��",os.time())
	return true
end

function triggerchat(actor, sMsg, chat) --2���� 3˽�� 6���� 4�л�
	if getmap(actor) == "waigua" or getmap(actor) == "tuoji" then
		sendmsg9(actor, "�˵�ͼ��ֹ���ԣ�����ϵ�ͷ�")
		return false
	end
	
	if getint(actor,"��Ա�ȼ�") >= 2 then
		return true
	end
	
	if getint(actor,"����") == 1 then
		sendmsg9(actor, "����Ϊ�ظ����Կ����漰��ٹ������.�迪ͨͶ�ʴ�ʹ�������.����ϵ�ͷ�")
		return false
	end
	
	if chat == 6 or chat == 3 or chat == 2 then
		if getint(actor,"�ۼƳ�ֵ") < 10 and getlevel(actor) < 48 then
			sendmsg9(actor, "Ϊ��ֹ�����ƭ�ӹƻ�.��Ƶ��������ﵽ48��������ȡ���ĺ���")
			return false
		end
    end
	
	if chat == 6 and getmap(actor) == "3" then --�����ڰ�ȫ��
		local liaotianlist = getliaotianlist(actor)
		local cs = 1
		for i = 1,#liaotianlist do
			if liaotianlist[i] == sMsg then
				cs = cs + 1
			end
		end
		
		if cs >= 10 then
			setint(actor,"����",1)
			sendmsg9(actor, "����Ϊ�ظ����Կ����漰��ٹ������.�迪ͨͶ�ʴ�ʹ�������.����ϵ�ͷ�")
			return false
		end
		
		table.insert(liaotianlist,sMsg)
		--sendmsg6(actor,liaotianlist[1])
		for i = #liaotianlist,101,-1 do
			table.remove(liaotianlist,i)
		end
		setstr(actor,"���������б�",tbl2json(liaotianlist))
	end
	
	if chat == 3 then --˽��
		local liaotianlist = getsiliaolist(actor)
		local cs = 1
		for i = 1,#liaotianlist do
			if liaotianlist[i] == sMsg then
				cs = cs + 1
			end
		end
		
		if cs >= 20 then
			setint(actor,"����",1)
			sendmsg9(actor, "����Ϊ�ظ����Կ����漰��ٹ������.�迪ͨͶ�ʴ�ʹ�������.����ϵ�ͷ�")
			return false
		end
		
		table.insert(liaotianlist,sMsg)
		--sendmsg6(actor,liaotianlist[1])
		for i = #liaotianlist,101,-1 do
			table.remove(liaotianlist,i)
		end
		setstr(actor,"˽�������б�",tbl2json(liaotianlist))
	end 
	
	if chat == 2 then --����
		local liaotianlist = gethanhualist(actor)
		local cs = 1
		for i = 1,#liaotianlist do
			if liaotianlist[i] == sMsg then
				cs = cs + 1
			end
		end
		
		if cs >= 10 then
			setint(actor,"����",1)
			sendmsg9(actor, "����Ϊ�ظ����Կ����漰��ٹ������.�迪ͨͶ�ʴ�ʹ�������.����ϵ�ͷ�")
			return false
		end
		
		table.insert(liaotianlist,sMsg)
		--sendmsg6(actor,liaotianlist[1])
		for i = #liaotianlist,101,-1 do
			table.remove(liaotianlist,i)
		end
		setstr(actor,"���������б�",tbl2json(liaotianlist))
	end
	
	
	if chat == 4 then
		if getint(actor,"�ۼƳ�ֵ") < 10 and getlevel(actor) < 45 then
			sendmsg9(actor, "Ϊ��ֹ����ϵ���ƭ.�лᷢ����ﵽ45��������ȡ���ĺ���.")
			return false
		end
    end
	if chat == 4 then --�л�
		local liaotianlist = gethanghuilist(actor)
		local cs = 1
		for i = 1,#liaotianlist do
			if liaotianlist[i] == sMsg then
				cs = cs + 1
			end
		end
		
		if cs >= 20 then
			setint(actor,"����",1)
			sendmsg9(actor, "����Ϊ�ظ����Կ����漰��ٹ������.�迪ͨͶ�ʴ�ʹ�������.����ϵ�ͷ�")
			return false
		end
		
		table.insert(liaotianlist,sMsg)
		--sendmsg6(actor,liaotianlist[1])
		for i = #liaotianlist,101,-1 do
			table.remove(liaotianlist,i)
		end
		setstr(actor,"�л������б�",tbl2json(liaotianlist))
	end
	
	
    return true
end

function gethanghuilist(actor)
	local t = {}
	local str = getstr(actor,"�л������б�")
	if str ~= "" then
		t = json2tbl(str)
	end
	return t
end

function gethanhualist(actor)
	local t = {}
	local str = getstr(actor,"���������б�")
	if str ~= "" then
		t = json2tbl(str)
	end
	return t
end

function getsiliaolist(actor)
	local t = {}
	local str = getstr(actor,"˽�������б�")
	if str ~= "" then
		t = json2tbl(str)
	end
	return t
end

function getliaotianlist(actor)
	local t = {}
	local str = getstr(actor,"���������б�")
	if str ~= "" then
		t = json2tbl(str)
	end
	return t
end

function resetday(actor) --���촥��
	--sendmsg0(actor,"���촥��")
	if hasbuff(actor,19996) then
		delbuff(actor,19996)
	end
	if hasbuff(actor,19997) then
		delbuff(actor,19997)
	end
	
	songhonglan(actor) --ÿ���ͺ�������
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --������ʾ
end

function inivitguild(actor)
	--sendmsg9(actor,"�˹����ѽ�ֹ")
	return false
end
