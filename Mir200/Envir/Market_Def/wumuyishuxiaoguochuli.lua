--[[function magselffunc3000(actor) --����֮��
	sendmsg6(actor,"�ͷ�����֮��")
	local jichutime = 15
	local addtime = 0
	if getint(actor,"��������3���") == 29 then
		addtime = 5
	elseif getint(actor,"��������3���") == 45 then
		addtime = 12
	end
	addbuff(actor,10052,jichutime+addtime) --����֮��buff
	callscriptex(actor, "SHOWPHANTOM", 100, jichutime+addtime)
	detoxifcation(actor,-1)
end--]]


function ontimer19(actor) --ÿ�붨ʱ�� ���� ��������3���19 1���Ѫ2% ����10��
	local maxhp = getbaseinfo(actor,10)
	local addhp = math.floor(maxhp*0.02) --��Ѫ��
	humanhp(actor,"+",addhp,1000)
	--sendmsg6(actor,"������Ѫ2% ")
end

function magselffunc18(actor) --������

	--sendmsg6(actor,"�ͷ�������")
	if getint(actor,"��������2���") == 38 then
		if os.time() - getint(actor,"��������ʱ��") < 120 then
			return
		end
		changemode(actor,2,3)
		setint(actor,"��������ʱ��",os.time())
		sendmsg9(actor,"����ȫ��״̬������ʱ��3��","#00ff00")
		--sendmsg6(actor,"����3��")
	end
end

function magselffunc15(actor) --��ʥս����
	if getint(actor,"��������2���") == 39 then
		if not hasbuff(actor,20060) then
			addbuff(actor,20060)
			--sendmsg6(actor,"���Լ������ʥս����buff")
		end
	end
end

function magtagfuncex15(actor,id,shifazhename) --�����˼���ʥս����  Ŀ��obj������id��ʩ����name
	local shifazhe = getplayerbyname(shifazhename) --ʩ����obj
	if getint(shifazhe,"��������2���") == 39 then
		if not hasbuff(actor,20060) then
			addbuff(actor,20060)
			--sendmsg6(shifazhe,"�����������ʥս����buff")
		end
	end
end

function magselffunc14(actor) --�����
	--sendmsg0(0,"�Լ�ʱ��"..os.time())
	--sendmsg0(0,"�ͷ�ʱ��"..getint(actor,"�������ʱ��"))
	if getint(actor,"��������2���") == 40 then
		if os.time() ~= getint(actor,"�������ʱ��") and os.time() - getint(actor,"�������ʱ��") < 60 then
			return
		end
		if not hasbuff(actor,20061) then
			addbuff(actor,20061)		
			sendmsg9(actor,"ʹ����'�����'��ǰս������10%����30��")
			--sendmsg6(actor,"���Լ���������buff")
		end
		setint(actor,"�������ʱ��",os.time())
	end
end

function magtagfuncex14(actor,id,shifazhename) --�����˼������  Ŀ��obj������id��ʩ����name
	--sendmsg0(0,"����ʱ��"..os.time())
	
	local shifazhe = getplayerbyname(shifazhename) --ʩ����obj
	--sendmsg0(0,"�ͷ�ʱ��"..getint(shifazhe,"�������ʱ��"))
	if getint(shifazhe,"��������2���") == 40 then
		if os.time() ~= getint(shifazhe,"�������ʱ��") and os.time() - getint(shifazhe,"�������ʱ��") < 60 then
			return
		end
		if not hasbuff(actor,20061) then
			addbuff(actor,20061)
			sendmsg9(actor,shifazhename.."����ʹ����'�����'��ǰս������10%����30��")
			--XXX����ʹ����"�����"��ǰս������10%����60��
			--sendmsg6(shifazhe,"��������������buff")
		end
		setint(shifazhe,"�������ʱ��",os.time())
	end
end

function magselffunc2(actor) --���Լ���Ѫ  ����obj
	--sendmsg6(actor,"���Լ���Ѫ")
	delaygoto(actor,200,"zhiyushujiaxue")
end

function zhiyushujiaxue(actor)
	if getint(actor,"��������2���") == 37 and getint(actor,"�����˼�Ѫ") == 0 then
		if os.time() - getint(actor,"��������ʱ��") < 60 then
			return
		end
		if not hasbuff(actor,20059) then
			setontimer(actor,37,1,30) --1���Ѫ ����30��
			addbuff(actor,20059)
			--sendmsg6(actor,"���Լ���Ѫ")
		end
	end
	setint(actor,"�����˼�Ѫ",0)
end

function magtagfuncex2(actor,id,shifazhename) --�����˼�Ѫ  Ŀ��obj������id��ʩ����name
	local shifazhe = getplayerbyname(shifazhename) --ʩ����obj
	setint(shifazhe,"�����˼�Ѫ",1)
	if getint(shifazhe,"��������2���") == 37 then
		if not hasbuff(actor,20059) then
			setontimer(actor,37,1,30) --1���Ѫ ����30��
			addbuff(actor,20059)
			--sendmsg6(shifazhe,"�����˼�Ѫ")
		end
	end
end

function ontimer37(actor) --ÿ�붨ʱ�� ���� ����������37 1���Ѫ2% ����30��
	local maxhp = getbaseinfo(actor,10)
	local addhp = math.floor(maxhp*0.02) --��Ѫ��
	humanhp(actor,"+",addhp,1000)
	--sendmsg6(actor,"������Ѫ1% ")
end

local shenshou_t = {["����"]=1,["����֮��"]=1,["����ţ��"]=1,}
function magselffunc30(actor) --�ٻ�����
	--sendmsg6(actor,"�ٻ����޴���")
	local bb_t = getbaobaolist(actor) --�����б�
	local shenshousl = 0
	for i = 1,#bb_t do
		if shenshou_t[getname(bb_t[i])] == 1 then
			shenshousl = shenshousl + 1
		end
	end
	--sendmsg6(actor,"��������"..shenshousl)
	local zuidashu = 1
	if getint(actor,"��������2���") == 42 and getskilllevel(actor,getskillidbyname("�ٻ�����")) == 4 then
		zuidashu = 2
	end
	local level = getlevel(actor) --����ȼ�
	local chasl = zuidashu - shenshousl
	for i = 1,chasl do
		if level >= 60 then
			callscriptex(actor, "RECALLMOB", "����ţ��", 3,99999,0,0,0,0)
		elseif level >= 50 then
			callscriptex(actor, "RECALLMOB", "����֮��", 3,99999,0,0,0,0)
		else
			callscriptex(actor, "RECALLMOB", "����", 3,99999,0,0,0,0)
		end
	end
end
--��ȡ��������
function slavebb(actor,mon)
	local name = getname(mon)
	if shenshou_t[name] then
		changemobability(actor,mon,5,"+",math.floor(getbaseinfo(actor,24)*0.3),99999)
		changemobability(actor,mon,6,"+",math.floor(getbaseinfo(actor,24)*0.3),99999)
		--sendmsg6(actor,"����������")
	end
	setbbsudu(actor)
end

function setbbsudu(actor)
	local bb_t = getbaobaolist(actor) --�����б�
	local renwubbsudu = getbaseinfo(actor,51,206) --�����ٶ�
	local yidongsudu = 0
	if getint(actor,"��������2���") == 45 then
		renwubbsudu = renwubbsudu + 2
		yidongsudu = yidongsudu + 40
	end

	for i = 1,#bb_t do
		--changemobability(actor,bb_t[i],14,"=",0,1,0) --�����ٶ�
		changemobability(actor,bb_t[i],13,"=",renwubbsudu*10,99999) --�ƶ��ٶ�
		changemobability(actor,bb_t[i],14,"=",renwubbsudu*10,99999) --�����ٶ�
		--sendmsg6(actor,"�����ٶ�����")
	end
end

--������������
function slaveupgrade(actor,mon)
	if getname(mon) == "����֮��" or getname(mon) == "����ţ��" then
		changemobability(actor,mon,11,"+",440,99999)
		changemobability(actor,mon,1,"+",10,99999)
		changemobability(actor,mon,2,"+",10,99999)
		changemobability(actor,mon,3,"+",10,99999)
		changemobability(actor,mon,4,"+",10,99999)
	end
end


function magselffunc50(actor) --�޼�����
	--sendmsg6(actor,"�޼���������")
	local jiennglv = getskillinfo(actor,getskillidbyname("�޼�����"),1) 
	--sendmsg6(actor,"�޼��������ܵȼ�"..jiennglv)
	local bili = 0.05
	local shijian = 30
	if jiennglv == 1 then
		bili = 0.1
	elseif jiennglv == 2 then
		bili = 0.2
	elseif jiennglv == 3 then
		bili = 0.3
	elseif jiennglv == 4 then
		bili = 0.4
		shijian = 35
	end
	local daoshu = getbaseinfo(actor,24) --�������
	local addds = math.floor(daoshu * bili)
	
	addbuff(actor,10068,shijian,1,actor,{[8]=addds})
	callscriptex(actor, "sendmsg", 6,"��������"..addds.."�� ʱ��"..shijian.."��")
	--sendmsg6(shifazhe,"��������"..addds.."�� ʱ��15��","#024502")
	setint(actor,"�޼�����ʱ��",os.time())
end

function magtagfuncex6(actor,id,shifazhename) --�����˼�ʩ����  Ŀ��obj������id��ʩ����name
	local shifazhe = getplayerbyname(shifazhename) --ʩ����obj
	--sendmsg6(shifazhe,"ʩ����")
	if getint(shifazhe,"��������2���") == 43 and not hasbuff(actor,10052) then
		setontimer(actor,43,1,0) --1���Ѫ6��
	end
	
end


function ontimer43(actor) --ÿ�붨ʱ�� ���� ����������43 ʩ����ÿ����6��Ѫ
	if callcheckscriptex(actor,"checkHumanState",11) then --�ж�״̬
		humanhp(actor,"-",6,1000)
		--sendmsg6(actor,"������Ѫ6�� ")
	else
		setofftimer(actor, 43)
	end
end

function ontimer36(actor) --ÿ�붨ʱ�� ���� ��������3���36 1���Ѫ2% ����10��
	local maxhp = getbaseinfo(actor,10)
	local addhp = math.floor(maxhp*0.02) --��Ѫ��
	humanhp(actor,"-",addhp,1000)
	sendmsg6(actor,"������Ѫ2% ")
end