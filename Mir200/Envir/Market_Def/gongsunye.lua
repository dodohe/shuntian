require("Envir/Market_Def/zh.lua") --���˷�װ����
function show(actor)
	if getlevel(actor) < 65 and getbaseinfo(actor,39) < 1 then
		sendmsg9(actor,"�����ˣ��ȼ��ﵽ65���������Ϸ��...")
		return
	end
	
	if getbaseinfo(actor,39) < 5 then
		sendmsg9(actor,"�����ˣ�ת��ȼ��ﵽ5ת�������Ұ�....")
		return
	end
	
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=������ʦ>
<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
<RText|ax=0|ay=0.5|x=22.0|y=81.5|color=255|size=18|text=����ұ���ഫΪ�Ŵ������������Ķ����ߣ�������������־�>
<RText|ay=0.5|x=22.0|y=106.5|color=255|size=18|text=ʯ�������������������ǧ������������ʷ�����ǣ��ഫΪ��>
<RText|ay=0.5|x=22.0|y=131.5|color=255|size=18|text=�����䣬С�ӣ��Ϸ���Ǹ쾪�棬����û��һ�ѳ��ֵı���>
<RText|ay=0.5|x=22.0|y=156.5|color=255|size=18|text=�أ�������������������Ե�֣���Ը����һ�ԣ������������>
<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
<Text|ay=0.5|x=227.0|y=214.5|size=18|color=250|text=��ʼ����|link=@zhuzao>


	]]
	say(actor,msg)
end


local anniu_t = {"����������","����Ȩ��","̫������"}
local xiaohao = {
	{{"����¾",1},{"�ϹŹ���",1},{"���",25},{"����֮��",1000}},
	{{"���鷨��",1},{"���֮��",1},{"���",25},{"����֮��",1000}},
	{{"������",1},{"�����޼�",1},{"���",25},{"����֮��",1000}},
}
function zhuzao(actor,anniu,xianshi)
	anniu = tonumber(anniu) or 1
	xianshi = tonumber(xianshi) or 0
	local msg = [[
		<Img|move=1|reset=0|img=zhangheng/166.png|bg=1|esc=1|show=4>
		<Button|x=590.0|y=1.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=18.0|y=39.0|img=zhangheng/165.png|esc=0>
		<Img|x=196.0|y=38.0|img=zhangheng/167.png|esc=0>
		<Img|x=357.0|y=90.0|img=zhangheng/73.png|esc=0>
		<Img|x=297.0|y=196.0|img=zhangheng/73.png|esc=0>
		<Img|x=417.0|y=195.0|img=zhangheng/73.png|esc=0>

		<Img|x=248.0|y=52.0|img=zhangheng/201.png|esc=0>
		<Img|x=251.0|y=162.0|img=zhangheng/74.png|esc=0>
		
	]]
	msg=msg.."<Img|x=18.0|y=408.0|img=zhangheng/8.png||link=@zhuzao,"..anniu..",1>"
	
	for i = 1,#anniu_t do
		if anniu == i then --���ఴť
			msg=msg.."<Button|x=20.0|y=".. 40.5 + (i-1)*40 .."|size=18|color=150|nimg=zh/66.png|text="..anniu_t[i]..">"
		else
			msg=msg.."<Button|x=20.0|y=".. 40.5 + (i-1)*40 .."|size=18|color=7|nimg=zh/67.png|pimg=zh/67.png|text="..anniu_t[i].."|link=@zhuzao,"..i..">"
		end
	end
	msg = msg ..'<ItemShow|x=354.0|y=87.0|width=70|height=70|itemid='.. getidbyname(anniu_t[anniu]) ..'|itemcount=1|showtips=1|bgtype=0>'
	
	msg = msg ..'<ItemShow|x=294.0|y=193.0|width=70|height=70|itemid='.. getidbyname(xiaohao[anniu][1][1]) ..'|itemcount=1|showtips=1|bgtype=0>'
	msg = msg ..'<RText|ax=0.5|x=327.0|y=237.0|color=250|size=16|text=<'.. itemcount(actor,xiaohao[anniu][1][1]) ..'/FCOLOR=249>/'.. xiaohao[anniu][1][2] ..'>'
	msg = msg ..'<RText|ax=0.5|x=327.0|y=262.0|color=255|size=16|text=������>'
	
	msg = msg ..'<ItemShow|x=414.0|y=193.0|width=70|height=70|itemid='.. getidbyname(xiaohao[anniu][2][1]) ..'|itemcount=1|showtips=1|bgtype=0>'
	msg = msg ..'<RText|ax=0.5|x=447.0|y=237.0|color=250|size=16|text=<'.. itemcount(actor,xiaohao[anniu][2][1]) ..'/FCOLOR=249>/'.. xiaohao[anniu][2][2] ..'>'
	msg = msg ..'<RText|ax=0.5|x=447.0|y=262.0|color=255|size=16|text=������>'
	
	msg = msg ..'<Text|x=325.0|y=349.0|color=254|size=18|text=�ɹ����ʣ�100%>'
	msg = msg ..'<Button|x=348.0|y=385.0|size=18|nimg=zhangheng/13.png|color=10051|text=ȷ������|link=@duanzao,'.. anniu ..'>'
	
	msg = msg ..'<Text|x=253.0|y=310.0|color=255|size=18|text=���ģ�>'
	msg = msg ..'<ItemShow|x=298.0|y=286.0|width=70|height=70|itemid='.. getidbyname(xiaohao[anniu][3][1]) ..'|itemcount=1|scale=0.8|showtips=1|bgtype=0>'
	msg = msg ..'<RText|x=353.0|y=310.0|color=250|size=18|text=<'.. itemcount(actor,xiaohao[anniu][3][1]) ..'/FCOLOR=249>/'.. xiaohao[anniu][3][2] ..'>'
	
	msg = msg ..'<ItemShow|x=418.0|y=286.0|width=70|height=70|itemid='.. getidbyname(xiaohao[anniu][4][1]) ..'|itemcount=1|scale=0.7|showtips=1|bgtype=0>'
	msg = msg ..'<RText|x=473.0|y=310.0|color=250|size=18|text=<'.. itemcount(actor,xiaohao[anniu][4][1]) ..'/FCOLOR=249>/'.. xiaohao[anniu][4][2] ..'>'
	
	
	if xianshi == 1 then
		msg = msg.."<Layout|x=-1000.0|y=-1001.0|width=3000|height=3000|color=255>|link=@zhuzao,"..anniu..">"
		msg = msg..[[
		<Img|ay=0.5|x=50.0|y=376.0|width=300|height=120|scale9r=10|scale9t=10|scale9l=10|img=zh/7.png|scale9b=10|esc=0>
		<RText|ay=0.5|x=58.0|y=337.5|color=251|size=16|text=������ܣ�>
		<RText|ay=0.5|x=58.0|y=362.5|color=255|size=16|text=���������ɹ���, �����������������>
		<RText|ay=0.5|x=58.0|y=387.5|color=250|size=16|text=����˫��+2%����Ѫ+2%������+2%>
		<RText|ay=0.5|x=58.0|y=412.5|color=255|size=16|text=����һ������>
		]]
	end
	say(actor,msg)
end
local sx_t = {
	{28,2,1016}, --����˫��+2%
	{34,200,1017}, --��Ѫ+2% ��ֱ�
	{25,2,1018}, --����+2%
}
function duanzao(actor,par)
	par = tonumber(par)
	local t = xiaohao[par]
	for i = 1,#t do
		if itemcount(actor,t[i][1]) < t[i][2] then
			sendmsg9(actor,"��������")
			return
		end
	end
	for i = 2,#t do
		takeitem(actor,t[i][1],t[i][2])
	end
	
	takeitem(actor,t[1][1],t[1][2])
	local item = giveitem(actor,anniu_t[par])
	
	local sj = math.random(1,3)
	changecustomitemtext(actor,item,"[��������]��",2) --��������
	changecustomitemtextcolor(actor,item,154,2) --��ɫ
	changecustomitemabil(actor,item,0,1,sx_t[sj][1],2) --����4  1Ϊ��att���� 
	changecustomitemabil(actor,item,0,2,sx_t[sj][3],2) --����4  2Ϊ���Զ����Ա� ��ʾ��
	changecustomitemabil(actor,item,0,3,1,2) --����4  3Ϊ�󶨵�ֵ�Ƿ�Ϊ�ٷֱ� 0���� 1��
	changecustomitemabil(actor,item,0,4,0,2) --����4  4Ϊ��������ʾλ����һ��
	changecustomitemvalue(actor,item,0,"=",sx_t[sj][2],2) --���ð�att���Ե�ֵ
	
	sendmsg9(actor,"����ɹ�")
	sendmsg6(actor,"����ɹ�")

	zhuzao(actor,par)
end
