require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor)
	local msg = [[
		<Img|x=0|width=644|height=472|scale9r=50|show=4|scale9t=50|reset=0|bg=1|move=1|loadDelay=1|scale9b=50|img=zhangheng/1.png|scale9l=50|esc=1>
		<Button|x=640.0|y=1.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.0|y=38.0|img=zhangheng/240.png|esc=0>
		<RText|ay=0.5|x=43.0|y=58.5|color=100|size=18|outline=2|text=�����������κν�ң�Ϊ����ʿ�ǵ�ȼü֮������ͨ��������Ĺ�����>
		
		<RText|ay=0.5|x=24.0|y=380.5|color=100|size=16|outline=1|text=������Ϊ��Ϣ���̣�ÿ����<1��Ԫ��/FCOLOR=250>�ɻ��<100��/FCOLOR=250>�󶨽�ң�<8Сʱ��/FCOLOR=250>���Ź黹������>
		<RText|ay=0.5|x=24.0|y=405.5|color=100|size=16|outline=1|text=��Ϣ�����Ԫ��<����1������/FCOLOR=250>���뵱���߼�ʱ�黹���н��л����ٽ費�ѣ��糬����>
		

	]]
	
	if getint(actor,"���̿ɿ���Ϣ") == 0 then
		msg=msg.."<RText|ay=0.5|x=43.0|y=85.5|color=100|size=18|outline=2|text=Ʒ���е䵱�����ɵ������Σ�>"
	else
		msg=msg.."<RText|ay=0.5|x=43.0|y=85.5|color=100|size=18|outline=2|text=Ʒ���е䵱�����ɵ������Σ�<��Сʱ��δ�黹ÿСʱ��ȡ500Ԫ����Ϣ/FCOLOR=253>>"
	end
	
	local yincangxianshi = false
	local yxy = 160
	local pyy = 37
	for i = 1,6 do
		local diandangtime = getint(actor,"�䵱ʱ��"..i)
		local dangqiantime = os.time() --����ʱ��
		local shijiancha = dangqiantime - diandangtime --��ʱ���
		local xiaoshicha = math.ceil(shijiancha/3600) --Сʱ�� 
		local lixitime = xiaoshicha - 8 --��Ϣ��Сʱ
		if diandangtime ~= 0 and lixitime >= 20 then
			setint(actor,"�䵱ʱ��"..i,0)
			sendmail(getbaseinfo(actor,2),1,"�����ȼ�","�����������Ԫ����ʱ��δ�黹����Ϣ�ѳ�������Ԫ����ϵͳ���Զ����","")
		end
		local lixi = 0
		if lixitime > 0 then
			lixi = lixitime * 500
		end
		
		msg=msg.."<Text|ax=0.5|ay=0.5|x=89|y=".. yxy+(i-1)*pyy .."|outline=2|size=18|color=161|text=10000Ԫ��>"
		--ʱ��
		if getint(actor,"�䵱ʱ��"..i) > 0 then
			msg=msg.."<Text|ax=0.5|ay=0.5|x=247|y=".. yxy+(i-1)*pyy .."|outline=2|size=18|color=254|text=".. os.date("%d��%H:%M:%S",diandangtime) ..">"
			--��Ϣ
			msg=msg.."<Text|ax=0.5|ay=0.5|x=397|y=".. yxy+(i-1)*pyy .."|outline=2|size=18|color=249|text=".. lixi .."Ԫ��>"
			--����
			if getint(actor,"�������"..i) == 0 then
				msg=msg.."<Text|ax=0.5|ay=0.5|x=507|y=".. yxy+(i-1)*pyy .."|outline=2|size=18|color=250|text=���Ԫ��|link=@shuhui,"..i..">"
				msg=msg.."<Text|ax=0.5|ay=0.5|x=587|y=".. yxy+(i-1)*pyy .."|outline=2|size=18|color=250|text=�������|link=@fangqishuhui,"..i..">"
			else
				msg=msg.."<Text|ax=0.5|ay=0.5|x=549|y=".. yxy+(i-1)*pyy .."|outline=2|size=18|color=250|text=���Ԫ��|link=@shuhui,"..i..">"
			end
			yincangxianshi = true
		else
			--����
			msg=msg.."<Text|ax=0.5|ay=0.5|x=549|y=".. yxy+(i-1)*pyy .."|outline=2|size=18|color=251|text=����Ԫ��|link=@dangru,"..i..">"
		end
	end

	msg=msg.."<RText|ay=0.5|x=24.0|y=430.5|color=100|size=16|outline=1|text=��ʱ�������ȡ<��Ӧ��Ϣ/FCOLOR=250>��8Сʱ��ɷ������.�۳�<1500/FCOLOR=253>Ԫ��.ÿ������ֻ��1�λ���>"

	say(actor,msg)
end

function fangqishuhui(actor,par)
	local diandangtime = getint(actor,"�䵱ʱ��"..par)
	local dangqiantime = os.time() --����ʱ��
	local shijiancha = dangqiantime - diandangtime --��ʱ���
	local xiaoshicha = math.ceil(shijiancha/3600) --Сʱ�� 
	local lixitime = xiaoshicha - 8 --��Ϣ��Сʱ
	if lixitime < 1 then
		sendmsg9(actor,"8Сʱ��ſɷ������")
		return
	end
	local lixi = 0
	if lixitime > 0 then
		lixi = lixitime * 500
	end
	local huodeyuanbao = 10000-lixi-1500
	if huodeyuanbao < 0 then
		huodeyuanbao = 0
	end
	messagebox(actor,"\\\\��ʱ�������ֻ�ɻ��".. huodeyuanbao .."Ԫ�����Ƿ�ȷ��������أ�","@func_fangqi,"..par..","..huodeyuanbao,"@show")
end

function func_fangqi(actor,par,huodeyuanbao)
	--sendmsg9(actor,par.."  "..huodeyuanbao)
	huodeyuanbao = tonumber(huodeyuanbao)
	addingot(actor,huodeyuanbao)
	setint(actor,"�䵱ʱ��"..par,0)
	setint(actor,"�������"..par,1)
	sendmsg9(actor,"������سɹ�")
	return show(actor)
end

function dangru(actor,par)
	if getingot(actor) < 10000 then
		sendmsg9(actor,"��û��1��Ԫ��")
		return 
	end
	subingot(actor,10000)
	addbindgold(actor,1000000)
	setint(actor,"�䵱ʱ��"..par,os.time())
	sendmsg9(actor,"�䵱�ɹ�")
	setint(actor,"���̿ɿ���Ϣ",1)
	return show(actor)
end

function shuhui(actor,par)
	local diandangtime = getint(actor,"�䵱ʱ��"..par)
	local dangqiantime = os.time() --����ʱ��
	local shijiancha = dangqiantime - diandangtime --��ʱ���
	local xiaoshicha = math.ceil(shijiancha/3600) --Сʱ�� 
	local lixitime = xiaoshicha - 8 --��Ϣ��Сʱ
	if lixitime >= 20 then
		setint(actor,"�䵱ʱ��"..par,0)
		sendmsg9(actor,"�ѹ������ʱ��")
		return show(actor)
	end
	local lixi = 0
	if lixitime > 0 then
		lixi = lixitime * 500
	end
	
	if itemcount(actor,"����") < 1 then
		sendmsg9(actor,"���Ԫ����1������")
		return show(actor)
	end
	takeitem(actor,"����",1)
	addingot(actor,10000-lixi)
	setint(actor,"�䵱ʱ��"..par,0)
	sendmsg9(actor,"��سɹ�")
	
	return show(actor)
end