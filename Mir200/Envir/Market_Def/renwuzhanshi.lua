require("Envir/Market_Def/zh.lua") --���˷�װ����
local renwu_ditu = {
	{xqitem = {"�����",5},caijiditu="����һ��",shaguaiditu="�����ż�"},
	{xqitem = {"���β�",5},caijiditu="���Ľ���",shaguaiditu="�����ż�"},
	{xqitem = {"������",5},caijiditu="�������",shaguaiditu="��֮����"},
	{xqitem = {"��ڤ��",5},caijiditu="��Ѫһ��",shaguaiditu="��Ѫħ��"},
	{xqitem = {"������",5},caijiditu="��Ԩ����",shaguaiditu="������Ԩ"},
	{xqitem = {"�˲ι���",5},caijiditu="�һ��ȶ���",shaguaiditu="�һ���"},
	{xqitem = {"������",1},caijiditu="�һ��ȵ�",shaguaiditu="�һ���"},
}
function renwu_show(actor)
	delbutton(actor,110,1)
	local msg = "<ListView|children={1,2,3,4,8,9}|width=200|height=180|y=3.0|margin=0|bounce=0|>"
	if getsysint("��������") > 0 and getint(actor,"�ƽ��������Ƿ���ȡ") == 0 and getint(actor,"�ƽ���������") < 7 and getdayint(actor,"���վƽ�������") == 0 and getint(actor,"�������id") >= 16 then
		msg = msg.. [[
		<Img|id=8|children={801,802,803,804,805}|x=1.0|y=6.0|width=200|height=140|scale9t=20|scale9r=20|scale9b=20|img=zhangheng/0.png|esc=0|scale9l=20>
		<Text|id=801|x=9.0|y=8.0|rotate=0|size=16|color=251|outline=1|text=[����]�ƽ���>
		<Text|id=802|x=9.0|y=33.0|rotate=0|size=16|outline=1|color=253|text=�����������Ǿƹ�>
		<RText|id=803|x=9.0|y=56.0|outline=1|size=16|color=131|text=����<�ƽ���/FCOLOR=250>�Ĺ���>
		]]
		
		addbutton(actor,110,1,msg)
	end
	
	if getint(actor,"�ƽ��������Ƿ���ȡ") == 1 then
		local renwujindu = getint(actor,"�ƽ���������")
		local showid = renwujindu + 1
		local t = renwu_ditu[showid]
		msg = msg.. [[
		<Img|id=1|children={101,102,103,104,105}|x=1.0|y=6.0|width=200|height=140|scale9t=20|scale9r=20|scale9b=20|img=zhangheng/0.png|esc=0|scale9l=20>
		<Text|id=101|x=39.0|y=8.0|rotate=0|size=16|color=251|outline=1|text=�����񡿾��ɽ�>
		]]
		msg=msg.."<Text|id=102|x=9.0|y=33.0|rotate=0|size=16|color=131|outline=1|text=��ǰ����ͼ".. t.shaguaiditu ..">"
		msg=msg.."<RText|id=103|x=25.0|y=56.0|size=16|color=254|outline=1|text=��ɱ5ֻ����<��".. getint(actor,"�ƽ�������ɱ����") .."/5��/FCOLOR=250>>"
		msg=msg.."<Text|id=104|x=9.0|y=86.0|size=16|color=131|outline=1|text=��ǰ����ͼ".. t.caijiditu ..">"
		msg=msg.."<RText|id=105|x=26.0|y=109.0|color=254|size=16|outline=1|text=�ɼ�".. t.xqitem[2] .."��".. t.xqitem[1] .."<��".. itemcount(actor,t.xqitem[1]) .."/".. t.xqitem[2] .."��/FCOLOR=250>>"
		addbutton(actor,110,1,msg)
	end
	if itemcount(actor,"�ƽ��ɵ��Ƽ���") > 0 then
		msg = msg.. [[
		<Img|id=2|children={201,202,203,204,205}|x=1.0|y=6.0|width=200|height=140|scale9t=20|scale9r=20|scale9b=20|img=zhangheng/0.png|esc=0|scale9l=20>
		<Text|id=201|x=39.0|y=8.0|rotate=0|size=16|color=251|outline=1|text=���ƹݡ���С��>
		]]
		msg=msg.."<Text|id=202|x=9.0|y=33.0|rotate=0|size=16|color=131|outline=1|text=ǰ�����سǾƹ�һ¥>Ѱ��"
		msg=msg.."<RText|id=203|x=9.0|y=56.0|size=16|color=131|outline=1|text=<��С��/FCOLOR=250>������<�Ƽ���/FCOLOR=250>����>"
		msg=msg.."<Text|id=204|x=9.0|y=79.0|size=16|color=131|outline=1|text=����>"
		addbutton(actor,110,1,msg)
	end
	if itemcount(actor,"õ�廨") > 0 then
		msg = msg.. [[
		<Img|id=3|children={301,302,303,304,305}|x=1.0|y=6.0|width=200|height=140|scale9t=20|scale9r=20|scale9b=20|img=zhangheng/0.png|esc=0|scale9l=20>
		<Text|id=301|x=39.0|y=8.0|rotate=0|size=16|color=251|outline=1|text=���ƹݡ��ϰ���>
		]]
		msg=msg.."<RText|id=302|x=9.0|y=33.0|rotate=0|size=16|color=131|outline=1|text=ǰ���ƹ�һ¥���ҵ�<�ϰ�/FCOLOR=250>>"
		msg=msg.."<RText|id=303|x=9.0|y=56.0|size=16|color=131|outline=1|text=<��/FCOLOR=250>����<\"õ�廨\"/FCOLOR=250>��������>"
		msg=msg.."<RText|id=304|x=9.0|y=79.0|size=16|color=131|outline=1|text=�л����������>"
		addbutton(actor,110,1,msg)
	end
	
	if getint(actor,"���������") == 2 then
		msg = msg.. [[
		<Img|id=4|children={401,402,403,404,405}|x=1.0|y=6.0|width=200|height=140|scale9t=20|scale9r=20|scale9b=20|img=zhangheng/0.png|esc=0|scale9l=20>
		<Text|id=401|x=39.0|y=8.0|rotate=0|size=16|color=251|outline=1|text=���ƹݡ�Ʒ��ʦ>
		]]
		msg=msg.."<RText|id=402|x=9.0|y=33.0|rotate=0|size=16|color=131|outline=1|text=ǰ���ƹ�һ¥���ҵ�<Ʒ��/FCOLOR=250>>"
		msg=msg.."<RText|id=403|x=9.0|y=56.0|size=16|color=131|outline=1|text=<ʦ/FCOLOR=250>����ɵ�һ�����>"
		addbutton(actor,110,1,msg)
	end
	
	if getint(actor,"�ڿ�������ʾ") == 1 then
		msg = msg.. [[
		<Img|id=9|children={901,902,903,904,905,906,907,908,909,910,}|x=1.0|y=6.0|width=200|height=174|scale9l=0|img=zhangheng/0.png|scale9r=0|scale9b=20|esc=0|scale9t=20>
		<Text|id=901|x=74.0|y=6.0|rotate=0|color=251|size=16|outline=1|text=������>
		<Text|id=902|x=9.0|y=31.0|rotate=0|color=150|size=16|outline=1|text=����������>
		<RText|id=903|x=41.0|y=56.0|color=255|size=16|outline=1|text=���Ͻ����ȡ50��>
		<Text|id=904|x=9.0|y=101.0|color=150|size=16|outline=1|text=��������>
		<Img|id=905|x=43.0|y=127.0|width=40|height=40|esc=0|img=zh/2.png>
		<Img|id=906|x=95.0|y=127.0|width=40|height=40|esc=0|img=zh/2.png>
		]]
		msg=msg.."<ItemShow|id=907|x=30.0|y=113.0|width=70|height=70|itemid=".. getidbyname("���齱��") .."|itemcount=1|showtips=1|bgtype=0>"
		msg=msg.."<ItemShow|id=908|x=82.0|y=113.0|width=70|height=70|itemid=".. getidbyname("������ʯ") .."|itemcount=1|showtips=1|bgtype=0>"
		msg=msg.."<RText|id=909|x=41.0|y=75.0|color=255|size=16|outline=1|text=<ͭ��ʯ/FCOLOR=254><��".. itemcount(actor,"ͭ��ʯ") .."/50��/FCOLOR=250>>"
		msg=msg.."<Text|id=910|x=114.0|y=147.0|color=255|size=16|outline=1|text=10|outline=1>"
		addbutton(actor,110,1,msg)
	end
	
end

