function renwupanduan(actor)
	--local currenwuid = getint(actor,"��ǰ����id")
	delbutton(actor,110,77)
	local wanchengrenwuid = getint(actor,"�������id")
	if wanchengrenwuid == 0 then
		newpicktask(actor,wanchengrenwuid+1,getlevel(actor)) --�½�����
	end
	if wanchengrenwuid == 1 then
		newpicktask(actor,wanchengrenwuid+1,getint(actor,"����ɱ������")) --�½�����2
	end
	if wanchengrenwuid == 2 then
		newpicktask(actor,wanchengrenwuid+1) --�½�����3
	end
	if wanchengrenwuid == 3 then
		newpicktask(actor,wanchengrenwuid+1,getint(actor,"����ɱ������")) --�½�����4
	end
	if wanchengrenwuid == 4 then
		newpicktask(actor,wanchengrenwuid+1,getint(actor,"����ɱ������")) --�½�����5
	end
	if wanchengrenwuid == 5 then
		newpicktask(actor,wanchengrenwuid+1,getint(actor,"����ɱ������")) --�½�����6
	end
	if wanchengrenwuid == 6 then
		newpicktask(actor,wanchengrenwuid+1,getint(actor,"����ɱ������")) --�½�����7
	end
	if wanchengrenwuid == 7 then
		newpicktask(actor,wanchengrenwuid+1) --�½�����8
	end
	if wanchengrenwuid == 8 then
		newpicktask(actor,wanchengrenwuid+1) --�½�����9
	end
	if wanchengrenwuid == 9 then
		newpicktask(actor,wanchengrenwuid+1) --�½�����10
	end
	if wanchengrenwuid == 10 then
		newpicktask(actor,wanchengrenwuid+1,getint(actor,"����ɱ������")) --�½�����11
	end
	if wanchengrenwuid == 11 then
		newpicktask(actor,wanchengrenwuid+1) --�½�����12
	end
	if wanchengrenwuid == 12 then
		newpicktask(actor,wanchengrenwuid+1,getint(actor,"����ɱ������")) --�½�����13
	end
	if wanchengrenwuid == 13 then
		newpicktask(actor,wanchengrenwuid+1,getint(actor,"����ɱ������")) --�½�����14
	end
	if wanchengrenwuid == 14 then
		newpicktask(actor,wanchengrenwuid+1,getint(actor,"����ɱ������")) --�½�����15
	end
	if wanchengrenwuid == 15 then
		newpicktask(actor,wanchengrenwuid+1) --�½�����16
	end
	--setint(actor,"��ǰ����id",1)
	
	if getlevel(actor) <= 36 then
		local msg =  [[
		<Layout|x=6.0|y=87.0|width=190|height=100|link=@chakangonglue>
		<Text|x=27.0|y=77.0|rotate=0|size=16|outline=1|color=251|text=��ӭ������˳�촫�桷>
		<Text|x=31.0|y=97.0|rotate=0|size=16|outline=1|color=131|text=������Ҫ����Ϊ���>
		<RText|x=53.0|y=117.0|outline=1|color=254|size=16|text=�ٷ��Ų�����>
		<Text|x=35.0|y=137.0|outline=1|color=131|size=16|text=����װ��һ�п���>
		<RText|x=35.0|y=157.0|outline=1|color=254|size=16|text=����鿴��Ϸ����>
		]]
		addbutton(actor,110,77,msg)
	end
	if wanchengrenwuid == 16 and getlevel(actor) <= 48 and getsysint("��������") == 0 then
		local msg =  [[
		<Text|x=20.0|y=57.0|rotate=0|size=16|color=131|outline=1|text=С��ͼҲ�ɳ��ռ�װ��>
<Text|x=3.0|y=27.0|rotate=0|size=16|color=251|outline=1|text=��ԭ���ξ���.������ɫ�淨>
<RText|x=33.0|y=87.0|color=254|size=16|outline=1|text=��ս���� һ�п���>
<Text|x=33.0|y=117.0|color=131|size=16|outline=1|text=���ɽ��� ��Ϸƽ��>
<RText|x=14.0|y=147.0|outline=1|color=254|size=16|text=������www.st099.com>


		]]
		addbutton(actor,110,77,msg)
	end
	
end
function chakangonglue(actor)
	callscriptex(actor, "CallLua", "gonglue", "@show")
end
function clicknewtask(actor,id)
	
	if getmap(actor) == "tuoji" or getmap(actor) == "waigua" then
		return
	end
	
	if id == 1 and getmap(actor) == "xinshou" then --
		opennpcshowex(actor,74,12,3)
	end
	if id == 2 then --
		setint(actor,"�����",1)
		opennpcshowex(actor,45,12,3)
	end
	if id == 3 or id == 8 then
		opennpcshowex(actor,12,12,3) --�澭����NPC
	end
	if id == 4 or id == 5 or id == 6 or id == 7 or id == 11 or id == 13 or id == 14 or id == 15 then --
		opennpcshowex(actor,45,12,3)
	end
	if id == 9 then --
		opennpcshowex(actor,5,12,3)
	end
	if id == 10 then --
		opennpcshowex(actor,16,12,3)
	end
	if id == 12 then --
		opennpcshowex(actor,4,12,3)
	end
	if id == 16 then --
		opennpcshowex(actor,47,12,3)
	end
end

function shuaxinrenwu(actor) --ˢ������
	local wanchengrenwuid = getint(actor,"�������id")
	local currenwuid = wanchengrenwuid + 1
	if currenwuid == 1 then --����1
		if getlevel(actor) < 30 then
			newchangetask(actor,currenwuid,getlevel(actor)) --ˢ������
		else
			setint(actor,"�������id",1) --����1���
			newdeletetask(actor,1) --ɾ������1
			sendmsg9(actor,"����30������ý����������飡")
			renwupanduan(actor)
		end
	end
	if currenwuid == 2 then --����2
		if getint(actor,"����ɱ������") < 15 then
			newchangetask(actor,currenwuid,getint(actor,"����ɱ������")) --ˢ������
		else
			setint(actor,"�������id",currenwuid) --����2���
			setint(actor,"����ɱ������",0)
			newdeletetask(actor,currenwuid) --ɾ������1
			giveitem(actor,"һ������",3,370)
			changeexp(actor,"+",5000,false)
			getexp(actor,5000) --��ȡ���鴥��
			sendmsg9(actor,"����15ֻ�����ý���һ������*3������5000")
			renwupanduan(actor)
		end
	end
	if currenwuid == 4 then --����4
		if getint(actor,"����ɱ������") < 20 then
			newchangetask(actor,currenwuid,getint(actor,"����ɱ������")) --ˢ������
		else
			setint(actor,"�������id",currenwuid) --����4���
			setint(actor,"����ɱ������",0)
			newdeletetask(actor,currenwuid) --ɾ������1
			giveitem(actor,"һ������",4,370)
			changeexp(actor,"+",10000,false)
			getexp(actor,10000) --��ȡ���鴥��
			sendmsg9(actor,"����20ֻ�����ý���һ������*4������10000")
			renwupanduan(actor)
		end
	end
	if currenwuid == 5 then --����5
		if getint(actor,"����ɱ������") < 25 then
			newchangetask(actor,currenwuid,getint(actor,"����ɱ������")) --ˢ������
		else
			setint(actor,"�������id",currenwuid) --����5���
			setint(actor,"����ɱ������",0)
			newdeletetask(actor,currenwuid) --ɾ������1
			giveitem(actor,"һ������",6,370)
			changeexp(actor,"+",10000,false)
			getexp(actor,10000) --��ȡ���鴥��
			sendmsg9(actor,"����25ֻ�����ý���һ������*6������10000")
			renwupanduan(actor)
		end
	end
	if currenwuid == 6 then --����6
		if getint(actor,"����ɱ������") < 30 then
			newchangetask(actor,currenwuid,getint(actor,"����ɱ������")) --ˢ������
		else
			setint(actor,"�������id",currenwuid) --����4���
			setint(actor,"����ɱ������",0)
			newdeletetask(actor,currenwuid) --ɾ������1
			giveitem(actor,"һ������",8,370)
			changeexp(actor,"+",10000,false)
			getexp(actor,10000) --��ȡ���鴥��
			sendmsg9(actor,"����30ֻ�����ý���һ������*8������10000")
			renwupanduan(actor)
		end
	end
	if currenwuid == 7 then --����7
		if getint(actor,"����ɱ������") < 40 then
			newchangetask(actor,currenwuid,getint(actor,"����ɱ������")) --ˢ������
		else
			setint(actor,"�������id",currenwuid) --����4���
			setint(actor,"����ɱ������",0)
			newdeletetask(actor,currenwuid) --ɾ������1
			giveitem(actor,"��������",1,370)
			changeexp(actor,"+",15000,false)
			getexp(actor,15000) --��ȡ���鴥��
			sendmsg9(actor,"����40ֻ�����ý�����������*1������15000")
			renwupanduan(actor)
		end
	end
	
	if currenwuid == 11 or currenwuid == 13 or currenwuid == 14 or currenwuid == 15 then --����7
		if getint(actor,"����ɱ������") < 50 then
			newchangetask(actor,currenwuid,getint(actor,"����ɱ������")) --ˢ������
		else
			setint(actor,"�������id",currenwuid) --����4���
			setint(actor,"����ɱ������",0)
			newdeletetask(actor,currenwuid) --ɾ������1
			giveitem(actor,"����֮��",5,370)
			sendmsg9(actor,"����50ֻ����������֮��*5")
			renwupanduan(actor)
		end
	end
end