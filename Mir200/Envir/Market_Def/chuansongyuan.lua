require("Envir/Market_Def/zh.lua") --���˷�װ����

local daanniu = {"������ͼ","Σ�յ�ͼ","�߼���ͼ","�ռ���ͼ","���д���",}
local xiaoanniu = {
	{"��򼶴Ѩ","��������","ʯĹ��","����֮��","��ħ����","��ħ��Ѩ","ţħ����","����Ͽ��"},
	{"ħ��Ѫ��","BOSS�Թ�","ɳӰ֮��","��Դ֮��","�������"},
	{"�����ż�","��֮����","��Ѫħ��","������Ԩ","�һ���"},
	{"��ڤ��Ĺ","���ҵ���","ۺ������","�ž�����"},
	{"����ʡ","����ʡ","���µ�","������","��ħ��","ħ����","ͬ��С��"},
}

local map_t = {
["BOSS�Թ�"] = {jieshao={"�����������µ�ϴ��.���ǿ�ջ�����С��<(291.386)/FCOLOR=250>���ڷ�����ǰ��BOSS�Թ������.��ʹ������ǧ���.Ҳ�ܲ����ڴ�.������ս��ѡ֮��.���õ��ı��˶��۸����򲻵�boss.",} },

["����ʡ"] = {"3",330,332,jieshao={"�귨��½����ĳ��У��ڶ�ð�����ڴ�Ъ��",} },
["����ʡ"] = {"0",336,266,jieshao={"�귨��½���������ڣ�����ʹ������������е�����",} },
["���µ�"] = {"5",141,336,jieshao={"���µ��ѱ��ײе��Ϲ�ħ��ռ����꣬�������ڶഫ˵",} }, 
["������"] = {"11",175,324,jieshao={"���������Ѿ�ռ��ĳ��У��������Ѿ����ء��޼�������",} }, 
["��ħ��"] = {"4",237,200,jieshao={"��ħ��ɢ���Ŷ�ħ����Ϣ����������Ӣ�۵���ħ��Ĵ���",} }, 
["ħ����"] = {"6",122,154,jieshao={"��Զ�Ŷ�ħ��ʴ���ĳ��У����ſ��ٻ���Ԧ������ͳ˧",""} },
["ͬ��С��"] = {"m100",jieshao={"��������·�������귨�飬�����İ�֮�ˣ������˵ؾ��ܣ�����������"} },

["��򼶴Ѩ"] = {"d601",205,231,jieshao={"��ͼ�ľ�ͷ�̾���ħ�����조��֮�����񡱾�˵��ɱ������󼴿��ҵ��̾��Ű�֮�������������ڡ�\\��ܰ��ʾ����ͼС�ֱ��ʲ�����������",}, tiaojian="���"},
["��������"] = {"d022",jieshao={"�˵ر��ж��죬����ǰ�ڷ�����ͼ��ȴҲ��Ϊ��������⾪ϲ���������������ռ�װ������˵������������ħ��С������Я���������ܺ�����Ϊ���ҵ���˿����",},tiaojian="���" ,hequ2="2����" },
["ʯĹ��"] = {"d713",jieshao={"ʯĹ�߲�Ķ���è��һֱ�غ��ű����ط�ӡ��Ĺ�أ�ʯĹ�߲��ɱ����è���Ϳɴ��㴩Խʱ�գ�Ϊ���ҵ�����ħ���;���֮�����ټ�����˵��������������Ѱ�����ռ�װ����",},tiaojian="���" ,hequ2="2����" },
["����֮��"] = {"d505",jieshao={"˵�������̳������ܹ�ª���ţ�˵������ͷ������˵���ɣ��ҵ������ҵ������ҵ�����Ҫ������˵���顣����Ϊ���ǰ�������̳�Ĵ���",},tiaojian="���",hequ="2����" ,xuqiu={{"���",0},{"���",20000},lv=0}},
["��ħ����"] = {"d2008",78,77,jieshao={"��ħ���ñ�����ħ���ռ����ʼ�ʿ�ν�಻���ԣ��������£�˭�����������ħ����ħ�壬���������ʼ�ʡ�������ô���;Ϳ���ʼ�ʵ������ˣ����±��ʼ���������С�",},tiaojian="1����",hequ="3����",xuqiu={{"���",10000},{"���",30000},lv=0} },

["��ħ��Ѩ"] = {"d2063",jieshao={"�ڻ�Ȫ�����Ĳ�иŬ����.����Ϊ�귨��ʿ������ǰ���κ��ŵ�ͨ��.��������������ֻ�й�ħ���������Ų�֪��",},tiaojian="1.5����",hequ="4����",xuqiu={{"���",15000},{"���",40000},lv=0}  },
["ţħ����"] = {"d2073",157,158,jieshao={"���걻ţħһ����ռ�������.��ҪȥǱ����Ԩ.ţħ�߲��Ǳؾ�֮·.ֻ����ȥţħ�߲��ҵ����ȹ�����̽��ʵ�����������취�ˣ�Ϊ��ֹ�ѻ�����˵�ͼ��Ҫ�ȼ��ﵽ45����<Ͷ��ר���޵ȼ�����/FCOLOR=253>",},tiaojian="2����",hequ="5����",xuqiu={{"���",20000},{"���",50000},lv=0}},
["����Ͽ��"] = {"d1004",177,126,jieshao={"����������.���³�Ѩ.���¼�̳�Ƕ����˵�����.������ش˵ص�Զ�ų��¶�ħ.��������ǰ���̻����ľ���������.�ͷž��������ھ���Ϊ��⿪�̻�����֮��"},tiaojian="2.5����",hequ="5����",xuqiu={{"���",25000},{"���",50000},lv=0}  },

["ħ��Ѫ��"] = {"63",174,174,jieshao={"����ħ�����ħ��б�ۿ�ֱ��ͨ��ħ����.�����Ź���а��ͳ˧�Ĵ�˵.ħ��Ѫ��İ�֮ħ������ͬ��Ҳ��Ϊ���ҵ�һ˿˿����",}, tiaojian="50�� + 15����ˮ����",xuqiu={{"��ˮ����",15},lv=50}},
["ɳӰ֮��"] = {"h201",117,190,34,92,jieshao={"����ɳ�ʹ�������ͨ��,����Ӱ֮����ͷ�������Ϲ�ʱ�ڵı���,�����ڼ���ѽ���",}, tiaojian="52�� + 20����ˮ����",xuqiu={{"��ˮ����",20},lv=52} },
["��Դ֮��"] = {"h106",100,100,jieshao={"�����ɾ�����԰֮��,�䱳�����������֮Դ��ͨ��, ������ʿ������̽��",}, tiaojian="54�� + 25����ˮ����",xuqiu={{"��ˮ����",25},lv=54} },
["�������"] = {"maya1",79,79,jieshao={"�Ϲ�ʱ�������˾�ס֮��,�����ľ�ſ�̽��������Ļʹ�",}, tiaojian="56�� + 30����ˮ����",xuqiu={{"��ˮ����",30},lv=56} },

["�����ż�"] = {"mhyj1",267,246,jieshao={"Զ���������ż�,��������ԭʼ,��Ұ�������淨��,���ĸ���ǿ�߼����ڴ�",}, tiaojian="60�� + 30����ˮ����",xuqiu={{"��ˮ����",30},lv=60} },
["��֮����"] = {"lzsy1",238,236,jieshao={"���ʱ��,������ͨ���ֶο��ٵĶ����ռ�,������������������������",}, tiaojian="60�� + 35����ˮ����",xuqiu={{"��ˮ����",35},lv=60} },
["��Ѫħ��"] = {"txmk1",166,57,jieshao={"�ڶ�ħ����ͽ�Ĺ�Ѻ֮��,����������Ѫ�ȵ�ζ��,ʱ������ɱ¾֮��",}, tiaojian="60�� + 40����ˮ����",xuqiu={{"��ˮ����",40},lv=60} },
["������Ԩ"] = {"dlsy1",186,189,jieshao={"�����ߵ�����֮��,����͸¶��Σ�����Ƕ�ð�����м���ĳ���",}, tiaojian="62�� + 50����ˮ����",xuqiu={{"��ˮ����",50},lv=62} },
["�һ���"] = {"thg1",42,26,jieshao={"����������һ��������԰,��ħ������,ħ�������̾����һ��ȵ�",}, tiaojian="64�� + 50����ˮ����",xuqiu={{"��ˮ����",50},lv=64} },

["��ڤ��Ĺ"] = {"ymgm1",155,262,jieshao={"Σ���ķ��ĵ�ͼ�������Ŵ����߼���ϡ�еĵ��ߣ���Ѱ�������С��",},tiaojian="65�� + 60����ˮ����",xuqiu={{"��ˮ����",60},lv=65} },
["���ҵ���"] = {"rydy1",87,240,jieshao={"Σ���ķ��ĵ�ͼ�������Ŵ����߼���ϡ�еĵ��ߣ���Ѱ�������С��",} ,tiaojian="65�� + 60����ˮ����",xuqiu={{"��ˮ����",60},lv=65}},
["ۺ������"] = {"fdgy1",37,150,jieshao={"Σ���ķ��ĵ�ͼ�������Ŵ����߼���ϡ�еĵ��ߣ���Ѱ�������С��",} ,tiaojian="65�� + 100����ˮ����",xuqiu={{"��ˮ����",100},lv=65,zjzt=1}},
["�ž�����"] = {"jjhl1",198,273,jieshao={"Σ���ķ��ĵ�ͼ�������Ŵ����߼���ϡ�еĵ��ߣ���Ѱ�������С��",} ,tiaojian="65�� + 100����ˮ����",xuqiu={{"��ˮ����",100},lv=65,zjzt=1}},
}

--1 �ͷ��� 2 ������ 3 ������ 4 ������ 5 ��Ŀ��
local fangjiahao = {
	["12407275"] = {"hao1","�Ʒ�","�ͷ�����"},["13216418"] = {"hao1","������","�ͷ���"},["18936379"] = {"hao1","��̩","�ͷ���"},
	["30497613"] = {"hao2","������","���ϲ���"},
	["19313238"] = {"hao3","κ��ΰ","���ز���"},
	["7586169"] = {"hao4","����","���ղ���"},
	["25891743"] = {"hao5","�ź�","��Ŀ����"}, ["9071622"] = {"hao5","����","��Ŀ����"}, ["5225660"] = {"hao5","����","��Ŀ����"}, ["10202743"] = {"hao5","�����","��Ŀ����"},
}

function show(actor,anniu1,anniu2,xianshi)
	xianshi = tonumber(xianshi) or 0
	anniu1 = tonumber(anniu1) or 1
	anniu2 = tonumber(anniu2)
	if anniu1 == 3 or anniu1 == 4 then
		if not anniu2 then
			anniu2 = 0
		end
	else
		if not anniu2 then
			anniu2 = 1
			if anniu1 == 1 then
				anniu2 = 2
			end
		end
	end
	if getint(actor,"�����") == 1 then
		anniu1 = 1
		anniu2 = 2
		navigation(actor,0,221,"���������߱���ͼ")
		setint(actor,"�����",0)
	end
	
	local msg = [[
		<Img|x=0.0|y=1.0|width=450|height=480|scale9r=10|bg=1|scale9t=10|scale9b=10|move=0|scale9l=10|esc=1|loadDelay=1|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=449.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=140.0|y=11.0|height=460|img=zhangheng/128.png|esc=0>
		<Img|x=142.0|y=275.0|width=298|img=zhangheng/230.png|esc=0>
		<Text|x=166.0|y=248.0|color=149|size=18|outline=1|text=�������е�ͼ���ɱ�������װ��>
		
	]]
	
	for i = 1,#daanniu do
		if i == anniu1 then
			msg = msg ..'<Button|x=18.0|y='.. 26+(i-1) * 60 ..'|nimg=zh/97.png|pimg=zh/97.png|color=250|size=18|text='.. daanniu[i] ..'>'
		else
			msg = msg ..'<Button|x=18.0|y='.. 26+(i-1) * 60 ..'|nimg=zh/98.png|pimg=zh/98.png|color=7|size=18|text='.. daanniu[i] ..'|link=@show,'..i..'>'
		end
	end
	
	local t = xiaoanniu[anniu1]
	for i = 1,#t do
		if i == anniu2 then
			msg = msg ..'<Button|x='.. 164 + (i-1)%2*140 ..'|y='.. 26+math.floor((i-1)/2) * 58 ..'|nimg=zh/97.png|size=18|color=250|text='..t[i] ..'>'
		else
			msg = msg ..'<Button|x='.. 164 + (i-1)%2*140 ..'|y='.. 26+math.floor((i-1)/2) * 58 ..'|nimg=zh/98.png|size=18|color=7|text='..t[i] ..'|link=@show,'..anniu1..','..i..'>'
		end
	end

	local mapname = xiaoanniu[anniu1][anniu2]
	if mapname then
		local texts = map_t[mapname].jieshao
		for i = 1,#texts do
			msg = msg ..'<RText|x=152.0|y='.. 285+(i-1)*25 ..'|color=103|width=280|size=16|outline=1|text='.. texts[i] ..'>'
		end
		
		if map_t[mapname].tiaojian then
			local str = map_t[mapname].tiaojian
			if getsysint("��������") > 0 and map_t[mapname].hequ then
				str = map_t[mapname].hequ
			end
			if getsysint("��������") > 1 and map_t[mapname].hequ2 then
				str = map_t[mapname].hequ2
			end
			local zb = 396
			if anniu1 == 2 or anniu1 == 3 or anniu1 == 4 then
				zb = 374
			end
			msg = msg ..'<RText|x=152.0|y='.. zb ..'|color=255|width=280|size=16|outline=1|text=��ͼ������<'.. str ..'/FCOLOR=250>>'
		end
	else
		msg = msg ..'<RText|x=152.0|y=303.0|width=280|color=161|size=16|outline=1|text=��˵ÿ����ʮ����.Ȫ�۶���������������ϵ�ͼ��ĳһ������....          >'
	end
	msg = msg ..'<Button|id=221|x=235.0|y=425.0|color=10051|size=18|nimg=zh/97.png|text=�����ͼ|link=@chuansong,'.. anniu1 ..','.. anniu2 ..'>'
	
	if anniu1 == 1 and anniu2 == 2 then
		if fangjiahao[getconst(actor,"<$USERACCOUNT>")] then
			msg = msg ..'<Text|x=362.0|y=395|color=250|size=16|outline=1|text=���|link=@jingmfangjian>'
		end
	end
	if getsysint("��������") >=2 then
		if getint(actor,"���ѻ���֤") == 0 then
			msg = msg ..'<Button|x=16.0|y=366.0|width=120|nimg=zh/97.png|color=255|size=16|text=�������ѻ���֤|link=@kaiqifangtuoji,'.. anniu1 ..','.. anniu2 ..'>'
		else
			msg = msg ..'<Button|x=16.0|y=366.0|width=120|nimg=zh/97.png|color=249|size=16|text=�ѿ�����֤>'
		end
		msg = msg ..'<Button|x=18.0|y=431.0|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@show,'.. anniu1 ..','.. anniu2 ..',1>'
	end
	if xianshi == 1 then
		msg=msg..'<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@show,'.. anniu1 ..','.. anniu2 ..'>'
		if getsysint("��������") >=6 then
			msg =msg..[[
			<Img|ay=0.5|x=52.0|y=329.0|width=370|height=260|scale9t=10|scale9b=10|img=zh/7.png|scale9r=10|esc=0|scale9l=10>
			<RText|x=64.0|y=208.0|size=16|color=255|text=���κ�����ʼ.Ϊ��ֹ�ѻ��������Ӱ���������>
			<RText|x=64.0|y=230.0|width=344|size=16|color=255|text=���飬����58�����µ�ͼ��Ҫ�������ѻ���֤��>
			<RText|x=64.0|y=252.0|width=344|size=16|color=255|text=ÿ�ο�����Ҫʮ��ǰ󶨽��.>
			<RText|x=64.0|y=274.0|width=344|size=16|color=255|text=�ڿ������ͼ��ɱ������ʧʮ����.>
			<RText|x=65.0|y=296.0|color=255|size=16|text=ɱ���߿ɻ��������.������ͼ����.���ѻ���>
			<RText|x=64.0|y=318.0|width=344|color=255|size=16|text=֤��ʶ������ʧ.Ҳ������ʧ���.<ɱ�˲���pkֵ/FCOLOR=250>>
			<RText|x=64.0|y=340.0|width=344|size=16|color=255|text=δ�ﵽ��ת�����ʹ����������ӳ�3��.>
			<RText|x=64.0|y=362.0|width=344|color=255|size=16|text=������ҿ������ѻ���֤���ñ����һ�ʹ�����>
			<RText|x=64.0|y=384.0|width=344|color=255|size=16|text=���ӳ�.���赣��������ʧ�������>
			<RText|x=64.0|y=406.0|width=344|color=255|size=16|text=��Ŀ���ǽ���Ϸ�ռ�������Ҫ���������.������>
			<RText|x=64.0|y=428.0|width=344|color=255|size=16|text=���Ĵ������迪�����ѻ���֤>

			]]
		elseif getsysint("��������") >=5 then
			msg =msg..[[
			<Img|ay=0.5|x=52.0|y=329.0|width=370|height=260|scale9t=10|scale9b=10|img=zh/7.png|scale9r=10|esc=0|scale9l=10>
			<RText|x=64.0|y=208.0|size=16|color=255|text=��κ�����ʼ.Ϊ��ֹ�ѻ��������Ӱ���������>
			<RText|x=64.0|y=230.0|width=344|size=16|color=255|text=���飬����58�����µ�ͼ��Ҫ�������ѻ���֤��>
			<RText|x=64.0|y=252.0|width=344|size=16|color=255|text=ÿ�ο�����Ҫʮ��ǰ󶨽��.>
			<RText|x=64.0|y=274.0|width=344|size=16|color=255|text=�ڿ������ͼ��ɱ������ʧʮ����.>
			<RText|x=65.0|y=296.0|color=255|size=16|text=ɱ���߿ɻ��������.������ͼ����.���ѻ���>
			<RText|x=64.0|y=318.0|width=344|color=255|size=16|text=֤��ʶ������ʧ.Ҳ������ʧ���.<ɱ�˲���pkֵ/FCOLOR=250>>
			<RText|x=64.0|y=340.0|width=344|size=16|color=255|text=δ�ﵽһת�����ʹ����������ӳ�3��.>
			<RText|x=64.0|y=362.0|width=344|color=255|size=16|text=������ҿ������ѻ���֤���ñ����һ�ʹ�����>
			<RText|x=64.0|y=384.0|width=344|color=255|size=16|text=���ӳ�.���赣��������ʧ�������>
			<RText|x=64.0|y=406.0|width=344|color=255|size=16|text=��Ŀ���ǽ���Ϸ�ռ�������Ҫ���������.������>
			<RText|x=64.0|y=428.0|width=344|color=255|size=16|text=���Ĵ������迪�����ѻ���֤>

			]]
		else
			msg =msg..[[
			<Img|ay=0.5|x=52.0|y=329.0|width=370|height=260|scale9t=10|scale9b=10|img=zh/7.png|scale9r=10|esc=0|scale9l=10>
			<RText|x=64.0|y=208.0|color=255|size=16|text=���κ�����ʼ.Ϊ��ֹ�ѻ��������Ӱ���������>
			<RText|x=64.0|y=230.0|width=344|size=16|color=255|text=���飬��������İ��ŵ�ͼ��ħ��Ѫ����Ҫ����>
			<RText|x=64.0|y=252.0|width=344|size=16|color=255|text=���ѻ���֤��ÿ�ο�����Ҫʮ��ǰ󶨽��.>
			<RText|x=64.0|y=274.0|width=344|color=255|size=16|text=�ڳ����������ͼ��ɱ������ʧʮ����.>
			<RText|x=65.0|y=296.0|color=255|size=16|text=ɱ���߿ɻ��������.������ͼ����.���ѻ���>
			<RText|x=64.0|y=318.0|width=344|color=255|size=16|text=֤��ʶ������ʧ.Ҳ������ʧ���.<ɱ�˲���pkֵ/FCOLOR=250>>
			<RText|x=64.0|y=340.0|width=344|color=255|size=16|text=��ϵͳ�ж�Ϊ�ѻ������ʹ����������ӳ�3��.>
			<RText|x=64.0|y=362.0|width=344|color=255|size=16|text=������ҿ������ѻ���֤���ñ����һ�ʹ�����>
			<RText|x=64.0|y=384.0|width=344|color=255|size=16|text=���ӳ�.���赣��������ʧ�������>
			<RText|x=64.0|y=406.0|width=344|color=255|size=16|text=��Ŀ���ǽ���Ϸ�ռ�������Ҫ���������.������>
			<RText|x=64.0|y=428.0|width=344|color=255|size=16|text=���Ĵ������迪�����ѻ���֤>
			]]
		end
	end
	
	say(actor,msg)
end
function kaiqifangtuoji(actor,anniu1,anniu2)
	messagebox(actor,"\n�������ѻ���֤��Ҫ���� ʮ��ǰ󶨽��\n\n�Ƿ�ȷ��������","@kaiqifangtuoji1,".. anniu1 ..",".. anniu2,"@kong")
end
function kaiqifangtuoji1(actor,anniu1,anniu2)
	if hasbuff(actor,10001) or hasbuff(actor,20083) then
		sendmsg9(actor,"���Ѿ����������Ĵ��ˣ����迪�����ѻ���֤","#00ff00")
		return
	end
	if getint(actor,"���ѻ���֤") == 1 then
		sendmsg9(actor,"���Ѿ������˷��ѻ���֤","#00ff00")
		return
	end
	if getgold(actor) < 100000 then
		sendmsg9(actor,"�ǰ󶨽�Ҳ��㣬�޷�����","#00ff00")
		return
	end
	subgold(actor,100000)
	setint(actor,"���ѻ���֤",1)
	confertitle(actor,"���ѻ���֤")
	sendmsg9(actor,"�ɹ��������ѻ���֤","#00ff00")
	return show(actor,anniu1,anniu2)
end

function jingmfangjian(actor)
	if fangjiahao[getconst(actor,"<$USERACCOUNT>")] then
		local t = fangjiahao[getconst(actor,"<$USERACCOUNT>")]
		map(actor,t[1])
	end
end

function chuansong(actor,anniu1,anniu2)
	anniu1 = tonumber(anniu1)
	anniu2 = tonumber(anniu2)
	if anniu2 == 0 then
		sendmsg9(actor,"��ѡ��Ҫ����ĵ�ͼ")
		return
	end
	local mapname = xiaoanniu[anniu1][anniu2]
	if mapname == "BOSS�Թ�" then
		sendmsg9(actor,"�뵽���ǿ�ջ����С�㴦��̽����","#00FFFF")
		return
	end
	if getsysint("��������") >=5 then
		if anniu1 == 1 or anniu1==2 then
			if not hasbuff(actor,10001) and not hasbuff(actor,20083) and getint(actor,"���ѻ���֤") == 0 then
				sendmsg9(actor,"���ȿ������ѻ���֤�ſɽ���58�����µ�ͼ","#00ff00")
				return
			end
		end
	elseif getsysint("��������") >=2 then
		if anniu1 == 1 or mapname=="ħ��Ѫ��" then
			if not hasbuff(actor,10001) and not hasbuff(actor,20083) and getint(actor,"���ѻ���֤") == 0 then
				sendmsg9(actor,"���ȿ������ѻ���֤�ſɽ��������ͼ��ħ��Ѫ��","#00ff00")
				return
			end
		end
	end
	
	if mapname == "ţħ����" then
		if getint(actor,"��Ա�ȼ�") < 4 and getlevel(actor) < 45 then
			messagebox(actor,"��\nΪ��ֹȺ���ѻ��Ŷ�������ҵ���Ϸ����\n��\n����˵�ͼ��Ͷ��ר�ҵ������ȼ��ﵽ45��")
			return
		end
	end
	
	local xuqiu_t = map_t[mapname].xuqiu
	if xuqiu_t then
		if getlevel(actor) < xuqiu_t.lv and getbaseinfo(actor,39) == 0 then
			sendmsg9(actor,"�ȼ�����")
			return
		end
		
		if xuqiu_t.zjzt then
			if not hasbuff(actor,10055) then
				sendmsg9(actor,"��ﵽ���״̬���ܽ���")
				return
			end
		end
		
		if mapname == "ɳӰ֮��" and castleinfo(5) then
		
		else
			local items = xuqiu_t[1]
			if getsysint("��������") > 0 and xuqiu_t[2] then
				items = xuqiu_t[2]
			end
			if items[1] == "���" then
				if getbindgold(actor) < items[2] then
					sendmsg9(actor,"��Ҳ���")
					return
				end
				if items[2] > 0 then
					subbindgold(actor,items[2])
				end
			else
				if itemcount(actor,items[1]) < items[2] then
					sendmsg9(actor,items[1].."����")
					return
				end
				takeitem(actor,items[1],items[2])
			end
		end
	end
	
	if getsysint("��������") > 1 and map_t[mapname].hequ2 then
		if getbindgold(actor) < 20000 then
			sendmsg9(actor,"��Ҳ���")
			return
		end
		subbindgold(actor,20000)
	end
	
	local t = map_t[mapname]
	local mapid = t[1]
	if mapid == "d022" and os.time() - getsysint("����ʱ��") < 3600*6 then
		local t=getplayerlst()
		local sl = 0
		for k, v in ipairs(t) do
			if v and isnotnull(v) and not getbaseinfo(v,61) then
				sl = sl + 1
			end
		end
		if sl > 200 and math.random(1,100) < 50 then
			mapid = "womajingxiang"
		end
	end
	
	if mapid == "d2073" and os.time() - getsysint("����ʱ��") < 3600*4 then
		local t=getplayerlst()
		local sl = 0
		for k, v in ipairs(t) do
			if v and isnotnull(v) and not getbaseinfo(v,61) then
				sl = sl + 1
			end
		end
		if sl >= 400 then
			setsysint("����ţħ����",1)
		end
		if getsysint("����ţħ����") == 1 and math.random(1,100) < 50 then
			mapid = "niumojingxiang"
		end
	end
	


	if t[2] then
		--[[if t[4] then
			if math.random(1,100) < 50 then
				mapmove(actor,mapid,t[4],t[5],0)
				return
			end
		end--]]
		if mapname == "ɳӰ֮��" and castleinfo(5) then
			mapmove(actor,mapid,t[4],t[5],0)
		else
			mapmove(actor,mapid,t[2],t[3],0)
		end
	else
		map(actor,mapid)
	end
	if anniu1 >= 2 and anniu1 <= 4 and getbaseinfo(actor,39) == 0 then
		sendmsg0(actor,"����ϵͳ���¸ҵ���ʿ:��".. getname(actor) .."������".. mapname .."��ͼѰ�Ҹ߼�װ��ȥ�ˣ����ף�����ɡ�",117,94)
	end
	setint(actor,"��ͼ�������",0)
end
