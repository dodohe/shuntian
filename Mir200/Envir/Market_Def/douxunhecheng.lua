require("Envir/Market_Def/zh.lua") --���˷�װ����
local dalei_t = {"���Ҵ���","ѫ�´���","�������"}
local data = {
	{
		[1]={
				xilie="����ϵ��",
				{xiaohao={jinbi=50000,item={{"43�Ŷ���",2}}},givename="��������",},
				{xiaohao={jinbi=50000,item={{"44�Ŷ���",2}}},givename="��ħ����",},
				{xiaohao={jinbi=50000,item={{"45�Ŷ���",2}}},givename="̩̹����",},
			},
		[2]={
				xilie="����ϵ��",
				{xiaohao={jinbi=100000,item={{"��������",2}}},givename="ʥս����",},
				{xiaohao={jinbi=100000,item={{"��ħ����",2}}},givename="������",},
				{xiaohao={jinbi=100000,item={{"̩̹����",2}}},givename="������",},
			},
		[3]={
				xilie="����ϵ��",
				{xiaohao={jinbi=200000,item={{"ʥս����",2}}},givename="��������",},
				{xiaohao={jinbi=200000,item={{"������",2}}},givename="���涷��",},
				{xiaohao={jinbi=200000,item={{"������",2}}},givename="��â����",},
			},
		[4]={
				xilie="��֮ϵ��",
				{xiaohao={jinbi=500000,shengwang=300,item={{"��������",2}}},givename="��֮��������",},
				{xiaohao={jinbi=500000,shengwang=300,item={{"���涷��",2}}},givename="��֮���涷��",},
				{xiaohao={jinbi=500000,shengwang=300,item={{"��â����",2}}},givename="��֮��â����",},
			},
		[5]={
				xilie="ս��ϵ��",
				{xiaohao={shengwang=400,item={{"��֮��������",2},{"����",1}}},givename="ս����",},
				{xiaohao={shengwang=400,item={{"��֮���涷��",2},{"����",1}}},givename="ʥħ����",},
				{xiaohao={shengwang=400,item={{"��֮��â����",2},{"����",1}}},givename="��궷��",},
			},
		[6]={
				xilie="��սϵ��",
				{xiaohao={shengwang=500,item={{"ս����",2},{"����",2}}},givename="��ս����",},
				{xiaohao={shengwang=500,item={{"ʥħ����",2},{"����",2}}},givename="��������",},
				{xiaohao={shengwang=500,item={{"��궷��",2},{"����",2}}},givename="̫������",},
			},
		[7]={
				xilie="����ϵ��",dengji=55,
				{xiaohao={shengwang=600,item={{"��ս����",2},{"��ˮ����",1500}}},givename="��������",},
				{xiaohao={shengwang=600,item={{"��������",2},{"��ˮ����",1500}}},givename="���׶���",},
				{xiaohao={shengwang=600,item={{"̫������",2},{"��ˮ����",1500}}},givename="���鶷��",},
			},
		[8]={
				xilie="����ϵ��",dengji=60,
				{xiaohao={shengwang=800,item={{"��������",2},{"��ˮ����",3000}}},givename="���졩����",},
				{xiaohao={shengwang=800,item={{"���׶���",2},{"��ˮ����",3000}}},givename="���졩����",},
				{xiaohao={shengwang=800,item={{"���鶷��",2},{"��ˮ����",3000}}},givename="���졩����",},
			},

	},
	{
			[1]={
					xilie="����ϵ��",
					{xiaohao={jinbi=50000,item={{"43��ѫ��",2}}},givename="����ѫ��",},
					{xiaohao={jinbi=50000,item={{"44��ѫ��",2}}},givename="��ħѫ��",},
					{xiaohao={jinbi=50000,item={{"45��ѫ��",2}}},givename="̩̹ѫ��",},
				},
			[2]={
					xilie="����ϵ��",
					{xiaohao={jinbi=100000,item={{"����ѫ��",2}}},givename="ʥսѫ��",},
					{xiaohao={jinbi=100000,item={{"��ħѫ��",2}}},givename="����ѫ��",},
					{xiaohao={jinbi=100000,item={{"̩̹ѫ��",2}}},givename="����ѫ��",},
				},
			[3]={
					xilie="����ϵ��",
					{xiaohao={jinbi=200000,item={{"ʥսѫ��",2}}},givename="����ѫ��",},
					{xiaohao={jinbi=200000,item={{"����ѫ��",2}}},givename="����ѫ��",},
					{xiaohao={jinbi=200000,item={{"����ѫ��",2}}},givename="��âѫ��",},
				},
			[4]={
					xilie="��֮ϵ��",
					{xiaohao={jinbi=500000,shengwang=300,item={{"����ѫ��",2}}},givename="��֮����ѫ��",},
					{xiaohao={jinbi=500000,shengwang=300,item={{"����ѫ��",2}}},givename="��֮����ѫ��",},
					{xiaohao={jinbi=500000,shengwang=300,item={{"��âѫ��",2}}},givename="��֮��âѫ��",},
				},
			[5]={
					xilie="ս��ϵ��",
					{xiaohao={shengwang=400,item={{"��֮����ѫ��",2},{"����",1}}},givename="ս��ѫ��",},
					{xiaohao={shengwang=400,item={{"��֮����ѫ��",2},{"����",1}}},givename="ʥħѫ��",},
					{xiaohao={shengwang=400,item={{"��֮��âѫ��",2},{"����",1}}},givename="���ѫ��",},
				},
			[6]={
					xilie="��սϵ��",
					{xiaohao={shengwang=500,item={{"ս��ѫ��",2},{"����",2}}},givename="��սѫ��",},
					{xiaohao={shengwang=500,item={{"ʥħѫ��",2},{"����",2}}},givename="����ѫ��",},
					{xiaohao={shengwang=500,item={{"���ѫ��",2},{"����",2}}},givename="̫��ѫ��",},
				},
			[7]={
					xilie="����ϵ��",dengji=55,
					{xiaohao={shengwang=600,item={{"��սѫ��",2},{"��ˮ����",1500}}},givename="����ѫ��",},
					{xiaohao={shengwang=600,item={{"����ѫ��",2},{"��ˮ����",1500}}},givename="����ѫ��",},
					{xiaohao={shengwang=600,item={{"̫��ѫ��",2},{"��ˮ����",1500}}},givename="����ѫ��",},
				},
			[8]={
					xilie="����ϵ��",dengji=60,
					{xiaohao={shengwang=800,item={{"����ѫ��",2},{"��ˮ����",3000}}},givename="���졩ѫ��",},
					{xiaohao={shengwang=800,item={{"����ѫ��",2},{"��ˮ����",3000}}},givename="���졩ѫ��",},
					{xiaohao={shengwang=800,item={{"����ѫ��",2},{"��ˮ����",3000}}},givename="���졩ѫ��",},
				},

	},
	{
			[1]={
					xilie="�������",
					{xiaohao={jinbi=5000,item={{"һ������",2}}},givename="��������",},
					{xiaohao={jinbi=10000,item={{"��������",2}}},givename="��������",},
					{xiaohao={jinbi=15000,item={{"��������",2}}},givename="�ļ�����",},
					{xiaohao={jinbi=20000,item={{"�ļ�����",2}}},givename="�弶����",},
					{xiaohao={jinbi=25000,item={{"�弶����",2}}},givename="��������",},
					{xiaohao={jinbi=30000,item={{"��������",2}}},givename="�߼�����",},
					{xiaohao={jinbi=40000,item={{"�߼�����",2}}},givename="�˼�����",},
					{xiaohao={jinbi=50000,item={{"�˼�����",2}}},givename="�ż�����",},
					{xiaohao={jinbi=60000,item={{"�ż�����",2}}},givename="ʮ������",},
				},
	},
}

function show(actor,daleiid,xiaoleiid,hechengid,yijianduanzao)
	yijianduanzao = tonumber(yijianduanzao) or 0
	daleiid = tonumber(daleiid) or 1
	xiaoleiid = tonumber(xiaoleiid) or 1
	hechengid = tonumber(hechengid) or 1
	local msg = [[
		<Img|x=0|width=673|height=497|bg=1|scale9l=50|scale9t=50|scale9r=50|scale9b=50|esc=1|move=1|img=zhangheng/1.png|reset=0|show=4>
		<Button|x=669.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.5|y=40.5|width=636|height=432|esc=0|img=zhangheng/80.png>
		<Img|x=139.5|y=39.5|height=432|img=zhangheng/81.png|esc=0>
		<Img|x=265.5|y=39.5|height=432|img=zhangheng/81.png|esc=0>
		<Img|x=321.5|y=66.5|img=zhangheng/74.png|esc=0>
		<Img|x=316.5|y=199.5|img=zhangheng/75.png|esc=0>
	]]
	
	for i = 1,#dalei_t do
		if daleiid == i then --���ఴť
			msg=msg.."<Button|x=21.0|y=".. 45.5 + (i-1)*40 .."|size=18|color=150|nimg=zh/64.png|text="..dalei_t[i]..">"
		else
			msg=msg.."<Button|id="..i.."|x=21.0|y=".. 45.5 + (i-1)*40 .."|size=18|color=7|nimg=zh/65.png|pimg=zh/65.png|text="..dalei_t[i].."|link=@show,"..i..">"
		end
	end
	local pyy = 0
	for i = 1,#data[daleiid] do
		if data[daleiid][i].dengji and getlevel(actor) < data[daleiid][i].dengji then
			break
		end
		if xiaoleiid == i then --С�ఴť
			msg=msg.."<Button|x=146.0|y=".. 45.5 + pyy .."|size=18|color=150|nimg=zh/64.png|text="..data[daleiid][i].xilie..">"
			pyy = pyy + 40
			for j = 1,#data[daleiid][xiaoleiid] do
				if hechengid == j then --ѡ�еĺϳ���Ʒid
					msg=msg.."<Button|x=146.0|y=".. 45.5 + pyy .."|width=116|size=18|color=150|nimg=zh/21.png|text="..data[daleiid][xiaoleiid][j].givename..">"
					msg=msg.."<Img|x=146.0|y=".. 45.5 + pyy .."|width=116|height=31|img=zh/25.png|esc=0>"
					pyy = pyy + 34
					local t = data[daleiid][xiaoleiid][hechengid].xiaohao
					if #t.item == 2 then --2��������Ʒ����
						msg=msg.."<Img|x=374.5|y=149.5|img=zhangheng/77.png|esc=0>"
						msg=msg.."<Img|x=349.5|y=111.5|img=zhangheng/73.png|esc=0>"
						msg=msg.."<ItemShow|x=348.5|y=108.5|itemid=".. getidbyname(t.item[1][1]) .."|itemcount=1|showtips=1|bgtype=0>"
						msg=msg..'<RText|ax=0.5|x=382.0|y=148.0|size=16|color=255|outline=1|text=<'.. itemcount(actor,t.item[1][1]) ..'/FCOLOR=249>/<'..t.item[1][2]..'/FCOLOR=250>>'
						msg=msg.."<Img|x=513.5|y=111.5|img=zhangheng/73.png|esc=0>"
						msg=msg.."<ItemShow|x=512.5|y=108.5|itemid=".. getidbyname(t.item[2][1]) .."|itemcount=1|showtips=1|bgtype=0>"
						msg=msg..'<RText|ax=0.5|x=546.0|y=148.0|size=16|color=255|outline=1|text=<'.. itemcount(actor,t.item[2][1]) ..'/FCOLOR=249>/<'..t.item[2][2]..'/FCOLOR=250>>'
					elseif #t.item == 1 then --һ����Ʒ����
						msg=msg.."<Img|x=456.0|y=149.5|img=zhangheng/76.png|esc=0>"
						msg=msg.."<Img|x=431.5|y=111.5|img=zhangheng/73.png|esc=0>"
						msg=msg.."<ItemShow|x=430.5|y=108.5|itemid=".. getidbyname(t.item[1][1]) .."|itemcount=1|showtips=1|bgtype=0>"
						msg=msg..'<RText|ax=0.5|x=464.0|y=148.0|size=16|color=255|outline=1|text=<'.. itemcount(actor,t.item[1][1]) ..'/FCOLOR=249>/<'..t.item[1][2]..'/FCOLOR=250>>'
					end
					msg=msg.."<Img|x=431.5|y=234.5|img=zhangheng/73.png|esc=0>"
					msg=msg.."<ItemShow|x=430.5|y=231.5|itemid=".. getidbyname(data[daleiid][xiaoleiid][hechengid].givename) .."|itemcount=1|showtips=1|bgtype=0>"
					local str = ""
					local str1= ""
					if t.jinbi then
						str = "<��ң�/FCOLOR=251><".. jianhuanum(getbindgold(actor)) .."/FCOLOR=249>/<".. jianhuanum(t.jinbi) .."/FCOLOR=250>" 
					end
					if t.shengwang then
						str1 = "<������/FCOLOR=251><".. getshengwang(actor) .."/FCOLOR=249>/<".. t.shengwang .."/FCOLOR=250>" 
					end
					
					if str ~= "" then
						if str1 ~= "" then
							str = str .."����"..str1
						end
					else
						str = str1
					end
					msg=msg.."<RText|ax=0.5|x=457.5|y=368.5|color=255|size=18|text="..str..">"
					if daleiid ~= 3 then
						msg=msg.."<Button|x=417.5|y=408.5|nimg=zhangheng/13.png|color=10051|size=18|text=ȷ������|link=@hecheng,"..daleiid..","..xiaoleiid..","..hechengid..">"
					else
						if yijianduanzao == 1 then
							msg=msg.."<Button|x=317.5|y=408.5|nimg=zhangheng/13.png|color=10051|size=18|text=ֹͣ����|link=@hecheng,"..daleiid..","..xiaoleiid..","..hechengid..",1,1>"
						else
							msg=msg.."<Button|x=317.5|y=408.5|nimg=zhangheng/13.png|color=10051|size=18|text=һ������|link=@hecheng,"..daleiid..","..xiaoleiid..","..hechengid..",1>"
						end
						msg=msg.."<Button|x=517.5|y=408.5|nimg=zhangheng/13.png|color=10051|size=18|text=ȷ������|link=@hecheng,"..daleiid..","..xiaoleiid..","..hechengid..">"
					end
				else
					msg=msg.."<Button|x=146.0|y=".. 45.5 + pyy .."|width=116|size=18|color=7|nimg=zh/21.png|pimg=zh/21.png|text="..data[daleiid][xiaoleiid][j].givename.."|link=@show,"..daleiid..","..xiaoleiid..","..j..">"
					pyy = pyy + 34
				end
			end
		else
			msg=msg.."<Button|x=146.0|y=".. 45.5 + pyy .."|size=18|color=7|nimg=zh/65.png|pimg=zh/65.png|text="..data[daleiid][i].xilie.."|link=@show,"..daleiid..","..i..">"
			pyy = pyy + 40
		end
	end
	
	say(actor,msg)
	
	if getint(actor,"�������id") == 8 then
		navigation(actor,0,3,"�������")
	end
	if daleiid == 3 and getint(actor,"�������id") == 8 then
		newdeletetask(actor,9) --ɾ������2
		setint(actor,"�������id",9)
		changeexp(actor,"+",20000,false)
		callscriptex(actor, "CallLua", "QFunction-0", "@getexp,20000") --���鴥��
		sendmsg9(actor,"�˽��澭������ɣ���þ���20000")
		callscriptex(actor, "CallLua", "QFunction-0", "@renwupanduan") --����ϵͳ
	end
end

function hecheng(actor,id1,id2,id3,yijian,tingzhi)
	if getbagblank(actor) < 2 then
		sendmsg9(actor,"�����ո���")
		return
	end
	
	
	tingzhi = tonumber(tingzhi) or 0
	yijian = tonumber(yijian) or 0 --�Ƿ���һ������
	id1=tonumber(id1)
	id2=tonumber(id2)
	id3=tonumber(id3)
	
	if tingzhi == 1 then
		cleardelaygoto(actor,"hecheng")
		return show(actor,id1,id2,id3)
	end
	
	local shuju = data[id1][id2][id3].xiaohao
	local givename = data[id1][id2][id3].givename
	if shuju.jinbi then
		if data[id1][id2].xilie == "��֮ϵ��" then
			if getgold(actor) < shuju.jinbi then
				sendmsg9(actor,"�ǰ󶨽�Ҳ���","#00FF00")
				return
			end
		else
			if getbindgold(actor) < shuju.jinbi then
				sendmsg9(actor,"��Ҳ���")
				return
			end
		end
	end
	if shuju.shengwang then
		if getshengwang(actor) < shuju.shengwang then
			sendmsg9(actor,"��������")
			return
		end
	end
	
	for i = 1,#shuju.item do
		if itemcount(actor,shuju.item[i][1],2) < shuju.item[i][2] then
			sendmsg9(actor,"��������")
			return
		end
	end
	for i = 1,#shuju.item do
		takeitem(actor, shuju.item[i][1], shuju.item[i][2],0)
	end
	
	if shuju.jinbi then
		if data[id1][id2].xilie == "��֮ϵ��" then
			subgold(actor,shuju.jinbi)
		else
			subbindgold(actor,shuju.jinbi)
		end
	end
	if shuju.shengwang then
		subshengwang(actor,shuju.shengwang)
	end
	if data[id1][id2].xilie == "�������" then
		giveitem(actor,givename, 1,370)
	else
		giveitem(actor,givename, 1,0)
	end
	
	
	sendmsg9(actor,"����ɹ�")
	show(actor,id1,id2,id3,yijian)
	if yijian == 1 then
		delaygoto(actor,100,"hecheng,"..id1..","..id2..","..id3..","..yijian)
	end
end

