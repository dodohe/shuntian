require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor)
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|size=18|color=251|text=����֮��>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ax=0|ay=0.5|x=22.0|y=70.0|size=18|color=255|text=�޼�����ģ���ر��������̹Ŵ��������У�����ء�����>
		<RText|ay=0.5|x=22.0|y=95.0|color=255|size=18|text=��������������Ƿֶ���֮�������ǻ�Ϊ<��ľ��ˮ������/FCOLOR=250>>
		<RText|ay=0.5|x=22.0|y=120.5|color=255|size=18|text=���е��Դ����귨����֮ɽ����������������>
		<RText|ay=0.5|x=22.0|y=145.5|color=255|size=18|text=����ֻ��<�������/FCOLOR=253>�������ƿ�<����֮��/FCOLOR=22>����ս�������������>
		<RText|ay=0.5|x=22.0|y=170.5|color=255|size=18|text=��ն����ħ>
		<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
		<Text|ay=0.5|x=200.0|y=214.5|color=250|size=18|text=�ƿ� �� ����֮��|link=@jinji>
	]]
	say(actor,msg)
end

local anniu_t = {
	{x=179.5,y=104.5,tupath="zhangheng/88.png",nametu="zhangheng/94.png"},
	{x=291.5,y=184.5,tupath="zhangheng/89.png",nametu="zhangheng/95.png"},
	{x=254.5,y=295.5,tupath="zhangheng/90.png",nametu="zhangheng/96.png"},
	{x=106.5,y=295.5,tupath="zhangheng/91.png",nametu="zhangheng/97.png"},
	{x=70.5,y=184.5, tupath="zhangheng/92.png",nametu="zhangheng/98.png"},
}

shengji_t = {
	{buffid=10021,name="��",text={[0]="����������",[1]="ħ��������",[2]="����������"}, zhi={[0]="0.0%","0.5%","1.0%","1.5%","2.0%","2.5%","������"},	 	feiyong={[0]=50000,50000,50000,50000,50000,0},jilv ={[0]=50,50,50,50,50,0}          }, --��
	{buffid=10022,name="ľ",text={[0]="�Թ����ˣ�",[1]="�Թ����ˣ�",[2]="�Թ����ˣ�"}, zhi={[0]="0.0%","1.0%","2.0%","3.0%","4.0%","5.0%","������"}, 		feiyong={[0]=50000,50000,50000,50000,50000,0},jilv ={[0]=50,50,50,50,50,0}          }, --��
	{buffid=10023,name="ˮ",text={[0]="����ֵ������",[1]="����ֵ������",[2]="����ֵ������"}, zhi={[0]="0.0%","1.0%","2.0%","3.0%","4.0%","5.0%","������"},	feiyong={[0]=50000,50000,50000,50000,50000,0},jilv ={[0]=50,50,50,50,50,0}          }, --ˮ
	{buffid=10024,name="��",text={[0]="��ֱ��ʣ�",[1]="��ֱ��ʣ�",[2]="��ֱ��ʣ�"}, zhi={[0]="0.0%","1.0%","2.0%","3.0%","4.0%","5.0%","������"}, 		feiyong={[0]=50000,50000,50000,50000,50000,0},jilv ={[0]=50,50,50,50,50,0}          }, --��
	{buffid=10025,name="��",text={[0]="��Ѫ������",[1]="��Ѫ������",[2]="��Ѫ������"}, zhi={[0]="0.0%","0.5%","1.0%","1.5%","2.0%","2.5%","������"},	feiyong={[0]=50000,50000,50000,50000,50000,0},jilv ={[0]=50,50,50,50,50,0}          }, --ľ
}



local bl_t = {"���н�ȼ�","����ľ�ȼ�","����ˮ�ȼ�","���л�ȼ�","�������ȼ�"}

function jinji(actor,xzid,xianshi)
	if getint(actor,"�����ܵȼ�") >= 25 then
		return qiehuan(actor)
	end
	xzid = tonumber(xzid) or 1
	xianshi = tonumber(xianshi) or 0
	local msg = [[
		<Img|x=0|width=643|height=457|esc=1|loadDelay=1|bg=1|img=zhangheng/1.png|move=1|reset=0|show=4>
		<Button|x=639.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.5|y=40.5|img=zhangheng/87.png|esc=0>
		<Img|x=392.5|y=46.5|img=zhangheng/84.png|esc=0>
		<Img|x=414.5|y=183.5|width=200|img=zhangheng/99.png|esc=0>
		<Img|x=414.5|y=293.5|width=200|img=zhangheng/99.png|esc=0>
		<Text|x=480.5|y=96.5|color=95|size=18|text=��ǰ����>
		<Text|x=480.5|y=209.5|size=18|color=95|text=�¼�����>
		<Img|x=131.5|y=224.5|img=zhangheng/71.png|esc=0>
		<Img|x=54.5|y=44.5|img=zhangheng/209.png|esc=0>

	]]
	msg=msg.."<Img|x=18.5|y=398.5|img=zhangheng/8.png|esc=0|link=@jinji,"..xzid..",1>"
	for i = 1,5 do
		if i == xzid then
			local job = getjob(actor) --ְҵ
			local sxlv = getint(actor,bl_t[i]) --���Եȼ�
			msg=msg.."<Button|x="..anniu_t[i].x.."|y="..anniu_t[i].y.."|color=255|size=18|nimg="..anniu_t[i].tupath..">"
			msg=msg.."<Img|x="..anniu_t[i].x-12 .."|y="..anniu_t[i].y-13 .."|img=zhangheng/93.png|esc=0>"
			msg=msg.."<Text|ax=0.5|x=209.5|y=232.5|size=18|color=250|text=Lv.".. sxlv ..">"
			msg=msg.."<Text|ax=0.5|x=209.5|y=397.5|color=254|size=18|text=��ǰѡ��".. shengji_t[i].name .."�����ɹ�����Ϊ��".. shengji_t[i].jilv[sxlv] .."%>"
			msg=msg.."<Img|x=467.5|y=47.5|img=".. anniu_t[i].nametu .."|esc=0>"
			msg=msg.."<Text|ax=0.5|x=517.0|y=138.5|color=103|size=18|text="..shengji_t[i].text[job].. shengji_t[i].zhi[sxlv]..">"
			msg=msg.."<Text|ax=0.5|x=517.0|y=251.5|color=103|size=18|text="..shengji_t[i].text[job].. shengji_t[i].zhi[sxlv+1]..">"
			if shengji_t[i].feiyong[sxlv] == 0 then
				msg=msg.."<RText|ax=0.5|x=516.5|y=325.5|size=18|color=255|text=<��Ҫ��ң�/FCOLOR=251><".. jianhuanum(getbindgold(actor)) .."/FCOLOR=249>/<����/FCOLOR=250>>"
			else
				msg=msg.."<RText|ax=0.5|x=516.5|y=325.5|size=18|color=255|text=<��Ҫ��ң�/FCOLOR=251><".. jianhuanum(getbindgold(actor)) .."/FCOLOR=249>/<"..jianhuanum(shengji_t[i].feiyong[sxlv]) .."/FCOLOR=250>>"
			end
			msg=msg.."<Button|x=473.5|y=373.5|color=10051|size=18|nimg=zhangheng/13.png|text=ȷ������|link=@tisheng,"..i..">"
		else
			msg=msg.."<Button|x="..anniu_t[i].x.."|y="..anniu_t[i].y.."|color=255|size=18|nimg="..anniu_t[i].tupath.."|link=@jinji,"..i..">"
		end	
	end
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|link=@jinji,"..xzid..">"
		msg=msg..[[
		<Img|ay=0.5|x=50.0|y=310.0|width=330|height=230|scale9l=10|scale9b=10|img=zh/7.png|scale9r=10|scale9t=10|esc=0>
<RText|x=62.0|y=234.0|width=344|color=255|size=16|text=��ѡ���Լ���Ҫ�����Խ���������ÿ�γ�>
<RText|x=78.0|y=256.0|width=344|color=255|size=16|text=��������1�� ʧ�ܽ���1�� ���Ϊ5��.>
<RText|x=78.0|y=278.0|width=344|size=16|color=255|text=�ٷ�Ϊ�������õ���������˱��ס�>
<RText|x=78.0|y=322.0|width=344|color=255|size=16|text=<������/FCOLOR=251>>
<RText|x=63.0|y=351.0|width=344|color=255|size=16|text=������������ˡ�<���ľ��ľ��ˮ��ˮ�˻�/FCOLOR=250>>
<RText|x=78.5|y=373.5|width=344|color=255|size=16|text=<����������˽�/FCOLOR=250>�������������ʱ�Ա���>
<RText|x=62.0|y=209.0|width=344|color=251|size=16|text=���Խ���>
<RText|x=78.0|y=300.0|width=344|color=255|size=16|text=ȫ�������������ѡ������һ�����<˫/FCOLOR=251>>
<RText|x=78.5|y=395.5|width=344|color=255|size=16|text=�Ƶĵ���<�������8%�˺�>>




		]]
	end
	say(actor,msg)
end
local sssxs = {[0]="������",[1]="ħ����",[2]="������",}
function qiehuan(actor,xzid,xianshi)
	xzid = tonumber(xzid) or 0
	xianshi = tonumber(xianshi) or 0
	local msg = [[
		<Img|x=0|width=643|height=457|reset=1|loadDelay=1|bg=1|img=zhangheng/1.png|move=0|esc=1|show=4>
		<Button|x=639.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.5|y=40.5|img=zhangheng/87.png|esc=0>
		<Img|x=392.5|y=46.5|img=zhangheng/84.png|esc=0>
		<Text|ay=0.5|x=480.5|y=61.0|color=95|size=18|text=��������>
		
		<Text|ax=0|x=410.5|y=115.5|color=103|size=17|text=��ֱ֮ľ���Թ�����+5.0%>
		<Text|ax=0|x=410.5|y=140.5|color=103|size=17|text=����֮ˮ������ֵ+5.0%>
		<Text|ax=0|x=410.5|y=165.5|color=103|size=17|text=����֮�𣺴�ֱ���+5.0%>
		<Text|ax=0|x=410.5|y=190.5|color=103|size=17|text=���֮������Ѫֵ+2.5%>
		
		<Img|x=392.5|y=225.5|img=zhangheng/84.png|esc=0>
		<Text|ay=0.5|x=462.5|y=240.0|color=95|size=18|text=��ǰӵ������>
		<Img|x=54.5|y=44.5|img=zhangheng/209.png|esc=0>

	]]

	
	msg=msg.."<Text|ax=0|x=410.5|y=90.5|color=103|size=17|text=�Ӹ�֮��".. sssxs[getjob(actor)] .."+2.5%>"
	if getint(actor,"�������") == 0 then
		msg=msg.."<Text|ax=0.5|x=210.5|y=372.5|color=254|size=18|text=��ѡ��һ������֮�����ɻ��˫������>"
		msg=msg.."<Button|x=473.5|y=365.5|nimg=zhangheng/13.png|color=10051|size=18|text=���ת��|link=@zhuanhuan,3,"..xzid..">"
	else
		msg=msg.."<Text|ax=0.5|x=210.5|y=372.5|color=254|size=18|text=ת��һ����Ҫ1000Ԫ����1������>"
		msg=msg.."<Button|x=417.5|y=365.5|nimg=zhangheng/13.png|color=10051|size=18|text=����ת��|link=@zhuanhuan,1,"..xzid..">"
		msg=msg.."<Button|x=522.5|y=365.5|nimg=zhangheng/13.png|color=10051|size=18|text=Ԫ��ת��|link=@zhuanhuan,2,"..xzid..">"
	end
	msg=msg.."<Text|ax=0.5|x=220.5|y=402.5|color=254|size=18|text=�ɵ���������Ľ�ľˮ����λ����ʱ�л�>"
	
	msg=msg.."<Img|x=18.5|y=398.5|img=zhangheng/8.png|esc=0|link=@qiehuan,"..xzid..",1>"
	local sm = {[0]="��","�Ӹ�֮��","��ֱ֮ľ","����֮ˮ","����֮��","���֮��"}
	local t = {[0]="����","ħ��","����"}
	local dqsx = getint(actor,"���е�ǰ����")
	local job = getjob(actor)
	msg=msg.."<RText|ax=0.5|ay=0.5|x=516.5|y=285.0|color=95|size=18|text=<"..sm[dqsx].."/FCOLOR=251>>"
	if dqsx ~= 0 then
		local wenben = {
		t[job] .."������5%(+2.5%)",
		"�Թ�����������10%(+5%)",
		"����ֵ������10%(+5%)",
		"��ֱ���������10%(+5%)",
		"��Ѫֵ������5%(+2.5%)",}
		msg=msg.."<Text|ax=0.5|x=514.0|y=315.5|color=224|size=17|text="..wenben[dqsx]..">"
	end
	
	
	for i = 1,5 do
		if i == xzid then
			msg=msg.."<Button|x="..anniu_t[i].x.."|y="..anniu_t[i].y.."|color=255|size=18|nimg="..anniu_t[i].tupath.."|link=@qiehuan>"
			msg=msg.."<Img|x="..anniu_t[i].x-12 .."|y="..anniu_t[i].y-13 .."|img=zhangheng/93.png|esc=0>"
		else
			msg=msg.."<Button|x="..anniu_t[i].x.."|y="..anniu_t[i].y.."|color=255|size=18|nimg="..anniu_t[i].tupath.."|link=@qiehuan,"..i..">"
		end	
	end
	
	
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|link=@qiehuan,"..xzid..">"
		msg=msg..[[
		<Img|ay=0.5|x=50.5|y=320.5|width=330|height=210|scale9r=10|scale9l=10|esc=0|img=zh/7.png|scale9b=10|scale9t=10>
<RText|x=62.0|y=254.0|width=344|color=255|size=16|text=��ѡ���Լ���Ҫ�����Խ���������ÿ�γ�>
<RText|x=78.0|y=276.0|width=344|color=255|size=16|text=��������1�� ʧ�ܽ���1�� ���Ϊ5��.>
<RText|x=78.0|y=320.0|width=344|size=16|color=255|text=<������/FCOLOR=251>>
<RText|x=63.0|y=351.0|width=344|size=16|color=255|text=������������ˡ�<���ľ��ľ��ˮ��ˮ�˻�/FCOLOR=250>>
<RText|x=78.5|y=373.5|width=344|color=255|size=16|text=<����������˽�/FCOLOR=250>�������������ʱ�Ա���>
<RText|x=62.5|y=228.5|width=344|color=251|size=16|text=���Խ���>
<RText|x=78.0|y=298.0|width=344|size=16|color=255|text=ȫ�������������ѡ������һ�����<˫/FCOLOR=251>>
<RText|x=78.5|y=395.5|width=344|color=255|size=16|text=�Ƶĵ���<�������8%�˺�>>
		]]
	end
	
	say(actor,msg)
end

function tisheng(actor,id)
	id = tonumber(id)
	local lv = getint(actor,bl_t[id])
	if lv >= 5 then
		sendmsg9(actor,"��ǰ����������")
		return
	end
	local t = shengji_t[id]
	if getbindgold(actor) < t.feiyong[lv] then
		sendmsg9(actor,"��Ҳ���")
		return
	end
	subbindgold(actor,t.feiyong[lv])
	setint(actor,"����֮������",getint(actor,"����֮������")+1)
	--local jilv = t.jilv[lv]
	local jilv = 45
	if getint(actor,"����֮������") >= 180 then
		jilv = 100
	end
	if math.random(1,100) <= jilv then
		setint(actor,bl_t[id],lv+1)
		setint(actor,"�����ܵȼ�",getint(actor,"�����ܵȼ�")+1)
		tianjiabuff(actor,t.buffid,getint(actor,bl_t[id]))
		sendmsg9(actor,"�����ɹ�")
	else
		if lv > 0 then
			setint(actor,bl_t[id],lv-1)
			setint(actor,"�����ܵȼ�",getint(actor,"�����ܵȼ�")-1)
			tianjiabuff(actor,t.buffid,getint(actor,bl_t[id]))
		end
		sendmsg9(actor,"����ʧ��")
	end
	return jinji(actor,id)
end

function tianjiabuff(actor,buffid,cengci)
	delbuff(actor,buffid)
	if cengci > 0 then
		addbuff(actor,buffid,0,cengci)
	end
end


local bufft = {10026,10027,10028,10029,10030}
function zhuanhuan(actor,fangshi,id)
	id = tonumber(id)
	if id == 0 then
		sendmsg9(actor,"��ѡ����Ҫת������������")
		return
	end
	if id == getint(actor,"���е�ǰ����") then
		sendmsg9(actor,"���ǵ�ǰ��������")
		return
	end
	if fangshi == "1" then --����
		if itemcount(actor,"����") < 1 then
			sendmsg9(actor,"��������")
			return
		end
		takeitem(actor, "����", 1)
	elseif fangshi == "2" then --Ԫ��
		if getingot(actor) < 1000 then
			sendmsg9(actor,"Ԫ������")
			return
		end
		subingot(actor,1000,"����֮��")
	end
	setint(actor,"���е�ǰ����",id)
	for i = 1,#bufft do
		if hasbuff(actor,bufft[i]) then
			delbuff(actor,bufft[i])
		end
	end
	addbuff(actor,bufft[id])
	sendmsg9(actor,"ת���ɹ�")
	if getint(actor,"�������") == 0 then
		setint(actor,"�������",1)
	else
		if fangshi == "1" then
			post(actor,"���н����л�")
		else
			post(actor,"����Ԫ���л�")
		end
	end
	zhuangbeianniu(actor)
	qiehuan(actor,id)
	
end

local zbxs = {"zhangheng/106.png","zhangheng/107.png","zhangheng/108.png","zhangheng/109.png","zhangheng/110.png"}
function zhuangbeianniu(actor)
	delbutton(actor,3001,13)
	if getint(actor,"���е�ǰ����") == 0 then
		return
	end
	local msg = ""
	if getispc(actor) then --����
		msg = "<Button|x=190|y=30|nimg="..zbxs[getint(actor,"���е�ǰ����")].."|link=@openwuxin>"
	else
		msg = "<Button|x=250|y=70|nimg="..zbxs[getint(actor,"���е�ǰ����")].."|link=@openwuxin>"
	end
	addbutton(actor,3001,13,msg)
end