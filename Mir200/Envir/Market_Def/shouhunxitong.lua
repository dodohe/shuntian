require("Envir/Market_Def/zh.lua") --���˷�װ����
local sh_jieshao = {
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
	["�������"]="��������ʱ�м���ֱ����ɱ2%Ѫ�������Ҷ�Ѫ������10%�Ĺ���(10W����)��ֱ��նɱ",
}
local xilian_xh = {
			{1,100},{2,100},{3,200},{4,200},{5,300},{6,300}
		}
local yanse_t = {
--��ɫbuff
["������"]=70,["����һ��"]=70,["��֮�ػ�"]=70,["�ٻ����"]=70,["���㷴ɱ"]=70,["һ������"]=70,["������"]=70,["����ն��"]=70,
["ԽսԽ��"]=70,["��������"]=70,["�����ư�"]=70,["�߼�����"]=70,["��ά���"]=70,["ɳ�ǰ���"]=70,["ɨ�ڳ���"]=70,["�Թ����"]=70,["��Ұ����"]=70,
["���⾪ϲ"]=70,["Ψ�Ҷ���"]=70,["����֮ŭ"]=70,["��������"]=70,["��������"]=70,["�г�ر�"]=70,["��ս֮��"]=70,["��ת����"]=70,
--��ɫbuff
["���ֿ��"]=249,["��ղ���"]=249,["���аԵ�"]=249,["�������"]=249,["ְҵ����"]=249,["����֮��"]=249,["ͬ�����"]=249,["����֮��"]=249,["���Ͳ���"]=249,["�������"]=249,
["�����ɸ�"]=249,["��ˮһս"]=249,["����֮��"]=249,["ת��ѹ��"]=249,["����֮��"]=249,["ç��֮ŭ"]=249,["״̬����"]=249,["��Ѫ֮��"]=249,["�Ƹ�����"]=249,["���ٵ�־"]=249,["�ƺ��ͽ"]=249,
}

local choujiang_t = {
				["������"]=600,["�๳è"]=600,["����"]=600,["ʳ�˻�"]=600,["��֩��"]=600,["ɭ��ѩ��"]=600,["���Ͷ�ǳ�"]=600,["����ͳ��"]=70,
				["������ʿ"]=600,["���껤��"]=600,["��������"]=600,["����ս��"]=600,["���깭����"]=600,["�������"]=600,["������ʿ"]=600,["�������"]=50,
				["��Ұ��"]=300,["а����"]=300,["��Ұ��"]=300,["������"]=300,["��ħЫ��"]=300,["��ħ����"]=300,["ǧ������"]=300,["��ħ����"]=30,
				["���ó�ǹ��"]=300,["���ô���"]=300,["���õ�����"]=300,["ţħսʿ"]=300,["ţħ��ʦ"]=300,["ţħ��˾"]=300,["ţħ����"]=300,["ţħ��"]=20,
				["����֩��"]=100,["����֩��"]=100,["����֩��"]=100,["����֩��"]=100,["ѪӰ����"]=100,["˫ͷ���"]=100,["˫ͷѪħ"]=100,["���¶�ħ"]=15,
				["ħ��а��"]=100,["ħ��Ѫ��"]=100,["ħ������"]=100,["ħ������"]=100,["ħ��ս��"]=100,["ħ����ʿ"]=100,["ħ���޶�"]=100,["ħ������"]=10,
}

local choujiang_t1 = {
				["������"]=600,["�๳è"]=600,["����"]=600,["ʳ�˻�"]=600,["��֩��"]=600,["ɭ��ѩ��"]=600,["���Ͷ�ǳ�"]=600,["����ͳ��"]=35,
				["������ʿ"]=600,["���껤��"]=600,["��������"]=600,["����ս��"]=600,["���깭����"]=600,["�������"]=600,["������ʿ"]=600,["�������"]=25,
				["��Ұ��"]=300,["а����"]=300,["��Ұ��"]=300,["������"]=300,["��ħЫ��"]=300,["��ħ����"]=300,["ǧ������"]=300,["��ħ����"]=12,
				["���ó�ǹ��"]=300,["���ô���"]=300,["���õ�����"]=300,["ţħսʿ"]=300,["ţħ��ʦ"]=300,["ţħ��˾"]=300,["ţħ����"]=300,["ţħ��"]=9,
				["����֩��"]=100,["����֩��"]=100,["����֩��"]=100,["����֩��"]=100,["ѪӰ����"]=100,["˫ͷ���"]=100,["˫ͷѪħ"]=100,["���¶�ħ"]=4,
				["ħ��а��"]=100,["ħ��Ѫ��"]=100,["ħ������"]=100,["ħ������"]=100,["ħ��ս��"]=100,["ħ����ʿ"]=100,["ħ���޶�"]=100,["ħ������"]=2,
}

local ziseshouhun = {["����ͳ��"]=1,["�������"]=1,["��ħ����"]=1,["ţħ��"]=1,["���¶�ħ"]=1,["ħ������"]=1}

function show(actor,yemian,ziye,xianshi,isshiyong,iszandan)
	--haoshistart(actor)
	yemian = tonumber(yemian) or 1
	ziye = tonumber(ziye) or 1
	xianshi = tonumber(xianshi) or 0
	isshiyong = tonumber(isshiyong) or 0
	iszandan = tonumber(iszandan) or 0
	local msg = [[
		<Img|x=0|width=643|height=457|reset=0|loadDelay=0|bg=1|img=zhangheng/1.png|move=1|esc=1|show=4>
		<Button|x=639.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
	]]
	if yemian == 1 then	

		----�޻���濪ʼ
		msg=msg..[[


<Button|x=639.5|y=189.5|color=255|size=18|pimg=zhangheng/306.png|nimg=zhangheng/306.png|link=@show,3>
<Button|x=639.5|y=129.5|color=255|size=18|pimg=zhangheng/310.png|nimg=zhangheng/310.png|link=@show,2>
<Button|x=639.5|y=60.5|color=255|size=18|pimg=zhangheng/307.png|nimg=zhangheng/307.png|link=@kong>
<Img|x=16.5|y=39.5|img=zhangheng/127.png|esc=0>
<Img|x=422.5|y=38.5|img=zhangheng/128.png|esc=0>
<Img|x=17.5|y=38.5|img=zhangheng/129.png|esc=0>
<Text|x=491.5|y=128.5|color=108|size=18|text=�޻���Ϣ>
<RText|x=436.5|y=158.5|color=103|size=16|text=���޻군ֻ�ܴ�ֻ��>
<RText|x=452.5|y=180.5|color=103|size=16|text=�κι��ﶼ�м��ʵ�>
<RText|x=452.5|y=202.5|color=103|size=16|text=�䣬�޻군û��Ʒ��>
<RText|x=452.5|y=224.5|color=103|size=16|text=֮�֣�ֻ��һ������>
<RText|x=453.5|y=246.5|size=16|color=103|text=ÿ�����޿ɻ���10��>
<RText|x=452.5|y=268.5|size=16|color=103|text=�޻�ֵ>
<RText|x=437.5|y=293.5|color=103|size=16|text=����һ�õ��޻�û��>
<RText|x=453.5|y=315.5|color=103|size=16|text=�κ����ԣ�ֻ��Ϊ��>
<RText|x=453.5|y=337.5|color=103|size=16|text=�������ã�ÿ���ҵ�>
<RText|x=453.5|y=359.5|color=103|size=16|text=��Ҫ����һ������֮>
<RText|x=453.5|y=381.5|color=103|size=16|text=�������ﱬ��������>
<RText|x=453.5|y=403.5|color=103|size=16|text=��ʹ�ý�ҹ���>


		]]
		local sl = 1
		if iszandan == 1 then
			sl = 15
		end
		msg=msg.."<Frames|x=42.5|y=90.5|speed=12|prefix=dan/dan_|suffix=.png|count=".. sl .."|finishframe=1|loop=1>"
		msg=msg.."<Button|x=177.5|y=367.5|color=10051|nimg=zhangheng/13.png|size=18|text=����֮��|clickInterval=500|link=@zadan>"
		if getint(actor,"�ۼƳ�ֵ") >= 2000 then
			if getint(actor,"10����") == 0 then
				msg=msg.."<Img|x=279.5|y=370.5|img=zh/44.png|link=@setlianchou>"
			else
				msg=msg.."<Img|x=279.5|y=370.5|img=zh/45.png|link=@setlianchou>"
			end
			msg=msg.."<Text|x=314.5|y=375.5|color=255|size=18|text=10����>"
		end
	elseif yemian == 2 then
		----�������濪ʼ
		msg=msg..[[

		<Button|x=639.5|y=189.5|color=255|size=18|pimg=zhangheng/306.png|nimg=zhangheng/306.png|link=@show,3>
		<Button|x=639.5|y=129.5|color=255|size=18|pimg=zhangheng/309.png|nimg=zhangheng/309.png|link=@kong>
		<Button|x=639.5|y=60.5|nimg=zhangheng/308.png|color=255|size=18|pimg=zhangheng/308.png|link=@show,1>
		<Img|x=16.5|y=39.5|img=zhangheng/131.png|esc=0>
		<Img|x=422.5|y=38.5|img=zhangheng/128.png|esc=0>
		<Img|x=20.5|y=348.5|width=400|esc=0|img=zhangheng/99.png>
		<Text|x=461.0|y=55.0|size=18|color=161|text=����˸����޺�>
		<Text|x=461.0|y=85.0|size=18|color=161|text=�ɻ����������>
		<Img|x=424.5|y=116.5|width=200|esc=0|img=zhangheng/99.png>
		<Img|x=424.5|y=348.5|width=200|esc=0|img=zhangheng/99.png>
		<Img|x=418.0|y=136.0|img=zhangheng/206.png|esc=0>
		]]
		
		msg=msg.."<Button|x=18.5|y=396.5|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@show,2,".. ziye ..",1>"
		
		local t = getshouhundata(actor)[ziye]
		for i = 1,8 do
			if t[i][2] == 0 then --{{"������",0,0},{"�๳è",0,0},{"����",0,0},{"ʳ�˻�",0,0},{"��֩��",0,0},{"ɭ��ѩ��",0,0},{"���Ͷ�ǳ�",0,0},{"����ͳ��",0,0}}, ���֣� �Ƿ񼤻�ռ�����
				msg=msg.."<Img|x=".. 21.5+(i-1)%4*100 .."|y=".. 40.5+math.floor((i-1)/4)*138 .."|img=zhangheng/133.png|grey=0|link=@jihuo,"..ziye..","..i..">"
				msg=msg.."<Img|x=".. 21.5+(i-1)%4*100 .."|y=".. 40.5+math.floor((i-1)/4)*138 .."|img=guai/000".. ziye*100+i ..".png|grey=1>"
				msg=msg.."<Button|x=".. 38.5+(i-1)%4*100 .."|y=".. 154.5+math.floor((i-1)/4)*138 .."|nimg=zhangheng/134.png|link=@jihuo,"..ziye..","..i..">"					--���ť
			else
				msg=msg.."<Img|x=".. 21.5+(i-1)%4*100 .."|y=".. 40.5+math.floor((i-1)/4)*138 .."|img=zhangheng/133.png|link=@shouji,"..ziye..","..i..">"
				msg=msg.."<Img|x=".. 21.5+(i-1)%4*100 .."|y=".. 40.5+math.floor((i-1)/4)*138 .."|img=guai/000".. ziye*100+i ..".png>"
				msg=msg.."<Text|x=".. 24.5+(i-1)%4*100 .."|y=".. 43.5+math.floor((i-1)/4)*138 .."|color=150|size=16|text=".. t[i][3] ..">"
				msg=msg.."<Button|x=".. 38.5+(i-1)%4*100 .."|y=".. 154.5+math.floor((i-1)/4)*138 .."|nimg=zhangheng/135.png|link=@shouji,"..ziye..","..i..">"					--�ռ���ť
			end
		end
		------����ҳ��ť
		local shangyiye = ziye - 1
		local xiayiye = ziye + 1
		if shangyiye < 1 then shangyiye = 1 end
		if xiayiye > 6 then xiayiye = 6 end
		msg=msg.."<Text|ay=0.5|x=93.5|y=332|color=95|size=18|text=��һҳ|link=@show,2,"..shangyiye ..">"
		msg=msg.."<Text|ay=0.5|x=293.5|y=332.0|color=95|size=18|text=��һҳ|link=@show,2,"..xiayiye ..">"
		msg=msg.."<Text|ay=0.5|x=206.5|y=332.0|color=95|size=18|text=".. ziye .."/6>"
		local sx_t={"ħ������ 0-1","�������� 0-1","����ֵ+5","Ŀ��˫������ 1-1","��ħ������ 1-1","���˶Թ��˺�+1"}
		msg=msg.."<Text|ax=0.5|ay=0.5|x=219.5|y=371.0|size=16|color=250|text=��ǰҳ��ÿ����һ�����޻�����ԣ�".. sx_t[ziye] ..">"
		
		-----buffչʾ
		
		local buffdata = getshouhunbuffdata(actor)
		local color = yanse_t[buffdata[ziye]] or 255
		if buffdata[ziye] ~= "" then
			msg=msg.."<RText|x=431.5|y=200|color=".. color .."|size=16|width=180|text="..buffdata[ziye].."��>"				
			msg=msg.."<RText|x=431.5|y=225|color=255|size=16|width=180|text="..sh_jieshao[buffdata[ziye]]..">"
		else		
			msg=msg.."<RText|x=496|y=200|color=150|size=18|text=<δ����/FCOLOR=7>>"
		end

		msg=msg.."<Button|x=137.5|y=388.5|nimg=zh/68.png|color=10051|size=18|text=һ���ռ���ҳ����|link=@yijianshouji,"..ziye..">"					--һ���ռ���ť
		
		local xianshitiaojian = true
		if getint(actor,"�޻�������ʾ") == 0 then 
			for i = 1,8 do
				if t[i][3] < 1 then
					xianshitiaojian = false
					break
				end
			end
		end
		if xianshitiaojian then
			setint(actor,"�޻�������ʾ",1)
			msg=msg.."<Text|ay=0.5|x=453.5|y=371|size=16|color=103|text=".. xilian_xh[ziye][1] .."������ + ".. xilian_xh[ziye][2] .."�޻�ֵ>"
		end
		
		msg=msg.."<Button|x=483.5|y=388.5|color=10051|size=18|nimg=zhangheng/13.png|text=�ػ�����|link=@xilian,"..ziye..">"
		
		if xianshi == 1 then
			msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|link=@show,2,".. ziye ..">"
			msg=msg..[[
			<Img|ay=0.5|x=52.5|y=293.5|width=340|height=270|scale9r=10|scale9t=10|scale9b=10|img=zh/7.png|esc=0|scale9l=10>
			<RText|x=64.5|y=172.5|width=344|color=251|size=16|text=���޽��ܣ�>
			<RText|x=64.5|y=202.5|width=344|size=16|color=255|text=���ڵ�ǰҳ�漤���޻�<�ɻ�ö�Ӧ����/FCOLOR=250>����>
			<RText|x=80.5|y=225.5|width=344|size=16|color=255|text=����޻�����<���ռ�/FCOLOR=250>����<����/FCOLOR=250>��<�޻�ֵ/FCOLOR=70>>
			<RText|x=80.5|y=300.5|width=344|size=16|color=255|text=<�������Եļ���Խ��/FCOLOR=253>>
			<RText|x=64.5|y=254.5|width=344|size=16|color=255|text=������<��ǰҳ��ȫ���޻�>�Ժ󼴿ɶ�����>
			<RText|x=80.5|y=277.5|width=344|size=16|color=255|text=<��������/FCOLOR=254>�������ĵ���Խ�߼���<���ϡ��/FCOLOR=253>>
			<RText|x=64.5|y=329.5|width=344|size=16|color=255|text=�������Ե�ǰ�����޻��õ��������Բ�>
			<RText|x=80.5|y=352.5|width=344|size=16|color=255|text=���⣬�����½����Ѽ���ѡ��<�ػ�����/FCOLOR=250>��>
			<RText|x=80.5|y=375.5|width=344|size=16|color=255|text=�����Ѽ�ֻ��䶯�������ԣ��̶����Բ�>
			<RText|x=80.5|y=398.5|width=344|size=16|color=255|text=���ظ����Ӻͼ���>

			]]

		end
	else

	

		----���ս��濪ʼ
		msg=msg..[[
		<Button|x=639.5|y=189.5|pimg=zhangheng/305.png|color=255|nimg=zhangheng/305.png|size=18|link=@kong>
		<Button|x=639.5|y=129.5|pimg=zhangheng/310.png|color=255|nimg=zhangheng/310.png|size=18|link=@show,2>
		<Button|x=639.5|y=60.5|nimg=zhangheng/308.png|color=255|size=18|pimg=zhangheng/308.png|link=@show,1>

		<Img|x=16.5|y=38.5|img=zhangheng/137.png|esc=0>
		<Img|x=422.5|y=38.5|img=zhangheng/128.png|esc=0>
		<Img|x=18.5|y=292.5|img=zhangheng/140.png|esc=0>
		<Img|x=90.5|y=249.5|img=zhangheng/139.png|esc=0>
		
		<Img|x=146.5|y=305.5|img=zhangheng/141.png|esc=0>
		<Img|x=86.5|y=314.5|img=zhangheng/142.png|esc=0>
		<Img|x=298.5|y=314.5|img=zhangheng/143.png|esc=0>
		<Img|x=74.5|y=345.5|img=zhangheng/138.png|esc=0>
		<Img|x=420.5|y=40.5|img=zhangheng/144.png|esc=0>
		<Img|x=430.5|y=83.5|width=187|height=290|scale9r=3|scale9t=3|scale9l=3|img=zh/36.png|scale9b=3|esc=0>
		<Img|x=148.0|y=81.0|img=zh/21.png|esc=0>
		<Button|x=437.5|y=383.5|nimg=zhangheng/136.png|color=10051|size=18|text=һ��ѡ�������޻�|link=@yijianquanxuan>
		<ListView|id=1999|children={2000}|x=431.5|y=87.5|width=187|height=283>
		]]
		--msg=""
		local ziids = ""
		for i = 2002,2400 do
			ziids = ziids .. i .. ","
		end
		
		local t = getbaglist(actor) --��ȡ���������б�
		--release_print(tbl2json(t))
		local shouhun_t = {} --�޻�� Ψһid��
		local xuanzhong_t = {} --ѡ���޻�� Ψһid��
		if isshiyong == 1 then --ʹ�ñ������Ψһid��Ʒ��
			xuanzhong_t = gethuishoudata(actor)
		else
			setstr(actor,"����ѡ�е���","")
		end
		
		for i = 1,#t do
			local id = getiteminfo(actor,t[i],2) --��Ʒid
			local wyid = getiteminfo(actor,t[i],1) --��ƷΨһid
			local iname = getstditeminfo(id,1) --����
			--sendmsg6(actor,iname.."��Ψһid"..wyid)
			if choujiang_t[iname] and not ziseshouhun[iname] then
				table.insert(shouhun_t,wyid)
			end
		end
		local ziid = 2002
		local ysxx = -2
		local ysyy = -6
		local gaodu = (math.floor((#shouhun_t-1)/3) + 1) * 56 + 3
		msg = msg ..'<Layout|id=2000|children={2001}|height='.. gaodu ..'>' --���õ׿�� ��
		msg = msg ..'<Layout|id=2001|children={'.. ziids ..'}|height='.. gaodu ..'>' --���õ׿�� ��
		for i = 1,15 do
			msg = msg ..'<Img|id='..ziid..'|x='.. ysxx+9 + (i-1)%3*60 ..'|y='.. ysyy+9+math.floor((i-1)/3) * 56 ..'|width=52|height=52|scale9t=3|scale9b=3|img=zh/36.png|scale9r=3|scale9l=3>'
			ziid = ziid + 1		
		end
		--release_print(tbl2json(shouhun_t))
		--release_print("ѡ��",tbl2json(xuanzhong_t))
		
		local xuzhong_sl = 0
		for i = 1,#shouhun_t do
			local makeid = tostring(shouhun_t[i])
			msg = msg ..'<Img|id='..ziid..'|x='.. ysxx+9 + (i-1)%3*60 ..'|y='.. ysyy+9+math.floor((i-1)/3) * 56 ..'|width=52|height=52|scale9t=3|scale9b=3|img=zh/36.png|scale9r=3|scale9l=3>'
			ziid = ziid + 1
			if xuanzhong_t[makeid] then  ----��ѡ��			
				msg = msg ..'<DBItemShow|id='..ziid..'|x='.. ysxx+3 + (i-1)%3*60 ..'|y='.. ysyy+3+math.floor((i-1)/3) * 56 ..'|makeindex='..shouhun_t[i]..'|link=@xuanze,2,'.. shouhun_t[i] ..'>'
				ziid = ziid + 1
				--ѡ������
				msg = msg ..'<Img|id='..ziid..'|x='.. ysxx+8 + (i-1)%3*60 ..'|y='.. ysyy+8+math.floor((i-1)/3) * 56 ..'|img=zh/71.png>'
				ziid = ziid + 1		
				xuzhong_sl = xuzhong_sl + 1 ----ѡ������	
			else
				msg = msg ..'<DBItemShow|id='..ziid..'|x='.. ysxx+3 + (i-1)%3*60 ..'|y='.. ysyy+3+math.floor((i-1)/3) * 56 ..'|makeindex='..shouhun_t[i]..'|link=@xuanze,1,'.. shouhun_t[i] ..'>'
				ziid = ziid + 1
			end
		end
		msg = msg ..'<Text|ax=0.5|ay=0.5|x=221.5|y=266.0|color=251|size=18|text=��ѡ��['.. xuzhong_sl ..']������>'
		msg = msg ..'<RText|ax=0.5|ay=0.5|x=221.5|y=97.0|color=255|size=18|text=<��ǰ�޻�ֵ��/FCOLOR=95><'.. getshouhunzhi(actor) ..'/FCOLOR=254>>'
		msg = msg ..'<Text|ax=0.5|ay=0.5|x=222.5|y=363.0|color=254|size=18|text='.. xuzhong_sl*10 ..'��>'
		msg = msg ..'<Button|x=179.5|y=388.5|nimg=zhangheng/13.png|color=10051|size=18|text=ȷ������|link=@huishou>'
	end
	
	say(actor,msg)
	--haoshiend(actor)
end

function huishou(actor)
	--haoshistart(actor)
	local t = gethuishoudata(actor) --Ҫ���յĵ�������
	local sl = 0
	for k,v in pairs(t) do
		local makeid = tonumber(k)
		if delitembymakeindex(actor,makeid,1) then
			sl = sl + 1
		end
	end
	
	if sl > 0 then
		addshouhunzhi(actor,sl*10)
		sendmsg9(actor,"���ճɹ�")
	else
		sendmsg9(actor,"��ѡ��Ҫ���յ��޻�")
	end
	--haoshiend(actor)
	return show(actor,3)
end

function xuanze(actor,caozuo,makeid) --���� 1�� 2��  Ψһid
	local t = gethuishoudata(actor)
	if caozuo == "1" then
		t[makeid] = 1 
	else
		t[makeid] = nil
	end
	setstr(actor,"����ѡ�е���",tbl2json(t)) --����
	return show(actor,3,1,0,1)
end
function yijianquanxuan(actor)
	local t = getbaglist(actor) --��ȡ���������б�
	local shouhun_t = {} --�޻�� Ψһid��
	local xuanzhong_t = {} --ѡ���޻�� Ψһid��
	for i = 1,#t do
		local id = getiteminfo(actor,t[i],2) --��Ʒid
		local wyid = getiteminfo(actor,t[i],1) --��ƷΨһid
		local iname = getstditeminfo(id,1) --����
		if choujiang_t[iname] and not ziseshouhun[iname] then
			table.insert(shouhun_t,wyid)
		end
	end
	for i = 1,#shouhun_t do
		xuanzhong_t[tostring(shouhun_t[i])] = 1
	end
	setstr(actor,"����ѡ�е���",tbl2json(xuanzhong_t)) --����
	return show(actor,3,1,0,1)
end

function zadan(actor)
	if getint(actor,"10����") == 0 then
		if itemcount(actor,"�޻군") < 1 then
			sendmsg9(actor,"��û���޻군")
			return
		end
		
		if getbagblank(actor) < 1 then
			sendmsg9(actor,"�����ո���1��")
			return
		end
		if itemcount(actor,"����֮��") < 1 then
			sendmsg9(actor,"��û�к���֮��")
			return
		end
		zadan1(actor)
	else
		if itemcount(actor,"�޻군") < 10 then
			sendmsg9(actor,"��û��10���޻군")
			return
		end
		
		if getbagblank(actor) < 10 then
			sendmsg9(actor,"�����ո���10��")
			return
		end
		if itemcount(actor,"����֮��") < 10 then
			sendmsg9(actor,"��û��10������֮��")
			return
		end
		for i = 1,10 do
			zadan1(actor)
		end
	end
end

function zadan1(actor)
	if itemcount(actor,"�޻군") < 1 then
		sendmsg9(actor,"��û���޻군")
		return
	end
	
	if getbagblank(actor) < 1 then
		sendmsg9(actor,"�����ո���")
		return
	end
	
	local t = choujiang_t
	--sendmsg6(actor,"��ҹ����Ӹ���ʣ��"..getint(actor,"��ҹ����Ӹ���"))
	if getint(actor,"��ҹ����Ӹ���") > 0 then
		t = choujiang_t1
		--sendmsg6(actor,"����ͼ�����Ʒ��")
	end
	
	if itemcount(actor,"����֮��") < 1 then
		sendmsg9(actor,"��û�к���֮��")
		return
	end
	takeitem(actor, "����֮��", 1)
	takeitem(actor, "�޻군", 1)
	----��Ȩ�ظ���Ʒ
	local sj_zongzhi = 0 --Ȩ����ֵ
	for k,v in pairs(t) do
		sj_zongzhi = sj_zongzhi + v
	end
	--sendmsg6(actor,"Ȩ����ֵ"..sj_zongzhi)
	
	local sjz = math.random(1,sj_zongzhi) --���ֵ
	local quanzhongzhi = 0
	for k,v in pairs(t) do
		quanzhongzhi = quanzhongzhi + v
		if sjz < quanzhongzhi then
			giveitem(actor,k,1) --����Ʒ
			setsysint("�ҵ��Ĵ���",getsysint("�ҵ��Ĵ���")+1)
			setsysint("ÿ���ҵ��Ĵ���",getsysint("ÿ���ҵ��Ĵ���")+1)
			if ziseshouhun[k] then
				post(actor,"��ȡ���޻� " ..k)
				setsysint("�ҵ�"..k,getsysint("�ҵ�"..k)+1)
				setsysint("ÿ���ҵ�"..k,getsysint("ÿ���ҵ�"..k)+1)
				
			else
				post(actor,"��ȡ�޻� " ..k)
			end
			delaygoto(actor,1000,"xiaoxi,"..k,1)
			break
		end
	end
	
	if getint(actor,"��ҹ����Ӹ���") > 0 then
		setint(actor,"��ҹ����Ӹ���",getint(actor,"��ҹ����Ӹ���")-1)
	end
	return show(actor,1,0,0,0,1)
end

function xiaoxi(actor,k)
	sendmsg9(actor,"��ϲ���á�"..k.."��")
end

local bufft = {10002,10003,10004,10005,10006,10007}
function jihuo(actor,yemian,id,isyijian) --�ڼ�ҳ�ڼ���
	yemian = tonumber(yemian)
	isyijian = tonumber(isyijian) or 0
	id = tonumber(id)
	local data = getshouhundata(actor)
	if data[yemian][id][2] == 1 then
		sendmsg9(actor,"�Ѽ���")
		return
	end
	
	if itemcount(actor,data[yemian][id][1]) < 1 then
		sendmsg9(actor,"��û�С�".. data[yemian][id][1] .."��")
		return
	end
	takeitem(actor,data[yemian][id][1],1,0)

	data[yemian][id][2] = 1
	--release_print(tbl2json(data))
	setstr(actor,"�޻�����",tbl2json(data))
	sendmsg9(actor,"����ɹ�")
	addbuff(actor,bufft[yemian])
	--���������ҳ���͸���ҳbuff
	local man = true
	for i = 1,8 do
		if data[yemian][i][2] == 0 then
			man = false
		end
	end
	if man then
		geibuff(actor,yemian)
	end
	if isyijian == 0 then
		return show(actor,2,yemian)
	end
end

function shouji(actor,yemian,id)
	yemian = tonumber(yemian)
	id = tonumber(id)
	local data = getshouhundata(actor)
	
	if itemcount(actor,data[yemian][id][1]) < 1 then
		sendmsg9(actor,"��û�С�".. data[yemian][id][1] .."��")
		return
	end
	takeitem(actor,data[yemian][id][1],1,0)
	
	data[yemian][id][3] = data[yemian][id][3] + 1
	setstr(actor,"�޻�����",tbl2json(data))
	sendmsg9(actor,"��ϲ���ɹ��ռ����ޡ�".. data[yemian][id][1] .."��")
	return show(actor,2,yemian)
end

function yijianshouji(actor,yemian)
	yemian = tonumber(yemian)
	local sjsl = 0
	local data = getshouhundata(actor)
	
	for j = 1,8 do
		if data[yemian][j][2] == 0 then --δ����
			local sl = itemcount(actor,data[yemian][j][1],2)
			if sl > 0 then
				jihuo(actor,yemian,j)
			end
		end
	end
	
	data = getshouhundata(actor)
	for j = 1,8 do
		if data[yemian][j][2] == 1 then --�Ѽ���
			--if ziseshouhun[data[yemian][j][1]] == nil then --������ɫ�޻�
				local sl = itemcount(actor,data[yemian][j][1],2)
				if sl > 0 then
					takeitem(actor,data[yemian][j][1],sl,0)
					data[yemian][j][3] = data[yemian][j][3] + sl
					sjsl = sjsl + sl
					sendmsg9(actor,"��ϲ���ɹ��ռ����ޡ�".. data[yemian][j][1] .."��")
				end
			--end
		end
	end

	if sjsl == 0 then
		sendmsg9(actor,"����û�п��ռ��޻�")
		return	
	end
	sendmsg9(actor,"һ���ռ��ɹ����ռ�����ҳ�޻�ɻ���޻�buff")
	setstr(actor,"�޻�����",tbl2json(data))
	return show(actor,2,yemian)
end

function xilian(actor,yemian)
	yemian = tonumber(yemian)
	local data = getshouhundata(actor)
	for i = 1,8 do
		if data[yemian][i][2] < 1 then
			sendmsg9(actor,"���ȼ��ǰȫ���޻�")
			return
		end
		
		if data[yemian][i][3] < 1 then
			sendmsg9(actor,"�������Ѽ��뵱ǰҳ���ֻ�޻귽���ػ�����")
			return
		end
	end
	
	messagebox(actor,"\n�Ƿ�ȷ���ػ�������","@xilian1,".. yemian,"@kong")
	
end

function xilian1(actor,yemian)
	yemian = tonumber(yemian)
	local data = getshouhundata(actor)
	if itemcount(actor,"����") < xilian_xh[yemian][1] then
		sendmsg9(actor,"��������")
		return
	end
	
	if getshouhunzhi(actor) < xilian_xh[yemian][2] then
		sendmsg9(actor,"�޻�ֵ����")
		return
	end
	takeitem(actor,"����",xilian_xh[yemian][1])
	subshouhunzhi(actor,xilian_xh[yemian][2])
	
	for i = 1,8 do
		data[yemian][i][3] = data[yemian][i][3] - 1
	end
	
	setstr(actor,"�޻�����",tbl2json(data))
	geibuff(actor,yemian,1)
	sendmsg9(actor,"�ػ������ɹ�")
	return show(actor,2,yemian)
end



--��ɫbuff
local basebuff = {
"����","��ħ��","�����嵨","��ѡ֮��","��ˮ","����","����","���ϼ���","����","ǿ�ߺ�ǿ","��ǵ���","����","����","��ľ�괺","ǿ��","���ƺ쳾","�ٻ�","�ٻ�","�ٻ�","����",
"����","��ħ","������","����֮ʦ","�Ի���","ͬ�ʹ���","������Ȩ","����","�ಲ����","ǿ����","���Ĵ���","�����е�","������","����֮��","���˼���","��������",
"�ƶ���","��۵糸","�����ͽ","����","�۱���","����","����","�ɻ��","�������","��������","��ҹ","��ǿ��ʤ","�����ĭ","����ȡ��","�����","Ϊ�����",
"����","Խ��Խǿ","����","��ƶ���","�ȼ�ѹ��","��ʯ���"
}

--��ɫbuff
local huangsebuff = {
"������","����һ��","��֮�ػ�","�ٻ����","���㷴ɱ","һ������","������","����ն��","ԽսԽ��","��������","�����ư�","�߼�����",
"��ά���","ɳ�ǰ���","ɨ�ڳ���","�Թ����","��Ұ����","���⾪ϲ","Ψ�Ҷ���","����֮ŭ","��������","��������","�г�ر�","��ս֮��","��ת����",
}
--��ɫbuff
local hongsebuff = {
--�ͼ�
{"���ֿ��","�������","ͬ�����","����֮��","��ˮһս","ת��ѹ��","����֮��","ç��֮ŭ","״̬����","�Ƹ�����","���ٵ�־"},
--�߼�
{"���аԵ�","ְҵ����","���Ͳ���",}

}

local hongsebuff1 = {
--�ͼ�
{"���ֿ��","�������","ͬ�����","����֮��","��ˮһս","ת��ѹ��","����֮��","ç��֮ŭ","״̬����","�Ƹ�����","���ٵ�־","�����ɸ�"},
--�߼�
{"���аԵ�","ְҵ����","���Ͳ���","��ղ���","�ƺ��ͽ","����֮��","����֮��","��Ѫ֮��"}
}
local baodicishu = {20,20,24,24,30,30}
function geibuff(actor,yemian,isxilian)
	local t = basebuff
	local ishongse = false
	if not isxilian then --����ϴ��
		if math.random(1,100) <= 3 then
			t = huangsebuff
		end
	else --��ϴ����ô������
		if getint(actor,"ϴ������"..yemian) < 5 then --��5��ǰ����
			if math.random(1,100) <= 25 then --25���ʸ���ɫ
				t = huangsebuff
			end
		elseif getint(actor,"ϴ������"..yemian) < baodicishu[yemian] then --���״���
			local suijizhi = math.random(1,100)
			if suijizhi <= 1 then --��ɫbuff
				ishongse = true
				t = hongsebuff[1]
				if yemian >= 3 then
					t = hongsebuff1[1]
				end
				if yemian == 1 then
					if math.random(1,100) < 10 then
						t = hongsebuff[2]
					end
				elseif yemian == 2 then
					if math.random(1,100) < 10 then
						t = hongsebuff[2]
					end
				elseif yemian == 3 then
					if math.random(1,100) < 20 then
						t = hongsebuff1[2]
					end
				elseif yemian == 4 then
					if math.random(1,100) < 20 then
						t = hongsebuff1[2]
					end
				elseif yemian == 5 then
					if math.random(1,100) < 30 then
						t = hongsebuff1[2]
					end
				elseif yemian == 6 then
					if math.random(1,100) < 30 then
						t = hongsebuff1[2]
					end
				end
			elseif suijizhi <= 30 then --��ɫ
				t = huangsebuff
			end
		else
			if math.random(1,100) < 50 then
				ishongse = true
				t = hongsebuff[1]
				if yemian >= 3 then
					t = hongsebuff1[1]
				end
				if yemian == 1 then
					if math.random(1,100) < 10 then
						t = hongsebuff[2]
					end
				elseif yemian == 2 then
					if math.random(1,100) < 10 then
						t = hongsebuff[2]
					end
				elseif yemian == 3 then
					if math.random(1,100) < 20 then
						t = hongsebuff1[2]
					end
				elseif yemian == 4 then
					if math.random(1,100) < 20 then
						t = hongsebuff1[2]
					end
				elseif yemian == 5 then
					if math.random(1,100) < 30 then
						t = hongsebuff1[2]
					end
				elseif yemian == 6 then
					if math.random(1,100) < 30 then
						t = hongsebuff1[2]
					end
				end
			else
				t = huangsebuff
			end
		end
		
		
	end
	
	----�����ԶΣ������ظ�
	local data = getshouhunbuffdata(actor)
	for i = 1,1000 do
		local buffname = t[math.random(1,#t)] --Ҫ����buff��
		local you = false --û���ظ�
		
		if buffname == "Ϊ�����" then
			for i = 1,#data do
				if data[i] == "ɨ�ڳ���" then
					you = true
					break
				end
			end
		end
		if buffname == "ɨ�ڳ���" then
			for i = 1,#data do
				if data[i] == "Ϊ�����" then
					you = true
					break
				end
			end
		end
		
		if string.find(buffname,"����") then
			--sendmsg6(actor,buffname.."�Ǹ���")
			for i = 1,#data do
				if string.find(data[i],"����") and (i ~= yemian or data[i] == buffname) then
					you = true
					break
				end
			end
		else
			--sendmsg6(actor,buffname.."���Ǹ���")
			for i = 1,#data do
				if data[i] == buffname then
					you = true
					break
				end
			end
		end
		
		if you and #t == 3 and i > 500 then --����ظ�������3����ɫ��
			t = hongsebuff1[2]
		end
		
		if not you then
			data[yemian] = buffname
			break
		end
	end
	----
	if ishongse then --�Ǻ�ɫ
		setint(actor,"ϴ������"..yemian,0)
	else
		setint(actor,"ϴ������"..yemian,getint(actor,"ϴ������"..yemian)+1)
	end
	
	setstr(actor,"�޻�buff����",tbl2json(data))
	callscriptex(actor, "CallLua", "Qfunction-0", "@shizhuangjiemian") --װ�������޻������ʾ
end


function getshouhundata(actor) --��ȡ�޻�����
	local data = {
		{{"������",0,0},{"�๳è",0,0},{"����",0,0},{"ʳ�˻�",0,0},{"��֩��",0,0},{"ɭ��ѩ��",0,0},{"���Ͷ�ǳ�",0,0},{"����ͳ��",0,0}},
		{{"������ʿ",0,0},{"���껤��",0,0},{"��������",0,0},{"����ս��",0,0},{"���깭����",0,0},{"�������",0,0},{"������ʿ",0,0},{"�������",0,0}},
		{{"��Ұ��",0,0},{"а����",0,0},{"��Ұ��",0,0},{"������",0,0},{"��ħЫ��",0,0},{"��ħ����",0,0},{"ǧ������",0,0},{"��ħ����",0,0}},
		{{"���ó�ǹ��",0,0},{"���ô���",0,0},{"���õ�����",0,0},{"ţħսʿ",0,0},{"ţħ��ʦ",0,0},{"ţħ��˾",0,0},{"ţħ����",0,0},{"ţħ��",0,0}},
		{{"����֩��",0,0},{"����֩��",0,0},{"����֩��",0,0},{"����֩��",0,0},{"ѪӰ����",0,0},{"˫ͷ���",0,0},{"˫ͷѪħ",0,0},{"���¶�ħ",0,0}},
		{{"ħ��а��",0,0},{"ħ��Ѫ��",0,0},{"ħ������",0,0},{"ħ������",0,0},{"ħ��ս��",0,0},{"ħ����ʿ",0,0},{"ħ���޶�",0,0},{"ħ������",0,0}},
	}
	local sh_str = getstr(actor,"�޻�����")
	if sh_str ~= "" then
		data=json2tbl(sh_str)
	end
	return data
end

function getshouhunbuffdata(actor) --��ȡ�޻�buff����
	local data = {"","","","","",""}
	local sh_str = getstr(actor,"�޻�buff����")
	if sh_str ~= "" then
		data=json2tbl(sh_str)
	end
	return data
end

function gethuishoudata(actor) --��ȡ��������
	local data = {}
	local sh_str = getstr(actor,"����ѡ�е���")
	if sh_str ~= "" then
		data=json2tbl(sh_str)
	end
	return data
end

function kong(actor)
	
end

function setlianchou(actor)
	if getint(actor,"10����") == 0 then
		setint(actor,"10����",1)
	else
		setint(actor,"10����",0)
	end
	return show(actor)
end