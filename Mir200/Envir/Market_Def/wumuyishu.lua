require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor)
	
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=��������>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ax=0|ay=0.5|x=22.0|y=85.5|color=255|size=18|text=�����������ֽ����������ʿ����һ������׷Ѱ�����������>
		<RText|ay=0.5|x=22.0|y=120.5|color=255|size=18|text=�ܣ��������飬��֮���ߣ�����֮������֪��������귨��½>
		<RText|ay=0.5|x=22.0|y=155.5|color=255|size=18|text=�����������Ľ�����Թ��Ѫ���ȷ磿>
		<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264|y=214.5|size=18|color=250|text=�⿪��������İ���|link=@shenmishuxing>

	]]
	say(actor,msg)
end

function shenmishuxing(actor,fangshi,xianshi,goumaitishi)
	goumaitishi = tonumber(goumaitishi) or 0
	fangshi = tonumber(fangshi) or 0
	xianshi = tonumber(xianshi) or 0
	local item = linkbodyitem(actor,15) --����λ��װ�� ��������
	if item == "0" then
		sendmsg9(actor,"�������������")
		return
	end
	
	local msg = [[
		<Img|show=4|bg=1|loadDelay=1|move=1|reset=0|img=zhangheng/171.png|esc=1>
		<Button|x=540.0|y=1.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-21.0|y=-15.0|img=zhangheng/2.png|esc=0>
		<Img|x=15.0|y=36.0|img=zhangheng/174.png|esc=0>
		<Img|x=18.0|y=314.0|width=506|esc=0|img=zhangheng/173.png>
		<Img|x=127.0|y=196.0|img=zhangheng/175.png|esc=0>
		<Button|x=69.0|y=91.0|width=120|size=18|color=10051|nimg=zhangheng/13.png|text=�ύ1����ҳ|link=@shifang,1>
		<Button|x=345.0|y=91.0|width=120|color=10051|nimg=zhangheng/13.png|size=18|text=�ύ10����ҳ|link=@shifang,2>

			
	]]
	if getint(actor,"�ۼƳ�ֵ") >= 1000 and getsysint("��������") > 0 then
		if getint(actor,"������������") == 0 then
			msg=msg..'<Button|ax=0.5|ay=0.5|x=457.0|y=407.5|color=250|size=16|width=116|nimg=zhangheng/13.png|text=��ȡ��������|link=@shenmishuxing,0,0,1>'
		elseif getint(actor,"������������") == 1 and getsysint("��������") >= 4 then
			msg=msg..'<Button|ax=0.5|ay=0.5|x=457.0|y=407.5|color=250|size=16|width=116|nimg=zhangheng/13.png|text=��ȡ��������|link=@shenmishuxing,0,0,2>'
		end
	end
	
	msg=msg..'<Button|x=19.0|y=392.0|pimg=zhangheng/8.png|color=255|size=18|nimg=zhangheng/8.png|link=@shenmishuxing,'..fangshi..',1>'
	local lv = getitem_wmyslv(actor,item)
	local sx_jiesuolv = getitem_wmysjsdj(actor,item) --������������ȼ�
	if sx_jiesuolv == 2 then
		msg=msg..'<Text|ax=0.5|ay=0.5|x=268.0|y=228.5|color=103|size=18|text=������Բ������ѡ������"��ש"����"Ԫ��">'
		msg=msg..'<Text|ax=0.5|ay=0.5|x=268.0|y=273.5|color=103|size=18|text=����������ȼ����ã���ȡ�µ���������>'
		msg=msg..'<Button|x=226.0|y=373.0|nimg=zhangheng/13.png|color=10051|size=18|text=���õȼ�|link=@chongzhi,'..fangshi..','..getiteminfo(actor,item,1)..'>'
		msg=msg..'<Text|x=100.0|y=362.0|color=108|size=18|text=��ש����>'
		msg=msg..'<Text|x=398.0|y=362.0|size=18|color=108|text=Ԫ������>'
		if fangshi == 1 then
			msg=msg..'<Text|ax=0.5|ay=0.5|x=269.0|y=336.5|size=18|color=150|text=��Ҫ��120����ҳ+2����ש>'
			msg=msg..'<Img|x=70.0|y=357.0|img=zhangheng/170.png|link=@shenmishuxing>'
			msg=msg..'<Img|x=368.0|y=357.0|img=zhangheng/169.png|link=@shenmishuxing,2>'
		elseif fangshi == 2 then
			msg=msg..'<Text|ax=0.5|ay=0.5|x=269.0|y=336.5|size=18|color=150|text=��Ҫ��80����ҳ+8888Ԫ��>'
			msg=msg..'<Img|x=70.0|y=357.0|img=zhangheng/169.png|link=@shenmishuxing,1>'
			msg=msg..'<Img|x=368.0|y=357.0|img=zhangheng/170.png|link=@shenmishuxing>'
		else
			msg=msg..'<Img|x=70.0|y=357.0|img=zhangheng/169.png|link=@shenmishuxing,1>'
			msg=msg..'<Img|x=368.0|y=357.0|img=zhangheng/169.png|link=@shenmishuxing,2>'
		end
	
	elseif sx_jiesuolv == 1 then  --��ʾ�ڶ�������
		msg=msg..'<RText|ax=0.5|ay=0.5|x=268.0|y=228.5|color=103|size=18|text=�ﵽ<10��/FCOLOR=251>��<20��/FCOLOR=251>�ɷֱ����һ����������>'
		msg=msg..'<RText|ax=0.5|ay=0.5|x=268.0|y=273.5|color=103|size=18|text=�����������������װ�����鿴����>'
		--if lv >= 20 then
			msg=msg..'<Text|ax=0.5|ay=0.5|x=269.0|y=346.5|size=18|color=150|text=��������ʧ���Ѿ�.����Ҫ����һ������Ϊ��⿪δ��֮��>'
		--end
		msg=msg..'<Button|x=210.0|y=373.0|width=120|nimg=zhangheng/13.png|color=10051|size=18|text=������������|link=@jiesuo,'.. sx_jiesuolv ..','..getiteminfo(actor,item,1)..'>'
	elseif sx_jiesuolv == 0 then  --��ʾ��һ������
		msg=msg..'<RText|ax=0.5|ay=0.5|x=268.0|y=228.5|color=103|size=18|text=�ﵽ<10��/FCOLOR=251>��<20��/FCOLOR=251>�ɷֱ����һ����������>'
		msg=msg..'<RText|ax=0.5|ay=0.5|x=268.0|y=273.5|color=103|size=18|text=�����������������װ�����鿴����>'
		if lv >= 10 then
			msg=msg..'<Text|ax=0.5|ay=0.5|x=269.0|y=346.5|size=18|color=150|text=��������ʧ���Ѿ�.����Ҫ����һ������Ϊ��⿪δ��֮��>'
		end
		msg=msg..'<Button|x=210.0|y=373.0|width=120|nimg=zhangheng/13.png|color=10051|size=18|text=������������|link=@jiesuo,'.. sx_jiesuolv ..','..getiteminfo(actor,item,1)..'>'
	end
	
	msg=msg..'<EquipShow|x=234.0|y=76.0|index=15|bgtype=0|reload=1|showtips=1>'
	
	
	if xianshi == 1 then
		msg = msg.."<Layout|x=-1000.0|y=-1001.0|width=3000|height=3000|color=255>|link=@shenmishuxing,"..fangshi..">"		
		msg = msg..[[
		<Img|ay=0.5|x=51.0|y=320.0|width=240|height=200|scale9l=10|scale9b=10|img=zh/7.png|scale9r=10|scale9t=10|esc=0>
		<RText|ay=0.5|x=58.0|y=268.5|color=255|size=16|text=<��������/FCOLOR=254>����϶࣬�쳣ǿ��>
		<RText|ay=0.5|x=58.0|y=293.5|color=255|size=16|text=ÿ����Ҹ����Լ�������ѡ��>
		<RText|ay=0.5|x=58.0|y=318.5|color=255|size=16|text=<�ʺ��Լ�/FCOLOR=70>�Ĳ�����õ�>
		<RText|ay=0.5|x=58.0|y=350.5|color=255|size=16|text=ÿ�ύ<1����ҳ/FCOLOR=250>��Ϊ��������>
		<RText|ay=0.5|x=58.0|y=375.5|color=255|size=16|text=ע��<100��/FCOLOR=250>����ֵ��ÿ��һ��>
		<RText|ay=0.5|x=58.0|y=400.5|color=255|size=16|text=��������һ��<������/FCOLOR=253>>
		<RText|ay=0.5|x=58.0|y=238.5|color=251|size=16|text=��������>
		]]
	end
	
	if goumaitishi == 1 then	
		msg = msg..[[
		<Img|ay=0.5|x=122.0|y=248.0|width=320|height=170|scale9t=10|scale9b=10|img=zh/7.png|scale9r=10|scale9l=10|esc=0>
		<RText|ay=0.5|x=134.0|y=187.5|color=255|size=16|text=�����ٻ�ȡһ������������Ҫ25000���ʯ>
		<RText|ay=0.5|x=134.0|y=211.5|color=255|size=16|text=���������һ���츳�㣬�������κ�����>
		<RText|ay=0.5|x=134.0|y=235.5|color=255|size=16|text=�����Ҳֻ�����һ����ֻ�ܹ���һ�Σ�>
		<RText|ay=0.5|x=134.0|y=258.5|color=255|size=16|text=�Ƿ�ȷ����ȡ?<�������������߲����֣�/FCOLOR=250>>
		<Button|x=159.0|y=283.0|color=10051|nimg=zhangheng/13.png|size=18|text=ȡ��|link=@shenmishuxing>
		<Button|x=307.0|y=283.0|color=10051|nimg=zhangheng/13.png|size=18|text=ȷ��|link=@huoquwumuyishu,1>

		]]
	elseif goumaitishi == 2 then
		msg = msg..[[
		<Img|ay=0.5|x=122.0|y=248.0|width=310|height=170|scale9t=10|scale9b=10|img=zh/7.png|scale9r=10|scale9l=10|esc=0>
<RText|ay=0.5|x=134.0|y=187.5|color=255|size=16|text=�����ٻ�ȡһ������������Ҫ100��Ԫ��>
<RText|ay=0.5|x=134.0|y=211.5|color=255|size=16|text=���������һ���츳�㣬�������κ�����>
<RText|ay=0.5|x=134.0|y=235.5|color=255|size=16|text=�����Ҳֻ�����һ�����˴ι��������>
<RText|ay=0.5|x=134.0|y=258.5|color=255|size=16|text=�޷��ٶȻ�ã��Ƿ�ȷ����ȡ?>
<Button|x=159.0|y=283.0|color=10051|nimg=zhangheng/13.png|size=18|text=ȡ��|link=@shenmishuxing>
<Button|x=307.0|y=283.0|color=10051|nimg=zhangheng/13.png|size=18|text=ȷ��|link=@huoquwumuyishu,2>


		]]
	end
	say(actor,msg)
end

function huoquwumuyishu(actor,par)
	if par == "1" then
		if itemcount(actor,"���ʯ") < 25000 then
			sendmsg9(actor,"���ʯ����25000��")
			return 
		end
		takeitem(actor,"���ʯ",25000)
	else
		if not subingot(actor,1000000) then
			sendmsg9(actor,"Ԫ������100��")
			return 
		end
	end
	giveitem(actor,"��������",1,371)
	setint(actor,"������������",getint(actor,"������������")+1)
	addtianfudian(actor,1)
	setint(actor,"�����Զ���ɫ",1)
	
	setsysint("������������ĸ���",getsysint("������������ĸ���")+1)
	setsysint("ÿ�չ�����������ĸ���",getsysint("ÿ�չ�����������ĸ���")+1)
	return shenmishuxing(actor)
end

function chongzhi(actor,fangshi,makeid)
	fangshi = tonumber(fangshi)
	makeid = tonumber(makeid)
	if fangshi == 0 then
		sendmsg9(actor,"����ѡ�����÷�ʽ")
		return
	end
	if not isinrole(actor,makeid) then
		sendmsg9(actor,"��ǰ���������Ѳ���װ����")
		return
	end
	
	if fangshi == 1 then
		if itemcount(actor,"��ҳ") < 120 or itemcount(actor,"��ש") < 2 then
			sendmsg9(actor,"��ҳ���ש����")
			return
		end
		takeitem(actor,"��ҳ",120)
		takeitem(actor,"��ש",2)
	else
		if itemcount(actor,"��ҳ") < 80 or getingot(actor) < 8888 then
			sendmsg9(actor,"��ҳ��Ԫ������")
			return
		end
		subingot(actor,8888,"ϴ��������")
		takeitem(actor,"��ҳ",80)
	end
	
	local item = linkbodyitem(actor,15) --����λ��װ�� ��������
	callscriptex(actor, "SETADDNEWABIL", 15, "=" ,"3#3#0|3#4#0|3#5#0|3#6#0|3#7#0|3#8#0|3#9#0|3#10#0|3#11#0|3#12#0") --������Ʒ������ ��� ��һ��
	setitem_wmysd2tbh(actor,item,0)
	setitem_wmysd2tzhi(actor,item,0)
	setitem_wmysd3tbh(actor,item,0)
	setitem_wmysjsdj(actor,item,0) --��������
	setitem_wmyslv(actor,item,0) --��������ȼ�
	setitem_wmysjy(actor,item,0) --�������龭��
	addwmysjy(actor,0)
	sendmsg9(actor,"���óɹ�")
	setitem_wmysxiaxian(actor,item,0)
	setitem_wmysshangxian(actor,item,0)
	setint(actor,"�����������ô���",getint(actor,"�����������ô���")+1)
	setint(actor,"����������ƴ���",getint(actor,"����������ƴ���")+1)
	refreshitem(actor, item)
	setbuff(actor)
	if fangshi == 1 then
		post(actor,"���������ש����")
	else
		post(actor,"��������Ԫ������")
	end
	setsysint("ϴ��������Ĵ���",getsysint("ϴ��������Ĵ���")+1)
	setsysint("ÿ��ϴ��������Ĵ���",getsysint("ÿ��ϴ��������Ĵ���")+1)
	return shenmishuxing(actor)
end

function jiesuo(actor,sx_jiesuolv,makeid)
	makeid = tonumber(makeid)
	sx_jiesuolv = tonumber(sx_jiesuolv)
	if not isinrole(actor,makeid) then
		sendmsg9(actor,"��ǰ���������Ѳ���װ����")
		return
	end
	local item = linkbodyitem(actor,15) --����λ��װ�� ��������
	local lv = getitem_wmyslv(actor,item)
	
	if sx_jiesuolv == 0 and lv >= 10 then
		if getint(actor,"��Ա�ȼ�") < 2 then
			if getgold(actor) < 120000 then
				sendmsg9(actor,"����Ҫ��������12��ǰ󶨽�Ҳſ��Խ⿪�������������","#FF00FF")
				return
			end
		end
		
		if itemcount(actor,"����") < 1 then
			sendmsg9(actor,"��������")
			return
		end
		takeitem(actor,"����",1)
		
		local bianhao = {1,18}
		if math.random(1,100) <= 20 then
			bianhao = {19,45}
		end
		local suijizhi = math.random(bianhao[1],bianhao[2])
		if suijizhi == 41 then --ɾ�� ̩̹���� �����˺���30%
			suijizhi = 42
		end
		
		if getjob(actor)==2 and getint(actor,"����������ƴ���") >= 59 then
			suijizhi = 42
			setint(actor,"����������ƴ���",0)
		end
		
		setitem_wmysd2tbh(actor,item,suijizhi)
		if suijizhi < 19 then
			setitem_wmysd2tzhi(actor,item,math.random(3,6)) --ǰ19������������3%-6%
		end
		setitem_wmysjsdj(actor,item,1) --��������
		sendmsg9(actor,"�����ɹ�")
		refreshitem(actor, item)
		setbuff(actor)
		return shenmishuxing(actor)
	elseif sx_jiesuolv == 1 and lv >= 20 then
		if itemcount(actor,"����") < 1 then
			sendmsg9(actor,"��������")
			return
		end
		takeitem(actor,"����",1)
		local bianhao = {1,33}
		setint(actor,"��ɫ����",getint(actor,"��ɫ����")+1)
		if getint(actor,"��ɫ����") > 39 then
			if math.random(1,100) <= 50 then
				bianhao = {34,48}
				setint(actor,"��ɫ����",0)
			end
		elseif getint(actor,"��ɫ����") > 5 then
			if math.random(1,100) <= 2 then
				bianhao = {34,48}
				setint(actor,"��ɫ����",0)
			end
		end
		local suijizhi = math.random(bianhao[1],bianhao[2])
		if suijizhi == 28 then
			if math.random(1,100) < 50 then
				suijizhi = 33
			end
		end
		
		
		setitem_wmysd3tbh(actor,item,suijizhi)
		
		setitem_wmysjsdj(actor,item,2) --��������
		setint(actor,"���������ש�ɼ�",1)
		sendmsg9(actor,"�����ɹ�")
		refreshitem(actor, item)
		setbuff(actor)
		return shenmishuxing(actor)
	else
		if sx_jiesuolv == 0 then
			sendmsg9(actor,"����������黹δ�ﵽ10���������ύ��ҳ������������")
		else
			sendmsg9(actor,"����������黹δ�ﵽ20���������ύ��ҳ������������")
		end
		return
	end
end	

local jy_zhi = {100,1000}
local sy_sl = {1,10}
local huiyuan_bili = {[0]=0,10,30,60,100}
function shifang(actor,par)
	par = tonumber(par)

	local item = linkbodyitem(actor,15) --����λ��װ�� ��������
	if item == "0" then
		sendmsg9(actor,"��û�������������")
		return
	end
	if getitem_wmyslv(actor,item) >= 20 then
		sendmsg9(actor,"���������Ѿ�����")
		return
	end
	if itemcount(actor,"��ҳ") < sy_sl[par] then
		sendmsg9(actor,"��ҳ����")
		return
	end
	takeitem(actor,"��ҳ",sy_sl[par])
	local jyz = jy_zhi[par]
	local bili = huiyuan_bili[getint(actor,"��Ա�ȼ�")]
	jyz = jyz + jyz*bili/100
	addwmysjy(actor,jyz)
	sendmsg9(actor,"�������龭��+"..jyz)
	return shenmishuxing(actor)
end

local jineng = {
	"�׵���","�����","���ǻ���","ħ����","��ǽ�˺�","������","��������","��ɱ����","�����䵶","��ɱ����","�����Ӱ","�һ𽣷�","����ն","���ս���","�����˺�",     
	"�����","��Ѫ��","ʩ����","����籩","���紩��","ŭ������","����ħ��","��и�ɻ�","Ŀѣ����","ĩ������","����Ѹ��","������","����ڤ��","���ֱײ","�������","Բ�»���",
	"��ɱ֮��","�˷�����","����׷��","����֮ŭ","��֮����","�̺�����","�����̿�","������Ȼ","ս������","̩̹����","ǧ����","�ٹ����","���ܾ���","����ͨ��"
	}
function setbuff(actor)
	
	setint(actor,"��������2���",0)
	setint(actor,"��������3���",0)
	for i = 1,18 do
		if i ~= 15 then
			--setmagicpower(actor,jineng[i],0,1)
			callscriptex(actor, "SetMagicPower", jineng[i], 0,1) --������������buff
		end
	end
	local item = linkbodyitem(actor,15) --����λ��װ�� ��������
	if item == "0" then
		callscriptex(actor, "CallLua", "QFunction-0", "@ditujiemian") --������������buff
		setdisantiaobuff(actor)
		return
	end
	
	local tiao2 = getitem_wmysd2tbh(actor,item) --��2�����
	local tiaozhi2 = getitem_wmysd2tzhi(actor,item) --��2�����ֵ
	local tiao3 = getitem_wmysd3tbh(actor,item) --��3�����
	if tiao2 > 0 then
		if tiao2 <= 18 and tiao2 ~= 15 then
			callscriptex(actor, "SetMagicPower", jineng[tiao2], tiaozhi2,1) --������������buff
			--setmagicpower(actor,"�����",100,1)
			--sendmsg6(actor,jineng[tiao2].."��������"..tiaozhi2.."%")
		end
	end
	setint(actor,"��������2���",tiao2)
	setint(actor,"��������2ֵ",tiaozhi2)
	setint(actor,"��������3���",tiao3)
	callscriptex(actor, "CallLua", "QFunction-0", "@ditujiemian") --���ô��ʹ���
	setdisantiaobuff(actor)
	
end

local buffid_t = {[1]=20062,[2]=20063,[3]=20064,[4]=20065,[5]=20066,[11]=20106,[25]=20073,[35]=20076,[40]=20077,[46]=20093}
function setdisantiaobuff(actor)
	local bh = getint(actor,"��������3���")
	if buffid_t[bh] then
		addbuff(actor,buffid_t[bh])
	else
		addbuff(actor,20071)
		--�����buff
	end
end



--�����������龭��
function addwmysjy(actor,dian)
	dian = tonumber(dian)
	local item = linkbodyitem(actor,15) --����λ��װ�� ��������
	if item ~= "0" then
		local lv = getitem_wmyslv(actor,item) --��������ȼ�
		local jy = getitem_wmysjy(actor,item) --�������龭��
		if lv >= 20 then --��������
			
		else --δ����
			setitem_wmysjy(actor,item,jy+dian) --�������龭��
			wumushengji(actor,item,jy+dian) --�������������ȼ�����
		end
	end
end
local jy_t = {200,300,400,500,600, 700, 800,900,1000,1200,1400,1600,1800,2000,2200,2400,2600,2800,3000,3600,3600}
local shuxingid_t = {
	[0] = {3,4},[1] = {5,6},[2] = {7,8}
}
function wumushengji(actor,item)
	local lv = getitem_wmyslv(actor,item) --��������ȼ�
	local jy = getitem_wmysjy(actor,item) --�������龭��
	if lv == 20 then --���������
		setitem_wmysjy(actor,item,jy_t[lv])
	else
		if jy >= jy_t[lv+1] then
			setitem_wmyslv(actor,item,lv+1)
			setitem_wmysjy(actor,item,jy-jy_t[lv+1])
			local t = shuxingid_t[getjob(actor)] --{3,4}
			local id = 1
			if getint(actor,"�����������ô���") >= 100 then
				if math.random(1,100) <= 80 then
					id = 2
				end
			elseif getint(actor,"�����������ô���") >= 50 then
				if math.random(1,100) <= 70 then
					id = 2
				end
			elseif getint(actor,"�����������ô���") >= 20 then
				if math.random(1,100) <= 60 then
					id = 2
				end
			elseif getint(actor,"�����������ô���") >= 5 then
				if math.random(1,100) <= 50 then
					id = 2
				end
			else
				if math.random(1,100) <= 40 then
					id = 2
				end
			end
			
			if getitem_wmysxiaxian(actor,item) >= 15 then
				id = 2
			end
			if getitem_wmysshangxian(actor,item) >= 15 then
				id = 1
			end
			
			if id == 1 then
				setitem_wmysxiaxian(actor,item,getitem_wmysxiaxian(actor,item)+1)
			else
				setitem_wmysshangxian(actor,item,getitem_wmysshangxian(actor,item)+1)
			end
			callscriptex(actor, "SETADDNEWABIL", 15, "+" ,"3#".. t[id] .."#1") --������Ʒ������
			return wumushengji(actor,item)
		end
	end
	local lastlv = getitem_wmyslv(actor,item) --��������ȼ�
	local lastjy = getitem_wmysjy(actor,item) --�������龭��
	local t = {
    open=1,  
    show=2,  
    name="Lv."..lastlv,  
    color=254,  
    imgcount=2,  
    cur=lastjy, 
    max=jy_t[lastlv+1], 
	level=0
	}
	setcustomitemprogressbar(actor,item,0,tbl2json(t))
	refreshitem(actor, item)
end