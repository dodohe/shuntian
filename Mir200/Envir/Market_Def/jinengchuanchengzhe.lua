require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor)
	if getint(actor,"�������id") == 9 then
		newdeletetask(actor,10) --ɾ������2
		setint(actor,"�������id",10)
		changeexp(actor,"+",20000,false)
		callscriptex(actor, "CallLua", "QFunction-0", "@getexp,20000") --���鴥��
		sendmsg9(actor,"�ҵ��˼��ܴ����ߣ��˽���ѻ�ø߼����ܣ���þ���20000")
		callscriptex(actor, "CallLua", "QFunction-0", "@renwupanduan") --����ϵͳ
	end
	
	
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=���ܴ�����>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ax=0|ay=0.5|x=22.0|y=70.0|color=255|size=18|text=����ħ����������������ǰ�������ͼ������ÿ����>
		<RText|ay=0.5|x=22.0|y=95.5|color=255|size=18|text=<100ֻ����/FCOLOR=250>�ɻ��һ��<��ѳ�ȡ/FCOLOR=249>����>
		<RText|ay=0.5|x=22.0|y=120.5|color=255|size=18|text=ÿ�γ齱�м��ʻ��<"����ֵ,������,�귨�ᾧ,���,�ͽ�ֵ/FCOLOR=250>>
		<RText|ay=0.5|x=22.0|y=145.5|color=255|size=18|text=<����,��Ѫ��,����ն,�����"/FCOLOR=250>����һ����Ʒ......>
		<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
		<Text|ay=0.5|x=386.0|y=214.5|size=18|color=250|text=��ѳ�ȡ|link=@huoqu>
		<RText|x=22.0|y=205.0|color=253|size=18|text=��ȡ��10�αص��Լ�����ĸ߼�������>

	]]
	
	local cs = getint(actor,"���ܻ�ȡ����")	--��ȡ����
	if cs >= 10 then
		msg = msg .. "<RText|ay=0.5|x=337.0|y=170.5|color=254|size=18|text=ÿ������10��������>"
		msg = msg .. "<RText|ay=0.5|x=22.0|y=170.5|color=116|size=18|text=�㵱ǰ������100/100>"
	else
		msg = msg .. "<RText|ay=0.5|x=22.0|y=170.5|color=116|size=18|text=�㵱ǰ������".. getint(actor,"����ɱ������") - cs*100 .."/100>"
	end
	
	say(actor,msg)
end


local skill_t = {[0]="����ն",[1]="�����",[2]="��Ѫ��"}
function huoqu(actor,par)
	par = tonumber(par)
	local job = getjob(actor)
	local cs = getint(actor,"���ܻ�ȡ����")	--��ȡ����
	local sgsl = getint(actor,"����ɱ������") --ɱ������
	local kelingcishu = math.floor(sgsl/100) --����ȡ����
	if kelingcishu <= cs then
		sendmsg9(actor,"����ѳ�ȡ��������")
		return
	end
	if cs == 9 then
		--addskill(actor,getskillidbyname(skill_t[job]),1)
		--sendmsg6(actor,"ѧϰ".. skill_t[job] .."�ɹ�")
		giveitem(actor,skill_t[job],1,371)
		sendmsg6(actor,"���"..skill_t[job])
		setint(actor,"���ܻ�ȡ����",cs+1)
		return show(actor)
	end
	local suijizhi = math.random(1,6)
	if suijizhi == 1 then
		changeexp(actor,"+",10000)
		callscriptex(actor, "CallLua", "QFunction-0", "@getexp,10000") --���鴥��
		sendmsg9(actor,"��þ���ֵ+10000","#00FF00")
	elseif suijizhi == 2 then
		addshengwang(actor,5)
		sendmsg9(actor,"�������ֵ+5","#00FF00")
	elseif suijizhi == 3 then
		giveitem(actor,"�귨�ᾧ",10,370)
		sendmsg9(actor,"����귨�ᾧ*10","#00FF00")
	elseif suijizhi == 4 then
		addbindgold(actor,10000)
		sendmsg9(actor,"��ð󶨽��1��","#00FF00")
	elseif suijizhi == 5 then
		addshangjinzhi(actor,5)
		sendmsg9(actor,"����ͽ�ֵ+5","#00FF00")
	elseif suijizhi == 6 then
		giveitem(actor,"һ������",5,370)
		sendmsg9(actor,"���һ������*5","#00FF00")
	end
	setint(actor,"���ܻ�ȡ����",cs+1)
	return show(actor)
end
