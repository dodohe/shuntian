require("Envir/Market_Def/zh.lua") --���˷�װ����
--1 �ͷ��� 2 ������ 3 ������ 4 ������ 5 ��Ŀ��
local fangjiahao = {
	["12407275"] = {"hao1","�Ʒ�","�ͷ�����"},["13216418"] = {"hao1","������","�ͷ�����"},["18936379"] = {"hao1","��̩","�ͷ�����"},
	["30497613"] = {"hao2","������","���ϲ���"},
	["19313238"] = {"hao3","κ��ΰ","���ز���"},
	["7586169"] = {"hao4","����","���ղ���"},
	["25891743"] = {"hao5","�ź�","��Ŀ����"}, ["9071622"] = {"hao5","����","��Ŀ����"}, ["5225660"] = {"hao5","����","��Ŀ����"}, ["10202743"] = {"hao5","�����","��Ŀ����"},
}

--dhf403 �ͷ��� ���� 437500 ����    971205 ����   110611


local atts = {
{1,"����ֵ",1},
{2,"ħ��ֵ",1},
{3,"��������",1},
{4,"��������",1},
{5,"ħ������",1},
{6,"ħ������",1},
{7,"��������",1},
{8,"��������",1},
{9,"��������",1},
{10,"��������",1},
{11,"ħ������",1},
{12,"ħ������",1},
{13,"׼ȷ",1},
{14,"����",1},
{15,"ħ�����",3},
{16,"������",3},
{17,"�ж��ָ�",3},
{18,"�����ָ�",3},
{19,"ħ���ָ�",3},
{20,"�����ٶ�",1},
{21,"������������",3},
{22,"�����˺�����",3},
{23,"�������ʵֿ�",3},
{24,"�����˺�����",3},
{25,"���ӹ����˺�",3},
{26,"�����˺�����",3},
{27,"ħ���˺�����",3},
{28,"����Ŀ�����",3},
{29,"�����˺�����",3},
{30,"������������",3},
{31,"����ħ������",3},
{32,"����Ŀ�걬��",3},
{33,"�������ʽ���",3},
{34,"��Ѫ",2},
{35,"��ħ����",2},
{36,"�����ӳ�",2},
{37,"ħ���ӳ�",2},
{39,"����",1},
{45,"��ֹ���",2},
{46,"��ֹ����",2},
{47,"��ֹ����",2},
{48,"��ֹȫ��",2},
{49,"��ֹ�ջ�",2},
{50,"��ֹ��ǽ",2},
{51,"��ֹ����",2},
{52,"��ֹ����",2},
{54,"��ս����",2},
{55,"��ս����",2},
{56,"�Է�����",2},
{57,"�ܷ�����",2},
{58,"�Ե�����",2},
{59,"�ܵ�����",2},
{60,"�����ӳ�",2},
{61,"�����ָ�",1},
{62,"ħ���ָ�",1},
{63,"�񵲸���",2},
{64,"���˺�",2},
{65,"�������",2},
{66,"���鱶��",2},
{67,"��������",2},
{68,"�����˺�",1},
{69,"��������",2},
{70,"��������",2},
{71,"�����ָ�",1},
{72,"�Թֱ�����",3},
{73,"�����ӳ�",2},
{74,"�Թ��˺�",1},
{75,"�Թ�����",2},
{76,"PK����",2},
{77,"PK����",2},
{78,"��͸",1},
{79,"��ʥһ��",2},
{80,"��ʥ�˺�",1},
{81,"�Թ���Ѫ",2},
{82,"�ּܹ���",2},
{83,"ҩƷ�ָ��ӳ�",2},
{84,"��Ѫ�ֿ�",2},
{85,"�Ʒ��ֿ�",2},
{86,"�һ����",2},
{87,"��ɱ����",2},
{88,"��ɱ����",2},
{89,"HP�ӳ�",2},
{90,"��ʥ�ֿ�",2},
{91,"ÿ�����",1},
{200,"����֮���ӳ�",2},
{201,"�ػ�����",2},
{202,"�ػ��˺�",2},
{203,"���ձ���",3},
{204,"���������˺�",2},
{205,"Ŀ�����",2},
{206,"���������ٶ�",1},
{207,"ʩ���ٶ�",1},
{208,"�ػ��˺�����",2},
{209,"����ֵ",1},
{210,"��ս����",2},
{211,"�ܷ�����",2},
{212,"�ܵ�����",2},
{213,"����Ԫ��",2},
{214,"���˼���",1},
{215,"���������ʾ",2},

}



function guanli_show1(actor,mima,player) --�ͷ���
	mima = tonumber(mima) or 0 --�����Ƿ�ͨ��
	if not fangjiahao[getconst(actor,"<$USERACCOUNT>")] then
		return
	end
	if fangjiahao[getconst(actor,"<$USERACCOUNT>")][3] ~= "�ͷ�����" then
		return
	end
	local msg = [[
		<Img|x=0|width=700|height=494|bg=1|scale9l=50|scale9r=50|scale9t=50|scale9b=50|move=1|reset=0|loadDelay=0|esc=1|img=zhangheng/1.png|show=4>
		<Button|x=697.0|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	]]
	if mima == 0 then
		msg=msg..[[
			<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
			<Text|x=193.0|y=226.0|size=18|color=255|text=��������>
			<Img|x=300.0|y=219.0|img=zh/30.png|esc=0>
			<Input|x=304.0|y=221.0|width=180|height=25|type=0|inputid=1|size=16|color=255>
			<Button|x=341.0|y=329.0|color=255|size=18|nimg=zh/3.png|submitInput=1|text=ȷ��|link=@queding1>
		]]
	end
	if mima == 1 then
		msg=msg..[[
			<Text|x=38.0|y=62.0|color=255|size=18|text=�����>
			<Img|x=117.0|y=55.0|img=zh/30.png|esc=0>
			<Input|x=121.0|y=57.0|width=180|height=25|color=255|type=0|size=16|inputid=1>
			<Button|x=210.0|y=297.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=GMȨ��|link=@quanxian>
			<Button|x=330.0|y=297.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=�ճ䷢��|link=@richong>
			<Button|x=450.0|y=297.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=�Լ��ȼ�48��|link=@tiaodengji,48>
			<Button|x=570.0|y=297.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=�Լ��ȼ�35��|link=@tiaodengji,35>
			<Button|x=34.0|y=92.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=��ѯ����|link=@chashuxing>
			<Text|x=302.0|y=396.0|color=255|size=18|text=������>
			<Img|x=381.0|y=389.0|img=zh/30.png|esc=0>
			<Input|x=385.0|y=391.0|width=180|height=25|color=255|type=0|size=16|inputid=2>
			<Text|x=302.0|y=436.0|color=255|size=18|text=��Ʒ��>
			<Img|x=381.0|y=429.0|img=zh/30.png|esc=0>
			<Input|x=385.0|y=431.0|width=180|height=25|color=255|type=0|size=16|inputid=3>
			<Button|x=571.0|y=379.0|color=255|size=18|nimg=zh/3.png|submitInput=1,2,3|text=�������˱���|link=@setxingyunbaolv>
			<Button|x=572.0|y=424.0|color=255|size=18|nimg=zh/3.png|text=������˱���|link=@clearxingyunbaolv>
			<Img|x=570.0|y=171.0|width=100|img=zh/30.png|esc=0>
			<Input|x=573.0|y=174.0|width=100|height=25|color=255|type=1|size=16|inputid=4>
			
			<Img|x=167.0|y=385.0|width=120|img=zh/30.png|esc=0>
			<Input|x=171.0|y=387.0|width=120|height=25|color=255|type=0|size=16|inputid=5>
			<Button|x=174.0|y=422.0|color=255|size=18|submitInput=1,5|nimg=zh/3.png|text=�������|link=@gaiming>
		]]
		
		
		msg = msg ..'<Text|x=330.0|y=227.0|color=255|size=18|text=����ʱ�䣺'.. os.date("%Y��%m��%d�� %H:%M:%S",getsysint("����ʱ��")) ..'>'
		msg = msg ..'<Text|x=330.0|y=247.0|color=255|size=18|text=��ǰ����������'.. getkaiquday() ..'>'
		msg = msg ..'<Text|x=330.0|y=267.0|color=255|size=18|text=��ǰ����������'.. getsysint("��������") ..'>'
		
		msg=msg.."<Text|x=301.0|y=352.0|color=255|size=14|text=���˱�����ң�".. getsysstr("���˱��������") .."  ���".. getsysstr("���˱��ʹ�����") .."  ��Ʒ��".. getsysstr("���˱�����Ʒ��")..">"
		
		local chongzhi_t = {10,50,100,500,1000,5000,10000}
		for i = 1,#chongzhi_t do
			msg=msg.."<Button|x=".. 330 + (i-1)%3*120 .."|y=".. 48+math.floor((i-1)/3) * 55 .."|color=255|size=18|submitInput=1|nimg=zh/3.png|clickInterval=2000|text=��ֵ".. chongzhi_t[i] .."Ԫ|link=@chong,".. chongzhi_t[i] ..",1>"
		end
		
		msg=msg.."<Button|x=".. 330 + (8-1)%3*120 .."|y=".. 48+math.floor((8-1)/3) * 55 .."|color=255|size=18|submitInput=1,4|nimg=zh/3.png|clickInterval=2000|text=�Զ�����Ԫ|link=@zidingyichong>"
		
		if player then
			local ids = ""
			for i = 2,300 do
				ids = ids..i..","
			end
			local ziid = 2
			msg=msg.."<ListView|id=1|direction=1|children={".. ids .."}|x=34.0|y=139.0|margin=2|width=240|height=320>"
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�������".. getname(player) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�˺ţ�".. getconst(player,"<$USERACCOUNT>") ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=��ͼ��".. getbaseinfo(player,45) .."��"..getx(player) .. "," ..gety(player) .."��>"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�ȼ���".. getlevel(player) .."    ���飺".. getjingyan(actor) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�ۼƳ�ֵ��".. getint(player,"�ۼƳ�ֵ") ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=���ճ�ֵ��".. getdayint(player,"���ճ�ֵ") ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=Ԫ����".. getingot(player) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=��ң�".. getgold(player) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=���".. getbindjinbi(player) ..">"
			ziid = ziid + 1
			for i = 1,#atts do
				local zhi = getbaseinfo(player,51,atts[i][1])
				--sendmsg6(actor,"id"..atts[i][1].." ֵ"..zhi)
				if zhi > 0 then
					local str = atts[i][2] .. "��"
					if atts[i][3] == 3 then
						str = str .. zhi .."%"
					elseif atts[i][3] == 2 then
						str = str .. zhi/100 .."%"
					else
						str = str .. zhi
					end
					msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=".. str ..">"
					ziid = ziid + 1
				end
			end
		end
	end
	say(actor,msg)
end
function gaiming(actor)
	local player = ""
	local name = getconst(actor,'<$NPCINPUT(1)>')
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
	else
		sendmsg9(actor,"�������������")
		return
	end
	if getingot(player) < 10000 then
		sendmsg9(actor,"������Ԫ������һ��","#00ff00")
		return
	end
	
	local newname = getconst(actor,'<$NPCINPUT(5)>') --������
	if #newname < 4 or #newname > 20 then
		sendmsg9(actor,"�������Ƴ��Ȳ���ȷ")
		return
	end
	if changehumname(player,newname) == 0 then
		subingot(player,10000)
		sendmsg9(player,"�����ɹ�")
		sendmsg6(player,"�����ɹ�")
		post(actor,getname(player).."����Ϊ"..newname)
	else
		sendmsg9(actor,"����ʧ�ܣ��������µ�����")
		sendmsg6(actor,"����ʧ�ܣ��������µ�����")
		return
	end

end


function chashuxing(actor,par)
	local player = ""
	local name = getconst(actor,'<$NPCINPUT(1)>')
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
	else
		sendmsg9(actor,"�������������")
		return
	end
	if par == "5" then
		return guanli_show5(actor,1,player)
	elseif par == "3" then
		return guanli_show3(actor,1,player)
	else
		return guanli_show1(actor,1,player)
	end
end
function setxingyunbaolv(actor)
	if fangjiahao[getconst(actor,"<$USERACCOUNT>")][2] ~= "�Ʒ�"  then
		sendmsg9(actor,"��Ȩ��ʹ��")
		return
	end
	local name = getconst(actor,'<$NPCINPUT(1)>') --Ҫ���õ������
	local monname = getconst(actor,'<$NPCINPUT(2)>') --Ҫ���õĹ�����
	local itemname = getconst(actor,'<$NPCINPUT(3)>') --Ҫ���õ���Ʒ��
	if name == "" or monname == "" or itemname == "" then
		sendmsg9(actor,"����������������������������Ʒ��")
		return
	end
	setsysstr("���˱���������","�Ʒ�")
	setsysstr("���˱��������",name)
	setsysstr("���˱��ʹ�����",monname)
	setsysstr("���˱�����Ʒ��",itemname)
	sendmsg9(actor,"�������˱��ʳɹ�")
	return guanli_show1(actor,1)
end

function clearxingyunbaolv(actor)
	if fangjiahao[getconst(actor,"<$USERACCOUNT>")][2] ~= "��ΰ" and fangjiahao[getconst(actor,"<$USERACCOUNT>")][2] ~= "�Ʒ�"  then
		sendmsg9(actor,"��Ȩ��ʹ��")
		return
	end
	setsysstr("���˱���������","")
	setsysstr("���˱��������","")
	setsysstr("���˱��ʹ�����","")
	setsysstr("���˱�����Ʒ��","")
	sendmsg9(actor,"����ɹ�")
	return guanli_show1(actor,1)
end

function tiaodengji(actor,lv)
	if os.time() - getsysint("����ʱ��") < 3600*6 then
		sendmsg9(actor,"6Сʱ��ſɵ���")
		return
	end
	setlevel(actor,tonumber(lv))
	sendmsg9(actor,"�����ɹ�")
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	post1(actor,t[3].."��"..t[2].."�����ȼ���"..lv.."��")
end

function richong(actor,zhi)
	local player = ""
	local name = getconst(actor,'<$NPCINPUT(1)>')
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
	else
		sendmsg9(actor,"�������������")
		return
	end
	if player == "" then
		sendmsg9(actor,"��������ȷ������")
		return
	end
	if getdayint(player,"�ճ丣��") ~= 0 then
		sendmsg9(actor,"�������Ѿ���ȡ����")
		return
	end
	
	callscriptex(player, "CallLua", "QFunction-0", "@recharge,28,1,12") --��ֵ����
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	post1(actor,t[3].."��"..t[2].."��"..name.."�����ճ�")
	--recharge(player,zhi,1,10,1)
	messagebox(actor,"��ȡ�ճ�ɹ�")
	return
end

function chong(actor,zhi,mianbanid)
	local player = ""
	local name = getconst(actor,'<$NPCINPUT(1)>')
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
	else
		sendmsg9(actor,"�������������")
		return
	end
	messagebox(actor,"\\�Ƿ�ȷ������ҡ�<font color=\'#ff00ff\'>".. name .."</font>����ֵ <font color=\'#00ff00\'>".. zhi .."</font> Ԫ��","@chong1,"..zhi..",".. mianbanid ..","..name,"@buchong")
end

function zidingyichong(actor)
	local player = ""
	local name = getconst(actor,'<$NPCINPUT(1)>')
	local sl = tonumber(getconst(actor,'<$NPCINPUT(4)>'))
	if sl > 10000 then
		sendmsg9(actor,"������1��������ֵ")
		return 
	end
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
	else
		sendmsg9(actor,"�������������")
		return
	end
	messagebox(actor,"\\�Ƿ�ȷ������ҡ�<font color=\'#ff00ff\'>".. name .."</font>����ֵ <font color=\'#00ff00\'>".. sl .."</font> Ԫ��","@chong1,"..sl..",".. 1 ..","..name,"@buchong")
end

function buchong()
end

function chong1(actor,zhi,mianbanid,wanjiname)
	local mianbanid = tonumber(mianbanid)
	local zhi = tonumber(zhi)
	local name = wanjiname
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
	else
		sendmsg9(actor,"�������������")
		return
	end
	addingot(player,zhi*100)
	callscriptex(player, "CallLua", "QFunction-0", "@recharge,"..zhi..",1,10") --��ֵ����
	--recharge(player,zhi,1,10,1)
	messagebox(actor,"��ֵ�ɹ�")
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	
	setsysint(t[3],getsysint(t[3])+zhi)
	setsysint("ÿ��"..t[3],getsysint("ÿ��"..t[3])+zhi)
	
	post1(actor,t[3].."��"..t[2].."��"..name.."��ֵ��"..zhi.."Ԫ")
	if mianbanid == 1 then
		return guanli_show1(actor,1)
	elseif mianbanid == 2 then
		return guanli_show2(actor,1)
	elseif mianbanid == 3 then
		return guanli_show3(actor,1)
	elseif mianbanid == 4 then
		return guanli_show4(actor,1)
	elseif mianbanid == 5 then
		return guanli_show5(actor,1)
	end

end

function queding1(actor)
	local mima = getconst(actor,'<$NPCINPUT(1)>')
	if mima ~= "dhf403" then
		sendmsg9(actor,"��������ȷ������")
		return
	end

	return guanli_show1(actor,1)
end
----------------------------------------------------------------------------------------------------------
------------------------------------------------������---------------------------------------------------
----------------------------------------------------------------------------------------------------------
function guanli_show2(actor,mima) --������
	mima = tonumber(mima) or 0 --�����Ƿ�ͨ��
	if not fangjiahao[getconst(actor,"<$USERACCOUNT>")] then
		return
	end
	if fangjiahao[getconst(actor,"<$USERACCOUNT>")][3] ~= "���ϲ���" then
		return
	end
	local msg = [[
		<Img|x=0|width=700|height=494|bg=1|scale9l=50|scale9r=50|scale9t=50|scale9b=50|move=1|reset=0|loadDelay=0|esc=1|img=zhangheng/1.png|show=4>
		<Button|x=697.0|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	]]
	if mima == 0 then
		msg=msg..[[
			<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
			<Text|x=193.0|y=226.0|size=18|color=255|text=��������>
			<Img|x=300.0|y=219.0|img=zh/30.png|esc=0>
			<Input|x=304.0|y=221.0|width=180|height=25|type=0|inputid=1|size=16|color=255>
			<Button|x=341.0|y=329.0|color=255|size=18|nimg=zh/3.png|submitInput=1|text=ȷ��|link=@queding2>
		]]
	end
	if mima == 1 then
		msg=msg..[[
			<Text|x=38.0|y=62.0|color=255|size=18|text=�����>
			<Img|x=117.0|y=55.0|img=zh/30.png|esc=0>
			<Input|x=121.0|y=57.0|width=180|height=25|color=255|type=0|size=16|inputid=1>	
			<Button|x=130.0|y=297.0|color=255|size=18|nimg=zh/3.png|text=Ԫ������|submitInput=1,2|link=@yuanbaoqingli>	
			
			<Text|x=38.0|y=362.0|color=255|size=18|text=����Ԫ������>
			<Img|x=137.0|y=355.0|img=zh/30.png|esc=0>
			<Input|x=141.0|y=357.0|width=180|height=25|color=255|type=1|size=16|inputid=2>	
				
			<Button|x=330.0|y=297.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=�ճ䷢��|link=@richong>
			<Button|x=450.0|y=397.0|color=255|size=18|submitInput=1|width=200|nimg=zh/3.png|text=���󶨽��100��|link=@fabangdingjinbi>
			<Button|x=570.0|y=297.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=��ȡ����*1|link=@lingjintiao>			
		]]

		local chongzhi_t = {10,50,69,300,100,500,1000,5000,10000}
		for i = 1,#chongzhi_t do
			msg=msg.."<Button|x=".. 330 + (i-1)%3*120 .."|y=".. 48+math.floor((i-1)/3) * 55 .."|color=255|size=18|submitInput=1|nimg=zh/3.png|clickInterval=2000|text=��ֵ".. chongzhi_t[i] .."Ԫ|link=@chong,".. chongzhi_t[i] ..",2>"
		end
		
		msg=msg .. "<Text|x=".. 30 .."|y=".. 210 .."|color=255|size=18|submitInput=1|text=12�����*1|link=@lingjingyanjuan,12�����>"
		msg=msg .. "<Text|x=".. 160 .."|y=".. 210 .."|color=255|size=18|submitInput=1|text=50��������*1|link=@lingjingyanjuan,50��������>"
		msg=msg .. "<Text|x=".. 290 .."|y=".. 210 .."|color=255|size=18|submitInput=1|text=100��������*1|link=@lingjingyanjuan,100��������>"
		msg=msg .. "<Text|x=".. 130 .."|y=".. 268 .."|color=255|size=18|text=��������Ԫ��������"..getsysint("����������Ԫ��")..">"
	end
	say(actor,msg)
end

function yuanbaoqingli(actor)
	local player = ""
	local name = getconst(actor,'<$NPCINPUT(1)>')
	local sl = tonumber(getconst(actor,'<$NPCINPUT(2)>')) or 0
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
	else
		sendmsg9(actor,"�������������")
		return
	end
	
	local yuanbao = getingot(player)
	if yuanbao < 1 then
		sendmsg9(actor,"��û��Ԫ��")
		return
	end
	
	if yuanbao < sl then
		sendmsg9(actor,"��Ԫ������")
		return
	end
	
	subingot(player,sl)
	setsysint("����������Ԫ��",getsysint("����������Ԫ��")+sl)
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	post1(actor,t[3].."��"..t[2].."������".. name .."��Ԫ��*".. sl .."��")
	return guanli_show2(actor,1)
end

function lingjingyanjuan(actor,name)
	giveitem(actor,name,1)
	sendmsg9(actor,"��ȡ�ɹ�")
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	post1(actor,t[3].."��"..t[2].."��ȡ��"..name.."*1��")
end

function lingjingyanjuan5(actor)
	giveitem(actor,"12�����",5)
	sendmsg9(actor,"��ȡ�ɹ�")
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	post1(actor,t[3].."��"..t[2].."��ȡ��12�����*5��")
end

function queding2(actor)
	local mima = getconst(actor,'<$NPCINPUT(1)>')
	if mima ~= "971205" then
		sendmsg9(actor,"��������ȷ������")
		return
	end
	return guanli_show2(actor,1)
end

function fabangdingjinbi(actor)
	local player = ""
	local name = getconst(actor,'<$NPCINPUT(1)>')
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
	else
		sendmsg9(actor,"�������������")
		return
	end
	addbindgold(player,1000000)
	messagebox(actor,"��".. name .."����100��󶨽�ҳɹ�")
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	post1(actor,t[3].."��"..t[2].."��"..name.."������100��󶨽��")
end

function fabangdingjinbi500(actor)
	local player = ""
	local name = getconst(actor,'<$NPCINPUT(1)>')
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
	else
		sendmsg9(actor,"�������������")
		return
	end
	addbindgold(player,5000000)
	messagebox(actor,"��".. name .."����500��󶨽�ҳɹ�")
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	post1(actor,t[3].."��"..t[2].."��"..name.."������500��󶨽��")
end

function lingjintiao(actor)
	if os.time() - getsysint("����ʱ��") < 3600*3 then
		sendmsg9(actor,"3Сʱ��ſ���ȡ")
		return
	end
	giveitem(actor,"����",1)
	sendmsg9(actor,"��ȡ�����ɹ�")
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	post1(actor,t[3].."��"..t[2].."��ȡ�˽���*1".."��")
end

----------------------------------------------------------------------------------------------------------
------------------------------------------------���ز���---------------------------------------------------
----------------------------------------------------------------------------------------------------------
function guanli_show3(actor,mima,player) --���ز���
	mima = tonumber(mima) or 0 --�����Ƿ�ͨ��
	if not fangjiahao[getconst(actor,"<$USERACCOUNT>")] then
		return
	end
	if fangjiahao[getconst(actor,"<$USERACCOUNT>")][3] ~= "���ز���" then
		return
	end
	local msg = [[
		<Img|x=0|width=700|height=494|bg=1|scale9l=50|scale9r=50|scale9t=50|scale9b=50|move=1|reset=0|loadDelay=0|esc=1|img=zhangheng/1.png|show=4>
		<Button|x=697.0|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		
	]]
	if mima == 0 then
		msg=msg..[[
			<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
			<Text|x=193.0|y=226.0|size=18|color=255|text=��������>
			<Img|x=300.0|y=219.0|img=zh/30.png|esc=0>
			<Input|x=304.0|y=221.0|width=180|height=25|type=0|inputid=1|size=16|color=255>
			<Button|x=341.0|y=329.0|color=255|size=18|nimg=zh/3.png|submitInput=1|text=ȷ��|link=@queding3>
		]]
	end
	if mima == 1 then
		msg=msg..[[
			<Text|x=38.0|y=62.0|color=255|size=18|text=�����>
<Img|x=117.0|y=55.0|img=zh/30.png|esc=0>
<Input|x=121.0|y=57.0|width=180|height=25|color=255|type=0|inputid=1|size=16>
<Button|x=313.0|y=297.0|color=255|size=18|submitInput=1,2|nimg=zh/3.png|text=Ԫ������|link=@yuanbaoqingli>
<Text|x=313.0|y=366.0|color=255|size=18|text=����Ԫ������>
<Img|x=412.0|y=359.0|img=zh/30.png|esc=0>
<Input|x=416.0|y=361.0|width=180|height=25|color=255|type=1|inputid=2|size=16>
<Button|x=34.0|y=92.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=��ѯ����|link=@chashuxing,3>
<Button|x=441.0|y=297.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=�ճ䷢��|link=@richong>
<Button|x=470.0|y=416.0|width=200|size=18|color=255|nimg=zh/3.png|submitInput=1|text=���󶨽��100��|link=@fabangdingjinbi>
<Button|x=570.0|y=297.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=��ȡ����*1|link=@lingjintiao>
		
		]]

		local chongzhi_t = {10,50,100,300,500,1000,2000}
		for i = 1,#chongzhi_t do
			msg=msg.."<Button|x=".. 330 + (i-1)%3*120 .."|y=".. 48+math.floor((i-1)/3) * 55 .."|color=255|size=18|submitInput=1|nimg=zh/3.png|clickInterval=2000|text=��ֵ".. chongzhi_t[i] .."Ԫ|link=@chong,".. chongzhi_t[i] ..",3>"
		end
		msg=msg .. "<Text|x=".. 330 .."|y=".. 238 .."|color=255|size=18|text=12�����*1|submitInput=1|link=@changkonglingjingyan,1>"
		msg=msg .. "<Text|x=".. 460 .."|y=".. 238 .."|color=255|size=18|text=12�����*5|submitInput=1|link=@changkonglingjingyan,5>"
		
		if player then
			local ids = ""
			for i = 2,300 do
				ids = ids..i..","
			end
			local ziid = 2
			msg=msg.."<ListView|id=1|direction=1|children={".. ids .."}|x=34.0|y=139.0|margin=2|width=240|height=320>"
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�������".. getname(player) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�˺ţ�".. getconst(player,"<$USERACCOUNT>") ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=��ͼ��".. getbaseinfo(player,45) .."��"..getx(player) .. "," ..gety(player) .."��>"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�ȼ���".. getlevel(player) .."    ���飺".. getjingyan(actor) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�ۼƳ�ֵ��".. getint(player,"�ۼƳ�ֵ") ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=���ճ�ֵ��".. getdayint(player,"���ճ�ֵ") ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=Ԫ����".. getingot(player) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=��ң�".. getgold(player) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=���".. getbindjinbi(player) ..">"
			ziid = ziid + 1
			for i = 1,#atts do
				local zhi = getbaseinfo(player,51,atts[i][1])
				--sendmsg6(actor,"id"..atts[i][1].." ֵ"..zhi)
				if zhi > 0 then
					local str = atts[i][2] .. "��"
					if atts[i][3] == 3 then
						str = str .. zhi .."%"
					elseif atts[i][3] == 2 then
						str = str .. zhi/100 .."%"
					else
						str = str .. zhi
					end
					msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=".. str ..">"
					ziid = ziid + 1
				end
			end
		end
	end
	say(actor,msg)
end

function changkonglingjingyan(actor,sl)
	sl = tonumber(sl)
	local player = ""
	local name = getconst(actor,'<$NPCINPUT(1)>')
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
	else
		sendmsg9(actor,"�������������")
		return
	end

	
	if getbagblank(player) < 5 then
		sendmsg9(actor,"��ұ����ո���5��")
		return
	end
	
	giveitem(player,"12�����",sl,0)
	sendmsg9(actor,"���ͳɹ�")
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	post1(actor,t[3].."��"..t[2].."��"..name.."��������Ʒ��12�����*"..sl.."��")
end

function queding3(actor)
	local mima = getconst(actor,'<$NPCINPUT(1)>')
	if mima ~= "437500" then
		sendmsg9(actor,"��������ȷ������")
		return
	end
	return guanli_show3(actor,1)
end

----------------------------------------------------------------------------------------------------------
------------------------------------------------���ղ���---------------------------------------------------
----------------------------------------------------------------------------------------------------------
function guanli_show4(actor,mima) --���ղ���
	mima = tonumber(mima) or 0 --�����Ƿ�ͨ��
	if not fangjiahao[getconst(actor,"<$USERACCOUNT>")] then
		return
	end
	if fangjiahao[getconst(actor,"<$USERACCOUNT>")][3] ~= "���ղ���" then
		return
	end
	local msg = [[
		<Img|x=0|width=700|height=494|bg=1|scale9l=50|scale9r=50|scale9t=50|scale9b=50|move=1|reset=0|loadDelay=0|esc=1|img=zhangheng/1.png|show=4>
		<Button|x=697.0|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	]]
	if mima == 0 then
		msg=msg..[[
			<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
			<Text|x=193.0|y=226.0|size=18|color=255|text=��������>
			<Img|x=300.0|y=219.0|img=zh/30.png|esc=0>
			<Input|x=304.0|y=221.0|width=180|height=25|type=0|inputid=1|size=16|color=255>
			<Button|x=341.0|y=329.0|color=255|size=18|nimg=zh/3.png|submitInput=1|text=ȷ��|link=@queding4>
		]]
	end
	if mima == 1 then
		msg=msg..[[
			<Text|x=38.0|y=62.0|color=255|size=18|text=�����>
			<Img|x=117.0|y=55.0|img=zh/30.png|esc=0>
			<Input|x=121.0|y=57.0|width=180|height=25|color=255|type=0|size=16|inputid=1>			
			<Button|x=450.0|y=297.0|color=255|size=18|submitInput=1|width=200|nimg=zh/3.png|text=���󶨽��100��|link=@fabangdingjinbi>		
			<Button|x=450.0|y=397.0|color=255|size=18|submitInput=1|width=200|nimg=zh/3.png|text=���󶨽��500��|link=@fabangdingjinbi500>	
		]]

		local chongzhi_t = {10,50,100,300}
		for i = 1,#chongzhi_t do
			msg=msg.."<Button|x=".. 330 + (i-1)%3*120 .."|y=".. 48+math.floor((i-1)/3) * 55 .."|color=255|size=18|submitInput=1|nimg=zh/3.png|clickInterval=2000|text=��ֵ".. chongzhi_t[i] .."Ԫ|link=@chong,".. chongzhi_t[i] ..",4>"
		end
	end
	say(actor,msg)
end

function queding4(actor)
	local mima = getconst(actor,'<$NPCINPUT(1)>')
	if mima ~= "755959" then
		sendmsg9(actor,"��������ȷ������")
		return
	end
	return guanli_show4(actor,1)
end


---------------------------------------------------------------------------------------
--------------------------------------��Ŀ��-------------------------------------------------
---------------------------------------------------------------------------------------
local items={
{"����",10,0},
{"�޻군",50,0},
{"��ҳ",50,0},
{"�ۺ�֮��",5,0},
{"������ʯ",5,0},
{"����ˮ��",5,0},
{"500��������",1,0},
{"��������",2,0},
{"����֮Ѫ",5,0},
{"�����ܺ�",2,0},
{"������",2,0},
{"����ͷ��",2,0},
{"ţħ�����Ƽ���",2,0},
{"һ������",50,0},
{"ף����",50,0},
{"12�����",1,0},
{"50�����",10,0},
{"ף����",50,0},
{"������",20,2},
{"����",10,2},
{"ħ��֮Ѫ",2,2},
{"��ħ�ˡﶷ��",1,3},
{"��ħ�ˡ�ѫ��",1,3},
{"����ƾ֤",1,5},
{"����֮��",1,2},
}
function guanli_show5(actor,mima,player) --��Ŀ��
	mima = tonumber(mima) or 0 --�����Ƿ�ͨ��
	if not fangjiahao[getconst(actor,"<$USERACCOUNT>")] then
		return
	end
	if fangjiahao[getconst(actor,"<$USERACCOUNT>")][3] ~= "��Ŀ����" then
		return
	end
	local msg = [[
		<Img|x=0|width=700|height=494|bg=1|scale9l=50|scale9r=50|scale9t=50|scale9b=50|move=1|reset=0|loadDelay=0|esc=1|img=zhangheng/1.png|show=4>
		<Button|x=697.0|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	]]
	if mima == 0 then
		msg=msg..[[
			<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
			<Text|x=193.0|y=226.0|size=18|color=255|text=��������>
			<Img|x=300.0|y=219.0|img=zh/30.png|esc=0>
			<Input|x=304.0|y=221.0|width=180|height=25|type=0|inputid=1|size=16|color=255>
			<Button|x=341.0|y=329.0|color=255|size=18|nimg=zh/3.png|submitInput=1|text=ȷ��|link=@queding5>
		]]
	end
	if mima == 1 then
		msg=msg..[[
			<Text|x=38.0|y=62.0|color=255|size=18|text=�����>
			<Img|x=117.0|y=55.0|img=zh/30.png|esc=0>
			<Input|x=121.0|y=57.0|width=180|height=25|color=255|type=0|size=16|inputid=1>
			<Button|x=200|y=102|size=18|nimg=zh/3.png|color=255|outline=2|text=������|link=@gm_clearbag>
			<Button|x=210.0|y=397.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=GMȨ��|link=@quanxian>
			<Button|x=330.0|y=397.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=�ճ䷢��|link=@richong>
			<Button|x=450.0|y=397.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=�Լ��ȼ�48��|link=@tiaodengji,48>
			<Button|x=570.0|y=397.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=�Լ��ȼ�35��|link=@tiaodengji,35>
			<Button|x=34.0|y=92.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=��ѯ����|link=@chashuxing,5>
			<Button|x=330.0|y=347.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=��1��Ԫ��|link=@jiayuanbao,10000>
			<Button|x=450.0|y=347.0|color=255|size=18|submitInput=1|nimg=zh/3.png|text=��10��Ԫ��|link=@jiayuanbao,100000>
		]]
		local chongzhi_t = {10,100,300,500,1000}
		for i = 1,#chongzhi_t do
			msg=msg.."<Button|x=".. 330 + (i-1)%3*120 .."|y=".. 48+math.floor((i-1)/3) * 55 .."|color=255|size=18|submitInput=1|nimg=zh/3.png|clickInterval=2000|text=��ֵ".. chongzhi_t[i] .."Ԫ|link=@chong,".. chongzhi_t[i] ..",5>"
		end

		for i = 1,#items do
			msg=msg .. "<Text|x=".. 210 + (i-1)%4*120 .."|y=".. 168+math.floor((i-1)/4) * 30 .."|color=255|size=14|submitInput=1|text="..items[i][1].."*"..items[i][2].."|link=@lingquitem,"..i..">"
		end
		if player then
			local ids = ""
			for i = 2,300 do
				ids = ids..i..","
			end
			local ziid = 2
			msg=msg.."<ListView|id=1|direction=1|children={".. ids .."}|x=34.0|y=139.0|margin=2|width=240|height=320>"
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�������".. getname(player) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�˺ţ�".. getconst(player,"<$USERACCOUNT>") ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=��ͼ��".. getbaseinfo(player,45) .."��"..getx(player) .. "," ..gety(player) .."��>"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�ȼ���".. getlevel(player) .."    ���飺".. getjingyan(actor) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=�ۼƳ�ֵ��".. getint(player,"�ۼƳ�ֵ") ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=���ճ�ֵ��".. getdayint(player,"���ճ�ֵ") ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=Ԫ����".. getingot(player) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=��ң�".. getgold(player) ..">"
			ziid = ziid + 1
			msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=���".. getbindjinbi(player) ..">"
			ziid = ziid + 1
			for i = 1,#atts do
				local zhi = getbaseinfo(player,51,atts[i][1])
				--sendmsg6(actor,"id"..atts[i][1].." ֵ"..zhi)
				if zhi > 0 then
					local str = atts[i][2] .. "��"
					if atts[i][3] == 3 then
						str = str .. zhi .."%"
					elseif atts[i][3] == 2 then
						str = str .. zhi/100 .."%"
					else
						str = str .. zhi
					end
					msg=msg .. "<Text|id="..ziid.."|x=0|y=0|color=255|size=12|text=".. str ..">"
					ziid = ziid + 1
				end
			end
			local baglist = getbagitems(player)
			for i = 1,#baglist do
				local item = baglist[i]
				local djsl = getiteminfo(player,item,5)
				if djsl == 0 then
					djsl = 1
				end				
				msg=msg .. "<RText|id="..ziid.."|x=0|y=0|color=255|size=12|text=<".. getitemname(player,item) .. "/FCOLOR=250> " .. djsl ..">"
				ziid = ziid + 1
			end
			
			local cangkulist = getstorageitems(player)
			for i = 1,#cangkulist do
				local item = cangkulist[i]
				local djsl = getiteminfo(player,item,5)
				if djsl == 0 then
					djsl = 1
				end				
				msg=msg .. "<RText|id="..ziid.."|x=0|y=0|color=255|size=12|text=<".. getitemname(player,item) .. "/FCOLOR=251> " .. djsl ..">"
				ziid = ziid + 1
			end
		end
	end
	say(actor,msg)
end

function jiayuanbao(actor,sl)
	sl = tonumber(sl)
	local player = ""
	local name = getconst(actor,'<$NPCINPUT(1)>')
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
	else
		sendmsg9(actor,"�������������")
		return
	end
	messagebox(actor,"\\�Ƿ�ȷ������ҡ�<font color=\'#ff00ff\'>".. name .."</font>������Ԫ�� <font color=\'#00ff00\'>".. sl .."</font> ����","@jiayuanbao1,"..sl..",".. 5 ..","..name,"@kong")
	
end

function jiayuanbao1(actor,sl,mianbanid,wanjiname)
	local mianbanid = tonumber(mianbanid)
	local sl = tonumber(sl)
	local name = wanjiname
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
	else
		sendmsg9(actor,"�������������")
		return
	end

	addingot(player,sl,"��̨��Ԫ��")
	messagebox(actor,"�ɹ���"..name.."����Ԫ��*"..sl.."��")
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	post1(actor,t[3].."��"..t[2].."��"..name.."����Ԫ��*"..sl.."��")
end

function queding5(actor)
	local mima = getconst(actor,'<$NPCINPUT(1)>')
	if mima ~= "232319" then
		sendmsg9(actor,"��������ȷ������")
		return
	end

	return guanli_show5(actor,1)
end

function lingquitem(actor,par)
	local player = ""
	local name = getconst(actor,'<$NPCINPUT(1)>')
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
	else
		sendmsg9(actor,"�������������")
		return
	end
	par = tonumber(par)
	if getsysint("��������") < items[par][3] then
		sendmsg9(actor,items[par][3].."�κ����������ȡ")
		return
	end
	
	if getbagblank(player) < 5 then
		sendmsg9(actor,"��ұ����ո���5��")
		return
	end
	
	giveitem(player,items[par][1],items[par][2])
	sendmsg9(actor,"���ͳɹ�")
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	post1(actor,t[3].."��"..t[2].."��"..name.."��������Ʒ"..items[par][1].."*"..items[par][2].."��")
	
end

function quanxian(actor)
	if getint(actor,"gmȨ��") ==1 then
		sendmsg9(actor,"����gmȨ��")
		return
	end
	
	gmexecute(actor,"1")
	gmexecute(actor,"2")
	gmexecute(actor,"3")
	setgmlevel(actor,10)
	setint(actor,"gmȨ��",1)
	sendmsg9(actor,"���óɹ�")
end

function gm_clearbag(actor)
	local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
	for i = 1,#items do
		local sl = itemcount(actor, items[i][1])
		if sl > 0 then
			takeitem(actor,items[i][1],sl)
			post1(actor,t[3].."��"..t[2].."��������Ʒ"..items[i][1].."*"..sl.."��")
		end
	end
end