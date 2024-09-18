release_print("~~~~~~~~~~~~~����huishou.lua~~~~~~~~")
local hs_xianshit= {
	{title="����װ��",yanse=255,tishi=0},
	{title="����ϵ��",yanse=255,tishi=0},
	{title="����ϵ��",yanse=250,tishi=1},
	{title="����ϵ��",yanse=250,tishi=1},
	{title="����ϵ��",yanse=251,tishi=1},
	{title="��֮ϵ��",yanse=251,tishi=1},
	{title="S1ϵ��",yanse=251,tishi=2},
	{title="S2ϵ��",yanse=251,tishi=2},
	{title="����ϵ��",yanse=251,tishi=1},
}

local hs_fenlei = {
	{"ն��","��������","��ɲ","���۽�ָ","ħ������","ħ������","�������","���","���������","��˪","������","����ͷ��","��ʿͷ��","��������","������","��̴����","������ָ","ɺ����ָ",
"������ħ��ָ","��ħ","����","����","�ؿ���(��)","�ؿ���(Ů)","ħ������(��)","ħ������(Ů)","���ս��(��)","���ս��(Ů)","ս�����(��)","ս�����(Ů)","����ս��(��)","����ս��(Ů)",
"��ħ����(��)","��ħ����(Ů)","���ý�ָ","�Ŵ�","��ʿ����","���½�ָ"
},

	{"ħ��","��������","˼��������","�챦ʯ��ָ","����","�޼���","��������","��������","�����ָ","����","������","��������","��������","��֮��ָ","������","¹Ƥѥ",},
	
	{"43�Ŷ���","43��ѫ��","44�Ŷ���","44��ѫ��","45�Ŷ���","45��ѫ��","�þ�֮��","����Ȩ��","���ƽ�","��ɫ����","��ʿ����","������ָ","��������","����ѥ��","��ħ����","��֮����","�ϱ���","��ħ����","��ħѥ��","�������","��������","̩̹��ָ","̩̹����","̩̹ѥ��",},

	{"Ѫ��","��ħ���","ʥս����","��������","��������","�������","��ʦ����","ʥսͷ��","ʥս����","ʥս����","ʥս��ָ","ʥս����","ʥսѥ��","����ͷ��","��������","��������","�����ָ","��������","����ѥ��","����ͷ��","��������","��������","�����ָ","��������","����ѥ��",},

	{"ŭն","����","��ң��","ʥ����","��������","��������","����ս��","��������","����սѥ","ħ����","��������",
"���滤��","����ħ��","����ħѥ","��������","������","��â����","��â����","��â����","��â��ѥ","��â����",},

	{"����","�Ȼ귨��","����֮��","����ս��(��)","����ս��(Ů)","����ħ��(��)","����ħ��(Ů)","��â����(��)","��â����(Ů)","��֮ʥ����","��֮��������","��֮��������",
"��֮����ս��","��֮��������","��֮����սѥ","��֮ħ����","��֮��������","��֮���滤��","��֮����ħ��","��֮����ħѥ","��֮��������","��֮������","��֮��â����",
"��֮��â����","��֮��â����","��֮��â��ѥ","��֮��â����",},

	{"����ս��(��)","����ս��(Ů)","ŭ��ħ��(��)","ŭ��ħ��(Ů)","�������(��)","�������(Ů)","ս��ͷ��","ս������","ս������","ս���ָ","ս������","ս��ʥѥ",
"ʥħͷ��","ʥħ����","ʥħ����","ʥħ��ָ","ʥħ����","ʥħ��ѥ","���ͷ��","�������","�������","����ָ","�������","����ѥ",},

	{"����ս��","����ս��","��սͷ��","��ս����","��ս����","��ս��ָ","��ս����","��սʥѥ",
"��ħ����","��ħ����","����ͷ��","��������","��������","������ָ","��������","������ѥ",
"������","�����","̫��ͷ��","̫������","̫������","̫����ָ","̫������","̫����ѥ",},

	{"����ͷ��","��������","��������","������ָ","ħ��ͷ��","ħ������","ħ��ѥ��","��ͷ��","ħѪ��ָ","ħѪ����","ħѪ����","������","������ħ��","������ָ","�����ָ","��ħ��ָ","����ʥѥ","����ʥ��"},
}

local yijianhuishou = {
	["ն��"]=1,["��������"]=1,["��ɲ"]=1,["���۽�ָ"]=1,["ħ������"]=1,["ħ������"]=1,["�������"]=1,["���"]=1,["���������"]=1,["��˪"]=1,["������"]=1,["����ͷ��"]=1,["��ʿͷ��"]=1,
	["��������"]=1,["������"]=1,["��̴����"]=1,["������ָ"]=1,["ɺ����ָ"]=1,["������ħ��ָ"]=1,["��ħ"]=1,["����"]=1,["����"]=1,["�ؿ���(��)"]=1,["�ؿ���(Ů)"]=1,["ħ������(��)"]=1,
	["ħ������(Ů)"]=1,["���ս��(��)"]=1,["���ս��(Ů)"]=1,["ս�����(��)"]=1,["ս�����(Ů)"]=1,["����ս��(��)"]=1,["����ս��(Ů)"]=1,["��ħ����(��)"]=1,["��ħ����(Ů)"]=1,
	["���ý�ָ"]=1,["�Ŵ�"]=1,["��ʿ����"]=1,["���½�ָ"]=1,
	
	["ħ��"]=2,["��������"]=2,["˼��������"]=2,["�챦ʯ��ָ"]=2,["����"]=2,["�޼���"]=2,["��������"]=2,["��������"]=2,["�����ָ"]=2,["����"]=2,["������"]=2,["��������"]=2,["��������"]=2,
	["��֮��ָ"]=2,["������"]=2,["¹Ƥѥ"]=2,
	
	["43�Ŷ���"]=3,["43��ѫ��"]=3,["44�Ŷ���"]=3,["44��ѫ��"]=3,["45�Ŷ���"]=3,["45��ѫ��"]=3,["�þ�֮��"]=3,["����Ȩ��"]=3,["���ƽ�"]=3,["��ɫ����"]=3,["��ʿ����"]=3,["������ָ"]=3,
	["��������"]=3,["����ѥ��"]=3,["��ħ����"]=3,["��֮����"]=3,["�ϱ���"]=3,["��ħ����"]=3,["��ħѥ��"]=3,["�������"]=3,["��������"]=3,["̩̹��ָ"]=3,["̩̹����"]=3,["̩̹ѥ��"]=3,
	
	["Ѫ��"]=4,["��ħ���"]=4,["ʥս����"]=4,["��������"]=4,["��������"]=4,["�������"]=4,["��ʦ����"]=4,["ʥսͷ��"]=4,["ʥս����"]=4,["ʥս����"]=4,["ʥս��ָ"]=4,["ʥս����"]=4,
	["ʥսѥ��"]=4,["����ͷ��"]=4,["��������"]=4,["��������"]=4,["�����ָ"]=4,["��������"]=4,["����ѥ��"]=4,["����ͷ��"]=4,["��������"]=4,["��������"]=4,["�����ָ"]=4,["��������"]=4,
	["����ѥ��"]=4,
	
	["ŭն"]=5,["����"]=5,["��ң��"]=5,["ʥ����"]=5,["��������"]=5,["��������"]=5,["����ս��"]=5,["��������"]=5,["����սѥ"]=5,["ħ����"]=5,["��������"]=5,
	["���滤��"]=5,["����ħ��"]=5,["����ħѥ"]=5,["��������"]=5,["������"]=5,["��â����"]=5,["��â����"]=5,["��â����"]=5,["��â��ѥ"]=5,["��â����"]=5,
	
	["����"]=6,["�Ȼ귨��"]=6,["����֮��"]=6,["����ս��(��)"]=6,["����ս��(Ů)"]=6,["����ħ��(��)"]=6,["����ħ��(Ů)"]=6,["��â����(��)"]=6,["��â����(Ů)"]=6,["��֮ʥ����"]=6,
	["��֮��������"]=6,["��֮��������"]=6,["��֮����ս��"]=6,["��֮��������"]=6,["��֮����սѥ"]=6,["��֮ħ����"]=6,["��֮��������"]=6,["��֮���滤��"]=6,["��֮����ħ��"]=6,["��֮����ħѥ"]=6,
	["��֮��������"]=6,["��֮������"]=6,["��֮��â����"]=6,["��֮��â����"]=6,["��֮��â����"]=6,["��֮��â��ѥ"]=6,["��֮��â����"]=6,
	
	["����ս��(��)"]=7,["����ս��(Ů)"]=7,["ŭ��ħ��(��)"]=7,["ŭ��ħ��(Ů)"]=7,["�������(��)"]=7,["�������(Ů)"]=7,["ս��ͷ��"]=7,["ս������"]=7,["ս������"]=7,["ս���ָ"]=7,
	["ս������"]=7,["ս��ʥѥ"]=7,["ʥħͷ��"]=7,["ʥħ����"]=7,["ʥħ����"]=7,["ʥħ��ָ"]=7,["ʥħ����"]=7,["ʥħ��ѥ"]=7,["���ͷ��"]=7,["�������"]=7,["�������"]=7,["����ָ"]=7,
	["�������"]=7,["����ѥ"]=7,
	
	["����ս��"]=8,["����ս��"]=8,["��սͷ��"]=8,["��ս����"]=8,["��ս����"]=8,["��ս��ָ"]=8,["��ս����"]=8,["��սʥѥ"]=8,
	["��ħ����"]=8,["��ħ����"]=8,["����ͷ��"]=8,["��������"]=8,["��������"]=8,["������ָ"]=8,["��������"]=8,["������ѥ"]=8,
	["������"]=8,["�����"]=8,["̫��ͷ��"]=8,["̫������"]=8,["̫������"]=8,["̫����ָ"]=8,["̫������"]=8,["̫����ѥ"]=8,
	
	["����ͷ��"]=9,["��������"]=9,["��������"]=9,["������ָ"]=9,["ħ��ͷ��"]=9,["ħ������"]=9,["ħ��ѥ��"]=9,["��ͷ��"]=9,["ħѪ��ָ"]=9,["ħѪ����"]=9,["ħѪ����"]=9,
	["������"]=9,["������ħ��"]=9,["������ָ"]=9,["�����ָ"]=9,["��ħ��ָ"]=9,["����ʥѥ"]=9,["����ʥ��"]=9,
}

local danjian = {
	["����ս��(��)"]={{"���",300000},{"��ˮ����",60}},
	["����ս��(Ů)"]={{"���",300000},{"��ˮ����",60}},
	["ŭ��ħ��(��)"]={{"���",300000},{"��ˮ����",60}},
	["ŭ��ħ��(Ů)"]={{"���",300000},{"��ˮ����",60}},
	["�������(��)"]={{"���",300000},{"��ˮ����",60}},
	["�������(Ů)"]={{"���",300000},{"��ˮ����",60}},
	["ս��ͷ��"]={{"���",300000},{"��ˮ����",60}},
	["ս������"]={{"���",300000},{"��ˮ����",60}},
	["ս������"]={{"���",300000},{"��ˮ����",60}},
	["ս���ָ"]={{"���",300000},{"��ˮ����",60}},
	["ս������"]={{"���",300000},{"��ˮ����",60}},
	["ս��ʥѥ"]={{"���",300000},{"��ˮ����",60}},
	["ʥħͷ��"]={{"���",300000},{"��ˮ����",60}},
	["ʥħ����"]={{"���",300000},{"��ˮ����",60}},
	["ʥħ����"]={{"���",300000},{"��ˮ����",60}},
	["ʥħ��ָ"]={{"���",300000},{"��ˮ����",60}},
	["ʥħ����"]={{"���",300000},{"��ˮ����",60}},
	["ʥħ��ѥ"]={{"���",300000},{"��ˮ����",60}},
	["���ͷ��"]={{"���",300000},{"��ˮ����",60}},
	["�������"]={{"���",300000},{"��ˮ����",60}},
	["�������"]={{"���",300000},{"��ˮ����",60}},
	["����ָ"]={{"���",300000},{"��ˮ����",60}},
	["�������"]={{"���",300000},{"��ˮ����",60}},
	["����ѥ"]={{"���",300000},{"��ˮ����",60}},
	
	["����ս��"]={{"���",1000000},{"��ˮ����",200}},
	["����ս��"]={{"���",1000000},{"��ˮ����",200}},
	["��սͷ��"]={{"���",1000000},{"��ˮ����",200}},
	["��ս����"]={{"���",1000000},{"��ˮ����",200}},
	["��ս����"]={{"���",1000000},{"��ˮ����",200}},
	["��ս��ָ"]={{"���",1000000},{"��ˮ����",200}},
	["��ս����"]={{"���",1000000},{"��ˮ����",200}},
	["��սʥѥ"]={{"���",1000000},{"��ˮ����",200}},
	["��ħ����"]={{"���",1000000},{"��ˮ����",200}},
	["��ħ����"]={{"���",1000000},{"��ˮ����",200}},
	["����ͷ��"]={{"���",1000000},{"��ˮ����",200}},
	["��������"]={{"���",1000000},{"��ˮ����",200}},
	["��������"]={{"���",1000000},{"��ˮ����",200}},
	["������ָ"]={{"���",1000000},{"��ˮ����",200}},
	["��������"]={{"���",1000000},{"��ˮ����",200}},
	["������ѥ"]={{"���",1000000},{"��ˮ����",200}},
	["������"]={{"���",1000000},{"��ˮ����",200}},
	["�����"]={{"���",1000000},{"��ˮ����",200}},
	["̫��ͷ��"]={{"���",1000000},{"��ˮ����",200}},
	["̫������"]={{"���",1000000},{"��ˮ����",200}},
	["̫������"]={{"���",1000000},{"��ˮ����",200}},
	["̫����ָ"]={{"���",1000000},{"��ˮ����",200}},
	["̫������"]={{"���",1000000},{"��ˮ����",200}},
	["̫����ѥ"]={{"���",1000000},{"��ˮ����",200}},

	["����ͷ��"]={{"���",500}},
	["��������"]={{"���",1000}},
	["��������"]={{"���",1000}},
	["������ָ"]={{"���",1000}},
	["ħ��ͷ��"]={{"���",1000}},
	["ħ������"]={{"���",1000}},
	["ħ��ѥ��"]={{"���",1000}},
	["��ͷ��"]={{"���",1000}},

	["ħѪ��ָ"]={{"��ˮ����",1}},
	["ħѪ����"]={{"��ˮ����",1}},
	["ħѪ����"]={{"��ˮ����",1}},
	["������"]={{"��ˮ����",1}},
	["������ħ��"]={{"��ˮ����",1}},
	["������ָ"]={{"��ˮ����",1}},
	["�����ָ"]={{"��ˮ����",1}},
	["��ħ��ָ"]={{"��ˮ����",1}},
	["����ʥѥ"]={{"��ˮ����",1}},
	["����ʥ��"]={{"��ˮ����",1}},

	["��ħ��ָ"]={{"��ˮ����",15}},
	["��ħ����"]={{"��ˮ����",15}},
	["��ħ����"]={{"��ˮ����",15}},
	["1.1��������"]={{"��ˮ����",15}},
	["����ͷ��"]={{"��ˮ����",15}},
	["��������"]={{"��ˮ����",15}},
	["����ѥ��"]={{"��ˮ����",15}},
	["�ϵ�֮��"]={{"��ˮ����",15}},
	["�����ָ"]={{"��ˮ����",15}},
	["�������"]={{"��ˮ����",15}},
	["����ָ"]={{"��ˮ����",15}},
	["��ɫ��������"]={{"��ˮ����",15}},
	["��а����"]={{"��ˮ����",15}},
	["�������"]={{"��ˮ����",15}},
	["���ն�����"]={{"��ˮ����",15}},
	["�����ָ"]={{"��ˮ����",15}},
	["����ͷ��"]={{"��ˮ����",15}},
	["��������"]={{"��ˮ����",15}},
	["���ؽ�ָ"]={{"��ˮ����",15}},
	["��������"]={{"��ˮ����",15}},
	["��������"]={{"��ˮ����",15}},
	["��ħ����"]={{"��ˮ����",15}},
	["��������"]={{"��ˮ����",15}},

	["��Ԩ��ָ"]={{"��ˮ����",50}},
	["�Ƽ�ָ��"]={{"��ˮ����",50}},
	["������"]={{"��ˮ����",50}},
	["����ָ"]={{"��ˮ����",50}},
	["�ػ�ͷ��"]={{"��ˮ����",50}},
	["�ػ�ѥ��"]={{"��ˮ����",50}},
	["�ػ�����"]={{"��ˮ����",50}},
	["��̵���������"]={{"��ˮ����",50}},

	["��Ѫ��ָ"]={{"����֮��",3}},
	["��Ѫ����"]={{"����֮��",3}},
	["��Ѫ����"]={{"����֮��",3}},
	["ŭѪ��ָ"]={{"����֮��",3}},
	["ŭѪ����"]={{"����֮��",3}},
	["ŭѪ����"]={{"����֮��",3}},
	["������ħ��"]={{"����֮��",3}},
	["��Ұ��"]={{"����֮��",3}},
	["ף������(��ӡ)"]={{"����֮��",3}},

	["����֮��"]={{"����֮��",6}},
	["��������(��ӡ)"]={{"����֮��",6}},
	["�����ָ(��ӡ)"]={{"����֮��",6}},
	["��ħ֮ѥ(��ӡ)"]={{"����֮��",6}},
	["��ħ֮��(��ӡ)"]={{"����֮��",6}},
	["1.2��������"]={{"����֮��",6}},
}

function huishoushow(actor,xianshi,xzwyid,shuoming)
	
	if getint(actor,"��ʼ����������") == 0 then
		chushihua(actor)
		setint(actor,"��ʼ����������",1)
	end
	
	xianshi = tonumber(xianshi) or 0
	xzwyid = tonumber(xzwyid) or 0
	shuoming = tonumber(shuoming) or 0
	local msg = [[
		<Img|show=4|bg=1|scale9r=20|scale9l=20|reset=0|scale9b=20|img=zhangheng/228.png|move=1|esc=1|scale9t=20>
		<Button|x=606.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.0|y=-15.0|img=zhangheng/2.png|esc=0>
		<Img|x=50.0|y=5.0|img=zhangheng/229.png|esc=0>
		<Img|ax=0|x=104.0|y=38.0|width=200|height=50|rotate=0|esc=0|img=zhangheng/232.png>
		<RText|x=408.0|y=52.0|color=95|size=18|text=��ѡ���������װ��>
		<Text|x=67.0|y=398.0|color=251|size=18|text=�Զ�����>
		<Img|x=176.0|y=273.0|img=zhangheng/231.png|esc=0>
		<Button|x=20.0|y=41.0|size=18|color=255|nimg=zhangheng/8.png|link=@huishoushow,0,0,1>
	]]
	msg=msg..'<Button|x=275.0|y=390.0|nimg=zhangheng/13.png|color=10051|size=18|text=һ������|link=@huishoucaozuo,1,'..xzwyid..'>'
	if getint(actor,"�Զ�����") == 0 then
		msg = msg ..'<Img|x=33.0|y=393.0|img=zhangheng/169.png|link=@zidonghuishoushezhi>' --�Զ�����ѡ���
	else
		msg = msg ..'<Img|x=33.0|y=393.0|img=zhangheng/170.png|link=@zidonghuishoushezhi>' --�Զ�����ѡ���
	end
	local bili = getbaseinfo(actor,51,203)
	if bili == 0 then
		--msg = msg ..'<RText|ax=0.5|ay=0.5|x=208.0|y=70.5|color=250|size=18|text=���ձ�����<��/FCOLOR=31>>'
	else
		msg = msg ..'<RText|ax=0.5|ay=0.5|x=208.0|y=70.5|color=250|size=18|text=���ձ�����<+'.. bili ..'%/FCOLOR=31>>'
	end

	local geshu = 3 --ÿ�Ÿ���
	local jianjux = 120
	local yxy = 50
	for i = 1,#hs_xianshit do
		--��
		if getint(actor,"����ϵ��"..i) == 0 then
			msg = msg ..'<Img|x='.. 29+((i-1)%geshu)*jianjux ..'|y='.. yxy+57 + math.floor((i-1)/geshu) * 50 ..'|img=zhangheng/169.png|link=@hs_shezhi,'.. i ..'>'
		else
			msg = msg ..'<Img|x='.. 29+((i-1)%geshu)*jianjux ..'|y='.. yxy+57 + math.floor((i-1)/geshu) * 50 ..'|img=zhangheng/170.png|link=@hs_shezhi,'.. i ..'>'
		end
		--ϵ������
		if hs_xianshit[i].tishi > 0 then
			msg = msg ..'<Text|id='.. 10000+i ..'|x='.. 60+((i-1)%geshu)*jianjux ..'|y='.. yxy+62 + math.floor((i-1)/geshu) * 50 ..'|color='.. hs_xianshit[i].yanse ..'|size=18|text='.. hs_xianshit[i].title ..'|link=@huishoushow,'..i..'>'
		else
			msg = msg ..'<Text|x='.. 60+((i-1)%geshu)*jianjux ..'|y='.. yxy+62 + math.floor((i-1)/geshu) * 50 ..'|color='.. hs_xianshit[i].yanse ..'|size=18|text='.. hs_xianshit[i].title ..'>'
		end
		--����
		if i%3 == 1 then
			msg = msg ..'<Img|x=44.0|y='.. yxy+96 + math.floor((i-1)/geshu) * 50 ..'|width=300|img=zhangheng/203.png|esc=0>'
		end
	end
	
	-----�ұ߿����Ʒ
	local t = {}
	local list = getbaglist(actor) --��ȡ���������б�
	for i = 1,#list do
		local id = getiteminfo(actor,list[i],2) --��Ʒid
		local name = getstditeminfo(id,1)
		if danjian[name] then
			--getitemaddvalue(actor,baglist[i],2,2) == 249   --��ɫװ��
			table.insert(t,list[i])
		end
	end
	local ziids = ""
	for i = 2002,2002+#t+30 do
		ziids = ziids .. i .. ","
	end
	
	local ziid = 2002
	local ysxx = -12
	local ysyy = -2
	local gaodu = (math.floor((#t-1)/3) + 1) * 65 + 3
	msg = msg ..'<ListView|id=1999|children={2000}|x=389.5|y=92.5|width=198|height=332|direction=1|margin=0|bounce=0>'
	msg = msg ..'<Layout|id=2000|children={2001}|height='.. gaodu ..'>' --���õ׿�� ��
	msg = msg ..'<Layout|id=2001|children={'.. ziids ..'}|height='.. gaodu ..'>' --���õ׿�� ��
	for i = 1,15 do
		msg = msg ..'<Img|id='..ziid..'|x='.. ysxx+19 + (i-1)%3*65 ..'|y='.. ysyy+9+math.floor((i-1)/3) * 65 ..'|img=zhangheng/231.png>'
		ziid = ziid + 1		
	end
	local xhh = 0
	for i = 1,#t do
		
		local makeid = getiteminfo(actor,t[i],1)
		local itemname = getitemnamebymakeid(actor,makeid) --id
		if ( itemname == "ף������(��ӡ)" or itemname == "��������(��ӡ)" or itemname == "�����ָ(��ӡ)" or itemname == "��ħ֮ѥ(��ӡ)" or itemname == "��ħ֮��(��ӡ)" ) and getisjianquguo(actor,t[i]) == 0 then --û���� ���ܻ���
	
		else
			xhh = xhh + 1
			msg = msg ..'<Img|id='..ziid..'|children={wuping'..i..',liangkuang'..i..'}||x='.. ysxx+19 + (xhh-1)%3*65 ..'|y='.. ysyy+9+math.floor((xhh-1)/3) * 65 ..'|img=zhangheng/231.png>'
			ziid = ziid + 1
			if makeid == xzwyid then
				msg = msg ..'<DBItemShow|id=wuping'..i..'|x=-6|y=-4|makeindex='..makeid..'|link=@huishoushow>'
				msg = msg ..'<Img|id=liangkuang'..i..'|x=0|y=0|img=zh/71.png|esc=0>'
				msg = msg ..'<DBItemShow|x=170.5|y=262.5|width=70|height=70|makeindex='..makeid..'|itemcount=1|showtips=1|bgtype=0>'
				
				--sendmsg6(actor,tostring(itemname))
				local par = 1 --����ûѡĬ�ϻ��ս��
				if getint(actor,itemname) == 2 then
					par = 2
				end

				local bili = 0
				if danjian[itemname][par][1] == "���" then
					bili = getbaseinfo(actor,51,203) --���ձ���
				end
				local shuangbei = 1
				local itemname = getitemnamebymakeid(actor,makeid) --id
				local itemstd = getstditeminfo(itemname,2) --��Ʒ���� 
				--sendmsg6(actor,tostring(itemstd))
				if itemstd == 5 or itemstd == 6 or itemstd == 10 or itemstd == 11 then
					shuangbei = 2
				end
					msg = msg ..'<RText|ax=0.5|ay=0.5|x=202.0|y=353.5|color=161|size=18|text=���ռ۸�<'.. danjian[itemname][par][1] ..'*'.. danjian[itemname][par][2] * (1+bili/100) * shuangbei ..'/FCOLOR=250>>'
				
			else
				msg = msg ..'<DBItemShow|id=wuping'..i..'|x=-6|y=-4|makeindex='..makeid..'|link=@huishoushow,0,'.. makeid ..'>'
			end
		end
	end
	
	msg=msg..'<Button|x=275.0|y=283.0|size=18|nimg=zhangheng/13.png|color=10051|text=��������|link=@danjianhuishou,'.. xzwyid ..'>'
	
	if xianshi > 0 then
		msg=msg..'<Layout|x=-1000|y=-1000|width=3000|height=3000|link=@huishoushow>'
		if xianshi == 7 or xianshi == 8 then --s1 s2 ȫѡ2ѡ1
			msg = msg ..[[
			<Img|x=79.0|y=254.0|width=240|height=120|scale9r=10|scale9t=10|scale9b=10|scale9l=10|img=zhangheng/33.png|esc=0|link=@kong>
			
			<Text|x=174.0|y=279.0|size=18|color=251|text=���ս��>
			
			<Text|x=174.0|y=329.0|size=18|color=250|text=������ˮ����>
			<Img|x=110.0|y=281.0|img=zh/50.png|esc=0>

			]]
			if getint(actor,"����ѡ��"..xianshi) == 1 then
				msg = msg ..'<Img|x=135.0|y=274.0|img=zh/78.png|link=@quanxuanshezhi,1,'.. xianshi ..'>' --��ҿ�
			else
				msg = msg ..'<Img|x=135.0|y=274.0|img=zh/77.png|link=@quanxuanshezhi,1,'.. xianshi ..'>' --��ҿ�
			end
			if getint(actor,"����ѡ��"..xianshi) == 2 then
				msg = msg ..'<Img|x=135.0|y=324.0|img=zh/78.png|link=@quanxuanshezhi,2,'.. xianshi ..'>' --���Ͽ�
			else
				msg = msg ..'<Img|x=135.0|y=324.0|img=zh/77.png|link=@quanxuanshezhi,2,'.. xianshi ..'>' --���Ͽ�
			end
		else --��ѡ
		
			
			msg = msg ..[[
			<Img|x=17.0|y=38.0|width=368|height=395|scale9r=10|scale9l=10|scale9t=10|img=zhangheng/33.png|scale9b=10|esc=0>
			<Img|x=17.0|y=38.0|width=368|height=395|scale9r=10|scale9l=10|scale9t=10|img=zhangheng/33.png|scale9b=10|esc=0|link=@kong>
			]]
			local show_t = hs_fenlei[xianshi]
			
			local ziids = ""
			for i = 3002,3002+#show_t*5+30 do
				ziids = ziids .. i .. ","
			end
			
			local jianju = 40
			local ziid = 3002
			local ysxx = -16
			local ysyy = -42
			local gaodu = #show_t * jianju + 3
		
			msg = msg ..'<ListView|children={2999,3000}|x=27|y=44|width=368|height=382|direction=1|margin=0|bounce=0>'
			msg = msg ..'<Layout|id=3000|children={3001}|height='.. gaodu ..'>' --���õ׿�� ��
			msg = msg ..'<Layout|id=3001|children={'.. ziids ..'}|height='.. gaodu ..'>' --���õ׿�� ��
			if xianshi == 9 then
				msg=msg..'<RText|id=2999|size=16|color=161|text=����Ϊ��ͨ�����  �߼�����װ����ѡ�񵥼�����>'
			end
			
			for i = 1,#show_t do
				msg=msg..'<RText|id='..ziid..'|x='.. 38+ysxx ..'|y='.. ysyy+52+(i-1)*jianju ..'|size=18|color=161|text='.. show_t[i] ..'>'
				ziid = ziid + 1
				if xianshi == 6 then
					if getint(actor,show_t[i]) == 1 then 
						msg=msg..'<Img|id='..ziid..'|x='.. 164+ysxx ..'|y='.. ysyy+46+(i-1)*jianju ..'|img=zh/78.png|link=@hs_danjianshezhi,1,'..show_t[i]..','..xianshi..'>' --���ѡ���
						ziid = ziid + 1
					else
						msg=msg..'<Img|id='..ziid..'|x='.. 164+ysxx ..'|y='.. ysyy+46+(i-1)*jianju ..'|img=zh/77.png|link=@hs_danjianshezhi,1,'..show_t[i]..','..xianshi..'>' --���ѡ���
						ziid = ziid + 1
					end
					
					msg=msg..'<RText|id='..ziid..'|x='.. 199+ysxx ..'|y='.. ysyy+52+(i-1)*jianju ..'|size=18|color=161|text=���>'
					ziid = ziid + 1
					if getint(actor,show_t[i]) == 2 then
						msg=msg..'<Img|id='..ziid..'|x='.. 254 +ysxx ..'|y='.. ysyy+46+(i-1)*jianju ..'|img=zh/78.png|link=@hs_danjianshezhi,2,'..show_t[i]..','..xianshi..'>'	--����ѡ���
						ziid = ziid + 1
					else
						msg=msg..'<Img|id='..ziid..'|x='.. 254 +ysxx ..'|y='.. ysyy+46+(i-1)*jianju ..'|img=zh/77.png|link=@hs_danjianshezhi,2,'..show_t[i]..','..xianshi..'>'	--����ѡ���
						ziid = ziid + 1
					end
					msg=msg..'<RText|id='..ziid..'|x='.. 289+ysxx ..'|y='.. ysyy+52+(i-1)*jianju ..'|size=18|color=161|text=��ˮ����>' 
					ziid = ziid + 1
					
				else
					if getint(actor,show_t[i]) == 0 then
						msg=msg..'<Img|id='..ziid..'|x='.. 294+ysxx ..'|y='.. ysyy+46+(i-1)*jianju ..'|img=zh/77.png|link=@hs_danjianshezhi,1,'..show_t[i]..','..xianshi..'>' --ѡ���
					else
						msg=msg..'<Img|id='..ziid..'|x='.. 294+ysxx ..'|y='.. ysyy+46+(i-1)*jianju ..'|img=zh/78.png|link=@hs_danjianshezhi,1,'..show_t[i]..','..xianshi..'>' --ѡ���
					end
					ziid = ziid + 1
				end
				msg=msg..'<Img|id='..ziid..'|x='.. -11 +ysxx ..'|y='.. ysyy+47+(i-1)*jianju ..'|width=400|img=zh/50.png|esc=0>' --��
				ziid = ziid + 1
			end
			
		end
	end
	
	if shuoming == 1 then
		msg=msg..'<Layout|x=-1000|y=-1000|width=3000|height=3000|link=@huishoushow>'
		msg =msg..[[
<Img|ay=0.5|x=52.0|y=188.0|width=500|height=290|scale9r=10|scale9l=10|scale9t=10|img=zh/7.png|scale9b=10|esc=0>
<RText|x=289.0|y=56.0|color=251|size=16|text=����˵��>
<RText|ax=0|x=64|y=85.0|width=600|size=16|color=255|text=����ǰ�ĸ�Сʱ<����ϵ������/FCOLOR=70>װ��Ҳ�ɻ��ճɽ��>
<RText|ax=0|x=64|y=105.0|width=600|size=16|color=255|text=<����ϵ��/FCOLOR=70>���ջ��300-1000��һ����귨�ᾧ>
<RText|ax=0|x=64.0|y=125.0|width=600|size=16|color=255|text=<����ϵ��/FCOLOR=70>���ջ��1000-2000��һ����귨�ᾧ>
<RText|ax=0|x=64.0|y=145.0|width=600|size=16|color=255|text=<����ϵ��/FCOLOR=70>���ջ��2000-3000��һ����귨�ᾧ>
<RText|ax=0|x=64.0|y=165.0|width=600|size=16|color=255|text=<����ϵ��/FCOLOR=70>���ջ��3000-5000��һ�����ˮ����>
<RText|ax=0|x=64.0|y=185.0|width=600|size=16|color=255|text=<��֮ϵ��/FCOLOR=70>���ջ��15000-25000��һ���3-5����ˮ����>
<RText|ax=0|x=64.0|y=205.0|width=600|size=16|color=255|text=<S1ϵ�л�/FCOLOR=70>�ջ��300000��һ���60����ˮ����>
<RText|ax=0|x=64.0|y=225.0|width=600|size=16|color=255|text=<S2ϵ�л�/FCOLOR=70>�ջ��1000000��һ���200����ˮ����>
<RText|ax=0|x=64.0|y=265.0|width=600|size=16|color=255|text=����װ����ͨ��<���ձ����ӳ�/FCOLOR=253>�����ø�����>
<RText|ax=0|x=64.0|y=285.0|width=600|size=16|color=255|text=���߼���װ������������ʦ���ճ�����֮��>
<RText|ax=0|x=64.0|y=305.0|width=600|size=16|color=255|text=������֮����װ���и��ʳ��ֱ���Ч�� �ɶ�����Ԫ��>
<RText|x=64.0|y=245.0|size=16|color=255|text=��֮����װ����<����Թ����������/FCOLOR=254>��ѡ����ս�һ�����ˮ����>
<Text|x=473.0|y=205.0|color=250|size=16|text=����˫��>
<Text|x=473.0|y=225.0|color=250|size=16|text=����˫��>

		]]
	end
	
	say(actor,msg)
end

function quanxuanshezhi(actor,zhi,xianshi)
	zhi = tonumber(zhi)
	xianshi = tonumber(xianshi) 
	if getint(actor,"����ѡ��"..xianshi) ~= 0 and getint(actor,"����ѡ��"..xianshi) == zhi then
		setint(actor,"����ѡ��"..xianshi,0)
	else
		setint(actor,"����ѡ��"..xianshi,zhi)
	end
	local t = hs_fenlei[xianshi]
	for i = 1,#t do
		if getint(actor,t[i]) ~= 0 and getint(actor,t[i]) == zhi then
			setint(actor,t[i],0)
		else
			setint(actor,t[i],zhi)
		end
	end
	return huishoushow(actor,xianshi)
end

function hs_shezhi(actor,par)
	par = tonumber(par)
	if getint(actor,"����ϵ��"..par) == 0 then
		setint(actor,"����ϵ��"..par,1)
	else
		setint(actor,"����ϵ��"..par,0)
	end
	if par == 6 and getint(actor,"��֮��������") == 0 then
		navigation(actor,0,10006,"ѡ����ս�һ����")
		setint(actor,"��֮��������",1)
	end
	return huishoushow(actor)
end

function hs_danjianshezhi(actor,zhi,bl_name,xianshi)
	zhi = tonumber(zhi)
	if getint(actor,bl_name) ~= 0 and getint(actor,bl_name) == zhi then
		setint(actor,bl_name,0)
	else
		setint(actor,bl_name,zhi)
	end
	return huishoushow(actor,xianshi)
end

function zidonghuishoushezhi(actor) --�Զ���������
	if getint(actor,"�Զ�����") == 0 then
		-- if getint(actor,"�׳���ȡ") == 0 then
		-- 	sendmsg9(acotr,"��ȡ�׳������Զ�����","#00FF00")
		-- 	return
		-- end
		setint(actor,"�Զ�����",1)
		sendmsg9(acotr,"�Զ������ѿ���","#00FF00")
	else
		setint(actor,"�Զ�����",0)
		sendmsg9(acotr,"�Զ������ѹر�","#FF0000")
	end
	return huishoushow(actor)
end
function huishoucaozuo(actor,par,makeid)
	if makeid and makeid ~= "0" then
		danjianhuishou(actor,makeid)
		return
	end
	
	--haoshistart(actor)
	local t = getbagitems(actor) --������Ʒ
	local givegold = 0 --Ҫ���Ľ��
	local mafajiejing = 0 --Ҫ�����귨�ᾧ
	local zishuijingkuang = 0 --Ҫ������ˮ����
	
	local kaiqushijian = getsysint("����ʱ��") --����ʱ��
	local curtime = os.time() --��ǰʱ��
	local kaiquhour = math.floor((curtime - kaiqushijian)/3600) --����Сʱ
	sendmsg6(actor,"�����˼�Сʱ".. kaiquhour)
	for i = 1,#t do
		local item = t[i]
		local itemid = getiteminfo(actor,item,2) --��Ʒid
		local itemstd = getstditeminfo(itemid,2) --��Ʒ����
		local iname = getstditeminfo(itemid,1)
		local std = getstditeminfo(itemid,2) --����
		if (std == 19 or std == 20 or std == 21) and getluck(actor,item) > 0 or getitemaddvalue(actor,item,2,2) == 249 then --���������������� ��ɫװ��������
		else
			if yijianhuishou[iname] then --��һ����������
				local id = yijianhuishou[iname] --ϵ��id
				if getint(actor,"����ϵ��"..id) == 1 and getint(actor,iname) > 0 then --��ѡ�˻���
					if delitem(actor,item,1) then --ɾ��װ���ɹ�
						sendmsg6(actor,iname..i.."std"..std)
						if yijianhuishou[iname] == 1 then --����װ��
							if kaiquhour >= 4 then --4Сʱ����
							elseif kaiquhour >= 2 then --2-4Сʱ
								local addgold = math.random(10,50)
								givegold = givegold + addgold
							else
								local addgold = math.random(50,100)
								givegold = givegold + addgold
							end
						end
						
						if yijianhuishou[iname] == 2 then --����װ��
							if getsysint("��������") > 1 then --2������
								if math.random(1,100) <= 90 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(300,500)
									givegold = givegold + addgold
								end
							elseif getsysint("��������") > 0 then --������
								if math.random(1,100) <= 70 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(300,500)
									givegold = givegold + addgold
								end
							elseif kaiquhour >= 24 then --24��
								if math.random(1,100) <= 50 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(800,1000)
									givegold = givegold + addgold
								end
							else --0Сʱ��3
								if math.random(1,100) <= 10 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(800,1000)
									givegold = givegold + addgold
								end
							end
						end
						
						if yijianhuishou[iname] == 3 then --����װ��
							if getsysint("��������") > 2 then --3������
								if math.random(1,100) <= 90 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(1000,1200)
									givegold = givegold + addgold
								end						
							elseif getsysint("��������") > 1 then --2������
								if math.random(1,100) <= 80 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(1000,1200)
									givegold = givegold + addgold
								end
							elseif getsysint("��������") > 0 then --������
								if math.random(1,100) <= 60 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(1000,1500)
									givegold = givegold + addgold
								end
							elseif kaiquhour >= 24 then --24��
								if math.random(1,100) <= 40 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(1500,2000)
									givegold = givegold + addgold
								end
							else --0Сʱ��24
								if math.random(1,100) <= 10 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(1500,2000)
									givegold = givegold + addgold
								end
							end
						end
						
						if yijianhuishou[iname] == 4 then --����װ��
							if getsysint("��������") > 2 then --3������
								if math.random(1,100) <= 60 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(2000,2200)
									givegold = givegold + addgold
								end
							elseif getsysint("��������") > 1 then --2������
								if math.random(1,100) <= 50 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(2000,2200)
									givegold = givegold + addgold
								end
							elseif getsysint("��������") > 0 then --������
								if math.random(1,100) <= 40 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(2000,2200)
									givegold = givegold + addgold
								end
							elseif kaiquhour >= 24 then --24��
								if math.random(1,100) <= 30 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(2500,3000)
									givegold = givegold + addgold
								end
							else --0Сʱ��24
								if math.random(1,100) <= 10 then
									mafajiejing = mafajiejing + 1
								else
									local addgold = math.random(2500,3000)
									givegold = givegold + addgold
								end
							end
						end
						
						if yijianhuishou[iname] == 5 then --����װ��
							if getsysint("��������") > 1 then --2������							
								local addgold = math.random(3000,3200)
								givegold = givegold + addgold
							elseif getsysint("��������") > 0 then --������
								local addgold = math.random(3000,3500)
								givegold = givegold + addgold
							elseif kaiquhour >= 24 then --24��
								if math.random(1,100) <= 10 then
									zishuijingkuang = zishuijingkuang + 1
								else
									local addgold = math.random(3500,4000)
									givegold = givegold + addgold
								end
							else --0Сʱ��24
								if math.random(1,100) <= 20 then
									zishuijingkuang = zishuijingkuang + 1
								else
									local addgold = math.random(4000,5000)
									givegold = givegold + addgold
								end
							end
						end
						
						if yijianhuishou[iname] == 6 then --��֮����װ��
							if getsysint("��������") >= 2 then --2�κ�����	
								if getint(actor,iname) == 1 then
									local addgold = 15000
									givegold = givegold + addgold					
								else
									zishuijingkuang = zishuijingkuang + 3
								end										
							elseif getsysint("��������") >= 1 then --1�κ�����	
								if getint(actor,iname) == 1 then
									local addgold = 20000								
									givegold = givegold + addgold
								else
									zishuijingkuang = zishuijingkuang + 4
								end
							else --����ǰ
								if getint(actor,iname) == 1 then
									local addgold = 25000
									givegold = givegold + addgold
								else
									zishuijingkuang = zishuijingkuang + 5
								end
							end
						end
						
						if yijianhuishou[iname] == 7 then --S1װ��						
							if getint(actor,iname) == 1 then
								local addgold = 300000
								if itemstd == 5 or itemstd == 6 or itemstd == 10 or itemstd == 11 then
									addgold = addgold * 2
								end
								givegold = givegold + addgold								
							else
								zishuijingkuang = zishuijingkuang + 60
								if itemstd == 5 or itemstd == 6 or itemstd == 10 or itemstd == 11 then
									zishuijingkuang = zishuijingkuang + 60
								end
							end													
						end
						
						if yijianhuishou[iname] == 8 then --S2װ��						
							if getint(actor,iname) == 1 then
								local addgold = 1000000
								if itemstd == 5 or itemstd == 6 or itemstd == 10 or itemstd == 11 then
									addgold = addgold * 2
								end
								givegold = givegold + addgold
							else
								zishuijingkuang = zishuijingkuang + 200
								if itemstd == 5 or itemstd == 6 or itemstd == 10 or itemstd == 11 then
									zishuijingkuang = zishuijingkuang + 200
								end
							end													
						end
						
						if yijianhuishou[iname] == 9 then --����װ��
							local givet = danjian[iname][1]						
							if givet[1] == "���" then
								local addgold = givet[2]
								givegold = givegold + addgold
							else
								zishuijingkuang = zishuijingkuang + givet[2]
							end													
						end

					end
				end
			end
		end
    end
	--sendmsg6(actor,givegold)
	local feibindbili = 0 --Ĭ�Ϸǰ󶨱���
	if ( getint(actor,"��һ�������") < 100000 and os.time() - getsysint("����ʱ��") < 3600*4 ) or getint(actor,"��Ա�ȼ�") >= 2 then
		feibindbili = 80 
	end
	
	local bili = getbaseinfo(actor,51,203) --���ձ���
	if bili > 0 then
		givegold = givegold + math.floor(givegold * bili/100)
	end
	--sendmsg6(actor,givegold)
	
	local str = ""
	if givegold > 0 then
		local gold = math.floor(givegold *  feibindbili/100)
		if getint(actor,"��Ա�ȼ�") < 2 then
			if gold + getint(actor,"��һ�������") > 100000 then
				gold = 100000 - getint(actor,"��һ�������")
				if gold < 0 then
					gold = 0
				end
			end
		end
		--sendmsg6(actor,givegold.." "..gold)
		local bindgold = givegold - gold
		--sendmsg6(actor,bindgold)
		if gold > 0 then
			addgold(actor,gold)
			if getint(actor,"��һ�������") < 100000 then
				setint(actor,"��һ�������",getint(actor,"��һ�������")+gold)
			end
			str = str .. "���*"..gold.." "
		end
		if bindgold > 0 then
			addbindgold(actor,bindgold)
			str = str .. "���*"..bindgold.." "
		end
	end
	local bind = 370
	if getint(actor,"��Ա�ȼ�") >= 2 then
		bind = 0
	end
	if mafajiejing > 0 then
		giveitem(actor,"�귨�ᾧ",mafajiejing,bind)
		str = str .. "�귨�ᾧ*"..mafajiejing.." "
	end
	if zishuijingkuang > 0 then
		giveitem(actor,"��ˮ����",zishuijingkuang,bind)
		str = str .. "��ˮ����*"..zishuijingkuang.." "
	end
	if str ~= "" then
		sendmsg6(actor,"���ճɹ�,���"..str)
	end
	
	--haoshiend(actor)
	if par == "1" then
		return huishoushow(actor)
	end
end

-----��ʼ����������
function chushihua(actor)
	setint(actor,"����ѡ��7",1)
	setint(actor,"����ѡ��8",1)
	for j = 1,9 do
		for i = 1,#hs_fenlei[j] do
			setint(actor,hs_fenlei[j][i],1)
		end
	end
	setint(actor,"43�Ŷ���",0)
	setint(actor,"43��ѫ��",0)
	setint(actor,"44�Ŷ���",0)
	setint(actor,"44��ѫ��",0)
	setint(actor,"45�Ŷ���",0)
	setint(actor,"45��ѫ��",0)
end

----��������
function danjianhuishou(actor,makeid)
	makeid = tonumber(makeid)
	if makeid == 0 then
		sendmsg9(actor,"��ѡ��Ҫ���յ�װ��")
		return
	end
	
	local item = getitembymakeindex(actor,makeid)
	if item == "0" then
		sendmsg9(actor,"��û�д�װ��")
		return huishoushow(actor)
	end
	--sendmsg6(actor,"����"..item)
	local name = getitemname(actor,item) --װ������
	local itemstd = getstditeminfo(name,2) --��Ʒ����
	local par = 1 --����ûѡĬ�ϻ��ս��
	if getint(actor,name) == 2 then
		par = 2
	end
	
	if not delitembymakeindex(actor,makeid,1) then
		sendmsg9(actor,"��û�д�װ��")
		return huishoushow(actor)
	end
	
	local t = danjian[name][par] --���ո�������
	if t[1] == "���" then
		local bili = getbaseinfo(actor,51,203) --���ձ���
		local givegold = t[2]
		if itemstd == 5 or itemstd == 6 or itemstd == 10 or itemstd == 11 then
			givegold = givegold * 2
		end
		
		if bili > 0 then
			givegold = givegold + math.floor(givegold * bili/100)
		end
		local feibindbili = 0 --Ĭ�Ϸǰ󶨱���
		if ( getint(actor,"��һ�������") < 100000 and os.time() - getsysint("����ʱ��") < 3600*4 ) or getint(actor,"��Ա�ȼ�") >= 2 then
			feibindbili = 80 
		end
	
		local gold = math.floor(givegold *  feibindbili/100)
		local bindgold = givegold - gold
		local str = ""
		if gold > 0 then
			addgold(actor,gold)
			if getint(actor,"��һ�������") < 100000 then
				setint(actor,"��һ�������",getint(actor,"��һ�������")+gold)
			end
			str = str .. "���*"..gold.." "
		end
		if bindgold > 0 then
			addbindgold(actor,bindgold)
			str = str .. "���*"..bindgold
		end
		sendmsg6(actor,"���ա�"..name.."��,���"..str)
	else
		local shuangbei = 1
		if itemstd == 5 or itemstd == 6 or itemstd == 10 or itemstd == 11 then
			shuangbei = 2
		end
		local bind = 370
		if getint(actor,"��Ա�ȼ�") >= 2 or t[1] == "����֮��" then
			bind = 0
		end
		giveitem(actor,t[1],t[2]*shuangbei,bind)
		sendmsg6(actor,"���ա�"..name.."��,���"..t[1].."*"..t[2]*shuangbei)
	end
	
	huishoushow(actor)
end

