require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor)
	local msg = [[
		<Img|width=530|height=270|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|size=18|color=251|text=�������>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ax=0|ay=0.5|x=22.0|y=70.0|size=18|color=255|text=�ܾ���ǰ������һ�����ϴ�˵�����귨��½�������߿�Բ��>
		<RText|ay=0.5|x=22.0|y=95.5|color=255|size=18|text=���������ɢ�������ֻҪ<�����߿�����/FCOLOR=250>��������ģ����>
		<RText|ay=0.5|x=22.0|y=120.0|color=255|size=18|text=�ٻ�����Ը�������ٻ��߿ɻ��<1000����/FCOLOR=70>�������������>
		<RText|ay=0.5|x=22.0|y=145.0|color=255|size=18|text=��<"��ħ�˶���"/FCOLOR=249>����<"��ħ��ѫ��"/FCOLOR=249>......>
		<RText|ay=0.5|x=60.0|y=180.5|color=254|size=18|text=��Ը����Ϊ����Ϸ����BOSS���ɱ���һ�й�����Ʒ>
		<Img|x=34.0|y=210.0|img=zhangheng/203.png|esc=0>
		<Text|ax=0.5|x=264.0|y=223.0|color=251|size=18|text=�ٻ� �� ��Ը����|link=@zhaohuanshenlong>
	]]
	say(actor,msg)
end

local item_t = {"һ������","��������","��������","��������","��������","��������","��������"}
function zhaohuanshenlong(actor)
	local guais = getmapmon("3","��Ը����",335,340,20)
	if #guais > 0 then
		sendmsg9(actor,"���ɱ����һֻ��Ը���������ٻ�")
		return
	end
	
	local hour = tonumber(os.date("%H",os.time()))
	if hour ~= 22 then
		sendmsg9(actor,"ÿ��22��--23������ٻ�����")
		return
	end
	local jiqi = true
	for i = 1,7 do
		if itemcount(actor,item_t[i]) < 1 then
			jiqi = false
			break
		end
	end
	if not jiqi then
		sendmsg9(actor,"��û�м���������")
		return
	end
	for i = 1,7 do
		takeitem(actor,item_t[i],1)
	end
	genmon("3",358,343,"��Ը����",1,1,249)
	mianban()
	if math.random(100) < 50 then
		giveitem(actor,"��ħ�ˡﶷ��",1)
	else
		giveitem(actor,"��ħ�ˡ�ѫ��",1)
	end
	addgold(actor,10000000)
	sendmsg9(actor,"�ٻ��ɹ�")
	return show(actor)
end

function mianban() 
	local t=getplayerlst() --��������б�
	--callscriptex(0, "sendcentermsg", 251, 0, "����б�"..tbl2json(t) , 1 ,5 )
	local pyx = -320
	local pyy = -130
	local msg = ""
	msg = msg..'<Img|children={2,3,5,4,6}|x='..  14 + pyx ..'|y='..  40 + pyy ..'|width=160|height=100|esc=0|bg=1|move=1|scale9t=10|scale9r=10|scale9l=10|scale9b=10|img=zhangheng/281.png>'
	msg = msg..[[
	<RText|id=2|ax=0.5|x=79.0|y=7.0|rotate=0|color=255|size=18|outline=1|text=<��Ը������ˢ��/FCOLOR=250>>
	<RText|id=3|ax=0.5|x=79.0|y=30.0|rotate=0|color=255|size=18|outline=1|text=<�Ƿ�ǰ����ɱ��/FCOLOR=254>>
	<COUNTDOWN|ax=0.5|id=5|x=78.0|y=60.0|time=30|count=1|size=16|outline=1|color=250|link=@close_shijieboss>
	<Button|id=4|x=8.0|y=58.0|width=50|height=30|color=255|outline=1|nimg=zhangheng/71.png|size=18|text=��|link=@jisha_shijieboss>
	<Button|id=6|x=101.0|y=58.0|width=50|height=30|rotate=0|outline=1|color=255|size=18|nimg=zhangheng/71.png|text=��|link=@close_shijieboss>
	]]
    for k,v in ipairs(t) do
		if getmap(v) ~= "tuoji" and getmap(v) ~= "waigua" then
			addbutton(v,107,98,msg)
		end
    end
end




