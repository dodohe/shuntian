require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor,xianshi)
	xianshi = tonumber(xianshi) or 0
	local msg = [[
	<Img|x=0.0|y=1.0|width=450|height=480|bg=1|loadDelay=1|scale9r=10|scale9t=10|scale9b=10|move=0|reset=1|esc=1|scale9l=10|img=public/bg_npc_04.jpg|show=0>
	<Button|x=449.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=10.0|y=11.0|width=430|height=460|scale9l=10|scale9b=10|img=zhangheng/210.png|scale9r=10|scale9t=10|esc=0>
	<Img|x=10.0|y=50.0|width=430|img=zhangheng/203.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=228.0|y=32.5|color=251|size=18|text=�һ��ȷ��>
	<Text|x=29.0|y=65.0|size=18|color=116|text=���ùһ�ģʽ>
	<Text|ax=0|ay=0.5|x=86.0|y=109.0|size=18|color=254|text=��ͨģʽ>
	<Text|ax=0|ay=0.5|x=304.0|y=109.5|size=18|color=253|text=�ǻ�ģʽ>
	<Text|x=29.0|y=140.0|size=18|color=116|text=ѡ��һ���ͼ>
	<Text|ax=0|ay=0.5|x=86.0|y=184.5|size=18|color=161|text=1�Źһ���ͼ>
	<Text|ax=0|ay=0.5|x=304.0|y=184.5|size=18|color=161|text=2�Źһ���ͼ>
	<Text|ax=0|ay=0.5|x=86.0|y=238.5|size=18|color=161|text=3�Źһ���ͼ>
	<Text|ax=0|ay=0.5|x=304.0|y=238.5|size=18|color=161|text=4�Źһ���ͼ>
	<Text|ax=0|ay=0.5|x=86.0|y=313.5|size=18|color=222|text=�Զ�����>

	<Img|x=10.0|y=346.0|width=430|img=zhangheng/203.png|esc=0>
	<RText|x=27.0|y=367.0|color=255|size=18|text=��ʾ��<��ͨ���/FCOLOR=254>��<�ǻ�ģʽÿ������ȡ5��һ���/FCOLOR=253>>
	<Button|x=184.0|y=407.0|color=10051|size=18|nimg=zhangheng/13.png|text=��ʼ�һ�|link=@guaji>
	<Button|x=14.0|y=435.0|color=255|size=18|nimg=zhangheng/8.png|link=@show,1>
	]]
	msg = msg .. "<RText|x=29.0|y=269.0|size=18|color=116|text=������������>"
	msg = msg .. "<RText|x=29.0|y=289.0|size=18|color=116|text=����������������������<��ǰ�һ�����Ϊ��"..getint(actor,"�һ�����").."/FCOLOR=31>>"
	--��ͨģʽ��ѡ
	if getint(actor,"�һ�ģʽ") == 1 then
		msg = msg .. "<Img|x=51.0|y=96.0|img=zh/78.png|link=@moshishezhi,0>"
	else
		msg = msg .. "<Img|x=51.0|y=96.0|img=zh/77.png|link=@moshishezhi,1>"
	end
	--�ǻ�ģʽ��ѡ
	if getint(actor,"�һ�ģʽ") == 2 then
		msg = msg .. "<Img|x=269.0|y=96.0|img=zh/78.png|link=@moshishezhi,0>"
	else
		msg = msg .. "<Img|x=269.0|y=96.0|img=zh/77.png|link=@moshishezhi,2>"
	end
	
	--�һ��㹴ѡ
	if getint(actor,"�һ���ͼ��") == 1 then
		msg = msg .. "<Img|x=51.0|y=171.0|img=zh/78.png|esc=0|link=@setdituhao,0>"
	else
		msg = msg .. "<Img|x=51.0|y=171.0|img=zh/77.png|esc=0|link=@setdituhao,1>"
	end
	if getint(actor,"�һ���ͼ��") == 2 then
		msg = msg .. "<Img|x=269.0|y=171.0|img=zh/78.png|esc=0|link=@setdituhao,0>"
	else
		msg = msg .. "<Img|x=269.0|y=171.0|img=zh/77.png|esc=0|link=@setdituhao,2>"
	end
	if getint(actor,"�һ���ͼ��") == 3 then
		msg = msg .. "<Img|x=51.0|y=225.0|img=zh/78.png|esc=0|link=@setdituhao,0>"
	else
		msg = msg .. "<Img|x=51.0|y=225.0|img=zh/77.png|esc=0|link=@setdituhao,3>"
	end
	if getint(actor,"�һ���ͼ��") == 4 then
		msg = msg .. "<Img|x=269.0|y=225.0|img=zh/78.png|esc=0|link=@setdituhao,0>"
	else
		msg = msg .. "<Img|x=269.0|y=225.0|img=zh/77.png|esc=0|link=@setdituhao,4>"
	end
	--�Զ�����ѡ
	if getint(actor,"�Զ�����") == 1 then
		msg = msg .. "<Img|x=51.0|y=300.0|img=zh/78.png|esc=0|link=@setxiuli,0>"
	else
		msg = msg .. "<Img|x=51.0|y=300.0|img=zh/77.png|esc=0|link=@setxiuli,1>"
	end
	
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@show>"
		msg=msg..[[
		<Img|ay=0.5|x=52.0|y=323.0|width=340|height=280|scale9t=10|scale9l=10|img=zh/7.png|scale9r=10|esc=0|scale9b=10>
		<RText|x=190.0|y=193.0|color=251|size=16|text=�һ�˵��>
		<RText|x=64.0|y=222.0|width=344|size=16|color=255|text=���ٷ����ǵ���Ӱ����ҵ���Ϣʱ���>
		<RText|x=80.0|y=247.0|width=344|color=255|size=16|text=��������������ȼ���࣬�ش��Ƴ�>
		<RText|x=81.0|y=272.0|width=344|size=16|color=255|text=<��ȫ�һ�/FCOLOR=250>����>
		<RText|x=64.0|y=302.0|width=344|size=16|color=255|text=���ٷ��Ƴ�<"��ͨ�һ�"/FCOLOR=254>��<"�ǻҹһ�"/FCOLOR=253>����>
		<RText|x=80.0|y=327.0|width=344|color=255|size=16|text=�һ�ģʽ,��ͨ�һ�Ϊ�����ҹ�����ͼ>
		<RText|x=80.0|y=352.0|width=344|color=255|size=16|text=�ǻҹһ�Ϊ���˾����ͼ>
		<RText|x=64.0|y=382.0|width=344|size=16|color=242|text=�Զ�����>
		<RText|x=64.0|y=407.0|width=344|size=16|color=255|text=�һ�������ϵͳÿ��60����>
		<RText|x=64.0|y=432.0|width=344|color=255|size=16|text=�Զ���������װ��,ÿ���շ�1����>
		]]
	end
	
	say(actor,msg)
end

function setxiuli(actor,par)
	par = tonumber(par)
	setint(actor,"�Զ�����",par)
	return show(actor)
end

function setdituhao(actor,par)
	par = tonumber(par)
	setint(actor,"�һ���ͼ��",par)
	return show(actor)
end

function moshishezhi(actor,par)
	par = tonumber(par)
	setint(actor,"�һ�ģʽ",par)
	return show(actor)
end

function guaji(actor)
	local dituhao = getint(actor,"�һ���ͼ��")
	if getint(actor,"�һ�ģʽ") == 0 or getint(actor,"�һ���ͼ��") == 0 then
		sendmsg9(actor,"����ѡ��һ�ģʽ�͵�ͼ")
		return
	end
	if getint(actor,"�һ�ģʽ") == 1 then --��ͨ�һ�
		map(actor,"aqgj"..getint(actor,"�һ���ͼ��"))
		return
	end
	
	if getint(actor,"�һ�����") < 5 then
		sendmsg9(actor,"�һ��������㣬���Ȼ�ȡ������ѡ����ͨģʽ")
		return
	end
	setint(actor,"�һ�����",getint(actor,"�һ�����")-5)
	addmirrormap("d715",getname(actor),"�ǻҹһ���ͼ",999999,3)
	map(actor,getname(actor))
	genmon(getname(actor),200,200,"��Ұ��4",200,150)
	genmon(getname(actor),200,200,"��Ұ��4",200,150)
	genmon(getname(actor),200,200,"��ɫ����4",200,150)
	genmon(getname(actor),200,200,"Ы��4",200,150)
end
