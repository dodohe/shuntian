--��ֹ�����ͼ
local jinzhisuiji = {
	["d609"]=1,["d024"]=1,["d021"]=1,["d717"]=1,["jxdt"]=1,["d2013"]=1,["d5072"]=1,["d5073"]=1,["d5074"]=1,["d515"]=1,["zmjt"]=1,["d2067"]=1,["nhq"]=1,["hqsy"]=1,["d2078"]=1,
	["d2079"]=1,["qlsy"]=1,["yhmg"]=1,["yhsd1"]=1,["yhsd2"]=1,["yhsd3"]=1,["yhsd4"]=1,["632"]=1,["631"]=1,["h204"]=1,["bgl"]=1,["d10071"]=1,["dmq"]=1,["maya4"]=1,["mhyj3"]=1,
	["lzsy3"]=1,["txmk3"]=1,["dlsy4"]=1,["thg4"]=1,["ymgm3"]=1,["rydy4"]=1,["fdgy4"]=1,["jjhl5"]=1,["jjhl6"]=1,["qxt1"]=1,["qxt2"]=1,["qxt3"]=1,["qxt4"]=1,["qxt5"]=1,["mfzd"]=1,
}

local yanshiditu = {
	["63"]=1,["64"]=1,["65"]=1,["66"]=1,["h202"]=1,["h203"]=1,["h106"]=1,["maya1"]=1,["maya2"]=1,["maya3"]=1,["mhyj1"]=1,["mhyj2"]=1,["lzsy1"]=1,["lzsy2"]=1,
	["txmk1"]=1,["txmk2"]=1,["dlsy1"]=1,["dlsy2"]=1,["dlsy3"]=1,["thg1"]=1,["thg2"]=1,["thg3"]=1,["ymgm1"]=1,["ymgm2"]=1,["rydy1"]=1,["rydy2"]=1,["rydy3"]=1,["fdgy1"]=1,
	["fdgy2"]=1,["fdgy3"]=1,["jjhl1"]=1,["jjhl2"]=1,["jjhl3"]=1,["jjhl4"]=1,["mgrk"]=1
}

local suijixianzhi = {
	["mhyj1"]=1,["mhyj2"]=1,["lzsy1"]=1,["lzsy2"]=1,["txmk1"]=1,["txmk2"]=1,
	["dlsy1"]=2,["dlsy2"]=2,["dlsy3"]=2,["thg1"]=2,["thg2"]=2,["thg3"]=2,["ymgm1"]=3,["ymgm2"]=3,["rydy1"]=4,["rydy2"]=4,["rydy3"]=4,["fdgy1"]=5,["fdgy2"]=5,["fdgy3"]=5,
	["jjhl1"]=5,["jjhl2"]=5,["jjhl3"]=5,["jjhl4"]=5,
}

local tjxianzhiditu = {
	["d022"]=2,["d023"]=2,["d713"]=2,["d714"]=2,["d715"]=2,["d716"]=2,
	["d505"]=1,["d5071"]=1,["d2008"]=1,["d2010"]=1,["d2011"]=1,["d2012"]=1,["d2063"]=1,["d2064"]=1,["d2073"]=1,["d2075"]=1,["d2076"]=1,["d1004"]=1,
	["d10051"]=1,["d10052"]=1,["d10061"]=1,["d10062"]=1,["63"]=2,["64"]=2,["65"]=2,["66"]=2,
	
	["mgrk"]=5,["h201"]=5,["h202"]=5,["h203"]=5,["h106"]=5,["maya1"]=5,["maya2"]=5,["maya3"]=5,
	
}

local zuijiukzditu= {
	["3"]=1,["d601"]=2,["d618"]=2,["d606"]=2,["d022"]=2,["d023"]=2,["d713"]=2,["d714"]=2,["d715"]=2,["d716"]=2,
	["d505"]=1,["d5071"]=1,["d2008"]=1,["d2010"]=1,["d2011"]=1,["d2012"]=1,["d2063"]=1,["d2064"]=1,["d2073"]=1,["d2075"]=1,["d2076"]=1,["d1004"]=1,
	["d10051"]=1,["d10052"]=1,["d10061"]=1,["d10062"]=1,["63"]=1,["64"]=1,["65"]=1,["66"]=1,["h202"]=1,["h203"]=1,["h106"]=1,["maya1"]=1,["maya2"]=1,["maya3"]=1,
	}  --��ƿ��Ƶ�ͼ

function stdmodefunc29(actor,item)  --�������ʯ
	local mapid = getmap(actor)
	if jinzhisuiji[mapid] then
		sendmsg(actor,1,'{"Msg":"�˵�ͼ��ֹ���","FColor":255,"BColor":249,"Type":1,"Time":3}')
		return false
	end
	if getint(actor,"������") == 1 then
		return false
	end
	if hasbuff(actor,10056) and getint(actor,"��������3���") ~=33 and not hasbuff(actor,10052) and zuijiukzditu[mapid] then
		if getint(actor,"������") == 0 then
			setint(actor,"������",1,0)
			showprogressbardlg(actor,3,"@suiji","�������,����%d%...",0)
			if getitemname(actor,item) == "�������ʯ" then
				return false
			end
			return true
		else
			return false
		end
	end
	
	if tjxianzhiditu[mapid] then --�ѻ����Ƶ�ͼ
		if getsysint("��������") >= tjxianzhiditu[mapid] and getdayint(actor,"�ճ�") == 0 then
			if getsysint("��������") >= 6 then
				if getbaseinfo(actor,39) < 2 then
					showprogressbardlg(actor,5,"@suiji","�������,����%d%...",0)
					setint(actor,"������",1,0)
					if getitemname(actor,item) == "�������ʯ" then
						return false
					end
					return true
				end
			elseif getsysint("��������") >= 5 then
				if getbaseinfo(actor,39) < 1 then
					showprogressbardlg(actor,5,"@suiji","�������,����%d%...",0)
					setint(actor,"������",1,0)
					if getitemname(actor,item) == "�������ʯ" then
						return false
					end
					return true
				end
			elseif getsysint("��������") >= 2 then
				if getint(actor,"��Ա�ȼ�") < 4 then
					showprogressbardlg(actor,5,"@suiji","�������,����%d%...",0)
					setint(actor,"������",1,0)
					if getitemname(actor,item) == "�������ʯ" then
						return false
					end
					return true
				end
			elseif getsysint("��������") >= 1 then
				if getint(actor,"��Ա�ȼ�") < 3 then
					showprogressbardlg(actor,5,"@suiji","�������,����%d%...",0)
					setint(actor,"������",1,0)
					if getitemname(actor,item) == "�������ʯ" then
						return false
					end
					return true
				end
			end
		end
	end
	
	if suijixianzhi[mapid] and getint(actor,"������") == 0 then
		if getbaseinfo(actor,39) < suijixianzhi[mapid] and getint(actor,"��ͼ�������") >= 30 then
			sendmsg9(actor,"�˵�ͼ��"..suijixianzhi[mapid].."ת�ſɽ�������������")
			return false
		end
		setint(actor,"��ͼ�������",getint(actor,"��ͼ�������")+1)
	end
	
	if yanshiditu[mapid] then
		if getint(actor,"������") == 1 then
			return false
		end
		showprogressbardlg(actor,1,"@suiji","�������,����%d%...",0)
		setint(actor,"������",1,0)
		if getitemname(actor,item) == "�������ʯ" then
			return false
		end
		return true
	end
	if getplaydef(actor,"N$�һ�״̬") == 1 then --�һ���
		delaygoto(actor,1000,"zidongguaji_jixu")
	end
	map(actor,getmap(actor))
	setint(actor,"������",0,0)
	if getitemname(actor,item) == "�������ʯ" then
		return false
	end
	return true
end

function suiji(actor)
	setint(actor,"������",0,0)
	if getbaseinfo(actor,0) then
		return
	end
	if getplaydef(actor,"N$�һ�״̬") == 1 then --�һ���
		delaygoto(actor,1000,"zidongguaji_jixu")
	end
	map(actor,getmap(actor))
end

function zidongguaji_jixu()
	startguaji(actor)
end

function stdmodefunc30(actor,item)  --�˳Ǵ���ʯ
	if hasbuff(actor,10056) and getint(actor,"��������3���") ~=33 and not hasbuff(actor,10052) then
		if getitemname(actor,item) == "���ûس�ʯ" and getmap(actor) == "0150" then
			huichengyanchi(actor)
			return false
		end
		if getint(actor,"�سǶ�����") == 0 then
			setint(actor,"�سǶ�����",1,0)
			showprogressbardlg(actor,1,"@huichengyanchi","�سǶ���,����%d%...",0)
			if getitemname(actor,item) == "���ûس�ʯ" then
				return false
			end
			return true
		else
			return false
		end
	end
    huichengyanchi(actor)
	if getitemname(actor,item) == "���ûس�ʯ" then
		return false
	end
	return true
end

function huichengyanchi(actor)
	mapmove(actor,"3",330,330,9)
	setint(actor,"�سǶ�����",0,0)
end

local jiu_t = {["������"]= 1000,["���Ǿ�"]=2500}
function stdmodefunc202(actor,obj)  --��
	local itemname = getitemname(actor,obj)
	local zhi = jiu_t[itemname] --�ӵ�ֵ

	local item = linkbodyitem(actor,16) --��λ��װ�� �ƺ�«
	if item == "0" then
		sendmsg9(actor,"��û������ƺ�«")
		return false
	end

	local jy = getitem_jiuqizhi(actor,item) --����ֵ
	if jy >= 10000 then
		sendmsg9(actor,"����ֵ����")
		return false
	end
	addhulujiuqizhi(actor,zhi) --���Ӻ�«����ֵ
	sendmsg9(actor,"����ֵ+"..zhi)
	playeffect(actor,20006,0,0,1,0,0)
	return true
end

function addhulujiuqizhi(actor,dian)
	dian = tonumber(dian)
	local item = linkbodyitem(actor,16) --��λ��װ�� �ƺ�«
	if item ~= "0" then
		local jy = getitem_jiuqizhi(actor,item) --����ֵ
		local zhi = jy + dian
		if zhi > 10000 then
			zhi = 10000
		end
		setitem_jiuqizhi(actor,item,zhi)
		local t = {
			open=1,  
			show=2,  
			name="����ֵ",  
			color=254,  
			imgcount=2,  
			cur=zhi, 
			max=10000, 
			level=0
			}
			setcustomitemprogressbar(actor,item,0,tbl2json(t))
			refreshitem(actor, item)
	end
	setjiuhulubuff(actor)
end

--10054 ����״̬ 10055���״̬
function setjiuhulubuff(actor) --
	jiuqizhishow(actor) --����ֵ��ʾ
	local item = linkbodyitem(actor,16) --��λ��װ�� �ƺ�«
	if item ~= "0" then
		local jy = getitem_jiuqizhi(actor,item) --����ֵ
		if jy >= 10000 then
			if not hasbuff(actor,10055) then
				addbuff(actor,10055)
			end
		elseif  jy > 0 then
			if not hasbuff(actor,10054) then
				addbuff(actor,10054)
			end
		else
			if hasbuff(actor,10054) then
				delbuff(actor,10054)
			end
			if hasbuff(actor,10055) then
				delbuff(actor,10055)
			end
		end
	else
		if hasbuff(actor,10054) then
			delbuff(actor,10054)
		end
		if hasbuff(actor,10055) then
			delbuff(actor,10055)
		end
	end
end


--------������
local useshengwang_t = {
	["������"] = 1,["2��������"] = 2,["5��������"] = 5,["50��������"] = 50,["100��������"] = 100,["250��������"] = 250,["1000��������"] = 1000,["500��������"] = 500,
}
function stdmodefunc201(actor,item) 
	local itemname = getitemname(actor,item)
	
	if itemname == "������" then
		local diejia = getiteminfo(actor,item,5) --��������
		delitem(actor,item)
		addshengwang(actor,diejia)
		return false
	end
	
	local sl = useshengwang_t[itemname]
	addshengwang(actor,sl)
	sendmsg9(actor,"������+"..sl)
	return true
end

--------�����
local jingyanjuan_t = {
	["1�����"] = 10000,["12�����"] = 120000,["50�����"] = 500000,
}
local xiaohaoshouhun = {["12�����"] = 5,["50�����"] = 20}
function stdmodefunc203(actor,item)
	if getlevel(actor) >= 75 then
		sendmsg9(actor,"75�����²ſ�ʹ��")
		return false
	end
	
	if getitemname(actor,item) == "1�����" then
		local diejia = getiteminfo(actor,item,5) --��������
		delitem(actor,item)
		changeexp(actor,"+",10000*diejia,false)
		getexp(actor,10000*diejia) --��ȡ���鴥��
		return false
	end
	
	setplaydef(actor,"N53",1)
	shiyongzhanshi(actor,getitemname(actor,item))
	return false
end
function shiyongzhanshi(actor,iname)
	if itemcount(actor,iname) < 1 then
		close()
		return
	end
	local msg = ""
		
	if iname == "12�����" or iname == "50�����" then
		
		msg = [[
		<Img|width=400|height=250|reset=1|bg=1|scale9r=20|scale9l=20|show=4|scale9b=20|esc=1|move=0|img=public/bg_npc_04.jpg|loadDelay=1|scale9t=20>
		<Button|x=400.0|y=1.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=97.0|y=48.0|width=200|esc=0|img=zhangheng/99.png>
		<Img|x=32.0|y=66.0|width=50|height=50|esc=0|img=zhangheng/231.png>
		<Img|x=11.0|y=161.0|width=380|esc=0|img=zhangheng/99.png>
		<Text|ax=0.5|ay=0.5|x=201.0|y=72.5|color=255|size=14|text=��ѡ��:$STM(SLIDERV_N53)��>
		<Text|x=28.0|y=208.0|color=149|size=16|text=�޻�ֵ��ͨ������NPC�������޻��>

		]]
		if getplaydef(actor,"N53") > itemcount(actor,iname) then
			setplaydef(actor,"N53",itemcount(actor,iname))
		end
		
		msg=msg.."<Button|x=105.0|y=56.0|color=255|size=18|nimg=zh/88.png|link=@jiajian,1,".. iname ..">"
		msg=msg.."<Button|x=258.0|y=55.0|color=255|size=18|nimg=zh/89.png|link=@jiajian,2,".. iname ..">"
		
		msg=msg.."<Text|ax=0.5|ay=0.5|x=199.0|y=30.5|color=251|size=18|text="..iname..">"
		msg=msg.."<ItemShow|x=24.0|y=58.0|width=70|height=70|itemid=".. getidbyname(iname) .."|itemcount=".. itemcount(actor,iname) .."|showtips=1|bgtype=0>"
		--sendmsg9(actor,""..getplaydef(actor,"N53"))
		msg=msg.."<Slider|x=110.0|y=102.0|width=180|height=14|ballimg=public/bg_szjm_02_1.png|defvalue=".. getplaydef(actor,"N53") .."|maxvalue=10|bgimg=public/bg_szjm_01.png|sliderid=N53|barimg=public/bg_szjm_02.png|link=@ladongchufa,"..iname..">"       
	
		msg=msg.."<Button|x=293.0|y=199.0|color=10051|size=18|nimg=zhangheng/13.png|text=ȷ��ʹ��|link=@shiyongjingyanjuan,"..iname..">"
		
		----�����Ǽӵ�����
		msg=msg.."<Text|x=28.0|y=133.0|size=16|color=255|text=�����޻�ֵ��ʹ���鷭��>"
		msg=msg.."<Text|x=28.0|y=172.0|color=254|size=16|text=�㵱ǰӵ���޻�ֵ��".. getshouhunzhi(actor) ..">"
		if getint(actor,"������鷭��") == 0 then
			msg=msg.."<Text|x=218.0|y=133.0|color=253|size=16|text=��ǰ���ĵ�����0>"
			msg=msg.."<Img|x=249.0|y=167.0|img=zh/77.png|link=@jingyanxuanze,"..iname..">"
		else
			msg=msg.."<Text|x=218.0|y=133.0|color=253|size=16|text=��ǰ���ĵ�����".. xiaohaoshouhun[iname] * getplaydef(actor,"N53") ..">"
			msg=msg.."<Img|x=249.0|y=167.0|img=zh/78.png|link=@jingyanxuanze,"..iname..">"
		end
		msg=msg.."<Text|x=284.0|y=172.0|color=255|size=16|text=�������鷭��>"
	
	end
	
	say(actor,msg)
end

function shiyongjingyanjuan(actor,iname)
	if getlevel(actor) >= 75 then
		sendmsg9(actor,"75�����²ſ�ʹ��")
		return false
	end
	
	local sl = getplaydef(actor,"N53")
	if sl < 1 then
		return false
	end
	
	if sl > 10 then
		sl = 10
	end
	
	local jyz = jingyanjuan_t[iname] * sl
	if itemcount(actor,iname) < sl then
		sendmsg9(actor,iname.."��������")
		return shiyongzhanshi(actor,iname)
	end
	if iname ~= "1�����" and getint(actor,"������鷭��") == 1 then
		if iname == "12�����"  or iname == "50�����" then
			if getshouhunzhi(actor) < xiaohaoshouhun[iname] * getplaydef(actor,"N53") then
				sendmsg9(actor,"�޻�ֵ����")
				return shiyongzhanshi(actor,iname)
			end
			subshouhunzhi(actor,xiaohaoshouhun[iname] * getplaydef(actor,"N53"))
			jyz = jyz * 2
		end
	end
	takeitem(actor,iname,sl)
	changeexp(actor,"+",jyz,false)
	getexp(actor,jyz) --��ȡ���鴥��
	recalcabilitys(actor)
	return shiyongzhanshi(actor,iname)
end

function jiajian(actor,caozuo,iname)
	if caozuo == "1" then --��
		if getplaydef(actor,"N53") <= 1 then
			return
		end
		setplaydef(actor,"N53",getplaydef(actor,"N53")-1)
	else
		if getplaydef(actor,"N53") >= 10 then
			return
		end
		setplaydef(actor,"N53",getplaydef(actor,"N53")+1)
	end
	return shiyongzhanshi(actor,iname)
end

function ladongchufa(actor,iname)
	if getplaydef(actor,"N53") == 0 then
		setplaydef(actor,"N53",1)
	end
	--sendmsg9(actor,""..getplaydef(actor,"N53"))
	return shiyongzhanshi(actor,iname)
end

function jingyanxuanze(actor,iname)
	if getint(actor,"������鷭��") == 0 then
		setint(actor,"������鷭��",1)
	else
		setint(actor,"������鷭��",0)
	end
	return shiyongzhanshi(actor,iname)
end



--------��Ҷ�
local gold_t = {
	["2000���"] = 2000,["5000���"] = 5000,["8000���"] = 8000,["1W���"] = 10000,["2W���"] = 20000,["5W���"] = 50000,["10W���"] = 100000,["20W���"] = 200000,["50W���"] = 500000,
	["100W���"] = 1000000,["500W���"] = 5000000,["1000W���"] = 10000000,["����"] = 1000000,
}
function stdmodefunc881(actor,item) --2000���
	local itemname = getitemname(actor,item)
	local sl = gold_t[itemname]
	if isbind(actor,item) then
		addbindgold(actor,sl)
		sendmsg9(actor,"��ʾ:�󶨽��+".. sl)
	else
		if getgold(actor) + sl > 2100000000 then
			sendmsg9(actor,"������Я��������21��")
			return false
		end
		addgold(actor,sl)
		sendmsg9(actor,"��ʾ:���+".. sl)
	end
	return true
end

-------��Ҷν���
--[[function stdmodefunc99(actor,item)  --�������ʯ
	map(actor,getbaseinfo(actor,3))
	return true
end--]]

function stdmodefunc22(actor,item)  --������ϴ��
    local item_num = getbaseinfo(actor, 46)
    if item_num < 200 then
		sendmsg9(actor, "�������Ǻ���","#ff0000")
		return false
	else
		callscriptex(actor, "CHANGEPKPOINT","-", 200)
    end
	return true
end
-------ף����
--ף����
local luck_table = {}
luck_table[0] = 10000
luck_table[1] = 8000
luck_table[2] = 6000
luck_table[3] = 4000
luck_table[4] = 3000
luck_table[5] = 1000
luck_table[6] = 0

local luck_broadcast = 6 --���6��
local invalid_section = 3333 --��Ч����
function stdmodefunc111(actor,wupin)
	local item =linkbodyitem(actor, 1)
	if item == "0" then
		sendmsg9(actor,"��û��װ������������ʹ��ף���ͣ�")
		return false
	end
	local luck_curse = getluck(actor,item) --��ȡ����
	--sendmsg1(actor,"����ֵ"..luck_curse)
	if luck_curse >= luck_broadcast then
		sendmsg9(actor,"���������Ѿ�+6������ʹ��ף���ͣ�")
		return false
	end
	if math.random(1, 10000) <= invalid_section then
		sendmsg6(actor,"��ʾ:��Ч","#006400")
	else
		local jilv = luck_table[luck_curse]
		if getitemname(actor,item) == "����" or getitemname(actor,item) == "�Ȼ귨��" or getitemname(actor,item) == "����֮��" then
			jilv = 7000
		end 
		if math.random(1, 10000) <= jilv then
			setitemaddvalue(actor,item,1,5,getitemaddvalue(actor,item,1,5)+1)
			sendmsg6(actor,"��ʾ:��������������...","#006400")
		else
			setitemaddvalue(actor,item,1,5,getitemaddvalue(actor,item,1,5)-1)
			sendmsg6(actor,"��ʾ:������������...","#006400")
		end
	end
	refreshitem(actor, item)
	
	return true
end

-----ף���ͽ���
-----˫������ Сʱ
function stdmodefunc520(actor,item)
	if hasbuff(actor,10066) then
		sendmsg9(actor,"������1.5������״̬���޷�ʹ��")
		return false
	end
	local bufftime = 0
	if hasbuff(actor,10065) then
		bufftime = getbuffinfo(actor,10065,2)
		delbuff(actor,10065)
	end
	bufftime = bufftime + 3600
	addbuff(actor,10065,bufftime)
	sendmsg9(actor,"��ʾ:˫������ʱ������1Сʱ")
	sendmsg6(actor,"��ʾ:˫������ʱ������1Сʱ")
	return true
end

function stdmodefunc521(actor,item)
	if hasbuff(actor,10065) then
		sendmsg9(actor,"������˫������״̬���޷�ʹ��")
		return false
	end
	local bufftime = 0
	if hasbuff(actor,10066) then
		bufftime = getbuffinfo(actor,10066,2)
		delbuff(actor,10066)
	end
	bufftime = bufftime + 3600
	addbuff(actor,10066,bufftime)
	sendmsg9(actor,"��ʾ:1.5������ʱ������1Сʱ")
	sendmsg6(actor,"��ʾ:1.5������ʱ������1Сʱ")
	return true
end
-----˫���������

-----������
function stdmodefunc41(actor,item)
	local msg = ""
	msg=msg..'<Img|x=0|y=0|show=4|bg=1|img=zh/55.png|esc=1>'
	msg=msg..'<Text|x=108.0|y=66.0|color=255|size=40|text=��������>'
	msg=msg..'<Img|x=110.0|y=130.0|img=public/1900000668.png>'
	msg=msg..'<Img|x=110.0|y=130.0|img=public/1900000668.png>'
	msg=msg..'<Img|x=110.0|y=130.0|img=public/1900000668.png>'
	msg=msg..'<Input|x=116.0|y=133.0|width=145|height=25|size=18|errortips=1|mincount=4|color=255|maxcount=14|onlyCh=1|inputid=1|type=0>'
	msg=msg..'<Button|x=94.0|y=238.0|color=150|size=20|submitInput=1|nimg=zh/57.png|text=ȡ��|link=@exit>'
	msg=msg..'<Button|x=217.0|y=238.0|color=150|size=20|nimg=zh/57.png|submitInput=1|text=ȷ��|link=@quedinggaiming>'
	say(actor,msg)
	return false
end

function quedinggaiming(actor)
	if itemcount(actor,"������") < 1 then
		sendmsg9(actor,"��û�и�����")
		return
	end
	local newname = getconst(actor,'<$NPCINPUT(1)>') --������
	if #newname < 4 or #newname > 20 then
		sendmsg9(actor,"�������Ƴ��Ȳ���ȷ")
		return
	end
	if changehumname(actor,newname) == 0 then
		sendmsg9(actor,"�����ɹ�")
		sendmsg6(actor,"�����ɹ�")
		takeitem(actor,"������",1)
		close()
	else
		sendmsg9(actor,"����ʧ�ܣ��������µ�����")
		sendmsg6(actor,"����ʧ�ܣ��������µ�����")
		return
	end
end
-----����������

-----
function stdmodefunc113(actor,item) --����������
	if getmap(actor) ~= "d10062" then
		sendmsg9(actor,"���ڳ���ħѨʹ��")
		return false
	end
	playeffect(actor,78,0,0,1,0,0)
	playeffect(actor,79,0,0,1,0,0)
	playeffect(actor,80,0,0,1,0,0)
	playeffect(actor,81,0,0,1,0,0)
	playeffect(actor,82,0,0,1,0,0)
	playeffect(actor,83,0,0,1,0,0)
	playeffect(actor,84,0,0,1,0,0)
	if math.random(1,100) <= 30 then
		map(actor,"yhmg") 
		sendmsg0(actor,"[".. getname(actor) .."]ȼ�š����������ڡ��̻�!���˵Ľ������̻�֮�ش�! ")
	end
	sendmsg0(actor,"[".. getname(actor) .."]��[".. getbaseinfo(actor,45).."("..getx(actor).. "," .. gety(actor) ..")]ȼ���ˡ����������ڡ��̻�!Ѥ���ޱ�!  ")
	return true
end

function stdmodefunc114(actor,item) --ħ������
	if getmap(actor) ~= "6" then
		sendmsg9(actor,"����ħ����ʹ��")
		return false
	end
	local x = getx(actor)
	local y = gety(actor)
	if x > 108 and x < 144 and y > 139 and y < 173 then
		sendmsg9(actor,"��ȫ��������ֹʹ��")
		return false
	end
	genmon("6",getx(actor),gety(actor),"аħͳ˧",1,1,249)
	sendmovemsg(actor,1,251,0,100,1,"��ҡ�".. getname(actor) .."��ʹ��ħ������ɹ��ٻ���аħͳ˧����ħ���ǣ���֪���Ƿ�ħ����ʴ����ʿ�ǿ�ȥѰ�Ұ�!")
	return true
end

-----�׶���
function stdmodefunc425(actor,item)
	local kuan,gao = getpingmusize(actor)
	local bgkuan = 294
	local bggao = 147
	local x = (kuan - bgkuan)/2
	local y = (gao - bggao)/2
	local msg = ''
	msg = msg .. '<Img|children={1,2,3,4,5}|x='..x..'|y='..y..'|img=private/revive/bg_swfh_1.png|move=1|show=0|bg=1|reset=1>'
	msg = msg ..[[
		<Text|id=1|x=42.0|y=23.0|outline=1|color=251|size=18|text=�����������¶���Ŀ������>
		<Img|id=2|x=80.0|y=53.0|width=140|scale9b=5|scale9t=5|scale9r=5|img=zhangheng/139.png|scale9l=5|esc=0>
		<Input|id=3|x=85.0|y=57.0|width=130|height=25|size=16|type=0|inputid=1|color=255>
		<Button|id=4|x=45.0|y=97.0|pimg=public/1900000652.png|outline=1|submitInput=1|nimg=public/1900000653.png|size=16|color=243|text=ȷ��|link=@duyao_queding>
		<Button|id=5|x=169.0|y=97.0|pimg=public/1900000652.png|outline=1submitInput=1||nimg=public/1900000653.png|size=16|color=243|text=ȡ��|link=@duyao_quxiao>
	]]
	addbutton(actor,106,124,msg)
	return false
end

function duyao_queding(actor)
	if itemcount(actor,"�׶���") < 1 then
		sendmsg9(actor,"�㱳����û�к׶���")
		return
	end
	local name = getconst(actor,'<$NPCINPUT(1)>')
	if name == "" then
		sendmsg9(actor,"�����������")
		return 
	end
	
	if queryhumnameexist(actor,name) ~= 3 then
		sendmsg9(actor,"��Ҳ�����")
		return 
	end
	if not callcheckscriptex(actor,name..".checkonline") then
		sendmsg9(actor,"��Ҳ�����")
		return
	end
	local player = getplayerbyname(name)
	if not hasbuff(player,19996) then
		addbuff(player,19996)
		setdaystr(player,"�׶����¶���",getname(actor))
		takeitem(actor,"�׶���",1)
		sendmsg9(actor,"�¶��ɹ�")
		delbutton(actor,106,124)
		--senddelaymsg(player,"�㱻".. getname(actor) .."���˺׶��죬���չ�ħ�����޽���12��",180,250,0,"",100)
		sendtopchatboardmsg(player,1,251,138,180,"�㱻".. getname(actor) .."���˺׶��� ���չ�ħ�����޽���12��")
	else
		sendmsg9(actor,"�������Ѿ������˺׶�����")
	end
end

-----�ϳ���
function stdmodefunc427(actor,item)
	local kuan,gao = getpingmusize(actor)
	local bgkuan = 294
	local bggao = 147
	local x = (kuan - bgkuan)/2
	local y = (gao - bggao)/2
	local msg = ''
	msg = msg .. '<Img|children={1,2,3,4,5}|x='..x..'|y='..y..'|img=private/revive/bg_swfh_1.png|move=1|show=0|bg=1|reset=1>'
	msg = msg ..[[
		<Text|id=1|x=42.0|y=23.0|outline=1|color=251|size=18|text=�����������¶���Ŀ������>
		<Img|id=2|x=80.0|y=53.0|width=140|scale9b=5|scale9t=5|scale9r=5|img=zhangheng/139.png|scale9l=5|esc=0>
		<Input|id=3|x=85.0|y=57.0|width=130|height=25|size=16|type=0|inputid=1|color=255>
		<Button|id=4|x=45.0|y=97.0|pimg=public/1900000652.png|outline=1|submitInput=1|nimg=public/1900000653.png|size=16|color=243|text=ȷ��|link=@duyao_queding1>
		<Button|id=5|x=169.0|y=97.0|pimg=public/1900000652.png|outline=1submitInput=1||nimg=public/1900000653.png|size=16|color=243|text=ȡ��|link=@duyao_quxiao>
	]]
	addbutton(actor,106,124,msg)
	return false
end

function duyao_queding1(actor)
	if itemcount(actor,"�ϳ���") < 1 then
		sendmsg9(actor,"�㱳����û�жϳ���")
		return
	end
	local name = getconst(actor,'<$NPCINPUT(1)>')
	if name == "" then
		sendmsg9(actor,"�����������")
		return 
	end
	
	if queryhumnameexist(actor,name) ~= 3 then
		sendmsg9(actor,"��Ҳ�����")
		return 
	end
	if not callcheckscriptex(actor,name..".checkonline") then
		sendmsg9(actor,"��Ҳ�����")
		return
	end
	local player = getplayerbyname(name)
	if not hasbuff(player,19997) then
		addbuff(player,19997)
		setdaystr(player,"�ϳ����¶���",getname(actor))
		takeitem(actor,"�ϳ���",1)
		sendmsg9(actor,"�¶��ɹ�")
		delbutton(actor,106,124)
		sendtopchatboardmsg(player,1,251,138,180,"�㱻".. getname(actor) .."���˶ϳ��� ����˫������15��")
	else
		sendmsg9(actor,"�������Ѿ������˶ϳ�����")
	end
end

function duyao_quxiao(actor)
	delbutton(actor,106,124)
end

-----ҩƷ����
function stdmodefunc234(actor,item)
	if itemcount(actor,"����ҩ") < 8 and itemcount(actor,"����ѩ˪") < 8 then
		sendmsg9(actor,"��������Ҫ��8������ѩ˪��8ƿ����ҩ���ܴ���")
		return false
	end
	
	if isbind(actor,item) then
		if itemcount(actor,"����ҩ") >= 8 then
			takeitem(actor,"����ҩ",6)
			giveitem(actor,"����ҩ��",1,370)
			return true
		end
		if itemcount(actor,"����ѩ˪") >= 8 then
			takeitem(actor,"����ѩ˪",6)
			giveitem(actor,"����ѩ˪��",1,370)
			return true
		end
	else
		local list = getbaglist(actor) --������Ʒ
		local liaoshang_t = {}	--��������ҩ�����
		local bindliaoshang_t = {} --����������ҩ�����
		local wannian_t = {}	--��������
		local bindwannian_t = {}	--��������������
		for i = 1,#list do
			if getitemname(actor,list[i]) == "����ҩ" then
				if isbind(actor,list[i]) then
					table.insert(bindliaoshang_t,list[i])
				else
					table.insert(liaoshang_t,list[i])
				end
			end
			if getitemname(actor,list[i]) == "����ѩ˪" then
				if isbind(actor,list[i]) then
					table.insert(bindwannian_t,list[i])
				else
					table.insert(wannian_t,list[i])
				end
			end
		end
		
		if #liaoshang_t + #bindliaoshang_t >= 8 then
			for i = 1,#bindliaoshang_t do
				delitem(actor,bindliaoshang_t[i])
				if i >= 6 then
					break
				end
			end
			for i = 1,6-#bindliaoshang_t do
				delitem(actor,liaoshang_t[i])
			end
			
			if #bindliaoshang_t > 0 then --�а�ҩ���޿۳�
				giveitem(actor,"����ҩ��",1,370)
			else
				giveitem(actor,"����ҩ��",1)
			end
			return true
		end
		if #wannian_t + #bindwannian_t >= 8 then
			for i = 1,#bindwannian_t do
				delitem(actor,bindwannian_t[i])
				if i >= 6 then
					break
				end
			end
			for i = 1,6-#bindwannian_t do
				delitem(actor,wannian_t[i])
			end
			
			if #bindwannian_t > 0 then --�а�ҩ���޿۳�
				giveitem(actor,"����ѩ˪��",1,370)
			else
				giveitem(actor,"����ѩ˪��",1)
			end
			return true
		end	
	end
end

--��˿
function stdmodefunc585(actor,item)
	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
	<Img|x=9.0|y=9.0|height=232|img=zhangheng/210.png|esc=0>
	<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
	<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=�ֿⱣ��Ա>
	<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
	<Text|x=25.0|y=65.0|color=255|size=18|text=��ã��������ǲֿⱣ��Ա��Ҫ�����Ϸ���չ��������>
	<Text|x=404.0|y=104.0|color=250|size=18|text=ȷ����չ|link=@kuozhanbeibao,1>
	<Text|x=404.0|y=147.0|color=250|size=18|text=ȷ����չ|link=@kuozhanbeibao,2>
	<Img|x=27.0|y=180.0|width=50|height=50|esc=0|img=zhangheng/158.png>
	<Img|x=286.0|y=180.0|width=50|height=50|esc=0|img=zhangheng/158.png>
	<Text|x=84.0|y=182|color=251|size=16|text=���ۣ�10Ԫ��>
	<Text|x=344.0|y=182.0|color=251|size=16|text=���ۣ�10Ԫ��>
	<Text|x=84.0|y=208.0|color=250|size=18|text=����1��|link=@goumaicansi,1,��˿>
	<Text|x=170.0|y=208.0|color=250|size=18|text=����10��|link=@goumaicansi,10,��˿>
	<Text|x=344.0|y=208.0|color=250|size=18|text=����1��|link=@goumaicansi,1,���˿>
	<Text|x=430.0|y=208.0|color=250|size=18|text=����10��|link=@goumaicansi,10,���˿>
	]]
	msg=msg.."<ItemShow|x=19.0|y=173.0|width=70|height=70|itemid=".. getidbyname("��˿") .."|itemcount=1|showtips=1|bgtype=0>"
	msg=msg.."<ItemShow|x=278.0|y=173.0|width=70|height=70|itemid="..getidbyname("���˿").."|itemcount=1|showtips=1|bgtype=0>"
	msg=msg.."<RText|x=25.0|y=104.0|color=255|size=18|text=<��չ����/FCOLOR=31>�������ģ���˿(<".. itemcount(actor,"��˿") .."></10/FCOLOR=250>)>"
	msg=msg.."<RText|x=25.0|y=147.0|color=255|size=18|text=<��չ�ֿ�/FCOLOR=70>�������ģ����˿(<".. itemcount(actor,"���˿") ..">/<10/FCOLOR=250>)>"
	say(actor,msg)
	return false
end

function goumaicansi(actor,sl,name)
	if name ~= "��˿" and name ~= "���˿" then
		return
	end
	sl = tonumber(sl)
	if not subingot(actor,sl*10) then
		sendmsg9(actor,"Ԫ������"..sl*10)
		return
	end
	giveitem(actor,name,sl)
	sendmsg9(actor,"����ɹ�")
	return stdmodefunc585(actor,item)
end
function kuozhanbeibao(actor,par)
	if par == "1" then
		if getint(actor,"�ѿ�������������") >= 86 then
			sendmsg9(actor,"���������Ѿ���������")
			return
		end
		if itemcount(actor,"��˿") < 10 then
			sendmsg9(actor,"��˿����")
			return
		end
		takeitem(actor,"��˿",10)
		setbagcount(actor, getint(actor,"�ѿ�������������") + 1) --��������
		setint(actor,"�ѿ�������������",getint(actor,"�ѿ�������������") + 1)
		sendmsg9(actor,"�����������ӳɹ�")
	else
		if getint(actor,"�ѿ����ֿ������") >= 96 then
			sendmsg9(actor,"���������Ѿ���������")
			return
		end
		if itemcount(actor,"���˿") < 10 then
			sendmsg9(actor,"���˿����")
			return
		end
		takeitem(actor,"���˿",10)
		changestorage(actor, 1)
		setint(actor,"�ѿ����ֿ������",getint(actor,"�ѿ����ֿ������") + 1)
		sendmsg9(actor,"�����ֿ���ӳɹ�")
	end
	return stdmodefunc585(actor,item)
end

local yunxuditu = {["d606"]=1,["d023"]=1,["d716"]=1,["d2013"]=1,["d5074"]=1,["d2067"]=1,["d2078"]=1,["64"]=1,}
function stdmodefunc23(actor,item) --���Ƽ�
	if getbaseinfo(actor,36) == "" then
		sendmsg9(actor,"���ȼ����л����ʹ��")
		return false
	end
	local mapid = getmap(actor)
	if not yunxuditu[mapid] then
		sendmsg9(actor,"�����ض��ĵ�ͼʹ��")
		return false
	end
	playeffect(actor,81,0,0,1,0,0)
	gotolabel(actor,1,"@chuanyunjian,"..getname(actor)..","..mapid..","..getx(actor)..","..gety(actor))
	return true
end

function chuanyunjian(actor,zhaohuanzhe,mapid,x,y) --�ٻ��ߣ���ͼid,x,y
	delbutton(actor,107,97)
	if getname(actor) ~= zhaohuanzhe and getmap(actor) ~= "tuoji" and getmap(actor) ~= "waigua" then
		--sendmsg6(actor,"���Ƽ�����"..zhaohuanzhe.." "..mapid.." " .. x.." " ..y)
		local pyx = -320
		local pyy = -100
		local msg = ""
		msg = msg..'<Img|x='..  pyx ..'|y='..  pyy ..'|width=200|esc=0|bg=1|move=1|img=zh/54.png>'
		msg = msg..'<Text|x='.. 68 + pyx ..'|y='.. 10+pyy ..'|color=251|outline=1|size=18|text=���Ƽ�>'
		msg = msg..'<RText|ax=0.5|x='.. 100 + pyx ..'|y='.. 42+pyy ..'|color=255|outline=1|size=18|text=<'.. zhaohuanzhe ..'/FCOLOR=250>�������л��ٻ�>'
		msg = msg..'<RText|x='.. 36 + pyx ..'|y='.. 67+pyy ..'|color=255|size=18|outline=1|text=<�Ƿ�ǰ��֧Ԯ��/FCOLOR=254>>'
		msg = msg..'<Button|x='.. 29 + pyx ..'|y='.. 94+pyy ..'|nimg=zh/22.png|color=150|outline=1|size=18|text=ǰ��֧Ԯ|link=@zhiyuan,'..mapid..','..x..','..y..'>'
		msg = msg..'<COUNTDOWN|a=4|x='.. 92 + pyx ..'|y='.. 138+pyy ..'|time=60|count=1|outline=1|size=16|color=250|link=@close_chuanyunjian>'
		msg = msg..'<Button|x='.. 161 + pyx ..'|y='.. pyy ..'|nimg=zh/96.png|outline=1|size=18|link=@close_chuanyunjian>'
		addbutton(actor,107,97,msg)
	end
end
function zhiyuan(actor,mapid,x,y)
	if mapid == "64" then
		if getlevel(actor) < 50 then
			sendmsg9(actor,"֧Ԯ�˵�ͼ��Ҫ50��")
			delbutton(actor,107,97)
			return
		end
	end
	mapmove(actor,mapid,tonumber(x),tonumber(y),3)
	delbutton(actor,107,97)
end

function close_chuanyunjian(actor)
	delbutton(actor,107,97)
end

function stdmodefunc301(actor,item)  --ҩƷ���ÿ�
	openhyperlink(actor,20,1)
	sendmsg9(actor,"ͨ���ڹҿ�ֱ������ҩƷϵͳ")
	return true
end


-----�������ܶ�
--local pingbici_t = require("Envir/Market_Def/pingbizi.lua") --������
function stdmodefunc302(actor,item) --����
	if getmap(actor) == "tuoji" or getmap(actor) == "waigua" then
		sendmsg9(actor,"�˵�ͼ��ֹʹ������")
		return false
	end
	
	if getint(actor,"��Ա�ȼ�") < 2 then
		sendmsg9(actor,"����ƭ�Ӻ��� Ϊ��ֹ����ϵ���ƭ ʹ�ô�������ﵽͶ�ʴ�ʹ","#FFFF00")
		return false
	end

	--sendmsg9(actor,"���ȴ���")
	local msg = [[
	<Img|x=0.0|y=1.0|width=450|height=200|scale9t=10|scale9b=10|bg=1|scale9r=10|move=0|loadDelay=1|reset=1|scale9l=10|esc=1|img=public/bg_npc_04.jpg|show=4>
	<Text|x=59.0|y=37.0|color=255|size=18|text=���������뺰�������ݣ�������20���֣���>
	<Img|x=25.0|y=78.0|width=400|scale9r=10|scale9l=10|esc=0|img=zhangheng/139.png|scale9b=10|scale9t=10>
	<Button|x=95.0|y=136.0|nimg=zhangheng/13.png|color=10051|size=18|text=ȡ��|link=@exit>
	<Button|x=280.0|y=136.0|size=18|nimg=zhangheng/13.png|color=10051|submitInput=1|text=����|link=@labafasong>
	<Input|x=30.0|y=82.0|width=390|height=25|size=16|color=255|type=0|inputid=1|maxcount=40|isChatInput=0>
	]]
	say(actor,msg)
	return false
end

function labafasong(actor)
	if getmap(actor) == "tuoji" or getmap(actor) == "waigua" then
		sendmsg9(actor,"�˵�ͼ��ֹʹ������")
		return false
	end
	if itemcount(actor,"������") < 1 then
		sendmsg9(actor,"��û�д�����")
		return false
	end
	local str = getconst(actor,'<$NPCINPUT(1)>') --����
	if str == "" then return sendmsg9(actor,"��������Ҫ���͵���Ϣ") end
	if callcheckscriptex(actor,"EXISITSSENSITIVEWORD",str) then
		sendmsg9(actor,"�㷢�͵���Ϣ�а��������ַ�")
		return
	end
	

	takeitem(actor,"������",1)
	--sendcentermsg(actor,254,0 ,"<"..getname(actor).."/FCOLOR=251><��/FCOLOR=255>"..str,1,30)
	sendmsg(actor,2,'{"Msg":"<'..getname(actor).. '��/FCOLOR=251>'..str..'","FColor":253,"BColor":0,"Type":5,"Y":150,"Time":3}')
end
-----�������ܽ���

-----
function stdmodefunc303(actor,item) --�󵰸�
	playeffect(actor,79,20,0,2,0,0)
	delaygoto(actor,1000,"fangdangan,80")
	delaygoto(actor,2000,"fangdangan,81")
	delaygoto(actor,3000,"fangdangan,82")
	delaygoto(actor,4000,"fangdangan,83")
	delaygoto(actor,5000,"fangdangan,84")
	delaygoto(actor,6000,"fangdangan,85")
	delaygoto(actor,7000,"fangdangan,86")
	delaygoto(actor,8000,"fangdangan,80")
	delaygoto(actor,9000,"fangdangan,81")
	delaygoto(actor,10000,"fangdangan,82")
	delaygoto(actor,11000,"fangdangan,83")
	delaygoto(actor,12000,"fangdangan,84")
	delaygoto(actor,13000,"fangdangan,85")
	delaygoto(actor,14000,"fangdangan,86")
	delaygoto(actor,15000,"fangdangan,80")
	delaygoto(actor,16000,"fangdangan,81")
	delaygoto(actor,17000,"fangdangan,82")
	delaygoto(actor,18000,"fangdangan,83")
	delaygoto(actor,19000,"fangdangan,84")
	delaygoto(actor,20000,"fangdangan,85")
	delaygoto(actor,21000,"fangdangan,86")

	sendmsg0(actor,"[".. getname(actor) .."]��[".. getbaseinfo(actor,45).."("..getx(actor).. "," .. gety(actor) ..")]ȼ���ˡ���䵰�⡷�̻�!Ѥ���ޱ�!  ",255,253)
	return true
end

function fangdangan(actor,id)
	--sendmsg9(actor,"����")
	id = tonumber(id)
	playeffect(actor,id,20,0,1,0,0)
end



