require("Envir/Market_Def/zh.lua") --���˷�װ����
----------------------------����ǻ���NPC
function biqichenghuwei_show(actor)
	if getsysint("��������") < 1 then
		sendmsg9(actor,"��������ܽ����������")
		return
	end
	
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=330|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|reset=1|scale9l=30|esc=1|img=zhangheng/176.png|show=0>
<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=��������>
<RText|x=22.0|y=55.0|size=16|color=161|text=ֻ�л����ػ���ɽׯ��<"ɽׯ����"/FCOLOR=250>���ܵõ�<"��������"/FCOLOR=31>���Ͽ�>
<RText|x=22.0|y=77.0|color=161|size=16|text=(��ɱ�߿ɻ��<10������/FCOLOR=253>�Ľ����Լ�����������˵Ĺ���Ȩ)��>
<RText|x=22.0|y=99.0|color=161|size=16|text=��������Ѱ�ҵ���������.....>
<RText|x=61.0|y=225.0|color=255|size=16|text=���л����ҹ���<"ɽׯ����"/FCOLOR=250>�Լ�<"��������"/FCOLOR=250>���˺�>
<RText|x=21.0|y=256.0|size=16|color=254|text=ÿ��19.30��ˢ��ɽׯ����. 21��֮ǰδ�������ϵͳ���Զ�ȡ��>
<Text|x=116.0|y=287.0|color=250|size=18|text=͵����������ϴ��|link=@biqichenghuwei_toukan>
<Text|x=116.0|y=286.0|outline=1|color=251|size=18|text=����������������/50000���ÿ��>
<RText|x=23.0|y=129.0|color=161|size=16|text=�õ��������˹���Ȩ����ҿɽ�<"��������"/FCOLOR=31>����<"�����"/FCOLOR=254>����>
<RText|x=23.0|y=151.0|color=161|size=16|text=���ͳɹ��ɻ�ó���������<�����л��Ա/FCOLOR=250>����<�ͽ�ʹ��/FCOLOR=250>����ȡ>
<RText|x=23.0|y=173.0|color=161|size=16|text=�������绤�͹������������˱���ɱ����ô��ɱ�߿ɵõ�����>
<RText|x=23.0|y=195.0|size=16|color=161|text=���˵Ĺ���Ȩ����������ʼ�㸴�<180��������»���/FCOLOR=249>...>




	]]
	say(actor,msg)
end

function biqichenghuwei_toukan(actor)
	if getbindgold(actor) < 50000 then
		sendmsg9(actor,"��Ҳ���")
		return
	end
	subbindgold(actor,50000)
	
	local hour = tonumber(os.date("%H",os.time()))
	local fen = tonumber(os.date("%M",os.time()))
	if getsysint("��������") > 0 and ((hour == 19 and fen >= 30) or hour == 20) then
		sendmsg9(actor,"С����  ����ʲô�ء���������")
	else
		sendmsg9(actor,"���ڲ���19��30��-21��.�������˻�û��ϴ���ء�����������")
	end
	
	return
end

function biqichenghuwei_yuanyi(actor)
	local tab = getobjectinmap("wlsz",150,150,150,2) --���й���� ��������
	--release_print(tbl2json(tab))
	for i = 1,#tab do
		if getname(tab[i]) == "��������" then
			sendmsg9(actor,"���������Ѿ���·����")
			return
			--release_print("����������")
		end
	end

	callscriptex(actor, "KILLCALLMOB","��������",1)

	callscriptex(actor, "RECALLMOB", "��������", 0,200,0)
	darttime(actor,30*60,1)

	local bb_list = getbaobaolist(actor)
	for i = 1,#bb_list do
		if getname(bb_list[i]) == "��������" then		 	
			makeposion(bb_list[i],5,180)
			setcurrent(bb_list[i],0,tostring(os.time())) --��ʶ����ʱ��
		end
	end
	sendtopchatboardmsg(actor,0,251,0,180,"����������������ɽׯ��ԡ���£�%d�����ʿ���ɶ������......",1)
	
	sendmsg(nil, 2, '{"Msg":"Ư����<��������/FCOLOR=249>����<����ɽׯ/FCOLOR=250>��ԡ���£�180���ɻ��ͻ��߽�ɱ�������ˣ�����ø߶��....","FColor":251,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"200"}')
    sendmsg(nil, 2, '{"Msg":"Ư����<��������/FCOLOR=249>����<����ɽׯ/FCOLOR=250>��ԡ���£�180���ɻ��ͻ��߽�ɱ�������ˣ�����ø߶��....","FColor":251,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"250"}')
    sendmsg(nil, 2, '{"Msg":"Ư����<��������/FCOLOR=249>����<����ɽׯ/FCOLOR=250>��ԡ���£�180���ɻ��ͻ��߽�ɱ�������ˣ�����ø߶��....","FColor":251,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"300"}')
	--sendmovemsg(actor,1,251,0,100,1,"��ҡ�".. getname(actor) .."����ȡ����������������������180������ѣ������Ǹ��ǻ���������Ŀ�Դ���.....")
	sendmsg9(actor, "�ɹ���ȡ��������.")
	close()
end


----------------------------�����NPC
function gongsunce_show(actor,xuanzhe)
	xuanzhe = tonumber(xuanzhe) or 0
	local msg = [[
	<Img|x=0.0|y=0.0|width=490|height=300|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|reset=1|scale9l=30|esc=1|img=zhangheng/176.png|show=0>
<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=�����>
<RText|x=22.0|y=55.0|color=161|size=16|text=��ʿ��һ·�����ˣ����"����ɽׯ"���Ǻ�ƽ��������Ǳ����>
<RText|x=22.0|y=77.0|color=161|size=16|text=Σ�����"��������"�����Ұ�!  �ҽ������귨����<"��������"/FCOLOR=70>>
<RText|x=22.0|y=99.0|color=161|size=16|text=��<"��������"/FCOLOR=70>����ʿ������ѡһ��...>
<RText|x=24.0|y=129.0|color=161|size=16|text=�������л�����г�Ա������Ϊ��, <�����л��Ա/FCOLOR=254>����<����ɽ/FCOLOR=250>>
<RText|x=24.0|y=151.0|color=161|size=16|text=<ׯ(184, 126)/FCOLOR=250>����<"�ͽ�ʹ��"/FCOLOR=250>��ȡ��񱨳꣡>
<RText|x=77.0|y=193.0|color=31|size=16|text=���ͽ���>
<RText|x=45.0|y=215.0|size=16|color=31|text=���ѡһ������ȡ>
<Img|x=179.0|y=187.0|width=50|height=50|esc=0|img=zhangheng/104.png>
<Img|x=264.0|y=187.0|width=50|height=50|esc=0|img=zhangheng/104.png>

	]]
	if xuanzhe == 1 then
		msg=msg..'<ItemShow|x=173.0|y=179.0|width=70|height=70|itemid='.. getidbyname("��������") ..'|itemcount=1|showtips=1|bgtype=0|link=@gongsunce_show>'
	else
		msg=msg..'<ItemShow|x=173.0|y=179.0|width=70|height=70|itemid='.. getidbyname("��������") ..'|itemcount=1|showtips=1|bgtype=0|link=@gongsunce_show,1>'
	end
	if xuanzhe == 2 then
		msg=msg..'<ItemShow|x=258.0|y=179.0|width=70|height=70|itemid='.. getidbyname("��������") ..'|itemcount=1|showtips=1|bgtype=0|link=@gongsunce_show>'
	else
		msg=msg..'<ItemShow|x=258.0|y=179.0|width=70|height=70|itemid='.. getidbyname("��������") ..'|itemcount=1|showtips=1|bgtype=0|link=@gongsunce_show,2>'
	end
	if xuanzhe == 1 then
		msg=msg..'<Img|x=179.0|y=187.0|width=50|height=50|esc=0|img=zhangheng/39.png>'
	elseif xuanzhe == 2 then
		msg=msg..'<Img|x=264.0|y=187.0|width=50|height=50|esc=0|img=zhangheng/39.png>'
	end
	msg=msg..'<Text|ax=0.5|x=246.0|y=255.0|color=250|size=18|text=��ȡ����|link=@gongsunce_lingqu,'.. xuanzhe ..'>'
	say(actor,msg)
end
local giveitemt = {"��������","��������"}
function gongsunce_lingqu(actor,par)
	par = tonumber(par)
	
	local biao = ""
	local ncount=getbaseinfo(actor,38) --��ñ����б�
    for i = 0 ,ncount-1 do
        local mon =  getslavebyindex(actor, i) --��ñ�������
		if getname(mon) == "��������" then
			biao = mon
		end
    end
	if biao == "" then --û���ڳ�
		sendmsg9(actor, "�������˶����㶪�ˣ�������θ��㱨���أ�")
		return
	end
	if not FCheckRange(biao, 178, 130, 5) then
		sendmsg9(actor, "�������˾�����̫Զ��.")
		return
	end
	
	if par == 0 then
		sendmsg9(actor, "��ʿ��ѡ���ͽ����󣬲ſ��ύ����.")
		return
	end
	
	callscriptex(actor, "KILLCALLMOB","��������",1,1) --�Ƴ��ڳ�
	giveitem(actor,giveitemt[par],1)
	setsysstr("Ѻ�ڳɹ��л�",getbaseinfo(actor,36))
	setsysint("Ѻ�ڳɹ�ʱ��",os.time()) --�Դ˿��Ʊ�����ȡû��
	sendmsg9(actor, "���ͳɹ������ú���ı���.")
	sendmovemsg(actor,1,251,0,100,1,"����ҡ�".. getname(actor) .."�����������֮ʦ�ɹ������������ˣ������л��Ա��������ɽׯ'�ͽ�ʹ��'����ȡ����.....")
	close()
end

----------------------------�ͽ�ʹ��NPC
function shangjinshizhe_show(actor)

	local husongitems = {{"����֮Ѫ",5},{"���",100000},{"���ձ���+5%",1}, {"���ԣ�10-10",1}}
	if getint(actor,"����֮����ֵ") >= 80 then --����֮������
		husongitems[1] = {"������ʯ",3}
	end
	
	local msg = [[
		<Img|x=0.0|y=0.0|width=490|height=300|scale9t=30|scale9b=30|bg=1|scale9r=30|move=0|loadDelay=1|reset=1|scale9l=30|esc=1|img=zhangheng/176.png|show=0>
		<Button|x=490.0|y=0.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=127.0|y=28.0|img=zhangheng/177.png|esc=0>
		<Img|x=296.0|y=27.0|img=zhangheng/178.png|esc=0>
		<RText|ax=0.5|ay=0.5|x=246.0|y=34.5|color=251|size=18|text=�ͽ�ʹ��>
		<RText|x=22.0|y=55.0|size=16|color=161|text=�Ϸ��ڴ˵Ⱥ��ʱ�����˶�˵��������а���벻֪������������>
		<RText|x=22.0|y=77.0|size=16|color=161|text=���������˳ɹ����л��Ա�����ڴ���ȡ���½������콱��ʱ��>
		<RText|x=22.0|y=99.0|size=16|color=161|text=<19��30����21��/FCOLOR=250>����ʱ����.....>
		<RText|x=24.0|y=165.0|color=253|size=16|text=���ͳɹ�������>
		<Img|x=14.0|y=217.0|img=zhangheng/203.png|esc=0>

	]]

	local husonghanghui = "��"
	if getsysstr("Ѻ�ڳɹ��л�") ~= "" then
		husonghanghui = getsysstr("Ѻ�ڳɹ��л�")
	end 

	msg=msg..'<RText|x=24.0|y=246.0|color=254|size=16|text=���ͳɹ��л᣺<'.. husonghanghui ..'/FCOLOR=116>>'
	

	for i = 1,#husongitems do
		msg=msg..'<Img|x='.. 150+(i-1)*80 ..'|y=154.0|width=50|height=50|esc=0|img=zhangheng/104.png>'
		msg=msg..'<ItemShow|x='.. 142+(i-1)*80 ..'|y=146.0|width=70|height=70|itemid='.. getidbyname(husongitems[i][1]) ..'|itemcount=1|showtips=1|bgtype=0>'
		if husongitems[i][2] > 1 then
			msg=msg..'<Text|ax=1|ay=0.5|x='.. 197+(i-1)*80 ..'|y=193.0|color=255|outline=1|size=16|simplenum=1|text='.. husongitems[i][2] ..'>'
		end
	end

	msg=msg..'<Text|ax=0.5|x=346.0|y=246.0|color=250|size=18|text=��ȡ���ͽ���|link=@shangjin_lingqu>'

	say(actor,msg)
end

function shangjin_lingqu(actor)
	local hour = tonumber(os.date("%H",os.time()))
	local fen = tonumber(os.date("%M",os.time()))
	if (hour == 19 and fen >= 30) or hour == 20 then
	else
		sendmsg9(actor,"ÿ��19��30--21��ſ���ȡ����")
		return
	end

	if getsysstr("Ѻ�ڳɹ��л�") ~= "" and getbaseinfo(actor,36) == getsysstr("Ѻ�ڳɹ��л�") then
		local bianliang = getsysint("Ѻ�ڳɹ�ʱ��",os.time()) --�����ж������ȡ����
		if getdayint(actor,"Ѻ��"..bianliang) == 1 then
			sendmsg9(actor,"���Ѿ���ȡ���˴ν���")
			return
		end
		setdayint(actor,"Ѻ��"..bianliang,1)
		setdayint(actor,"Ѻ����ȡ����",getdayint(actor,"Ѻ����ȡ����")+1)
		if getint(actor,"����֮����ֵ") >= 80 then --����֮������
			giveitem(actor,"������ʯ",3,370)
		else
			giveitem(actor,"����֮Ѫ",5,370)
		end
		addbindgold(actor,100000)
		if not hasbuff(actor,10058) then
			local sec = 86400 - os.time()%86400 --����ʣ�����
			sec = sec + 3600*19
			addbuff(actor,10058,sec) --Ѻ�ڳɹ�buff
		end
		sendmsg9(actor,"��ȡ�ɹ�")
	else
		sendmsg9(actor,"��������ȡ����")
		return
	end

end