require("Envir/Market_Def/zh.lua") --���˷�װ����



function show(actor,weizhi,wyid,xianshi)
	--haoshistart(actor)
	--sendmsg9(actor,tostring(weizhi)..tostring(wyid))
	weizhi = tonumber(weizhi) or 1 --���ﻹ�Ǳ��� 1������
	wyid = tonumber(wyid) or 0
	xianshi = tonumber(xianshi) or 0
	msg = [[
	<Img|x=0|width=643|height=457|reset=0|show=4|bg=1|img=zhangheng/1.png|move=1|esc=1>
	<Button|x=639.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	<Img|x=16.5|y=40.5|img=zhangheng/100.png|esc=0>
	<Img|x=386.5|y=39.5|img=zhangheng/161.png|esc=0>
	<Text|ay=0.5|x=469.5|y=59.0|outline=1|color=94|size=18|text=����չʾ>
	<Img|x=388.5|y=117.5|width=230|height=310|scale9l=3|scale9b=3|img=zh/36.png|scale9r=3|esc=0|scale9t=3>
	<ListView|id=1999|children={2000}|x=389.5|y=122.5|width=230|height=300|direction=1|margin=0>
	<Img|x=159.5|y=70.5|width=88|height=88|esc=0|img=zhangheng/101.png>

	]]
	msg = msg ..'<RText|a=4|x=206.5|y=289.0|color=150|size=18|text=Ԫ����<'.. jianhuanum(getingot(actor)) ..'>/<500/FCOLOR=250>>'
	msg = msg ..'<Button|x=18.5|y=396.5|nimg=zhangheng/8.png|pimg=zhangheng/8.png|mimg=zhangheng/8.png|link=@show,'..weizhi..','..wyid..',1>'
	
	for i = 1,3 do
		msg = msg ..'<Img|x='.. 129.5 + (i-1)*55 ..'|y=227.5|img=zhangheng/49.png|esc=0>'
	end
	
	local t = {}
	if weizhi == 1 then
		msg=msg.."<Button|x=398.5|y=79.5|width=100|size=16|color=103|nimg=zhangheng/163.png|text=����>"
		msg=msg.."<Button|x=510.5|y=79.5|width=100|size=16|color=7|nimg=zhangheng/162.png|pimg=zhangheng/162.png|text=����|link=@show,2>"
		local item = linkbodyitem(actor,3) --��������
		if item ~= "0" and getitemname(actor,item) ~= "���˵�������" then
			table.insert(t,item)
		end
	else
		msg=msg.."<Button|x=398.5|y=79.5|width=100|size=16|color=7|nimg=zhangheng/162.png|pimg=zhangheng/162.png|text=����|link=@show,1>"
		msg=msg.."<Button|x=510.5|y=79.5|width=100|size=16|color=103|nimg=zhangheng/163.png|text=����>"
		local list = getbaglist(actor) --��ȡ���������б�
		for i = 1,#list do
			local id = getiteminfo(actor,list[i],2) --��Ʒid
			local std = getstditeminfo(id,2) --StdMode
			local name = getstditeminfo(id,1)
			if ( std == 19 or std == 20 or std == 21 ) and name ~= "���˵�������" then
				table.insert(t,list[i])
			end
		end
	end
	
	local ziids = ""
	for i = 2002,2002+#t+30 do
		ziids = ziids .. i .. ","
	end
	
	local ziid = 2002
	local ysxx = -2
	local ysyy = -6
	local gaodu = (math.floor((#t-1)/3) + 1) * 60 + 3
	msg = msg ..'<Layout|id=2000|children={2001}|height='.. gaodu ..'>' --���õ׿�� ��
	msg = msg ..'<Layout|id=2001|children={'.. ziids ..'}|height='.. gaodu ..'>' --���õ׿�� ��
	for i = 1,15 do
		msg = msg ..'<Img|id='..ziid..'|x='.. ysxx+19 + (i-1)%3*70 ..'|y='.. ysyy+9+math.floor((i-1)/3) * 60 ..'|width=52|height=52|scale9t=3|scale9b=3|img=zh/36.png|scale9r=3|scale9l=3>'
		ziid = ziid + 1		
	end
	
	for i = 1,#t do
		msg = msg ..'<Img|id='..ziid..'|children={wuping'..i..',liangkuang'..i..'}||x='.. ysxx+19 + (i-1)%3*70 ..'|y='.. ysyy+9+math.floor((i-1)/3) * 60 ..'|width=52|height=52|scale9t=3|scale9b=3|img=zh/36.png|scale9r=3|scale9l=3>'
		ziid = ziid + 1
		local makeid = getiteminfo(actor,t[i],1)
		msg = msg ..'<DBItemShow|id=wuping'..i..'|x=-8|y=-8|makeindex='..makeid..'|link=@show,'.. weizhi ..','.. makeid ..'>'
		if makeid == wyid then
			msg = msg ..'<Img|id=liangkuang'..i..'|x=-1|y=-1|img=zh/71.png|esc=0>'
			msg = msg ..'<DBItemShow|x=168.5|y=80.5|width=70|height=70|makeindex='..makeid..'|itemcount=1|showtips=1|bgtype=0>'
			local gailv = {50,30,20,0}
			local luck = getluck(actor,t[i]) --����
			if luck >= 3 then
				msg = msg ..'<Text|ax=0.5|x=205.0|y=316.5|size=18|color=254|text=�������Ѵ��������>'
			else
				msg = msg ..'<Text|ax=0.5|x=205.0|y=316.5|size=18|color=254|text=�ɹ����ʣ�'..gailv[luck+1]..'%>'
			end
			for i = 1,luck do
				msg = msg ..'<Img|x='.. 129.5 + (i-1)*55 ..'|y=227.5|img=zhangheng/50.png|esc=0>'
			end
		end
	end
	msg = msg ..'<Button|x=83.5|y=379.5|color=10051|nimg=zhangheng/13.png|size=18|text=ȷ������|link=@shengji,'..weizhi..','..wyid..'>'
	msg = msg ..'<Button|x=237.5|y=379.5|color=10051|nimg=zhangheng/13.png|size=18|text=�����ϴ|link=@qingxi,'..weizhi..','..wyid..'>'
	if xianshi == 1 then
		msg=msg..'<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@show,'..weizhi..','..wyid..'>'
		msg=msg..[[
		<Img|ay=0.5|x=50.5|y=346.5|width=260|height=160|rotate=0|scale9r=10|scale9t=10|scale9l=10|img=zh/7.png|scale9b=10|esc=0>
		<RText|x=62.5|y=274.5|color=251|size=16|text=���˽��ܣ�>
		<RText|x=62.5|y=299.5|color=255|size=16|text=1.��������<+1/FCOLOR=250>�ɹ�����Ϊ��<50%/FCOLOR=254>>
		<RText|x=62.5|y=324.5|color=255|size=16|text=2.��������<+2/FCOLOR=250>�ɹ�����Ϊ��<30%/FCOLOR=254>>
		<RText|x=62.5|y=349.5|color=255|size=16|text=3.��������<+3/FCOLOR=250>�ɹ�����Ϊ��<20%/FCOLOR=254>>
		<RText|x=62.5|y=374.5|size=16|color=255|text=ÿ�θ�������������ʱ��<500Ԫ��/FCOLOR=250>>
		<RText|x=62.5|y=399.5|size=16|color=255|text=������<����+3/FCOLOR=249>ʱ�ɴ���<1-3�㱩��/FCOLOR=249>>
		]]
	end
	--haoshiend(actor)
	say(actor,msg)
end
local jilv = {50,15,8}
local jilv1 = {50,23,12}
local dijixianglian = {
["ʥս����"]=1,["��������"]=1,["��������"]=1,["��������"]=1,["��������"]=1,["��â����"]=1,
["��֮��������"]=1,["��֮��������"]=1,["��֮��â����"]=1,["��������"]=1,["��������"]=1,["ħѪ����"]=1,["������"]=1,
}
function shengji(actor,weizhi,wyid)
	weizhi = tonumber(weizhi)
	wyid = tonumber(wyid)
	if wyid == 0 then
		sendmsg9(actor,"��ѡ��Ҫ�������˵�����")
		return
	end
	local item = getitembymakeindex(actor,wyid) --��Ʒ����
	if item == "0" then
		sendmsg9(actor,"��û�����װ��")
		return show(actor,weizhi,wyid)
	end
	--sendmsg6(actor,"��Ʒ����"..tostring(item))
	if weizhi == 1 and not isinrole(actor,wyid) then
		sendmsg9(actor,"��Ʒ�Ѿ���������")
		return show(actor,weizhi,wyid)
	end
	if weizhi == 2 and not isinbag(actor,item) then
		sendmsg9(actor,"��Ʒ�Ѿ����ڱ���")
		return show(actor,weizhi,wyid)
	end
	local luck = getluck(actor,item) --����
	if luck >= 3 then
		sendmsg9(actor,"�������Ѵ��������")
		return
	end
	
	if getingot(actor) < 500 then
		sendmsg9(actor,"Ԫ������")
		return
	end
	subingot(actor,500,"��������")

	local t = jilv
	if dijixianglian[getitemname(actor,item)] then
		t = jilv1
	end

	if math.random(1,100) > t[luck+1] then
		sendmsg9(actor,"������˼,������������ʧ��")
		return
	end
	
	setitemaddvalue(actor,item,1,5,getitemaddvalue(actor,item,1,5)+1)
	
	if luck == 2 then
		if getitem_xlxlcs(actor,item) >= 6 and math.random(1,100) <= 50 then
			setitemaddvalue(actor,item,1,30,3)
			--sendmsg6(actor,"��ϲ���������˳ɹ�����������+3")
		else
			local baoji = 0
			local sjzhi = math.random(1,100)
			if sjzhi <= 50 then
				baoji = 1
			elseif sjzhi <= 90 then
				baoji = 2
			else
				baoji = 3
			end	
			setitemaddvalue(actor,item,1,30,baoji)	
			--sendmsg6(actor,"��ϲ���������˳ɹ�����������+"..baoji)	
		end
		if getitemaddvalue(actor,item,1,30) >= 3 then --����3������ֵ
			local clzhi = 0
			local sjzhi = math.random(1,100)
			if sjzhi <= 50 then
				clzhi = 1
			elseif sjzhi <= 80 then
				clzhi = 2
			else
				clzhi = 3
			end	
			
			changecustomitemtext(actor,item,"",5)
			--changecustomitemtextcolor(actor,item,154,5) --��ɫ
			changecustomitemabil(actor,item,0,1,209,5) --����4  1Ϊ��att���� 
			--changecustomitemabil(actor,item,0,2,31,5) --����4  2Ϊ���Զ����Ա� ��ʾ��
			--changecustomitemabil(actor,item,0,3,0,5) --����4  3Ϊ�󶨵�ֵ�Ƿ�Ϊ�ٷֱ� 0���� 1��
			--changecustomitemabil(actor,item,0,4,0,5) --����4  4Ϊ��������ʾλ����һ��
			changecustomitemvalue(actor,item,0,"=",clzhi,5) --���ð�att���Ե�ֵ
			
			callscriptex(actor, "CallLua", "wuqishengji", "@setcuilianzhishuxing") --���ô���ֵ����
		end
	end
	refreshitem(actor,item)
	sendmsg9(actor,"��ϲ���������˳ɹ�����������+"..luck+1,"#00FF00")
	return show(actor,weizhi,wyid)
end

function qingxi(actor,weizhi,wyid)
	messagebox(actor,"\n��ϴ����������������˺ͱ������㣬�Ƿ������ϴ��","@qingxi1,".. weizhi ..","..wyid,"@kong")
end

function qingxi1(actor,weizhi,wyid)
	weizhi = tonumber(weizhi)
	wyid = tonumber(wyid)
	if wyid == 0 then
		sendmsg9(actor,"��ѡ��Ҫ��ϴ���˵�����")
		return
	end
	local item = getitembymakeindex(actor,wyid) --��Ʒ����
	if item == "0" then
		sendmsg9(actor,"��û�����װ��")
		return show(actor,weizhi,wyid)
	end
	--sendmsg6(actor,"��Ʒ����"..tostring(item))
	if weizhi == 1 and not isinrole(actor,wyid) then
		sendmsg9(actor,"��Ʒ�Ѿ���������")
		return show(actor,weizhi,wyid)
	end
	if weizhi == 2 and not isinbag(actor,item) then
		sendmsg9(actor,"��Ʒ�Ѿ����ڱ���")
		return show(actor,weizhi,wyid)
	end
	local luck = getluck(actor,item) --����
	if luck < 3 then
		sendmsg9(actor,"ֻ������+3������������ϴ")
		return
	end
	setitemaddvalue(actor,item,1,5,0)
	setitemaddvalue(actor,item,1,30,0)
	
	clearitemcustomabil(actor,item,5) --�����Զ������
	setitem_xlxlcs(actor,item,getitem_xlxlcs(actor,item)+1)
	callscriptex(actor, "CallLua", "wuqishengji", "@setcuilianzhishuxing") --���ô���ֵ����
	refreshitem(actor,item)
	sendmsg9(actor,"��ϴ�ɹ�")
	return show(actor,weizhi,wyid)
end