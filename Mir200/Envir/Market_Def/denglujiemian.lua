
require("Envir/Market_Def/huishou.lua") --���ս���
---------------------------------------------
local sh_jieshao_t = {
	["����"]="������ʱ��1%�ĸ�����ȫ�������������˺���50%",
	["��ħ��"]="����ÿ��ɱ100ֻ���������1�㹥ħ�� ��߿ɼ�5�� ������0",
	["�����嵨"]="���ͬ��ͼ����¶���Թ��˺�����5%",
	["��ѡ֮��"]="������Ĵ���ʱ��������5�㹥ħ��",
	["��ˮ"]="�ȼ�����55����������������2%",
	["����"]="�ȼ�����50�������˺�����������10%",
	["����"]="�������������״̬��,�ܵ��˺�����5%",
	["���ϼ���"]="���ж�Ŀ����������˺�����3%",
	["����"]="��������ҹ���ʱ�˺�����3%",
	["ǿ�ߺ�ǿ"]="��һ��Ѫ���Ϲ���ֱ������ʶ�������3%",
	["��ǵ���"]="�����Խ�ɫ��ɶ����˺�����3%",
	["����"]="��ɱһֻ5��Ѫ���ϵĹ����������2��������.��߿ɵ���6��.С��������ʧ",
	["����"]="����ÿ��һ������ ���ձ�������2%  ��߿ɵ���5��",
	["��ľ�괺"]="ʹ��ҩƷ�������ҩƷ��Ч����10%",
	["ǿ��"]="�������ҽ����5%�����˺�",
	["���ƺ쳾"]="��Ů����ҹ���ʱ�˺�����3%",
	["�ٻ�"]="����ʱ��2%�ĸ���ʹ����������Ŀ��4��", --�������ּ��ʸߵ�
	["����"]="�ܵ����Թ�����˺�����10%",
	["����"]="ÿɱ��һֻ����ָ�����5��Ѫ��",
	["��ħ"]="����ʱ����1%�����������ħ��ֵ�Ե������1.5�˺�",
	["������"]="����ʱ����Ŀ��10%��ҩƷ��Ч ����ʮ��",
	["����֮ʦ"]="����Ϊ�л��Աʱ��ħ������3-3˫������3-3",
	["�Ի���"]="�Ե�������5���������5%�ĸ���ʹ������2��.�޷�����",
	["ͬ�ʹ���"]="���״̬�·���ͬ��ͼ���ɻ��5%���ʶ���ӳ�",
	["������Ȩ"]="���Լ�Ϊ�л�������ʱ��ħ��������2%",
	["����"]="����Ԫ��ÿ����10000 ����+1% ���ɵ���5%",
	["�ಲ����"]="�������·�ʱ����Ŀ�������Ŀ����������10%",
	["ǿ����"]="40���Ժ�ÿ��һ������1��HP",
	["���Ĵ���"]=	"���������Ĵ���ʱ�������öԹ�5%����Ч��",
	["�����е�"]="����������Ϊ0ʱ ��������6-6ȫ����",
	["������"]="װ��ÿ���8�Ƕ�����1-1��ħ��",
	["����֮��"]="���Լ���ɳ�Ϳ˳�Աʱ�����ǽ�����8%�����˺�",
	["���˼���"]="���������������ܱ����˺�����10%",
	["��������"]="45���Ժ�ÿ��3��.����ħ������+1",
	["�ƶ���"]="��þ����ƶ�������Ȩ ʹĿ����ս���15��˫������",
	["��۵糸"]="������Ѫ������80%.�����Լ�ʩ���ٶ�����1��",
	["�����ͽ"]="���ں���״̬ʱ�����˺�����5%",
	["����"]="����������ʱ,��������3%����.����ʱ��(6:00-17:59)",
	["�۱���"]="����ÿɱ��һ�����Ĵ��˽�����1%���ձ��� ��߿ɻ������ʮ��",
	["����"]="�ܵ�����ʱ��1%�ĸ��ʸ񵲱��������˺�",
	["����"]="ʹ������Ŀ���˺��񵲸��ʽ���3%",
	["�ɻ��"]="����ɻ�ƶ�����Ȩ ʹĿ����ս���12�㹥ħ������",
	["�������"]="ÿ��11-13�� ����������10%����ʱ��Ѫ������5%",
	["��������"]="����ҩƷ������8���Ż�",
	["��ҹ"]="����ҹ����ʱ,��������3%����.��ҹʱ��(18:00-5:59)",
	["��ǿ��ʤ"]="PKֵ����1000����1�㱩������ PKֵ����3000����2�㱩������ PKֵ����5000����3�㱩������",
	["�����ĭ"]="���״̬�� ����������5-5",
	["����ȡ��"]="��ְҵ�����Ե���100����������Թ��˺�5%",
	["�����"]="3%�ĸ��ʶ�ܹ�������ɵ��˺�",
	["Ϊ�����"]="�Ժ�����ҽ����8%�����˺�",
	["����"]="��ͬ�ȼ������1�������׷��3%�����˺�",
	["Խ��Խǿ"]="��ɫ����ÿ����һ���ܹ��˺�����1% ��߿ɵ���8��",
	["����"]="��һ��Ѫ���µĹ��ﱩ����������3%",
	["��ƶ���"]="����ÿ��2������ �����˺�����1% ��߿ɼ�3��",
	["�ȼ�ѹ��"]="�����Լ��ȼ�����ҹ����Լ�ʱ�����˺�����5%",
	["��ʯ���"]="������ɱ�� ������Ѫ������10% ����180��",
	["������"]="Ѫ������60% ��������˫��15-15",
	["����һ��"]="����Ѫ�����ֱ�Ӵ��5%��Ѫ��",
	["��֮�ػ�"]="���ܵ��Ĺ̶��˺�����30��",
	["�ٻ����"]="����ʱ��2%�ĸ����ٻ������ɱ�ְҵ����������50%�Ĺ̶��˺�",
	["���㷴ɱ"]="����Ŀ��ʱ��2%���ʻ���Ŀ��һ��նɱ5%Ѫ��",
	["һ������"]="���Լ�Ϊɳ�Ϳ˳���ʱ�����Զ�����10-12",
	["������"]="����ʱ���ʽ�����ħ��ֵ����,���ظ�����50%����ֵ",
	["����ն��"]="���ں���״̬,������5%���ع���.ÿնɱ1�����������ظ�30%Ѫ��",
	["ԽսԽ��"]="ÿ��ɱһ�����˽�����2%�����˺� ��߿ɵ���5�� �ɳ���120��",
	["��������"]="�ܵ�Ѫ������80%Ŀ�깥��ʱ.������ÿ�ι���������ʧ����Ѫ��1%",
	["�����ư�"]="���Լ�Ϊ���µ�һʱ����Ŀ��˫��20-20",
	["�߼�����"]="ʹ������Ŀ����˺����ʽ���10%",
	["��ά���"]="����ʱ���ʽ��͵ȼ�Ŀ�����3��",
	["ɳ�ǰ���"]="�ڹ���������,�����˺�����20%",
	["ɨ�ڳ���"]="�Ժ�����ҽ����15%�����˺�",
	["�Թ����"]="�ܹ��﹥��ʱ��2%�ļ��ʽ������5��",
	["��Ұ����"]="Ѫ������50%.���ܹ��﹥���˺�����25%",
	["���⾪ϲ"]="��ɱ�����Ĵ���ʱ ������100Ԫ������",
	["Ψ�Ҷ���"]="�ڹ���������,�˺�����10%",
	["����֮ŭ"]="�Լ������󱩻���������5%,����1200��",
	["��������"]="����HP����30%ʱ,���10%���ʵֵ����������˺�",
	["��������"]="���Լ����к��̶�ʱ,PK��������5%",
	["�г�ر�"]="ɱ���Լ��ĵ�����8���ڽ�ÿ����ʧ3%Ѫ��",
	["��ս֮��"]="�ܵ����﹥��ʱ.�ɻָ�����0.5%Ѫ��",
	["��ת����"]="�����ܵ����˺�8%����������",
	["���ֿ��"]="���������˺���������ֵ��30%�������ƵĹ�����˫�����㣬����5��",
	["��ղ���"]="���ƻ������״̬�±����﹥��ʱ�и��ʴ����޵�����",
	["���аԵ�"]="���˱�Ұ����ײ,���ܻ�,����������˽�ֹʹ������ҩƷ5��",
	["�������"]="PKֵ����15000�㹥ħ������15-15",
	["ְҵ����"]="�ԷǱ�ְҵ������10%�����˺�",
	["����֮��"]="�ͷ��ļ����ǻ���ʱ  Ŀ��ÿ����ʧ����ħ������15%�Ĺ̶��˺� ����ʮ�� ���ɵ���",
	["ͬ�����"]="������ְҵ���ʱ����Ŀ�����˼���.ħ�˼���",
	["����֮��"]="�ܵ����˹���ʱ ���˹����ٶ��Լ�ʩ���ٶȽ���10�㣬����10�룬CD30��",
	["���Ͳ���"]="������Ѫ��ÿ����10%,�����˺�����2% ����������2��",
	["�����ɸ�"]="60���Ժ�ÿ��һ�� ����1��������",
	["��ˮһս"]="������ʱ.�������hp����25%��������30%��������",
	["����֮��"]="ʹ���ļ����ս�������Ŀ��ʱ,Ŀ��3���ڽ�ֹʹ������ҩƷ,����30%���ʱ���������4��",
	["ת��ѹ��"]="Ŀ��ת��ȼ�ÿ���Լ�1����������2%���˺�",
	["����֮��"]="����ʱ��2%���ʴӶԷ���Ұ��ʧ3��",
	["ç��֮ŭ"]="8*8��Χ�ڵ���ʱ��������PK����10%",
	["״̬����"]="�������������״̬�� ���ܹ����˺�����30%",
	["��Ѫ֮��"]="ʹ���ļ���Ѫ����Ŀ�����︽����ǰѪ��2%�����˺�",
	["�Ƹ�����"]="����HP����12% ��ħ������5%",
	["���ٵ�־"]="�ȼ�����70��.�������﹥ħ������ħ��Ѫ��5%",
	["�ƺ��ͽ"]="����״̬�����״̬�¶Ե������110%���˺�.�����ܵ�105%���˺�",
}

local sh_yanse_t = {
--��ɫbuff
["������"]=70,["����һ��"]=70,["��֮�ػ�"]=70,["�ٻ����"]=70,["���㷴ɱ"]=70,["һ������"]=70,["������"]=70,["����ն��"]=70,
["ԽսԽ��"]=70,["��������"]=70,["�����ư�"]=70,["�߼�����"]=70,["��ά���"]=70,["ɳ�ǰ���"]=70,["ɨ�ڳ���"]=70,["�Թ����"]=70,["��Ұ����"]=70,
["���⾪ϲ"]=70,["Ψ�Ҷ���"]=70,["����֮ŭ"]=70,["��������"]=70,["��������"]=70,["�г�ر�"]=70,["��ս֮��"]=70,["��ת����"]=70,
--��ɫbuff
["���ֿ��"]=249,["��ղ���"]=249,["���аԵ�"]=249,["�������"]=249,["ְҵ����"]=249,["����֮��"]=249,["ͬ�����"]=249,["����֮��"]=249,["���Ͳ���"]=249,
["�����ɸ�"]=249,["��ˮһս"]=249,["����֮��"]=249,["ת��ѹ��"]=249,["����֮��"]=249,["ç��֮ŭ"]=249,["״̬����"]=249,["��Ѫ֮��"]=249,["�Ƹ�����"]=249,["���ٵ�־"]=249,["�ƺ��ͽ"]=249,
}


function addbuttons(actor)
	logojiemian(actor) --logo����
	guajianniu(actor) --�һ���ť
	zhujiemiananniu(actor) --�����水ť
	bagxianshi(actor) --������ʾ
	
	zhuangbeianniu(actor) --װ����ť
	shizhuangjiemian(actor) --ʱװ����
	baohujiemian(actor) --��������
	ditujiemian(actor) --��ͼ����
	jiuqizhishow(actor) --����ֵ��ʾ
	chongzhijiemian(actor) --��ֵ����
	jiaoyihangjiemian(actor) --�����н���
	zhuangtaijiemian(actor) --����״̬����
	shezhijiemian(actor) --���ý���
	fuhuocdxianshi(actor) --����CD��ʾ
	if getjob(actor) == 0 then --ֻ��սʿ��ʾ����ƶ���λ��ɱ��ť
		zhandoujiemian(actor) --ս������
	end
	hanghuihanhuaxiangguan()
end

-------------------------�лẰ�����
function hanghuihanhuaxiangguan(actor)
	delbutton(actor,11,1)
	
	if not getbaseinfo(actor,37) and tonumber(getconst(actor,"<$RANK>")) ~= 2 then --���ǻ᳤
		return
	end
	
	local msg = ""
	if getispc(actor) then --����
		if getint(actor,"�Զ��лẰ��") == 0 then
			msg =msg.."<Img|x=52|y=330|img=zh/300.png|link=@setzidonghanhua>"
		else
			msg =msg.."<Img|x=52|y=330|img=zh/301.png|link=@setzidonghanhua>"
		end
		msg =msg.."<RText|x=80|y=332|color=251|outline=2|size=18|text=�Զ��лẰ��>"
		msg =msg..[[<Img|x=199.0|y=327.0|img=zhangheng/139.png|esc=0>
		<Button|x=474.0|y=325.0|color=10051|size=18|nimg=zhangheng/13.png|submitInput=1|text=��������|link=@setneirong>
		]]
		msg=msg..'<Input|x=201.0|y=328.0|width=260|height=30|size=16|type=0|inputid=1|color=255|place='.. getstr(actor,"�Զ���������") ..'>'
	else
		if getint(actor,"�Զ��лẰ��") == 0 then
			msg =msg.."<Img|x=52|y=380|img=zh/300.png|link=@setzidonghanhua>"
		else
			msg =msg.."<Img|x=52|y=380|img=zh/301.png|link=@setzidonghanhua>"
		end
		msg =msg.."<RText|x=80|y=380|color=251|outline=2|size=18|text=�Զ��лẰ��>"
		msg =msg..[[
		<Img|x=199.0|y=377.0|img=zhangheng/139.png|esc=0>
		<Button|x=474.0|y=375.0|color=10051|size=18|nimg=zhangheng/13.png|submitInput=1|text=��������|link=@setneirong>
		]]
		msg=msg..'<Input|x=201.0|y=378.0|width=260|height=30|size=16|type=0|inputid=1|color=255|place='.. getstr(actor,"�Զ���������") ..'>'
	end
	addbutton(actor,11,1,msg)
end

function setzidonghanhua(actor)
	if getint(actor,"�Զ��лẰ��") == 0 then
		setint(actor,"�Զ��лẰ��",1)
	else
		setint(actor,"�Զ��лẰ��",0)
	end
	hanghuihanhuaxiangguan(actor)
end

function setneirong(actor)
	local str = getconst(actor,'<$NPCINPUT(1)>')
	setstr(actor,"�Զ���������",str)
	sendmsg9(actor,"���óɹ�")
	hanghuihanhuaxiangguan(actor)
end
------------------------

function fuhuocdxianshi(actor) --����CD��ʾ
	delbutton(actor,103,33)
	local fuhuocd = getint(actor,"����CD")
	if fuhuocd > 0 then
		local fuhuojilv = getint(actor,"�����")
		local fuhuotime = getint(actor,"����ʱ��")
		if getispc(actor) then--------����
			if os.time() - fuhuotime >= fuhuocd then
				str = '<Text|x=188|y=-175|size=12|color=250|outline=1|text=����CD���Ѿ���>'
			else
				str = '<Text|x=188|y=-175|size=12|color=250|outline=1|text=����CD��'.. fuhuocd - (os.time() - fuhuotime) ..'��>'
			end
			addbutton(actor,103,33,str)
		else --����
			if os.time() - fuhuotime >= fuhuocd then
				str = '<Text|x=28|y=-25|size=16|color=250|outline=1|text=����CD���Ѿ���>'
			else
				str = '<Text|x=28|y=-25|size=16|color=250|outline=1|text=����CD��'.. fuhuocd - (os.time() - fuhuotime) ..'��>'
			end
			addbutton(actor,103,33,str)
		end	
	end
end

function shezhijiemian(actor) --���ý���
	delbutton(actor,22,1)
	local msg = ""
	if getispc(actor) then --����
		if getint(actor,"�һ��Զ����") == 0 then
			msg =msg.."<Img|x=482|y=269|img=zh/300.png|link=@setzidongsuiji>"
		else
			msg =msg.."<Img|x=482|y=269|img=zh/301.png|link=@setzidongsuiji>"
		end
		msg =msg.."<RText|x=520|y=268|color=251|outline=2|size=12|text=�һ�״̬1����>"
		msg =msg.."<RText|x=520|y=282|color=251|outline=2|size=12|text=�޹��Զ����>"
	else
		if getint(actor,"�һ��Զ����") == 0 then
			msg =msg.."<Img|x=200|y=282|img=zh/300.png|link=@setzidongsuiji>"
		else
			msg =msg.."<Img|x=200|y=282|img=zh/301.png|link=@setzidongsuiji>"
		end
		msg =msg.."<RText|x=250|y=282|color=251|outline=2|size=16|text=�һ�״̬1�����޹��Զ����>"
	end
	addbutton(actor,22,1,msg)
end

function setzidongsuiji(actor)
	if getint(actor,"�һ��Զ����") == 0 then
		setint(actor,"�һ��Զ����",1)
	else
		setint(actor,"�һ��Զ����",0)
	end
	return shezhijiemian(actor)
end

function zhandoujiemian(actor) --ս������
	
	local msg = ""
	if getispc(actor) then --����
	else
		delbutton(actor,21,1)
		if getint(actor,"��ʾ��λ��ť") == 0 then
			msg =msg.."<Img|x=540|y=312|img=zh/300.png|link=@setzixianshigewei>"
		else
			msg =msg.."<Img|x=540|y=312|img=zh/301.png|link=@setzixianshigewei>"
		end
		msg =msg.."<RText|x=589|y=302|color=251|outline=2|size=16|text=��ʾ�ƶ���λ>"
		msg =msg.."<RText|x=589|y=322|color=251|outline=2|size=16|text=��ɱ��㰴ť>"
		
		if getint(actor,"�ƶ���λ�ѿ���") == 0 then
			msg =msg.."<Img|x=540|y=353|img=zh/300.png>"
		else
			msg =msg.."<Img|x=540|y=353|img=zh/301.png>"
		end
		msg =msg.."<Layout|x=541.0|y=356.0|width=145|height=24|link=@yidonggeweikongzhi>"
		addbutton(actor,21,1,msg)
		delbutton(actor,104,4)
		if getint(actor,"��ʾ��λ��ť") == 1 then
			if getint(actor,"�ƶ���λ�ѿ���") == 1 then
				msg = msg..'<Button|x=-303|y=-335|mimg=private/main/bottom/1900013011.png|color=255|nimg=zhangheng/311.png|link=@yidonggeweikongzhi>' --��λ��ɱ��ť
			else
				msg = msg..'<Button|x=-303|y=-335|mimg=private/main/bottom/1900013011.png|grey=1|color=255|nimg=zhangheng/311.png|link=@yidonggeweikongzhi>' --��λ��ɱ��ť
			end
		end
		addbutton(actor,104,4,msg)
	end
end

function yidonggeweikongzhi(actor)
	if getint(actor,"�ƶ���λ�ѿ���") == 1 then
		setint(actor,"�ƶ���λ�ѿ���",0)
		sendluamsg(actor, 105, 0, 0, 0, "0")
	else
		setint(actor,"�ƶ���λ�ѿ���",1)
		sendluamsg(actor, 105, 0, 0, 0, "1")
	end
	return zhandoujiemian(actor)
end

function setzixianshigewei(actor)
	if getint(actor,"��ʾ��λ��ť") == 0 then
		setint(actor,"��ʾ��λ��ť",1)
	else
		setint(actor,"��ʾ��λ��ť",0)
	end
	return zhandoujiemian(actor)
end

-----------------------

function ditujiemian(actor)
	--sendmsg9(actor,"�����ͼ����")
	delbutton(actor,8,1)
	local kechuansong = false
	local cszcs = 0 --ÿ���ܵĿɴ��ʹ���
	if getbaseinfo(actor,39) >= 10 then -- 10��ת����20��
		cszcs = cszcs + 20
	end
	if getint(actor,"��������3���")==27 then
		cszcs = cszcs + 50
	end
	
	if getint(actor,"��������3���")==28 then
		cszcs = cszcs + 25
	end
	if getdayint(actor,"ÿ�մ��ʹ���") < cszcs then
		kechuansong = true
	end
	
	if getbaseinfo(actor,39) < 10 then
		kechuansong = false
		setint(actor,"�Ƿ���",0)
	end
	
	local msg = ""
	if kechuansong then --���Դ�������ʾ
		if getispc(actor) then --����
			if getint(actor,"�Ƿ���") == 0 then
				msg =msg.."<Img|x=90.5|y=397.5|img=zh/77.png|link=@setchuansong>"
			else
				msg =msg.."<Img|x=90.5|y=397.5|img=zh/78.png|link=@setchuansong>"
			end
			msg =msg.."<RText|ax=0.5|ay=0.5|x=200.5|y=412.5|color=251|outline=2|size=16|text=ÿ�տɴ��ʹ��� <".. getdayint(actor,"ÿ�մ��ʹ���") .."/FCOLOR=250>/".. cszcs ..">"
		else
			if getint(actor,"�Ƿ���") == 0 then
				msg =msg.."<Img|x=10.5|y=445.5|img=zh/77.png|link=@setchuansong>"
			else
				msg =msg.."<Img|x=10.5|y=445.5|img=zh/78.png|link=@setchuansong>"
			end
			msg =msg.."<RText|ax=0.5|ay=0.5|x=130.5|y=460.5|color=251|outline=2|size=18|text=ÿ�տɴ��ʹ��� <".. getdayint(actor,"ÿ�մ��ʹ���") .."/FCOLOR=250>/".. cszcs ..">"
		end
	end
	if getispc(actor) then --����
	else
		msg = msg..'<Button|width=120|x=575|y=445|color=251|nimg=zh/20.png|outline=1|text=ʹ�����|link=@xiaoditusuiji>'
	end
	addbutton(actor,8,1,msg)
end

function setchuansong(actor)
	if getint(actor,"�Ƿ���") == 0 then
		setint(actor,"�Ƿ���",1)
	else
		setint(actor,"�Ƿ���",0)
	end
	return ditujiemian(actor)
end

function xiaoditusuiji(actor)
	if itemcount(actor,"�������ʯ") > 0 then
		eatitem(actor,"�������ʯ",1)
		return
	elseif itemcount(actor,"�������ʯ") > 0 then
		eatitem(actor,"�������ʯ",1)
		return
	end
	sendmsg9(actor,"û���������ʯ")
end

function baohujiemian(actor) --��������
	delbutton(actor,303 ,1)
	local msg = ""
	setplaydef(actor,"N51",getint(actor,"�����ָ��ٷֱ�"))
	setplaydef(actor,"N52",getint(actor,"�����ָ��ٷֱ�"))
	if getispc(actor) then --����
		msg = "<Img|x=0|y=225|img=zhangheng/235.png|esc=0>"
		msg = msg.."<RText|x=10.0|y=362.0|color=255|size=16|outline=1|text=��ʾ:<�������Զ���Ѫ�ٷֱ�,�ٵ��ǰ�湴ѡ����/FCOLOR=254> <�洢��Ϊ0ʱ,��ǰ������ҩ�깺��/FCOLOR=250>>"
		
		---��
		msg = msg .."<Text|ax=0.5|ay=0.5|x=120.5|y=247.5|size=16|outline=1|color=255|text=����ֵ����$STM(SLIDERV_N51)% �Զ��ָ�>"
		--msg = msg .."<RText|ax=0.5|ay=0.5|x=120.5|y=247.5|size=16|outline=1|color=255|text=����ֵ����<".. getint(actor,"�����ָ��ٷֱ�") .."%/FCOLOR=31> �Զ��ָ�>"
		msg = msg .."<Slider|sliderid=N51|x=47.0|y=265.0|width=150|height=14|defvalue=".. getint(actor,"�����ָ��ٷֱ�") .."|bgimg=public/bg_szjm_01.png|barimg=public/bg_szjm_02.png|ballimg=public/bg_szjm_02_1.png|link=@lagan,1>"				
		if getint(actor,"�����Զ��ָ�") == 0 then
			msg = msg .."<Img|x=244.0|y=258.0|img=zh/77.png|link=@baohugouxuan,1>"
		else
			msg = msg .."<Img|x=244.0|y=258.0|img=zh/78.png|link=@baohugouxuan,1>"
		end
		
		---��
		msg = msg .."<Text|ax=0.5|ay=0.5|x=120.5|y=307.5|outline=1|color=255|size=16|text=ħ��ֵ����$STM(SLIDERV_N52)% �Զ��ָ�>"	
		--msg = msg .."<RText|ax=0.5|ay=0.5|x=120.5|y=307.5|outline=1|color=255|size=16|text=ħ��ֵ����<".. getint(actor,"�����ָ��ٷֱ�") .."%/FCOLOR=154> �Զ��ָ�>"		
		msg = msg .."<Slider|sliderid=N52|x=47.0|y=325.0|width=150|height=14|defvalue=".. getint(actor,"�����ָ��ٷֱ�") .."|bgimg=public/bg_szjm_01.png|barimg=public/bg_szjm_02.png|ballimg=public/bg_szjm_02_1.png|link=@lagan,2>"
		if getint(actor,"�����Զ��ָ�") == 0 then
			msg = msg .."<Img|x=244.0|y=318.0|img=zh/77.png|link=@baohugouxuan,2>"
		else
			msg = msg .."<Img|x=244.0|y=318.0|img=zh/78.png|link=@baohugouxuan,2>"
		end
		
	else	--����
		msg = "<Img|x=0|y=260|img=zhangheng/235.png|esc=0>"
		msg = msg.."<RText|x=70.0|y=402.0|color=255|size=16|outline=1|text=��ʾ:<�������Զ���Ѫ�ٷֱ�,�ٵ��ǰ�湴ѡ����/FCOLOR=254> <�洢��Ϊ0ʱ,��ǰ������ҩ�깺��/FCOLOR=250>>"
		
		---��
		msg = msg .."<Text|ax=0.5|ay=0.5|x=146.5|y=287.5|size=16|outline=1|color=255|text=����ֵ����$STM(SLIDERV_N51)% �Զ��ָ�>"
		--msg = msg .."<RText|ax=0.5|ay=0.5|x=146.5|y=287.5|size=16|outline=1|color=255|text=����ֵ����<".. getint(actor,"�����ָ��ٷֱ�") .."%/FCOLOR=31> �Զ��ָ�>"
		msg = msg .."<Slider|sliderid=N51|x=41.0|y=305.0|width=210|height=14|defvalue=".. getint(actor,"�����ָ��ٷֱ�") .."|bgimg=public/bg_szjm_01.png|barimg=public/bg_szjm_02.png|ballimg=public/bg_szjm_02_1.png|link=@lagan,1>"				
		if getint(actor,"�����Զ��ָ�") == 0 then
			msg = msg .."<Img|x=324.0|y=298.0|img=zh/77.png|link=@baohugouxuan,1>"
		else
			msg = msg .."<Img|x=324.0|y=298.0|img=zh/78.png|link=@baohugouxuan,1>"
		end
		
		---��
		msg = msg .."<Text|ax=0.5|ay=0.5|x=146.5|y=347.5|outline=1|color=255|size=16|text=ħ��ֵ����$STM(SLIDERV_N52)% �Զ��ָ�>"		
		--msg = msg .."<RText|ax=0.5|ay=0.5|x=146.5|y=347.5|outline=1|color=255|size=16|text=ħ��ֵ����<".. getint(actor,"�����ָ��ٷֱ�") .."%/FCOLOR=154> �Զ��ָ�>"		
		msg = msg .."<Slider|sliderid=N52|x=41.0|y=365.0|width=210|height=14|defvalue=".. getint(actor,"�����ָ��ٷֱ�") .."|bgimg=public/bg_szjm_01.png|barimg=public/bg_szjm_02.png|ballimg=public/bg_szjm_02_1.png|link=@lagan,2>"
		if getint(actor,"�����Զ��ָ�") == 0 then
			msg = msg .."<Img|x=324.0|y=358.0|img=zh/77.png|link=@baohugouxuan,2>"
		else
			msg = msg .."<Img|x=324.0|y=358.0|img=zh/78.png|link=@baohugouxuan,2>"
		end
		
	end
	addbutton(actor,303 ,1,msg)
	chuliangxiangshi(actor) --������ʾ
end

function chuliangxiangshi(actor) --����������ʾ
	delbutton(actor,303,2)
	local msg = ""
	if getispc(actor) then --����
		msg = msg .."<RText|ay=0.5|x=282.0|y=272.5|color=31|outline=1|size=16|text=�ȣ� ÿ��ָ�15�㡡��ǰ�Ѵ洢 ".. getint(actor,"�洢����") .."��>"
		msg = msg .."<RText|ay=0.5|x=282.0|y=331.5|color=154|outline=1|size=16|text=�ͣ� ÿ��ָ�20�㡡��ǰ�Ѵ洢 ".. getint(actor,"�洢����") .."��>"
	else
		msg = msg .."<RText|ay=0.5|x=362.0|y=312.5|color=31|outline=1|size=16|text=�ȣ� ÿ��ָ�15�㡡��ǰ�Ѵ洢 ".. getint(actor,"�洢����") .."��>"
		msg = msg .."<RText|ay=0.5|x=362.0|y=371.5|color=154|outline=1|size=16|text=�ͣ� ÿ��ָ�20�㡡��ǰ�Ѵ洢 ".. getint(actor,"�洢����") .."��>"
	end
	addbutton(actor,303,2,msg)
end

function baohugouxuan(actor,par)
	if par == "1" then
		if getint(actor,"�����Զ��ָ�") == 0 then
			setint(actor,"�����Զ��ָ�",1)
		else
			setint(actor,"�����Զ��ָ�",0)
		end
	else
		if getint(actor,"�����Զ��ָ�") == 0 then
			setint(actor,"�����Զ��ָ�",1)
		else
			setint(actor,"�����Զ��ָ�",0)
		end
	end
	return baohujiemian(actor)
end

function lagan(actor,par)
	--sendmsg6(actor,"����")
	if par == "1" then
		setint(actor,"�����ָ��ٷֱ�",getplaydef(actor,"N51"))
	else
		setint(actor,"�����ָ��ٷֱ�",getplaydef(actor,"N52"))
	end
	return baohujiemian(actor)
end

---ʱװ���滻���޻����
function shizhuangjiemian(actor)
	delbutton(actor,39,1)
	local data = {"","","","","",""}
	local sh_str = getstr(actor,"�޻�buff����")
	if sh_str ~= "" then
		data=json2tbl(sh_str)
	end
	local msg = ""
	if getispc(actor) then --����
		msg = "<Img|x=0|y=0|img=zhangheng/207.png|esc=0>"
		for i = 1,6 do
			local ysy = 70
			if i > 3 then
				ysy = 72
			end
			local color = sh_yanse_t[data[i]] or 255
			if data[i] ~= "" then
				msg = msg.."<Text|ax=0.5|ay=0.5|x=150.0|y=".. ysy+(i-1)*49 .."|size=16|outline=1|color=".. color .."|text=".. data[i] ..">"
				msg = msg.."<Button|x=22.0|y=".. ysy-20+(i-1)*49 .."|width=40|height=40|color=250|size=18|nimg=zh/1.png|pimg=zh/1.png|opacity=0|tips=<"..data[i]..":/FCOLOR="..color..">\\".. sh_jieshao_t[data[i]] ..">"

			else
				msg = msg.."<Text|ax=0.5|ay=0.5|x=150.0|y=".. ysy+(i-1)*49 .."|size=16|outline=1|color=10|text=δ���>"
			end
		end
	else
		msg = "<Img|x=0|y=0|width=348|height=478|img=zhangheng/208.png|esc=0>"
		for i = 1,6 do
			local ysy = 100
			if i > 3 then
				ysy = 102
			end
			local color = sh_yanse_t[data[i]] or 255
			if data[i] ~= "" then
				msg = msg.."<Text|ax=0.5|ay=0.5|x=200.0|y=".. ysy+(i-1)*67 .."|size=18|outline=1|color=".. color .."|text=".. data[i] ..">"
				msg = msg.."<Button|x=22.0|y=".. 71+(i-1)*67 .."|width=263|height=60|color=250|size=18|nimg=zh/1.png|pimg=zh/1.png|opacity=0|tips=<"..data[i]..":/FCOLOR="..color..">\\".. sh_jieshao_t[data[i]] ..">"

			else
				msg = msg.."<Text|ax=0.5|ay=0.5|x=200.0|y=".. ysy+(i-1)*67 .."|size=18|outline=1|color=10|text=δ���>"
			end
		end
	end
	addbutton(actor,39,1,msg)
end
--�鿴�������
function lookhuminfo(actor)
	local othername = getconst(actor,"<$LOOKHUMNAME>") --�����������
	delbutton(actor,3901,1)
	local player = getplayerbyname(othername)
	if not player then
		if getispc(actor) then --����
			msg = "<Img|x=0|y=0|img=zhangheng/207.png|esc=0>"
		else
			msg = "<Img|x=0|y=0|width=348|height=478|img=zhangheng/208.png|esc=0>"
		end
		addbutton(actor,3901,1,msg)
		return
	end
	
	local data = {"","","","","",""}
	local sh_str = getstr(player,"�޻�buff����")
	if sh_str ~= "" then
		data=json2tbl(sh_str)
	end
	local msg = ""
	if getispc(actor) then --����
		msg = "<Img|x=0|y=0|img=zhangheng/207.png|esc=0>"
		for i = 1,6 do
			local ysy = 70
			if i > 3 then
				ysy = 72
			end
			local color = sh_yanse_t[data[i]] or 255
			if data[i] ~= "" then
				msg = msg.."<Text|ax=0.5|ay=0.5|x=150.0|y=".. ysy+(i-1)*49 .."|size=16|outline=1|color=".. color .."|text=".. data[i] ..">"
				msg = msg.."<Button|x=22.0|y=".. ysy-20+(i-1)*49 .."|width=40|height=40|color=250|size=18|nimg=zh/1.png|pimg=zh/1.png|opacity=0|tips=<"..data[i]..":/FCOLOR="..color..">\\".. sh_jieshao_t[data[i]] ..">"

			else
				msg = msg.."<Text|ax=0.5|ay=0.5|x=150.0|y=".. ysy+(i-1)*49 .."|size=16|outline=1|color=10|text=δ���>"
			end
		end
	else
		msg = "<Img|x=0|y=0|width=348|height=478|img=zhangheng/208.png|esc=0>"
		for i = 1,6 do
			local ysy = 100
			if i > 3 then
				ysy = 102
			end
			local color = sh_yanse_t[data[i]] or 255
			if data[i] ~= "" then
				msg = msg.."<Text|ax=0.5|ay=0.5|x=200.0|y=".. ysy+(i-1)*67 .."|size=18|outline=1|color=".. color .."|text=".. data[i] ..">"
				msg = msg.."<Button|x=22.0|y=".. 71+(i-1)*67 .."|width=263|height=60|color=250|size=18|nimg=zh/1.png|pimg=zh/1.png|opacity=0|tips=<"..data[i]..":/FCOLOR="..color..">\\".. sh_jieshao_t[data[i]] ..">"

			else
				msg = msg.."<Text|ax=0.5|ay=0.5|x=200.0|y=".. ysy+(i-1)*67 .."|size=18|outline=1|color=10|text=δ���>"
			end
		end
	end
	addbutton(actor,3901,1,msg)
	
	qitawanjiawuxing(actor)
	
	
end

------װ����������ͼ��
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

function openwuxin(actor)
	callscriptex(actor, "CallLua", "wuxingzhili", "qiehuan")
end

function qitawanjiawuxing(actor)
	local othername = getconst(actor,"<$LOOKHUMNAME>") --�����������
	local player = getplayerbyname(othername)
	delbutton(actor,3002,13)
	if getint(player,"���е�ǰ����") == 0 then
		return
	end
	local msg = ""
	if getispc(actor) then --����
		msg = "<Button|x=190|y=30|nimg="..zbxs[getint(player,"���е�ǰ����")]..">"
	else
		msg = "<Button|x=250|y=70|nimg="..zbxs[getint(player,"���е�ǰ����")]..">"
	end
	addbutton(actor,3002,13,msg)
end


-------------------���ù��ܰ�ť��
function zhujiemiananniu(actor) --�����水ť ��Ҫ�������
	local msg = ""
	if getispc(actor) then --����
		msg = '<Button|x=-61|y=-387|color=255|nimg=tubiao/61.png|link=@openmianban,35>' --�����а�ť ����С��ť
		addbutton(actor,104,2,msg)
	else
		----�����̳����а�ť
		msg = '<Button|x=-240|y=-65|pimg=private/main/Button_3/1900012059.png|mimg=private/main/Button_3/1900012058.png|color=255|nimg=private/main/Button_3/1900012058.png|link=@openmianban,9>' --�̳�
		msg = msg..'<Button|x=-130|y=-65|pimg=private/main/Button_3/1900012055.png|mimg=private/main/Button_3/1900012054.png|color=255|nimg=private/main/Button_3/1900012054.png|link=@openmianban,32>' --���а�
		addbutton(actor,108,11,msg)
		----���ν�ɫ������ť
		msg = '<Button|x=-194|y=-441|mimg=tubiao/61.png|color=255|nimg=tubiao/61.png|link=@openmianban,35>' --����
		msg = msg..'<Button|x=-130|y=-445|mimg=private/main/bottom/1900013010.png|color=255|nimg=private/main/bottom/1900013010.png|link=@openmianban,1>' --��ɫ
		msg = msg..'<Button|x=-63|y=-445|mimg=private/main/bottom/1900013011.png|color=255|nimg=private/main/bottom/1900013011.png|link=@openmianban,7>' --����
		addbutton(actor,104,2,msg)
		
		----���ܿ������л���ť
		msg = '<Button|x=22|y=30|mimg=private/main/bottom/1900013012.png|color=255|nimg=private/main/bottom/1900013012.png|link=@openmianban,4>' --����
		msg = msg..'<Button|x=92|y=30|mimg=private/main/bottom/1900013014.png|color=255|nimg=private/main/bottom/1900013014.png|link=@openmianban,17>' --���
		msg = msg..'<Button|x=162|y=30|mimg=private/main/bottom/1900013013.png|color=255|nimg=private/main/bottom/1900013013.png|link=@openmianban,31>' --�л�
		--msg = msg..'<Button|x=22|y=100|mimg=private/main/bottom/1900013019.png|color=255|nimg=private/main/bottom/1900013019.png|link=@openmianban,27>' --������
		
		if getconst(actor,"<$DEALFTF>") == "1" then --����������潻��
			msg = msg..'<Button|x=92|y=100|mimg=private/main/bottom/1900013015.png|color=255|nimg=private/main/bottom/1900013015.png|link=@openmianban,33>' --����潻��
			msg = msg..'<Button|x=162|y=100|mimg=private/main/bottom/1900013017.png|color=255|nimg=private/main/bottom/1900013017.png|link=@openmianban,23>' --����
			msg = msg..'<Button|x=162|y=170|mimg=private/main/bottom/1900013018.png|color=255|nimg=private/main/bottom/1900013018.png|link=@openmianban,34>' --С��
		else
			msg = msg..'<Button|x=92|y=100|mimg=private/main/bottom/1900013017.png|color=255|nimg=private/main/bottom/1900013017.png|link=@openmianban,23>' --����
			msg = msg..'<Button|x=162|y=100|mimg=private/main/bottom/1900013018.png|color=255|nimg=private/main/bottom/1900013018.png|link=@openmianban,34>' --С��
		end
		addbutton(actor,109,1,msg)
	end
end

function openmianban(actor,mianbanid) --�����
	mianbanid = tonumber(mianbanid)
	openhyperlink(actor,mianbanid,0)
end
--------------------���ù��ܰ�ť�ν���

----------�һ����ܶ�
function guajianniu(actor)
-------�һ���ť
	local msg = ""
	if getispc(actor) then
		msg = '<Button|x=-60|y=-450|color=251|mimg=private/main/Skill/1900012708.png|size=16|nimg=private/main/Skill/1900012708.png|pimg=private/main/Skill/1900012708.png|link=@startguaji>'
	else
		msg = '<Button|x=-127|y=-374|color=251|mimg=private/main/Skill/1900012708.png|size=16|nimg=private/main/Skill/1900012708.png|pimg=private/main/Skill/1900012708.png|link=@startguaji>'	
	end
	addbutton(actor,104,1,msg)
-------�һ���ť����
end

function startguaji(actor)
	if getplaydef(actor,"N$�һ�״̬") == 0 then
		setplaydef(actor,"N$�һ�״̬",1)
	else
		return
	end
	startautoattack(actor) --�����Զ��һ�
	
	local msg = ""
	if getispc(actor) then
		msg = '<Button|x=-60|y=-450|color=251|mimg=private/main/Skill/1900012709.png|size=16|nimg=private/main/Skill/1900012709.png|pimg=private/main/Skill/1900012709.png|link=@stopguaji>'
		msg = msg..'<Effect|x=-31|y=-421|scale=0.595|speed=1|effecttype=0|effectid=4005|act=0|dir=5>'
	else
		msg = '<Button|x=-127|y=-374|color=251|mimg=private/main/Skill/1900012709.png|size=16|nimg=private/main/Skill/1900012709.png|pimg=private/main/Skill/1900012709.png|link=@stopguaji>'
		msg = msg..'<Effect|x=-98|y=-345|scale=0.595|speed=1|effecttype=0|effectid=4005|act=0|dir=5>'
	end
	delbutton(actor,104,1)
	addbutton(actor,104,1,msg)
end

function stopguaji(actor)
	if getplaydef(actor,"N$�һ�״̬") == 1 then
		setplaydef(actor,"N$�һ�״̬",0)
	else
		return
	end
	stopautoattack(actor) --ֹͣ�Զ��һ�
	
	local msg = ""
	if getispc(actor) then
		msg = '<Button|x=-60|y=-450|color=251|mimg=private/main/Skill/1900012708.png|size=16|nimg=private/main/Skill/1900012708.png|pimg=private/main/Skill/1900012708.png|link=@startguaji>'
	else
		msg = '<Button|x=-127|y=-374|color=251|mimg=private/main/Skill/1900012708.png|size=16|nimg=private/main/Skill/1900012708.png|pimg=private/main/Skill/1900012708.png|link=@startguaji>'
	end
	delbutton(actor,104,1)
	addbutton(actor,104,1,msg)
end
function startautoplaygame(actor) --��ʼ�һ�����
	setint(actor,"������ʱ��",os.time())
	--sendmsg6(actor,"��ʼ�һ�")
end
function stopautoplaygame(actor) --ֹͣ�һ�����
	--sendmsg6(actor,"ֹͣ�һ�")
	stopguaji(actor)
end
------------�һ����ܶν���

---------������ť��������ʾ
function bagxianshi(actor)
	local msg = ""
	if getispc(actor) then --���Զ�
		--Ԫ��
		msg = msg..'<Img|x=21|y=257|img=zh/70.png>'
		
		msg = msg..'<Img|x=10|y=232|img=zhangheng/88.png|opacity=0|link=@kong>' --��ס����Ұ�ť
		
		msg = msg .. '<Text|x=80.0|y=248.0|color=255|size=14|outline=1|text=$STM(MONEY_2)>'
		------����
		msg = msg .. '<Text|x=80.0|y=292.0|color=255|size=14|outline=1|text=���:  $STM(MONEY_7)>'
		msg = msg .. '<Text|x=80.0|y=316.0|color=255|size=14|outline=1|text=���:  $STM(MONEY_8)>'
		------��ť
		msg = msg .. '<Button|x=260|y=240|color=255|size=15|nimg=zhangheng/269.png|text=ˢ�±���|link=@open_zhenglibag>'
		msg = msg .. '<Button|x=203|y=300|color=255|size=15|nimg=zhangheng/269.png|text=���ֿ߲�|link=@open_cangku>'
		msg = msg .. '<Button|x=288|y=300|color=255|size=15|nimg=zhangheng/269.png|text=���߻���|link=@open_huishou>'
	else
		--Ԫ��
		msg = msg..'<Img|x=13|y=360|img=zh/70.png>'
		msg = msg..'<Img|x=0|y=338|img=zhangheng/88.png|opacity=0|link=@kong>' --��ס����Ұ�ť
		----����������ʾ
		msg = msg .. '<Text|x=80.0|y=347.0|outline=1|size=18|text=$STM(MONEY_2)>'
		--msg = msg .. '<Img|x=71.0|y=396.0|width=170|height=22|esc=0|img=zh/15.png>'
		msg = msg .. '<Text|x=76.0|y=396.0|color=255|size=18|outline=1|text=���: $STM(MONEY_7)>'
		--msg = msg .. '<Img|x=71.0|y=428.0|width=170|height=22|esc=0|img=zh/15.png>'
		msg = msg .. '<Text|x=76.0|y=422.0|outline=1|color=255|size=18|text=���: $STM(MONEY_8)>'

		-------��ť
		msg = msg .. '<Button|x=323.0|y=343.0|width=100|height=30|mimg=public/1900000652.png|size=18|color=251|outline=2|nimg=public/1900000652.png|text=ˢ�±���|link=@open_zhenglibag>'
		msg = msg .. '<Button|x=252.0|y=408.0|width=100|height=30|mimg=public/1900000652.png|size=18|color=251|outline=2|nimg=public/1900000652.png|text=���ֿ߲�|link=@open_cangku>'
		msg = msg .. '<Button|x=395.0|y=408.0|width=100|height=30|mimg=public/1900000652.png|size=18|color=251|outline=2|nimg=public/1900000652.png|text=���߻���|link=@open_huishou>'

	end
	
	
	addbutton(actor,7,1,parsetext(msg,actor))
	
	--------�����ϲ�������ʾ
	if not getispc(actor) then
		local str = '<Img|x=0|y=0|width=264|height=35|img=zh/24.png>'
		str = str..'<Img|x=0|y=0|width=264|height=35|img=zh/24.png>'
		str = str..'<Img|x=10|y=7|img=item/item_0/000115.png>'
		str = str..'<Text|x=45|y=3|size=18|simplenum=1|outline=1|text='.. getbindgold(actor) ..'>'
		str = str..'<Img|x=130|y=1|width=36|height=29|img=item/item_0/000124.png>'
		str = str..'<Text|x=170|y=3|size=18|simplenum=1|outline=1|text=$STM(MONEY_2)>'
		str = str..'<Img|width=110|height=35|color=255|img=public/0.png|link=@huobuxianshi,1>'
		str = str..'<Img|x=132.0|y=0.0|width=110|height=35|img=public/0.png|link=@huobuxianshi,2>'
		--str = str..'<Img|x=410|y=-2|width=41|height=33|img=item/item_1/000044.png>'
		--str = str..'<Text|x=455|y=1|size=20|text=$STM(MONEY_15)>'
		--str = str..'<Img|x=580|y=0|width=35|height=27|img=item/item_0/002759.png>'
		--str = str..'<Text|x=620|y=1|size=20|text=$STM(MONEY_10)>'
		addbutton(actor,101,1,parsetext(str,actor))
	else --����
		local str = '<Img|x=0|y=0|width=222|height=35|img=zh/24.png>'
		str = str..'<Img|x=0|y=0|width=222|height=35|img=zh/24.png>'
		str = str..'<Img|x=10|y=7|img=item/item_0/000115.png>'
		str = str..'<Text|x=45|y=6|size=18|simplenum=1|outline=1|text='.. getbindgold(actor) ..'>'
		str = str..'<Img|x=120|y=1|width=36|height=29|img=item/item_0/000124.png>'
		str = str..'<Text|x=160|y=6|size=18|simplenum=1|outline=1|text=$STM(MONEY_2)>'
		str = str..'<Img|width=110|height=35|color=255|img=public/0.png|link=@huobuxianshi,1>'
		str = str..'<Img|x=122.0|y=0.0|width=110|height=35|img=public/0.png|link=@huobuxianshi,2>'
		--str = str..'<Img|x=410|y=-2|width=41|height=33|img=item/item_1/000044.png>'
		--str = str..'<Text|x=455|y=1|size=20|text=$STM(MONEY_15)>'
		--str = str..'<Img|x=580|y=0|width=35|height=27|img=item/item_0/002759.png>'
		--str = str..'<Text|x=620|y=1|size=20|text=$STM(MONEY_10)>'
		addbutton(actor,101,1,parsetext(str,actor))
	end
end

function shanchuxianshi(actor)
	delbutton(actor,101,2)
end

function huobuxianshi(actor,par)
	local msg = ""
	if par == "1" then
		msg = [[
		<Img|x=3.0|y=35.0|width=220|height=185|scale9r=5|scale9t=5|scale9l=5|img=zh/33.png|scale9b=5|esc=0>
<RText|x=11.0|y=40.0|color=251|size=16|text=���>
<RText|x=11.0|y=65.0|color=255|size=16|text=�귨��½��ͨ����Ҫ����>
<RText|x=11.0|y=90.0|color=255|size=16|text=ͨ��<����װ��/FCOLOR=250>���>
<RText|x=11.0|y=115.0|size=16|color=255|text=�ɽ���Ҷһ��ɽ�������>
<RText|x=12.0|y=140.0|size=16|color=255|text=���н��׻�ȡԪ��>

		]]
		msg=msg..'<RText|x=11.0|y=165.0|size=16|color=251|text=ӵ�н�ң�<'.. getgold(actor) ..'/FCOLOR=250>>'
		msg=msg..'<RText|x=11.0|y=190.0|size=16|color=251|text=ӵ�а��<'.. getbindjinbi(actor) ..'/FCOLOR=250>>'
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|link=@shanchuxianshi>"
	else
		msg = [[
		<Img|x=3.0|y=35.0|width=220|height=110|scale9r=5|scale9t=5|scale9b=5|img=zh/33.png|scale9l=5|esc=0>
		<RText|x=11.0|y=40.0|size=16|color=251|text=Ԫ��>
		<RText|x=11.0|y=65.0|size=16|color=255|text=�����ڹ����̳ǵ���>
		<RText|x=11.0|y=90.0|size=16|color=255|text=<��������ͨ����/FCOLOR=250>>
		]]
		msg=msg..'<RText|x=11.0|y=115.0|color=251|size=16|text=ӵ��Ԫ����'.. getingot(actor) ..'>'
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|link=@shanchuxianshi>"
	end
	addbutton(actor,101,2,msg)
end


function open_zhenglibag(actor)
	refreshbag(actor)
end
function open_huishou(actor)
	huishoushow(actor)
end
function open_cangku(actor)
	openstorage(actor)
end
---------������ť��������ʾ����

function jiuqizhishow(actor) --����ֵ��ʾ
	delbutton(actor,104,4)
	local item = linkbodyitem(actor,16) --��λ��װ�� �ƺ�«
	if item ~= "0" then
		local jy = getitem_jiuqizhi(actor,item) --����ֵ
		if getispc(actor) then--------����
			local str = '<Img|x=-193|y=-150|width=20|height=154|img=zh/106.png>'
			if jy >= 10000 then
				str = str..'<PercentImg|direction=2|x=-193|y=-150|width=20|height=154|minValue='.. jy ..'|maxValue=10000|img=zh/104.png>'
			else
				str = str..'<PercentImg|direction=2|x=-193|y=-150|width=20|height=154|minValue='.. jy ..'|maxValue=10000|img=zh/107.png>'
			end
			--str = str..'<Text|x=-255|y=-172|size=12|simplenum=1|color=251|outline=1|text=����ֵ��'.. jy ..'>'
			addbutton(actor,104,4,str)
		else --����
			sendluamsg(actor, 104, 0, 0, 0, tostring(jy)) --���͸�ǰ�˾���ֵ
			--local str = ''
			--local str = '<Img|x=-170|y=-123|img=private/main/angerBg2.png|width=10|height=70|scale9r=2|scale9b=2|scale9l=2|scale9t=2|>'
			--str = str..'<Img|x=-169|y=-123|img=private/main/angerBg.png|width=7|height=70>'
			--str = str..'<PercentImg|direction=2|x=-167|y=-120|minValue='.. jy ..'|maxValue=10000|img=private/main/angerBar.png|width=7|height=68>'
			--str = str..'<Text|x=-110|y=-105|size=14|simplenum=1|color=250|outline=1|text=����ֵ\\'.. jy ..'>'
			--addbutton(actor,108,4,str)
		end
	end
	
end

function chongzhijiemian(actor) --��ֵ����
	if getispc(actor) then--------����
		local str = '<Button|x=210|y=44|nimg=zh/201.png|mimg=zh/201.png|pimg=zh/201.png|link=@kong>'
		str = str..[[
			<RText|x=30|y=240|color=255|size=18|outline=1|text=���ʳ�ֵ�ﵽ<1000/FCOLOR=250>>
			<RText|x=188.0|y=240.0|color=255|size=18|outline=1|text=��������<10%/FCOLOR=253>>
			]]
		if getint(actor,"�ۼƳ�ֵ") >= 1000 then
			str = str..'<RText|x=30|y=270|color=255|size=18|outline=1|text=���ʳ�ֵ�ﵽ<5000/FCOLOR=250>>'
			str = str..'<RText|x=188.0|y=270.0|color=255|size=18|outline=1|text=��������<20%/FCOLOR=253>>'
		end
		if getint(actor,"�ۼƳ�ֵ") >= 5000 then
			str = str..'<RText|x=30|y=300|color=255|size=18|outline=1|text=���ʳ�ֵ�ﵽ<10000/FCOLOR=250>>'
			str = str..'<RText|x=188.0|y=300.0|color=255|size=18|outline=1|text=��������<30%/FCOLOR=253>>'
		end
		addbutton(actor,40,1,str)
	else --����
		local str = '<Button|x=230|y=44|nimg=zh/202.png|mimg=zh/202.png|pimg=zh/202.png|link=@kong>'
		str = str..[[
			<RText|x=30|y=270|color=255|size=18|outline=1|text=���ʳ�ֵ�ﵽ<1000/FCOLOR=250>>
			<RText|x=188.0|y=270.0|color=255|size=18|outline=1|text=��������<10%/FCOLOR=253>>
			]]
		if getint(actor,"�ۼƳ�ֵ") >= 1000 then
			str = str..'<RText|x=30|y=300|color=255|size=18|outline=1|text=���ʳ�ֵ�ﵽ<5000/FCOLOR=250>>'
			str = str..'<RText|x=188.0|y=300.0|color=255|size=18|outline=1|text=��������<20%/FCOLOR=253>>'
		end
		if getint(actor,"�ۼƳ�ֵ") >= 5000 then
			str = str..'<RText|x=30|y=330|color=255|size=18|outline=1|text=���ʳ�ֵ�ﵽ<10000/FCOLOR=250>>'
			str = str..'<RText|x=188.0|y=330.0|color=255|size=18|outline=1|text=��������<30%/FCOLOR=253>>'
		end
		addbutton(actor,40,1,str)
	end
end

function jiaoyihangjiemian(actor) --�����н���
	if getispc(actor) then--------����
		local str = '<RText|x=5|y=367|color=251|size=13|outline=1|text=�����һ��ɽ�������۽���>'
		addbutton(actor,29,1,str)
	else --����
		local str = '<RText|x=20|y=407|color=251|size=18|outline=1|text=�����һ��ɽ�������۽���>'
		addbutton(actor,29,1,str)
	end
end

function zhuangtaijiemian(actor) --����״̬����
	if getispc(actor) then--------����
		local str = '<Img|x=127|y=45|img=zh/203.png>'
		str = str..'<Text|x=131|y=49|color=255|size=12|outline=1|text='.. getjingyan(actor) ..'>'
		addbutton(actor,4,1,str)
		local msg = "<PercentImg|direction=0|x=-136|y=-71|minValue=".. getjingyan(actor) .."|maxValue=".. getbaseinfo(actor, 14) .."|img=private/main-win32/00000041.png>"
		msg = msg.."<Img|x=-136|y=-71|opacity=0|tips={��ǰ���飺".. string.format("%0.2f",getjingyan(actor)/getbaseinfo(actor, 14)*100) .."%/FCOLOR=255}|img=private/main-win32/00000041.png>"
		addbutton(actor,104,51,msg)
	else --����
		local str = '<Img|x=170|y=53|img=zh/204.png>'
		str = str..'<Text|x=176|y=55|color=255|size=16|outline=1|text='.. getjingyan(actor) ..'>'
		addbutton(actor,4,1,str)
		local msg = "<PercentImg|direction=0|x=201|y=-19|minValue=".. getjingyan(actor) .."|maxValue=".. getbaseinfo(actor, 14) .."|img=private/main/1900012010.png>"
		msg = msg..'<Text|ax=0.5|x=332|y=-26|color=255|size=16|outline=1|text='.. string.format("%0.2f",getjingyan(actor)/getbaseinfo(actor, 14)*100) ..'%>'
		addbutton(actor,108,51,msg)
	end
end

function logojiemian(actor) --logo����
	local msg = ""
	if getispc(actor) then--------����
		msg = msg.."<Img|x=-305|y=-207|img=zhangheng/282.png>"
		addbutton(actor,104,1050,msg)
	else
		msg = msg.."<Img|x=-390|y=-80|img=zhangheng/282.png>"
		addbutton(actor,108,1050,msg)
	end
end

