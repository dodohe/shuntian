require("Envir/Market_Def/zh.lua") --���˷�װ����
local fabaot = {
"����","��Ԫ�����","�׹���","������","����֮ͫ","�����","���ӡ","������",
"��ƿ","����������","����ӡ","�����","������¯","�����","������","���ؾ�",
"Ǭ����","�ڷ��","������Ϲ�","�Ϲ�����","��Ԫ��","����ʯ","��ȸ��","��ũ��","��ˮ��","������","������","����",
"������","�Ͻ��","̫����ӡ","����ǹ","����","�����","��ľ��","��ħ��",
"�����","�����ӻ���","�����","������","�����","�Ϸ���¼","������","ħ��ӡ","����Ϣ��","��ţ��","������","�������",
}

local fabaoshow_t = {
	{"�����","��ľ��","������","��ħ��","�Ͻ��","����ʯ",gao=106,xilie="�Ϲ�ϵ��ӡ��",color=255},
	{"������","�����","�������","��ţ��","̫����ӡ","������Ϲ�",gao=106,xilie="Զ��ϵ��ӡ��",color=255},
	{"�����ӻ���","������","�����","����ǹ","Ǭ����","�Ϲ�����",gao=106,xilie="����ϵ��ӡ��",color=255},
	{"����Ϣ��","ħ��ӡ","������","�ڷ��","��ȸ��","����",gao=106,xilie="����ϵ��ӡ��",color=255},
	{"�Ϸ���¼","�����","����","��ˮ��","������","������","��ũ��","��Ԫ��",gao=170,xilie="���ϵ��ӡ��",color=255},
	{"�����","������¯","����������","������","���ؾ�","�����","����ӡ","��ƿ",gao=170,xilie="����ϵ��ӡ��",color=250},
	{"�����","����֮ͫ","������","��Ԫ�����","�׹���","������","���ӡ","����",gao=170,xilie="����ϵ��ӡ��",color=249},
}

local jiage = {["Ǭ����"]=1,["�ڷ��"]=1,["������Ϲ�"]=1,["�Ϲ�����"]=1,["��Ԫ��"]=1,["����ʯ"]=1,["��ȸ��"]=1,["��ũ��"]=1,["��ˮ��"]=1,["������"]=1,["������"]=1,["����"]=1,
["������"]=1,["�Ͻ��"]=1,["̫����ӡ"]=1,["����ǹ"]=1,["����"]=1,["�����"]=1,["��ľ��"]=1,["��ħ��"]=1,
["�����"]=1,["�����ӻ���"]=1,["�����"]=1,["������"]=1,["�����"]=1,["�Ϸ���¼"]=1,["������"]=1,["ħ��ӡ"]=1,["����Ϣ��"]=1,["��ţ��"]=1,["������"]=1,["�������"]=1,
}

local base = {["Ǭ����"]=1,["�ڷ��"]=1,["������Ϲ�"]=1,["�Ϲ�����"]=1,["��Ԫ��"]=1,["����ʯ"]=1,["��ȸ��"]=1,["��ũ��"]=1,["��ˮ��"]=1,["������"]=1,["������"]=1,["����"]=1,
["������"]=1,["�Ͻ��"]=1,["̫����ӡ"]=1,["����ǹ"]=1,["����"]=1,["�����"]=1,["��ľ��"]=1,["��ħ��"]=1,
["�����"]=1,["�����ӻ���"]=1,["�����"]=1,["������"]=1,["�����"]=1,["�Ϸ���¼"]=1,["������"]=1,["ħ��ӡ"]=1,["����Ϣ��"]=1,["��ţ��"]=1,["������"]=1,["�������"]=1,
}

function show1(actor)
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=�ͽ�����>
<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
<RText|ax=0|ay=0.5|x=22.0|y=70.0|color=255|size=18|text=�Ϲ�ʱ���귨��½��ħ���У��ɽ��ɳ�����ͨ���ǿ�߽�����>
<RText|ay=0.5|x=22.0|y=95.0|color=255|size=18|text=ħ�����ӡ�������䣬�����ħ�������������ʹ������ն>
<RText|ay=0.5|x=22.0|y=120.5|color=255|size=18|text=ɱ��ħ�߽��л�����ӡ�ǣ�<����/FCOLOR=253>��<���ӡ��/FCOLOR=253>�����ɽ���>
<RText|ay=0.5|x=22.0|y=145.5|color=255|size=18|text=<��ɱ1000Ѫ������>�Ĺ�������Զ�����ͽ�ֵ��ʹ���ͽ�ֵ<��/FCOLOR=254>>
<RText|ay=0.5|x=22.0|y=170.5|color=255|size=18|text=<��ѻ�ȡӡ��/FCOLOR=254>�������ӡ�ǿɻ��ճ�<������/FCOLOR=70>!>
<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
<Text|ay=0.5|x=87.0|y=214.5|size=18|color=250|text=��ȡӡ��|link=@show>
<Text|ay=0.5|x=228.0|y=214.5|color=250|size=18|text=����ӡ��|link=@show,2>
<Text|ay=0.5|x=369.0|y=214.5|size=18|color=250|text=��ȡ����|link=@tiqushengwang>

	]]
	say(actor,msg)
end

function tiqushengwang(actor)
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=������ȡ>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ay=0.5|x=78.0|y=85.5|color=161|size=18|text=��ȡ200������>
		<RText|ay=0.5|x=78.0|y=125.5|color=161|size=18|text=��ȡ1000������>
		<RText|ay=0.5|x=25.0|y=165.5|color=254|size=16|text=Ϊ����Ͷ���ߵ����棬Ͷ��ר�ҿ���ȡ50%  Ͷ�ʴ�ʹ����ȡ25%>
		<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
		<Text|ay=0.5|x=345.0|y=214.5|size=18|color=250|text=������ҳ|link=@show1>
		<Text|ay=0.5|x=345.0|y=85.5|size=18|color=116|text=ȷ����ȡ|link=@tiqu,200>
		<Text|ay=0.5|x=345.0|y=125.5|size=18|color=116|text=ȷ����ȡ|link=@tiqu,1000>

	]]
	msg=msg.."<Text|ay=0.5|x=65.0|y=214.5|color=253|size=18|text=��ǰ�����㣺".. getshengwang(actor) ..">"
	say(actor,msg)
end

function tiqu(actor,sl)
	if getint(actor,"��Ա�ȼ�") < 2 then
		sendmsg9(actor,"�㲻��Ͷ�ʴ�ʹ���޷���ȡ����","#00FF00")
		return
	end
	sl = tonumber(sl)
	if getshengwang(actor) < sl then
		sendmsg9(actor,"��������"..sl)
		return
	end
	subshengwang(actor,sl)
	if getint(actor,"��Ա�ȼ�") >= 4 then
		giveitem(actor,sl/2 .."��������")
		sendmsg9(actor,"���"..sl/2 .."��������")
	else
		giveitem(actor,sl/4 .."��������")
		sendmsg9(actor,"���"..sl/4 .."��������")
	end
	return tiqushengwang(actor)
end

local hongmeng = {"�����","����֮ͫ","������","��Ԫ�����","�׹���","������","���ӡ","����"}
function isyouhongmeng(actor)
	local yinjiname = ""
	local item = linkbodyitem(actor,14)
	if item ~= "0" then
		yinjiname = getitemname(actor,item)
	end
	for i = 1,#hongmeng do
		if itemcount(actor,hongmeng[i]) > 0 or yinjiname == hongmeng[i] then
			return true
		end
	end
	return false
end

function show(actor,yemian,isshiyong,rongheisshow,hongseshow,lvseshow,hongmakeid,lvmakeid,hongxzid,lvxzid,shuomingxianshi,xianshi)
	--haoshistart(actor)
	yemian = tonumber(yemian) or 1
	isshiyong = tonumber(isshiyong) or 0
	rongheisshow = tonumber(rongheisshow) or 0 --�ںϽ����Ƿ���ʾ
	hongseshow = tonumber(hongseshow) or 0	--��ɫѡ����Ƿ���ʾ
	lvseshow = tonumber(lvseshow) or 0 --��ɫѡ����Ƿ���ʾ
	hongmakeid = tonumber(hongmakeid) or 0
	lvmakeid = tonumber(lvmakeid) or 0
	hongxzid = tonumber(hongxzid) or 0
	lvxzid = tonumber(lvxzid) or 0
	xianshi = tonumber(xianshi) or 0
	shuomingxianshi = tonumber(shuomingxianshi) or 0
	if rongheisshow == 1 then
		if not isyouhongmeng(actor) then
			sendmsg9(actor,"���Ȼ�ȡ����ϵ��ӡ��")
			return
		end
	end

	if hongmakeid ~= 0 and lvmakeid ~= 0 then
		local t = {}
		local item1 = getitembymakeindex(actor,hongmakeid)
		local item2 = getitembymakeindex(actor,lvmakeid)
		if item1 == "0" or item2 == "0" then
			sendmsg9(actor,"��û�д���Ʒ")
			return show(actor,1,0,1)
		end
		t[1] = getitemname(actor,item1)
		t[2] = getitemname(actor,item2)
		sendluamsg(actor, 103, 0, 0, 0, tbl2json(t))
	else
		local t = {0,0}
		sendluamsg(actor, 103, 0, 0, 0, tbl2json(t))
	end
	
	local msg = [[
		<Img|x=0|width=643|height=457|reset=0|loadDelay=0|bg=1|img=zhangheng/1.png|move=1|esc=1|show=4>
		<Button|x=639.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	]]
	if yemian == 1 then
		msg=msg..[[
		<Img|id=555|x=-26.5|y=142.5|esc=0|img=zhangheng/304.png|link=@show,2>
		<Img|x=-26.5|y=61.5|img=zhangheng/301.png|esc=0>

		<Img|x=16.5|y=37.5|img=zhangheng/146.png|esc=0>
		<Img|x=16.5|y=37.5|img=zhangheng/147.png|esc=0>
		<Img|x=15.5|y=94.5|width=609|height=338|scale9l=10|scale9b=10|img=zhangheng/149.png|scale9r=10|esc=0|scale9t=10>
		<Img|x=15.5|y=94.5|width=400|height=338|scale9r=10|scale9l=10|scale9t=10|img=zhangheng/149.png|scale9b=10|esc=0>

		<ListView|x=20.5|y=100.5|width=400|height=328|children={1,2,3,4,5,6,7}|bounce=0|margin=4 >
		]]
		
		if getint(actor,"��������") == 0 then
			navigation(actor,0,555,"�����ӡ�ǿɻ���")
		end
		
		if getint(actor,"��Ա�ȼ�") >= 2 then
			msg=msg..[[
			<Text|x=485.5|y=103.5|color=116|size=18|text=��ȡ����>
			<Text|x=420.5|y=129.5|color=161|size=16|text=Ϊ��֤��Ϸ�Ĺ�ƽ�ԣ���ÿ>
			<RText|x=420.5|y=151.5|color=161|size=16|text=λ����л�����<����ӡ��>>
			<RText|x=420.5|y=173.5|color=161|size=16|text=�ٷ�ÿ���ͳ�<5����ѻ�ȡ/FCOLOR=253>>
			<Text|x=420.5|y=195.5|color=161|size=16|text=ӡ�ǵĻ��ᣬÿ��ֻ��80��>
			<Text|x=420.5|y=217.5|color=161|size=16|text=�ͽ�ֵ������5�ζ�����ȡ>
			<Text|x=420.5|y=239.5|color=161|size=16|text=7.5����>
			<RText|x=421.5|y=261.5|color=250|size=16|text=�����ϱ���10��Ԫ�������>
			<RText|x=421.5|y=283.5|color=250|size=16|text=��ֿɻ��˫���ͽ�ֵ>
			<Button|x=588.5|y=281.5|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@show,1,0,0,0,0,0,0,0,0,0,1>
			]]
		
		else
			msg=msg..[[
			<Text|x=486.0|y=124.0|color=116|size=18|text=��ȡ����>
			<Text|x=420.5|y=160.5|color=161|size=16|text=Ϊ��֤��Ϸ�Ĺ�ƽ�ԣ���ÿ>
			<RText|x=420.5|y=182.5|color=161|size=16|text=λ����л�����<����ӡ��>>
			<RText|x=420.5|y=204.5|color=161|size=16|text=�ٷ�ÿ���ͳ�<5����ѻ�ȡ/FCOLOR=253>>
			<Text|x=420.5|y=226.5|color=161|size=16|text=ӡ�ǵĻ��ᣬÿ��ֻ��80��>
			<Text|x=420.5|y=248.5|size=16|color=161|text=�ͽ�ֵ������5�ζ�����ȡ>
			<Text|x=420.5|y=270.5|size=16|color=161|text=7.5����>

			]]
		end
		
		for i = 1,#fabaoshow_t do
			local ziid = i*1000
			local ziids = ""
			for j = 0,50 do
				ziids = ziids.. ziid + j ..","
			end
			msg=msg.."<Img|id="..i.."|children={".. ziids .."}|width=390|height=".. fabaoshow_t[i].gao .."|scale9r=10|scale9l=10|esc=0|img=zhangheng/149.png|scale9b=10|scale9t=10>"
			msg=msg.."<Text|id=".. ziid .."|x=10|y=12|color=".. fabaoshow_t[i].color .."|size=18|text=".. fabaoshow_t[i].xilie ..">"
			ziid = ziid + 1
			for j = 1,#fabaoshow_t[i] do
				msg=msg.."<Img|id=".. ziid .."|x=".. 10+((j-1)%6)*64 .."|y=".. 45+math.floor((j-1)/6)*64 .."|width=50|height=50|scale9t=10|scale9b=10|img=zhangheng/149.png|scale9r=10|esc=0|scale9l=10>"
				ziid = ziid + 1
				msg=msg.."<ItemShow|id=".. ziid .."|x=".. 3+((j-1)%6)*64 .."|y=".. 38+math.floor((j-1)/6)*64 .."|width=70|height=70|itemid=".. getidbyname(fabaoshow_t[i][j]) .."|itemcount=1|showtips=1|bgtype=0>"
				ziid = ziid + 1
			end
		end

		msg=msg.."<Button|x=424.5|y=345.5|size=18|nimg=zhangheng/13.png|color=10051|text=ӡ���ں�|link=@show,1,0,1>"

		msg=msg.."<Img|x=379.5|y=285.5|img=zh/50.png|width=270|esc=0>" --��
		if getdayint(actor,"ӡ�ǳ齱����") < 5 then
			msg=msg.."<Button|x=528.5|y=345.5|nimg=zhangheng/13.png|color=10051|size=18|text=��ȡӡ��|link=@choujiang,1>"
			--msg=msg.."<Text|x=564.5|y=367.5|color=250|size=18|text=(".. getdayint(actor,"ӡ�ǳ齱����") .."/10)>"
		else
			msg=msg.."<Button|x=528.5|y=345.5|nimg=zhangheng/13.png|color=10051|size=18|text=��ȡӡ��|link=@choujiang,2>"
		end
		
		
		msg=msg.."<Text|x=428.5|y=402.5|color=128|size=18|text=��ǰ�ͽ�ֵ��"..getshangjinzhi(actor)..">"
		if rongheisshow == 1 then
			return rongheshow(actor,msg,hongseshow,lvseshow,hongmakeid,lvmakeid,hongxzid,lvxzid,shuomingxianshi)
		end
		
		if xianshi == 1 then
			msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@show>"
			msg =msg..[[
<Img|ay=0.5|x=334.5|y=277.5|width=250|height=60|rotate=0|scale9t=10|scale9r=10|esc=0|scale9b=10|img=zh/7.png|scale9l=10>
<RText|x=350.5|y=255.5|width=344|size=16|color=255|text=�ɻ�ú��˵�ͷ.һ·˳��˳ˮ>
<RText|x=350.5|y=279.5|width=344|size=16|color=255|text=��������ֿ�Ϊ��ʿ��������.>

			]]
		end
		
	elseif yemian == 2 then
		if getint(actor,"��������") == 0 then
			setint(actor,"��������",1)
		end
	
		----���ս��濪ʼ
		msg=msg..[[
		<Img|x=-26.5|y=142.5|esc=0|img=zhangheng/303.png>
		<Img|x=-26.5|y=61.5|img=zhangheng/302.png|link=@show,1>


		<Img|x=16.5|y=38.5|img=zhangheng/152.png|esc=0>
		<Img|x=422.5|y=38.5|img=zhangheng/128.png|esc=0>
		<Img|x=18.5|y=292.5|img=zhangheng/140.png|esc=0>
		<Img|x=90.5|y=249.5|img=zhangheng/139.png|esc=0>
		<Img|x=152.5|y=305.5|img=zhangheng/153.png|esc=0>
		<Img|x=86.5|y=314.5|img=zhangheng/142.png|esc=0>
		<Img|x=298.5|y=314.5|img=zhangheng/143.png|esc=0>
		<Img|x=74.5|y=345.5|img=zhangheng/138.png|esc=0>
		<Img|x=420.5|y=40.5|img=zhangheng/144.png|esc=0>
		<Img|x=430.5|y=83.5|width=187|height=290|scale9r=3|scale9l=3|esc=0|img=zh/36.png|scale9b=3|scale9t=3>
		<Img|x=148.0|y=81.0|img=zh/21.png|esc=0>
		<Text|x=129.5|y=197.5|color=250|size=18|outline=1|text=ÿ��ӡ�ǿɻ���5������>
<Text|x=129.5|y=221.5|color=250|size=18|outline=1|text=Ͷ��ר�ҿɶ�����5��>

		<Button|x=437.5|y=383.5|color=10051|nimg=zhangheng/136.png|size=18|text=һ��ѡ������ӡ��|link=@yijianquanxuan>
		<ListView|id=1999|children={2000}|x=431.5|y=87.5|width=187|height=283>

		]]
		--msg=""
		local ziids = ""
		for i = 2002,2400 do
			ziids = ziids .. i .. ","
		end
		
		local t = getbaglist(actor) --��ȡ���������б�
		--release_print(tbl2json(t))
		local shouhun_t = {} --�޻�� Ψһid��
		local xuanzhong_t = {} --ѡ���޻�� Ψһid��
		if isshiyong == 1 then --ʹ�ñ������Ψһid��Ʒ��
			xuanzhong_t = gethuishoudata(actor)
		else
			setstr(actor,"����ѡ�е���","")
		end
		
		for i = 1,#t do
			local id = getiteminfo(actor,t[i],2) --��Ʒid
			local wyid = getiteminfo(actor,t[i],1) --��ƷΨһid
			local iname = getstditeminfo(id,1) --����
			--sendmsg6(actor,iname.."��Ψһid"..wyid)
			if jiage[iname] then
				table.insert(shouhun_t,wyid)
			end
		end
		local ziid = 2002
		local ysxx = -2
		local ysyy = -6
		local gaodu = (math.floor((#shouhun_t-1)/3) + 1) * 56 + 3
		msg = msg ..'<Layout|id=2000|children={2001}|height='.. gaodu ..'>' --���õ׿�� ��
		msg = msg ..'<Layout|id=2001|children={'.. ziids ..'}|height='.. gaodu ..'>' --���õ׿�� ��
		for i = 1,15 do
			msg = msg ..'<Img|id='..ziid..'|x='.. ysxx+9 + (i-1)%3*60 ..'|y='.. ysyy+9+math.floor((i-1)/3) * 56 ..'|width=52|height=52|scale9t=3|scale9b=3|img=zh/36.png|scale9r=3|scale9l=3>'
			ziid = ziid + 1		
		end
		--release_print(tbl2json(shouhun_t))
		--release_print("ѡ��",tbl2json(xuanzhong_t))
		
		local xuzhong_sl = 0
		for i = 1,#shouhun_t do
			local makeid = tostring(shouhun_t[i])
			msg = msg ..'<Img|id='..ziid..'|x='.. ysxx+9 + (i-1)%3*60 ..'|y='.. ysyy+9+math.floor((i-1)/3) * 56 ..'|width=52|height=52|scale9t=3|scale9b=3|img=zh/36.png|scale9r=3|scale9l=3>'
			ziid = ziid + 1
			if xuanzhong_t[makeid] then  ----��ѡ��		
				 	
				msg = msg ..'<DBItemShow|id='..ziid..'|x='.. ysxx+3 + (i-1)%3*60 ..'|y='.. ysyy+3+math.floor((i-1)/3) * 56 ..'|makeindex='..shouhun_t[i]..'|link=@xuanze,2,'.. shouhun_t[i] ..'>'
				
				ziid = ziid + 1
				--ѡ������
				msg = msg ..'<Img|id='..ziid..'|x='.. ysxx+8 + (i-1)%3*60 ..'|y='.. ysyy+8+math.floor((i-1)/3) * 56 ..'|img=zh/71.png>'
				ziid = ziid + 1		
				xuzhong_sl = xuzhong_sl + 1 ----ѡ������	
			else
				
					msg = msg ..'<DBItemShow|id='..ziid..'|x='.. ysxx+3 + (i-1)%3*60 ..'|y='.. ysyy+3+math.floor((i-1)/3) * 56 ..'|makeindex='..shouhun_t[i]..'|link=@xuanze,1,'.. shouhun_t[i] ..'>'
				
				ziid = ziid + 1
			end
		end
		local meigedian = 5
		if getint(actor,"��Ա�ȼ�") >= 4 then
			meigedian = 10
		end
		msg = msg ..'<Text|ax=0.5|ay=0.5|x=221.5|y=266.0|color=251|size=18|text=��ѡ��['.. xuzhong_sl ..']��ӡ��>'
		msg = msg ..'<RText|ax=0.5|ay=0.5|x=221.5|y=97.0|color=255|size=18|text=<��ǰ�����㣺/FCOLOR=95><'.. getshengwang(actor) ..'/FCOLOR=254>>'
		msg = msg ..'<Text|ax=0.5|ay=0.5|x=222.5|y=363.0|color=254|size=18|text='.. xuzhong_sl*meigedian ..'��>'

		msg = msg ..'<Button|x=179.5|y=388.5|nimg=zhangheng/13.png|color=10051|size=18|text=ȷ������|link=@huishou>'
		
	end
	
	say(actor,msg)
	--haoshiend(actor)
end

function rongheshow(actor,msg,hongseshow,lvseshow,hongmakeid,lvmakeid,hongxzid,lvxzid,shuomingxianshi)
	--sendmsg6(actor,""..shuomingxianshi)
	msg = msg ..[[<Button|x=16.5|y=38.5|width=610|height=398|pimg=zh/24.png|color=255|mimg=zh/24.png|size=18|nimg=zh/24.png|link=@wuxiao>
	<Img|x=21.5|y=42.5|img=zhangheng/150.png|esc=0>
	<Img|x=189.5|y=257.5|img=zhangheng/156.png|esc=0>
	<Img|x=87.0|y=156.0|img=zhangheng/278.png|esc=0>
	<Img|x=369.0|y=156.0|img=zhangheng/279.png|esc=0>

	]]
	msg = msg ..'<Button|x=26.0|y=393.0|color=255|size=18|mimg=zhangheng/8.png|pimg=zhangheng/8.png|nimg=zhangheng/8.png|link=@show,1,0,1,0,0,'.. hongmakeid..','.. lvmakeid..',0,0,1>'
	

	---��水ť
	msg = msg ..'<Img|x=413.5|y=46.5|img=zhangheng/151.png|link=@show,1>'
	--yemian,isshiyong,rongheisshow,hongseshow,lvseshow,hongmakeid,lvmakeid
	msg = msg ..'<Img|x=115.5|y=151.5|img=zhangheng/154.png|link=@show,1,0,1,1,0,'.. hongmakeid..','.. lvmakeid..',0,0,0>'
	msg = msg ..'<Img|x=282.5|y=151.5|img=zhangheng/155.png|link=@show,1,0,1,0,1,'.. hongmakeid..','.. lvmakeid..',0,0,0>'
	if hongmakeid ~= 0 then
		
			msg = msg ..'<DBItemShow|x=123.5|y=87.5|width=70|height=70|makeindex='..hongmakeid..'|itemcount=1|showtips=1|bgtype=0>'
		
	end
	if lvmakeid ~= 0 then
		
		msg = msg ..'<DBItemShow|x=289.5|y=87.5|width=70|height=70|makeindex='..lvmakeid..'|itemcount=1|showtips=1|bgtype=0>'
		
	end
	
	if hongmakeid ~= 0 and lvmakeid ~= 0 then
		local item = getitembymakeindex(actor,hongmakeid)
		if item ~= "0" then
			
			msg = msg ..'<ItemShow|x=205.5|y=194.5|width=70|height=70|itemid='.. getiteminfo(actor,item,2) ..'|itemcount=1|showtips=1|bgtype=0>'
			
		end
	end
	
	---��ɫװ��ѡ�����
	if hongseshow == 1 then
		local items={["����"]=1,["��Ԫ�����"]=1,["�׹���"]=1,["������"]=1,["����֮ͫ"]=1,["�����"]=1,["���ӡ"]=1,["������"]=1,}
		local bagitems = getbaglist(actor)
		local hs_items = {} --��ɫװ��Ψһid��
		for i=1,#bagitems do
			if items[getitemname(actor,bagitems[i])] then
				table.insert(hs_items,getiteminfo(actor,bagitems[i],1))
			end
		end
		--sendmsg9(actor,"���ٸ�"..#hs_items)
		local ziids = ""
		for i = 20022,20202+ #hs_items + 3 do
			ziids = ziids .. i .. ","
		end
		
		local ziid = 20202
		local ysxx = -2
		local ysyy = -6
		local gaodu = (math.floor((#hs_items-1)/7) + 1) * 60 + 3
		
		msg = msg ..'<Img|x=24.5|y=179.5|width=425|height=186|scale9t=10|scale9b=10|img=zhangheng/7.png|scale9r=10|scale9l=10|esc=0>'
		msg = msg ..'<Img|x=24.5|y=179.5|width=425|height=130|scale9t=10|scale9b=10|img=zhangheng/7.png|scale9r=10|scale9l=10|esc=0>'
		msg = msg ..'<ListView|id=19999|children={20020}|x=26.5|y=187.5|width=421|height=120>'
		
		msg = msg ..'<Layout|id=20020|children={20201}|x=0|y=0|width=421|height='..gaodu..'>'
		msg = msg ..'<Layout|id=20201|children={'.. ziids ..'}|x=0|y=0|width=421|height='..gaodu..'>'
		
		local hongmakeid1 = 0
		for i = 1,#hs_items do
			--sendmsg6(actor,hs_items[i] .. "  "..hongxzid)
			msg = msg ..'<Img|id='.. ziid ..'|children={item'.. i ..',kuang'..i..'}|x='.. 7+((i-1)%7)*60 ..'|y='.. 3+ math.floor((i-1)/7) * 60  ..'|width=50|height=50|img=zhangheng/105.png>'
			ziid = ziid + 1
			
			msg = msg ..'<DBItemShow|id=item'.. i ..'|x=-10|y=-10.0|makeindex='.. hs_items[i] ..'|itemcount=1|showtips=1|bgtype=0|link=@show,1,0,1,1,0,'.. hongmakeid..','.. lvmakeid..','.. hs_items[i]..',0,0>'
			
			if hongxzid == hs_items[i] then
				msg = msg ..'<Img|id=kuang'.. i ..'|x=0.0|y=0.0|width=50|height=50|esc=0|img=zhangheng/39.png>'
				hongmakeid1 = hs_items[i]
			end
		end
		msg = msg ..'<Button|x=194.5|y=320.5|nimg=zhangheng/13.png|color=10051|size=18|text=ȷ��ѡ��|link=@show,1,0,1,0,0,'.. hongmakeid1..','.. lvmakeid..',0,0,0>'
	end
	
	---��ɫװ��ѡ�����
	if lvseshow == 1 then
		local items={["��ƿ"]=1,["����������"]=1,["����ӡ"]=1,["�����"]=1,["������¯"]=1,["�����"]=1,["������"]=1,["���ؾ�"]=1,}
		local bagitems = getbaglist(actor)
		local hs_items = {} --��ɫװ��Ψһid��
		for i=1,#bagitems do
			if items[getitemname(actor,bagitems[i])] then
				table.insert(hs_items,getiteminfo(actor,bagitems[i],1))
			end
		end
		--sendmsg9(actor,"���ٸ�"..#hs_items)
		local ziids = ""
		for i = 20002,20002+ #hs_items + 3 do
			ziids = ziids .. i .. ","
		end
		
		local ziid = 20002
		local ysxx = -2
		local ysyy = -6
		local gaodu = (math.floor((#hs_items-1)/7) + 1) * 60 + 3
		
		msg = msg ..'<Img|x=24.5|y=179.5|width=425|height=186|scale9t=10|scale9b=10|img=zhangheng/7.png|scale9r=10|scale9l=10|esc=0>'
		msg = msg ..'<Img|x=24.5|y=179.5|width=425|height=130|scale9t=10|scale9b=10|img=zhangheng/7.png|scale9r=10|scale9l=10|esc=0>'
		msg = msg ..'<ListView|id=19999|children={20000}|x=26.5|y=187.5|width=421|height=120>'
		
		msg = msg ..'<Layout|id=20000|children={20001}|x=0|y=0|width=421|height='..gaodu..'>'
		msg = msg ..'<Layout|id=20001|children={'.. ziids ..'}|x=0|y=0|width=421|height='..gaodu..'>'
		local lvmakeid1 = 0
		for i = 1,#hs_items do
			--sendmsg6(actor,hs_items[i] .. "  "..hongxzid)
			msg = msg ..'<Img|id='.. ziid ..'|children={item'.. i ..',kuang'..i..'}|x='.. 7+((i-1)%7)*60 ..'|y='.. 3+ math.floor((i-1)/7) * 60  ..'|width=50|height=50|img=zhangheng/105.png>'
			ziid = ziid + 1
			
				msg = msg ..'<DBItemShow|id=item'.. i ..'|x=-8|y=-8.0|makeindex='.. hs_items[i] ..'|itemcount=1|showtips=1|bgtype=0|link=@show,1,0,1,0,1,'.. hongmakeid..','.. lvmakeid..',0,'.. hs_items[i]..',0>'
			
			if lvxzid == hs_items[i] then
				msg = msg ..'<Img|id=kuang'.. i ..'|x=0.0|y=0.0|width=50|height=50|esc=0|img=zhangheng/39.png>'
				lvmakeid1 = hs_items[i]
			end
		end
		msg = msg ..'<Button|x=194.5|y=320.5|nimg=zhangheng/13.png|color=10051|size=18|text=ȷ��ѡ��|link=@show,1,0,1,0,0,'.. hongmakeid..','.. lvmakeid1..',0,0,0>'
	end
	if lvseshow == 0 and hongseshow == 0 then
		msg = msg ..'<Text|x=184.5|y=305.0|color=254|size=18|text=�ɹ�����20%>'
		msg = msg ..'<RText|a=4|x=240.0|y=350.0|color=250|size=18|outline=1|text=��Ҫ5���ۺ�֮��+2000����+ 1000�����ʯ>'
		msg = msg ..'<Button|x=195.0|y=375.0|color=10051|size=18|nimg=zhangheng/13.png|text=ȷ���ں�|link=@quedingronghe,'.. hongmakeid..','.. lvmakeid..'>'
	end
	
	if shuomingxianshi == 1 then
		msg=msg..'<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@show,1,0,1,0,0,'.. hongmakeid..','.. lvmakeid..',0,0,0>'
		msg = msg ..[[
		<Img|ay=0.5|x=63.0|y=349.0|width=260|height=140|scale9r=10|scale9l=10|scale9t=10|img=zh/7.png|scale9b=10|esc=0>
		<RText|x=75.0|y=295.0|width=344|size=16|color=255|text=��<����ϵ��/FCOLOR=250>���Ը�<����ϵ��/FCOLOR=249>�ں�>
		<RText|x=75.0|y=320.0|width=344|size=16|color=255|text=���ںϳɹ���<����ϵ��>����<��ȡ/FCOLOR=70>>
		<RText|x=91.0|y=340.0|width=344|size=16|color=255|text=<����ϵ��/FCOLOR=250>������(����ϵ����ʧ)>
		<RText|x=75.0|y=365.0|width=344|size=16|color=255|text=�����ں�ʧ��<����ϵ�б���/FCOLOR=253>,����>
		<RText|x=91.5|y=385.0|width=344|size=16|color=255|text=ϵ�����飡>
		]]
	end
	
	say(actor,msg)
end

function quedingronghe(actor,hongmakeid,lvmakeid)
	hongmakeid = tonumber(hongmakeid)
	lvmakeid = tonumber(lvmakeid)

	if hongmakeid == 0 or lvmakeid == 0 then
		sendmsg9(actor,"�������Ҫ�ںϵ�ӡ��")
		return
	end

	local item1 = getitembymakeindex(actor,hongmakeid)
	local item2 = getitembymakeindex(actor,lvmakeid)
	if item1 == "0" or item2 == "0" then
		sendmsg9(actor,"��û�д���Ʒ")
		return show(actor,1,0,1)
	end
	local iname1 = getitemname(actor,item1) --��װ����
	local iname2 = getitemname(actor,item2) --��װ����
	
	if getitem_fabaozhi(actor,item1) > 0 then --�ں�װ�����
		sendmsg9(actor,"ÿ������ϵ��ӡ��ֻ���ں�һ��")
		return
	end


		if itemcount(actor,"�ۺ�֮��") < 5 then
			sendmsg9(actor,"�ۺ�֮�Ĳ���5��")
			return
		end
		if itemcount(actor,"���ʯ") < 1000 then
			sendmsg9(actor,"���ʯ����1000��")
			return
		end
		if getshengwang(actor) < 2000 then
			sendmsg9(actor,"��������2000")
			return
		end
		
		
		takeitem(actor,"�ۺ�֮��",5)
		takeitem(actor,"���ʯ",1000)
		subshengwang(actor,2000)

	setsysint("�ںϵĴ���",getsysint("�ںϵĴ���")+1)
	setsysint("ÿ���ںϵĴ���",getsysint("ÿ���ںϵĴ���")+1)
	
	
	local chenggonglv = 5 --�ٷ�֮10
	if getint(actor,"ӡ���ں�ʧ�ܴ���") >=6 then
		chenggonglv = 60
	end	
	
	
	if math.random(1,100) > chenggonglv then
		delitembymakeindex(actor,""..lvmakeid,1)
		sendmsg9(actor,"�ں�ʧ��")
		setint(actor,"ӡ���ں�ʧ�ܴ���",getint(actor,"ӡ���ں�ʧ�ܴ���")+1)
		return show(actor,1,0,1,0,0,hongmakeid,0,0,0,0)
	end
	
	local itemid = getiteminfo(actor,item2,2) --��ɫ��Ʒid
	local xh = 0
	for i = 1,210 do
		local zhi = getstditematt(itemid,i)
		if zhi ~= 0 then
			--sendmsg6(actor,"��Ʒid��".. itemid)
			--sendmsg6(actor,"������ʾ��id".. i .."  ֵ"..zhi)	
			changecustomitemtext(actor,item1,"",1)
			changecustomitemabil(actor,item1,xh,1,i,1) --����4  1Ϊ��att���� 
			--changecustomitemabil(actor,item1,xh,2,0,1) --����4  2Ϊ���Զ����Ա� ��ʾ��
			--changecustomitemabil(actor,item,xh,3,1,1) --����4  3Ϊ�󶨵�ֵ�Ƿ�Ϊ�ٷֱ� 0���� 1��
			--changecustomitemabil(actor,item1,xh,4,0,1) --����4  4Ϊ��������ʾλ����һ��
			changecustomitemvalue(actor,item1,xh,"=",zhi,1) --���ð�att���Ե�ֵ
			xh = xh + 1
		end
	end
	local ronghebh = 0 --�ںϱ��
	for i = 1,#fabaot do
		if iname2 == fabaot[i] then
			ronghebh = i 
			break
		end
	end
	delitembymakeindex(actor,""..lvmakeid,1)
	setitem_fabaozhi(actor,item1,ronghebh)
	refreshitem(actor,item1)
	sendmsg9(actor,"��ϲ�㣬�ںϳɹ�","#FF00FF")
	setint(actor,"ӡ���ں�ʧ�ܴ���",0)
	return show(actor,1,0,1,0,0,hongmakeid,0,0,0,0)
end


function wuxiao(actor)
end

local tab_10000 = {
	"��ľ��","��ħ��","�����","�����ӻ���","�����","������","�����","�Ϸ���¼","������","ħ��ӡ","����Ϣ��","��ţ��","������","�������",
}
local tab_1000 = {
	"������","�Ͻ��","̫����ӡ","����ǹ","����","�����",
}
local tab_500 = {
	"Ǭ����","�ڷ��","������Ϲ�","����ʯ","��ũ��",
}

local tab_300 = {
	"�Ϲ�����","��Ԫ��","����","��ˮ��","������","������","��ȸ��",
}

local tab_100 = {
	"��ƿ","����������","����ӡ","�����","������¯","�����","������","���ؾ�",
}

local tab_1 = {
	"����","��Ԫ�����","�׹���","������","����֮ͫ","�����","���ӡ","������",
}



function choujiang(actor,par)
	local tishi = 0
	if getbagblank(actor) < 7 then
		sendmsg9(actor,"�����ո���")
		return
	end
	
	local shangjinzhi = getshangjinzhi(actor)
	local jinbi = getbindgold(actor)
	if shangjinzhi < 80 then
		sendmsg9(actor,"�ͽ�ֵ����80")
		return
	end
	if par == "1" then --���
		if getdayint(actor,"ӡ�ǳ齱����") >= 5 then
			sendmsg9(actor,"�����Ѿ���ѻ�ȡ5����")
			return
		end
		setdayint(actor,"ӡ�ǳ齱����",getdayint(actor,"ӡ�ǳ齱����")+1)	
	else
		if jinbi < 75000 then
			sendmsg9(actor,"��Ҳ���7.5��")
			return
		end
		subbindgold(actor,75000)
	end
	subshangjinzhi(actor,80)
	local t = tab_10000
	local jilvzhi = math.random(1,100000)
	local str = ""
	local yanse = "#FFFFFF"
	if par == "2" then --�������
		if getbindjinbi(actor) == 0 and jilvzhi <= 7 and getkaiquday() > 1 then --û�а󶨽�� �������֮1  1/14000
			if getint(actor,"��Ա�ȼ�") <= 2 then
				if math.random(1,5) == 2 then
					t = tab_1
					tishi = 1
					str = "����ϵ��ӡ��"
					yanse = "#FF0000"
				end
			else
				t = tab_1
				tishi = 1
				str = "����ϵ��ӡ��"
				yanse = "#FF0000"
			end
		elseif getbindjinbi(actor) > 0 and jilvzhi <= 3 and getkaiquday() > 1 then --�а󶨽�� ����2���֮1 1/33000
			if getint(actor,"��Ա�ȼ�") <= 2 then
				if math.random(1,5) == 2 then
					t = tab_1
					tishi = 1
					str = "����ϵ��ӡ��"
					yanse = "#FF0000"
				end
			else
				t = tab_1
				tishi = 1
				str = "����ϵ��ӡ��"
				yanse = "#FF0000"
			end
		elseif getbindjinbi(actor) == 0 and jilvzhi <= 70 then ---1/1400
			if getint(actor,"��Ա�ȼ�") <= 2 then
				if math.random(1,3) == 2 then
					t = tab_100
					tishi = 1
					str = "����ϵ��ӡ��"
					yanse = "#00FF00"				
				end
			else
				t = tab_100
				tishi = 1
				str = "����ϵ��ӡ��"
				yanse = "#00FF00"
			end
		elseif getbindjinbi(actor) > 0 and jilvzhi <= 33 then --1/3000
			if getint(actor,"��Ա�ȼ�") <= 2 then
				if math.random(1,3) == 2 then
					t = tab_100
					tishi = 1
					str = "����ϵ��ӡ��"
					yanse = "#00FF00"				
				end
			else
				t = tab_100
				tishi = 1
				str = "����ϵ��ӡ��"
				yanse = "#00FF00"
			end
		elseif jilvzhi <= 5000 then ---�ٷ�֮5
			t = tab_500
			if math.random(1,100) <= 40 then
				t = tab_300
				tishi = 1
			end
		elseif jilvzhi <= 10000 then --�ٷ�֮10
			t = tab_1000
		end
	else --��ѵĲ�������
		if jilvzhi <= 70 then
			if getint(actor,"��Ա�ȼ�") <= 2 then
				if math.random(1,3) == 2 then
					t = tab_100
					tishi = 1
					str = "����ϵ��ӡ��"
					yanse = "#00FF00"				
				end
			else
				t = tab_100
				tishi = 1
				str = "����ϵ��ӡ��"
				yanse = "#00FF00"
			end
		elseif jilvzhi <= 5000 then
			t = tab_500
			if math.random(1,100) <= 40 then
				t = tab_300
				tishi = 1
			end
		elseif jilvzhi <= 10000 then
			t = tab_1000
		end
	end
	local name = t[math.random(1,#t)]
	if base[name] then
		giveitem(actor,name, 1,370)
	else
		giveitem(actor,name, 1,0)
		setsysint("��ȡ"..name,getsysint("��ȡ"..name)+1)
		setsysint("ÿ�ճ�ȡ"..name,getsysint("ÿ�ճ�ȡ"..name)+1)
	end
	if str ~= "" then
		sendmsg(actor,1,'{"Msg":"<font color=\''.. yanse ..'\'>'.. '��ϲ����'.. str ..'��'..name..'��' ..'</font>","FColor":255,"BColor":139,"Type":1,"Time":3}')
		sendmsg9(actor,"��ϲ����".. str .."��"..name.."��",yanse)
		post(actor,"��ȡ��ӡ�� " ..name)
	else
		sendmsg6(actor,"��ϲ���á�"..name.."��")
		post(actor,"��ȡӡ�� " ..name)
	end
	setint(actor,"�齱����"..name,getint(actor,"�齱����"..name)+1)
	setint(actor,"ӡ�ǳ齱����",getint(actor,"ӡ�ǳ齱����")+1)
	if tishi == 1 then
		sendmsg(actor,2,'{"Msg":"��ϲ���<��'.. getname(actor) ..'��/FCOLOR=254>���ͽ����˻�ȡ��<��'.. name ..'��/FCOLOR=245>����������Ҳ��ʵ����һ����","FColor":251,"BColor":0,"Type":5,"Y":100}')
	end
	
	setsysint("�ͽ����˳�ȡ�Ĵ���",getsysint("�ͽ����˳�ȡ�Ĵ���")+1)
	setsysint("ÿ���ͽ����˳�ȡ�Ĵ���",getsysint("ÿ���ͽ����˳�ȡ�Ĵ���")+1)
	return show(actor,1)
end

function huishou(actor)
	local t = gethuishoudata(actor) --Ҫ���յĵ�������
	local sl = 0
	for k,v in pairs(t) do
		local makeid = tonumber(k)
		if delitembymakeindex(actor,makeid,1) then
			sl = sl + 1
		end
	end
	local meigedian = 5
	if getint(actor,"��Ա�ȼ�") >= 4 then
		meigedian = 10
	end
	if sl > 0 then
		addshengwang(actor,sl*meigedian)
		sendmsg9(actor,"���ճɹ�")
	else
		sendmsg9(actor,"��ѡ��Ҫ���յ��޻�")
	end
	
	return show(actor,2)
end

function xuanze(actor,caozuo,makeid) --���� 1�� 2��  Ψһid
	local t = gethuishoudata(actor)
	if caozuo == "1" then
		t[makeid] = 1 
	else
		t[makeid] = nil
	end
	setstr(actor,"����ѡ�е���",tbl2json(t)) --����
	return show(actor,2,1)
end
function yijianquanxuan(actor)
	local t = getbaglist(actor) --��ȡ���������б�
	local shouhun_t = {} --�޻�� Ψһid��
	local xuanzhong_t = {} --ѡ���޻�� Ψһid��
	for i = 1,#t do
		local id = getiteminfo(actor,t[i],2) --��Ʒid
		local wyid = getiteminfo(actor,t[i],1) --��ƷΨһid
		local iname = getstditeminfo(id,1) --����
		if jiage[iname] then
			table.insert(shouhun_t,wyid)
		end
	end
	for i = 1,#shouhun_t do
		xuanzhong_t[tostring(shouhun_t[i])] = 1
	end
	setstr(actor,"����ѡ�е���",tbl2json(xuanzhong_t)) --����
	return show(actor,2,1)
end

function gethuishoudata(actor) --��ȡ��������
	local data = {}
	local sh_str = getstr(actor,"����ѡ�е���")
	if sh_str ~= "" then
		data=json2tbl(sh_str)
	end
	return data
end