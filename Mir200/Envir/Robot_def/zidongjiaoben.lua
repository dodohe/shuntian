--����ɽׯ�
function auto_wolongshanzhuang()
	setsysstr("Ѻ�ڳɹ��л�","")
	if getsysint("��������") > 0 then
		genmon("wlsz",69,52,"ɽׯ����",0,1,249)
		sendmsg(nil, 2, '{"Msg":"������<����ɽׯ/FCOLOR=249>���������ػ�ѿ�������ɱ<ɽׯ����/FCOLOR=250>�ɻ�÷����...........","FColor":251,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"200"}')
		sendmsg(nil, 2, '{"Msg":"������<����ɽׯ/FCOLOR=249>���������ػ�ѿ�������ɱ<ɽׯ����/FCOLOR=250>�ɻ�÷����...........","FColor":251,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"250"}')
		sendmsg(nil, 2, '{"Msg":"������<����ɽׯ/FCOLOR=249>���������ػ�ѿ�������ɱ<ɽׯ����/FCOLOR=250>�ɻ�÷����...........","FColor":251,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"300"}')		
	end
	------Ѻ������
end

function auto_wolongjiesu() --����ɽׯ����ɱ����
	local guai_t = getobjectinmap("wlsz",120,120,200,2)
	for i = 1,#guai_t do
		local name = getbaseinfo(guai_t[i],1,1) --������
		if name == "��������" then
			killmonbyobj(0,guai_t[i],false,false,false)
		end
	end
end


function jisha_shijieboss(actor)
	mapmove(actor,"3",354,339,5)
	delbutton(actor,107,98)
end

function close_shijieboss(actor)
	delbutton(actor,107,98)
end

-----���Ƕ�
function gongchengstart()
	local kaiquday = getkaiquday()
	if kaiquday < 3 or getsysint("��������") == 0 then
		return
	end
	if castleinfo(5) then --����״̬��
		return
	end
	
	addattacksabakall()
	gmexecute(0,"gongcheng")
	if getsysint("�״ι���") == 0 then
		setsysint("ɳ�ǽ���Ԫ��",50000)
		setsysint("�״ι���",1)
	else
		setsysint("ɳ�ǽ���Ԫ��",0)
	end
end
----���������
function auto_qxt_kaijiang() --���������� �����������
	local data = {}
	local data_str = getsysstr("������ͶƱ����")
	if data_str ~= "" then
		data=json2tbl(data_str)
	end
	if #data == 0 then
		if getsysstr("�������������") ~= "" then
			local zhongjiangzhe = getsysstr("�������������")
			sendmail("#"..zhongjiangzhe,1,"ϵͳ","������������ҽ���","����#2")
			sendmsg0(grobalinfo(0),"��ϲ���[".. zhongjiangzhe .."]��Ϊ������ң������ܹٷ����ڵĴ���������")
		end
		return
	end
	local zhongjiangdengji = 45 --�н��ȼ�����
	if getsysint("��������") >= 3 then
		zhongjiangdengji = 65
	elseif getsysint("��������") >= 2 then
		zhongjiangdengji = 60
	elseif getsysint("��������") >= 1 then
		zhongjiangdengji = 55
	end
	local t = {}
	for i = 1,#data do
		if data[i].level >= zhongjiangdengji then
			table.insert(t,data[i])
		end
	end
	if #t == 0 then
		t = data
	end
	local zhongjiangzhe = t[math.random(1,#t)].name
	setsysstr("�������������",zhongjiangzhe)
	sendmail("#"..zhongjiangzhe,1,"ϵͳ","������������ҽ���","����#2")
	sendmsg0(grobalinfo(0),"��ϲ���[".. zhongjiangzhe .."]��Ϊ������ң������ܹٷ����ڵĴ���������")
	setsysstr("������ͶƱ����","")
end

function auto_qxt_fajiang() --���������� �����������
	local name = getsysstr("�������������")
	if name == "" then
		return
	end
	local goldnum = getsysint("���������˽���") --���ؽ��
	local jiangligold = goldnum --�������
	if jiangligold > 0 then
		sendmail("#"..name,1,"ϵͳ","������������ҽ����������","�󶨽��#"..jiangligold)
		setsysint("���������˽���",0)
	end
end

local wjly_sgt={
	{"wjly","��ħ֩��4",40,255},
	{"wjly","��β�ں���",40,250},
	{"wjly","�����غ���",40,250},
	{"wjly","��צ�����",40,250},
	{"wjly","ħ��ս��",40,250},
	{"wjly","ħ���޶�",40,250},
	{"wjly","ħ����ʿ",40,250},
	{"wjly","���֮��",1,249},
	{"wjly","��ħڤ��̸�",1,249},
	{"wjly","Զ������̸�",1,249},
	{"wjly","����ۻ�",1,249},
	{"wjly","������",1,249},
	{"wjly","Զ��˫ͷ���",1,249},
	{"wjly","Զ��˫ͷѪħ",1,249},
	{"wjly","Զ�ų��¶�ħ",1,249},
	{"wjly","��֮ħ������",1,249},
	{"wjly","��������4",1,249},
	{"wjly","����ׯ��4",1,249},
}
------�޼�����������Ч
function auto_wjly_kaiqi() --�޼�����������Ч
	if getkaiquday() < 2 then
		return
	end
	mapeffect(11,"11",174,334,2207,3600,0)
	genmon("11",174,334,"��ʬ1",0,1,255)
	--sendmsg0(grobalinfo(0),"��ʾ��ͨ���޼������Ķ����Ѿ��򿪣�����1Сʱ��رգ�����")
	--sendmsg0(grobalinfo(0),"��ʾ��ͨ���޼������Ķ����Ѿ��򿪣�����1Сʱ��رգ�����")
	--sendmsg0(grobalinfo(0),"��ʾ��ͨ���޼������Ķ����Ѿ��򿪣�����1Сʱ��رգ�����")
	for i = 1,#wjly_sgt do
		local sl = checkrangemoncount('wjly',wjly_sgt[i][2],100,100,100) --�Ѿ��е�����
		--sendmsg0(0,wjly_sgt[i][2]..sl)
		local shuasl = wjly_sgt[i][3] - sl
		if shuasl > 0 then
			genmon('wjly',100,100,wjly_sgt[i][2],100,shuasl,wjly_sgt[i][4])
		end
	end
	
	sendmsg(actor,2,'{"Msg":"������<�������ŵ��޼�������/FCOLOR=250>�����Ѵ򿪣�����<����BOSS/FCOLOR=250>��ˢ�£�60���Ӻ�ر�....","FColor":251,"BColor":0,"Type":5,"Y":100}')
	sendmsg(actor,2,'{"Msg":"������<�������ŵ��޼�������/FCOLOR=250>�����Ѵ򿪣�����<����BOSS/FCOLOR=250>��ˢ�£�60���Ӻ�ر�....","FColor":251,"BColor":0,"Type":5,"Y":150}')
	sendmsg(actor,2,'{"Msg":"������<�������ŵ��޼�������/FCOLOR=250>�����Ѵ򿪣�����<����BOSS/FCOLOR=250>��ˢ�£�60���Ӻ�ر�....","FColor":251,"BColor":0,"Type":5,"Y":200}')
end

------��֮�þ��л���������
function auto_mzhj_qiehuan()
	local t = {1,2,3,4,5} --��ľˮ����
	local old1 = getsysint("��֮�þ���ͼ����")
	--local old2 = getsysint("����ɽׯ��ͼ����")
	for i = #t,1,-1 do
		if t[i] == old1 then
			table.remove(t,i)
		end
	end
	--sendmsg0(0,tbl2json(t))
	local shuxingid = t[math.random(1,#t)]
	setsysint("��֮�þ���ͼ����",shuxingid)
	setsysint("����ɽׯ��ͼ����",shuxingid)
	--sendmsg0(0,"��֮�þ� ".. getsysint("��֮�þ���ͼ����").."  ����ɽׯ "..getsysint("����ɽׯ��ͼ����") )
end

------��������
function auto_touwangqingli()
	setsysint("��������",0)
	setsysint("����666��ȡ",0)
	setsysint("��������������ȡ",0)
	setsysint("����ɳ�ϴ���ȡ",0)
end

local diaoluoxilie = {
	"ǿ��ϵ��","���������·�ϵ��","S1����ϵ��","S1����ϵ��","S1�·�ϵ��","S1����ϵ��","S2ϵ��","S2����ϵ��","S2�·�ϵ��","S2����ϵ��","S3ϵ��","S3����ϵ��","S3�·�ϵ��","S3����ϵ��","S4ϵ��","S4����ϵ��","S4�·�ϵ��","S5ϵ��","S5�·�ϵ��",
	"S6ϵ��","S6�·�ϵ��","S7ϵ��","S7�·�ϵ��","12�����","50�����","�޻군","��ҳ","���ʯ","����֮Ѫ","����","ׯ������","�ۺ�֮��","������ʯ","����ˮ��","ħ��֮Ѫ","����ƾ֤",
	}
	
local tongjibiaoti = {
	"�������ĵ�Ԫ��","�������ĵ�Ԫ��","��ҩ���ĵ�Ԫ��","���������ĵ�Ԫ��","�������ĵ�Ԫ��","�ҵ��Ĵ���","ϴ�����������ĵ�Ԫ��","ϴ��������Ĵ���","�����������ĵ�Ԫ��",
	"�����ͷ���ĵ�Ԫ��","������������ĸ���","�����󻨷ѵ�Ԫ��","������ˮ���󻨷ѵ�Ԫ��","������ʦ���ĵ�Ԫ��","��Ѹ�����Ҷһ���Ԫ��",
	"����Ͷ������ĸ���","����Ͷ�ʴ�ʹ�ĸ���","����Ͷ�ʴ��˵ĸ���","����Ͷ��ר�ҵĸ���","��ȡ�׳�ĸ���","�ںϵĴ���",
	"�ҵ�����ͳ��","�ҵ��������","�ҵ���ħ����","�ҵ�ţħ��","�ҵ����¶�ħ","�ҵ�ħ������","�ͽ����˳�ȡ�Ĵ���",
	"��ȡ�����","��ȡ������¯","��ȡ����������","��ȡ������","��ȡ���ؾ�","��ȡ�����","��ȡ����ӡ","��ȡ��ƿ",
	"��ȡ�����","��ȡ����֮ͫ","��ȡ������","��ȡ��Ԫ�����","��ȡ�׹���","��ȡ������","��ȡ���ӡ","��ȡ����",
	"����Ȫˮ��Ԫ��","��ʵ��ֵԪ��","��̨��ֵԪ��","�����ܿ�����Ԫ��","�ͷ�����","���ϲ���","���ز���","���ղ���","��Ŀ����"
	}
function auto_newday()
	--sendmsg0(0,"ÿ������")
	setsysstr("��ħ�����","")
	setsysint("��ħ����׵�",0)
	setsysstr("�����������","")
	setsysint("����������׵�",0)
	setsysstr("������õ���","")
	setsysint("������þ��׵�",0)
	setsysstr("�����̳����","")
	setsysint("�����̳���׵�",0)
	setsysstr("��Ȫ��Ԩ����","")
	setsysint("��Ȫ��Ԩ���׵�",0)
	setsysstr("Ǳ����Ԩ����","")
	setsysint("Ǳ����Ԩ���׵�",0)
	

	for i = 1,#diaoluoxilie do
		setsysint("ÿ�յ�������"..diaoluoxilie[i],0)
	end
	for i = 1,#tongjibiaoti do
		setsysint("ÿ��"..tongjibiaoti[i],0)
	end

end

function auto_xinquhuodong()
	if getsysint("����ʱ��") ~= 0 then
		if os.time() - getsysint("����ʱ��") >= 60*60 and getsysint("˳���ͱ��") == 0 then
			auto_shuntiansongbao() --˳���ͱ��
			setsysint("˳���ͱ��",1)
		end
		if os.time() - getsysint("����ʱ��") >= 60*60*4 and getsysint("���﹥�ǻ") == 0 then
			auto_guaiwugongcheng(1) --���﹥�ǻ
			setsysint("���﹥�ǻ",1)
		end
	end
end

function auto_shuntiansongbao() --˳���ͱ��
	genmon("3",360,347,"��ϲ����",1,1,253)
	local t=getplayerlst() --��������б�
	--callscriptex(0, "sendcentermsg", 251, 0, "����б�"..tbl2json(t) , 1 ,5 )
	local pyx = -320
	local pyy = -130
	local msg = ""
	msg = msg..'<Img|children={2,3,5,4,6}|x='..  14 + pyx ..'|y='..  40 + pyy ..'|width=160|height=100|esc=0|bg=1|move=1|scale9t=10|scale9r=10|scale9l=10|scale9b=10|img=zhangheng/281.png>'
	msg = msg..[[
	<RText|id=2|ax=0.5|x=79.0|y=7.0|rotate=0|color=255|size=18|outline=1|text=<˳���ͱ��ѿ���/FCOLOR=250>>
	<RText|id=3|ax=0.5|x=79.0|y=30.0|rotate=0|color=255|size=18|outline=1|text=<�Ƿ�ǰ����/FCOLOR=254>>
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
----���﹥��С��
local shuaxiaoguai = {
{"��ħ֩��",20},{"������ʿ[����]",15},{"�������[����]",15},{"���깭����[����]",15},{"��������",15},{"����ս��",15},{"������ʿ",15},{"ţħ����",15},{"ţħ��˾",15},{"ţħ��ʦ",15},
{"��ħ����",5},{"��Ȫ����",5},{"ţħ��",5},{"˫ͷ���",5},{"˫ͷѪħ",5},{"�������",5},{"����̻�",1},{"ʯĹ�̻�",1},{"�Ϲź�ħ����",1},{"�������",1},{"�ϹŻ�Ȫ����",1},{"�Ϲ�ţħ��",1},
}
local chou1zhi = {"�����ػ���4","���֮��4","�ز�ħ��4","аħͳ˧4","�̻�����4","�Ϲ�����4","������4","�귨�й�4","ͨ�����4","����֮��4","��˿����4","����4","��������4","����ׯ��4"}
local gwgc_dt = {
	{"0",329,268},{"5",141,334},{"11",177,326},{"4",242,201},{"6",124,154}
}
function auto_guaiwugongcheng(par) --���﹥�ǻ
	local chou4zhi = {"���֮��4","����ħ��4","��ħڤ��̸�4","Զ������̸�4","����ۻ�4","������4","Զ��˫ͷ���4","Զ��˫ͷѪħ4"}
	if par ~= 1 then --���������
		if getkaiquday() < 2 then
			return
		end
	end
	local ditu_t = gwgc_dt[math.random(1,#gwgc_dt)] --Ҫ���ǵĵ�ͼ
	--sendmsg0(0,"ˢ�µ�ͼ "..ditu_t[1])
	local t=getplayerlst() --��������б�
	if #t == 0 then
		return
	end
	setsysstr("���﹥�ǵ�ͼ",tostring(ditu_t[1]))
	setsysstr("���﹥��x",tostring(ditu_t[2]))
	setsysstr("���﹥��y",tostring(ditu_t[3]))
	for i = 1,#shuaxiaoguai do
		setsysstr("���﹥������",tostring(shuaxiaoguai[i][2]))
		setsysstr("���﹥������",tostring(shuaxiaoguai[i][1]))
		setsysstr("���﹥�Ƿ�Χ","100")
		if shuaxiaoguai[i][2] >=15 then
			setsysstr("���﹥����ɫ","255")
		elseif shuaxiaoguai[i][2] ==5 then
			setsysstr("���﹥����ɫ","250")
		elseif shuaxiaoguai[i][2] ==1 then
			setsysstr("���﹥����ɫ","249")
		end
		callscript(t[1], '���﹥��','@ˢС��')
		--sendmsg0(0,"ˢ�����")
	end
	setsysstr("���﹥������","1")
	setsysstr("���﹥������",chou1zhi[math.random(1,#chou1zhi)])
	setsysstr("���﹥�Ƿ�Χ","10")
	setsysstr("���﹥����ɫ","249")
	callscript(t[1], '���﹥��','@ˢС��')
	
	for i = 1,4 do
		local id = math.random(1,#chou4zhi)
		setsysstr("���﹥������","1")
		setsysstr("���﹥������",chou4zhi[id])
		setsysstr("���﹥�Ƿ�Χ","20")
		setsysstr("���﹥����ɫ","249")
		callscript(t[1], '���﹥��','@ˢС��')
		table.remove(chou4zhi,id)
	end
	
	local t=getplayerlst() --��������б�
	--callscriptex(0, "sendcentermsg", 251, 0, "����б�"..tbl2json(t) , 1 ,5 )
	local pyx = -320
	local pyy = -130
	local msg = ""
	msg = msg..'<Img|children={2,3,5,4,6}|x='..  14 + pyx ..'|y='..  40 + pyy ..'|width=160|height=100|esc=0|bg=1|move=1|scale9t=10|scale9r=10|scale9l=10|scale9b=10|img=zhangheng/281.png>'
	msg = msg..[[
	<RText|id=2|ax=0.5|x=79.0|y=7.0|rotate=0|color=255|size=18|outline=1|text=<���﹥���ѿ���/FCOLOR=250>>
	<RText|id=3|ax=0.5|x=79.0|y=30.0|rotate=0|color=255|size=18|outline=1|text=<�Ƿ�ǰ����/FCOLOR=254>>
	<COUNTDOWN|ax=0.5|id=5|x=78.0|y=60.0|time=30|count=1|size=16|outline=1|color=250|link=@close_shijieboss>
	<Button|id=6|x=101.0|y=58.0|width=50|height=30|rotate=0|outline=1|color=255|size=18|nimg=zhangheng/71.png|text=��|link=@close_shijieboss>
	]]
	msg = msg..'<Button|id=4|x=8.0|y=58.0|width=50|height=30|color=255|outline=1|nimg=zhangheng/71.png|size=18|text=��|link=@guaiwu_goto,'.. ditu_t[1] ..','..ditu_t[2] ..','..ditu_t[3] ..'>'
    for k,v in ipairs(t) do
		if getmap(v) ~= "tuoji" and getmap(v) ~= "waigua" then
			addbutton(v,107,98,msg)
		end
    end
end

function guaiwu_goto(actor,mapid,x,y)
	x = tonumber(x)
	y = tonumber(y)
	mapmove(actor,mapid,x,y,5)
	delbutton(actor,107,98)
end

function auto_quanshuihuodong()
	if getsysint("��������") == 0 then
		return
	end
	
	local guai_t = genmon("3",354,337,"Ȫ��",1,1,253)
	local mon = guai_t[1]
	if mon then
		setcurrent(mon,"9",tostring(os.time())) --���ó���ʱ�䣬1��Сʱû�˲ɾ���ʧ
		setcurrent(mon,"8",tostring(20)) --�ɲɼ�����
	end
	
	local t=getplayerlst() --��������б�
	--callscriptex(0, "sendcentermsg", 251, 0, "����б�"..tbl2json(t) , 1 ,5 )
	local pyx = -320
	local pyy = -130
	local msg = ""
	msg = msg..'<Img|children={2,3,5,4,6}|x='..  14 + pyx ..'|y='..  40 + pyy ..'|width=160|height=100|esc=0|bg=1|move=1|scale9t=10|scale9r=10|scale9l=10|scale9b=10|img=zhangheng/281.png>'
	msg = msg..[[
	<RText|id=2|ax=0.5|x=79.0|y=7.0|rotate=0|color=255|size=18|outline=1|text=<Ȫ����ˢ��/FCOLOR=250>>
	<RText|id=3|ax=0.5|x=79.0|y=30.0|rotate=0|color=255|size=18|outline=1|text=<�Ƿ�ǰ����/FCOLOR=254>>
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

function auto_gonggao()
	sendmsg(actor,2,'{"Msg":"�緢��ͨ������ڮ�� �յ� ��ƭ ����ȥ��������������� һ����ʵ �ٱ��߿ɻ�ñ��ٱ�������50%�Ļ��� ","FColor":251,"BColor":0,"Type":5,"Y":0}')

end

function auto_gonggao1()
	sendmsg(actor,2,'{"Msg":"��Զ���ű���Ⱥ����ɢ��boss����Ϊ�Լ���ɳ��Ϊ ϣ�������ӻԾ�ٱ� һ����ʵ ȫ�����÷��","FColor":251,"BColor":0,"Type":5,"Y":0}')

end
