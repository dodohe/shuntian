require("Envir/Market_Def/zh.lua") --���˷�װ����

local tianfu_t = {"�����ӳ�+%d%%","ħ���ӳ�+%d%%","�����ӳ�+%d%%","�����ӳ�+%d%%","ħ���ӳ�+%d%%","��ħ�ӳ�+%d%%","�����˺�+%d%%","�˺�����+%d%%","�������+%d%%","ħ������+%d%%","����֮��+Lv.%d"}
local fenjie_t = {
["����"]=3,["����ս��(��)"]=2,["����ս��(Ů)"]=2,["ս��ͷ��"]=1,["ս������"]=1,["ս������"]=1,["ս���ָ"]=1,["ս������"]=1,["ս��ʥѥ"]=1,
["����"]=3,["ŭ��ħ��(��)"]=2,["ŭ��ħ��(Ů)"]=2,["ʥħͷ��"]=1,["ʥħ����"]=1,["ʥħ����"]=1,["ʥħ��ָ"]=1,["ʥħ����"]=1,["ʥħ��ѥ"]=1,
["����"]=3,["�������(��)"]=2,["�������(Ů)"]=2,["���ͷ��"]=1,["�������"]=1,["�������"]=1,["����ָ"]=1,["�������"]=1,["����ѥ"]=1,

["�ϹŹ���"]=6,["����ս��"]=6,["����ս��"]=6,["��սͷ��"]=3,["��ս����"]=3,["��ս����"]=3,["��ս��ָ"]=3,["��ս����"]=3,["��սʥѥ"]=3,
["���֮��"]=6,["��ħ����"]=6,["��ħ����"]=6,["����ͷ��"]=3,["��������"]=3,["��������"]=3,["������ָ"]=3,["��������"]=3,["������ѥ"]=3,
["�����޼�"]=6,["������"]=6,["�����"]=6,["̫��ͷ��"]=3,["̫������"]=3,["̫������"]=3,["̫����ָ"]=3,["̫������"]=3,["̫����ѥ"]=3,

["����¾"]=20,["ʥ��ս��"]=20,["ʥ��ս��"]=20,["����ս��"]=8,["��������"]=8,["��������"]=8,["������ָ"]=8,["��������"]=8,["����սѥ"]=8,
["���鷨��"]=20,["ħ������"]=20,["ħ������"]=20,["����ħ��"]=8,["��������"]=8,["��������"]=8,["���׽�ָ"]=8,["��������"]=8,["����ħѥ"]=8,
["������"]=20,["��������"]=20,["��������"]=20,["�������"]=8,["��������"]=8,["��������"]=8,["�����ָ"]=8,["��������"]=8,["�����ѥ"]=8,

["����������"]=60,["��Ұս��"]=60,["��Ұս��"]=60,["���졩ʥ��"]=20,["���졩ʥ��"]=20,["���졩ʥ��"]=20,["���졩ʥ��"]=20,["���졩ʥ��"]=20,["���졩ʥѥ"]=20,
["����Ȩ��"]=60,["���֮��"]=60,["���֮��"]=60,["���졩ħ��"]=20,["���졩ħ��"]=20,["���졩ħ��"]=20,["���졩ħ��"]=20,["���졩ħ��"]=20,["���졩ħѥ"]=20,
["̫������"]=60,["��ʹ֮��"]=60,["��ʹ֮��"]=60,["���졩����"]=20,["���졩����"]=20,["���졩����"]=20,["���졩����"]=20,["���졩����"]=20,["���졩��ѥ"]=20,

["��Ӱ��ʥ��"]=50,["��Ӱ��ʥ��"]=50,["��Ӱ��ʥ��"]=50,["��Ӱ��ʥ��"]=50,["��Ӱ��ʥ��"]=50,["��Ӱ��ʥѥ"]=50,
["�����ħ��"]=50,["�����ħ��"]=50,["�����ħ��"]=50,["�����ħ��"]=50,["�����ħ��"]=50,["�����ħѥ"]=50,
["Զ�š����"]=50,["Զ�š����"]=50,["Զ�š����"]=50,["Զ�š����"]=50,["Զ�š����"]=50,["Զ�š��ѥ"]=50,

["������׶�Ŀ�"]=100,["������׶����"]=100,["������׶����"]=100,["������׶�Ľ�"]=100,["������׶�Ĵ�"]=100,["������׶��ѥ"]=100,
["������ŭ���"]=100,["������ŭ����"]=100,["������ŭ����"]=100,["������ŭ���"]=100,["������ŭ���"]=100,["������ŭ��ѥ"]=100,
["��Լ���񷣿�"]=100,["��Լ������"]=100,["��Լ������"]=100,["��Լ���񷣽�"]=100,["��Լ���񷣴�"]=100,["��Լ����ѥ"]=100,

["�����ޤ����"]=200,["�����ޤ�����"]=200,["�����ޤ�����"]=200,["�����ޤ����"]=200,["�����ޤ����"]=200,["�����ޤ���ѥ"]=200,
["����������"]=200,["�����������"]=200,["�����������"]=200,["����������"]=200,["����������"]=200,["���������ѥ"]=200,
["��¥�ޤ����"]=200,["��¥�ޤ�����"]=200,["��¥�ޤ�����"]=200,["��¥�ޤ����"]=200,["��¥�ޤ����"]=200,["��¥�ޤ���ѥ"]=200,



["��������Դ��"]=80,["��������Դ��"]=80,["��������Դ��"]=80,["��������Դ��"]=80,["��������Դ��"]=80,["��������Դѥ"]=80,
["������������"]=80,["������������"]=80,["������������"]=80,["������������"]=80,["������������"]=80,["����������ѥ"]=80,
["������޳���"]=80,["������޳���"]=80,["������޳���"]=80,["������޳���"]=80,["������޳���"]=80,["������޳�ѥ"]=80,

["���������"]=120,["����������"]=120,["����������"]=120,["���������"]=120,["���������"]=120,["��ħ����ѥ"]=120,
["��ħ���ѿ�"]=120,["��ħ������"]=120,["��ħ������"]=120,["��ħ���ѽ�"]=120,["��������ѥ"]=120,["��ħ���Ѵ�"]=120,

}

function show(actor,xianshi,huishou,makeid,jiageshow)
	local jingmailv = getint(actor,"�����ȼ�")
	if jingmailv < 5 then
		sendmsg9(actor,"�����ˣ����ȴ�ͨ<font color='#ff00ff'>[�澭����]</font>���������������Ϸ�..")
		return
	end
	xianshi = tonumber(xianshi) or 0
	huishou = tonumber(huishou) or 0
	makeid = tonumber(makeid) or 0
	jiageshow = tonumber(jiageshow) or 0
	local msg = [[
		<Img|x=0|width=593|height=454|bg=1|esc=1|scale9r=50|scale9t=50|scale9b=50|move=1|reset=0|loadDelay=0|scale9l=50|img=zhangheng/1.png|show=4>
		<Button|x=590.0|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.5|y=38.5|img=zhangheng/181.png|esc=0>
		<Text|x=82.5|y=51.0|color=103|size=18|text=�츳����>
		<Button|x=537.5|y=41.0|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@show,1>
		<Button|x=466.5|y=281.0|width=100|size=18|color=10051|nimg=zhangheng/13.png|text=�����츳��|link=@chongzhi>
		<Button|x=367.5|y=359.0|color=10051|nimg=zhangheng/13.png|size=18|text=��������|link=@fenpei>
		<Text|x=230.5|y=399.0|size=18|color=250|text=�ֽ�����֮��|link=@show,0,1>

	]]
	
	msg=msg.."<RText|x=233.5|y=291.0|color=161|size=18|text=��ǰ�츳������".. gettianfudian(actor) - getint(actor,"�ѷ����츳��") ..">"
	local tiaoshu = 10
	local jianju = 33
	if getlevel(actor) >= 75 then
		tiaoshu = 11
		jianju = 30
	end
	local data = gettf_data(actor)
	for i = 1,tiaoshu do
		msg=msg.."<Text|x=53.5|y=".. 96+(i-1)*jianju .."|color=161|size=18|text=".. string.format(tianfu_t[i],data[i])  ..">"
	end
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@show>"
		if getlevel(actor) >= 75 then
			msg=msg..[[
			<Img|ay=0.5|x=217.5|y=217.0|width=320|height=350|scale9r=10|scale9l=10|esc=0|img=zh/7.png|scale9b=10|scale9t=10>
			<RText|x=233.5|y=55.0|color=251|size=16|text=�츳����˵����>
			<RText|x=233.5|y=80.0|color=255|size=16|text=����������������Բ����⣬ ������>
			<RText|x=233.5|y=100.0|color=255|size=16|text=�츳�����·���Ԫ�����ԣ�<ÿ����1��/FCOLOR=70>��>
			<RText|x=233.5|y=120.0|color=255|size=16|text=����Ҫ<����֮��*1/FCOLOR=250>��<600Ԫ��/FCOLOR=251>>
			<RText|x=234.5|y=146.0|color=251|size=16|text=����֮��˵����>
			<RText|x=233.5|y=170.0|color=255|size=16|text=���ȼ��ﵽ75���������츳��ʱ�м��ʻ�>
			<RText|x=233.5|y=190.0|size=16|color=255|text=����������<"����֮��"/FCOLOR=250>������֮��+10,��>
			<RText|x=233.5|y=210.0|size=16|color=255|text=���������10���Լ�<ר������/FCOLOR=250>����������>
			<RText|x=233.5|y=230.0|color=255|size=16|text=ͻ�Ƶȼ��ļ������������֮����������>
			<RText|x=233.5|y=250.0|color=255|size=16|text=���������ô���������>
			<RText|x=233.5|y=275.0|color=251|size=16|text=ר���������ԣ�>
			<RText|x=233.5|y=300.0|size=16|color=255|text=����ȫ����֮����ʹ������<15��/FCOLOR=250>��>
			<RText|x=233.5|y=320.0|color=255|size=16|text=�������������Լ�����buff������һ��>
			<RText|x=233.5|y=340.0|size=16|color=255|text=����״̬�������˺�����<20%/FCOLOR=250>ÿ�����>
			<RText|x=233.5|y=360.0|size=16|color=255|text=�ָ�<3%/FCOLOR=250>Ѫ��������CDʱ��<150��/FCOLOR=250>>

			]]
		else
			msg=msg..[[
			<Img|ay=0.5|x=217.5|y=120.0|width=320|height=165|scale9r=10|scale9t=10|esc=0|img=zh/7.png|scale9b=10|scale9l=10>
			<RText|x=233.5|y=49.0|color=251|size=16|text=�츳����˵����>
			<RText|x=233.5|y=74.0|color=255|size=16|text=����������������Բ����⣬ ������>
			<RText|x=233.5|y=99.0|color=255|size=16|text=�츳�����·���Ԫ�����ԣ�<ÿ����1��/FCOLOR=70>��>
			<RText|x=233.5|y=124.0|color=255|size=16|text=����Ҫ<����֮��*1/FCOLOR=250>��<600Ԫ��/FCOLOR=251>>
			<RText|x=233.5|y=150.0|size=16|color=255|text=�����츳��ϵͳ<������������֮��/FCOLOR=250>�����>
			<RText|x=233.5|y=175.0|size=16|color=255|text=û������֮����Զ�ʹ��<Ԫ��>����>

			]]
		end
		
	end
	
	if huishou == 1 then
		msg=msg..[[
		<Img|x=217.5|y=37.0|width=357|height=392|scale9r=20|scale9l=20|esc=0|img=zhangheng/253.png|scale9b=20|scale9t=20|link=@kong>
		<Button|x=534.5|y=43.0|color=255|size=18|width=30|height=30|nimg=zhangheng/151.png|link=@show>
		<Text|x=318.5|y=54.0|color=161|size=18|text=��ѡ��Ҫ�ֽ��װ��>
		<Img|x=252.5|y=82.0|img=zhangheng/175.png|esc=0>
		<Img|x=218.5|y=228.0|width=354|esc=0|img=zhangheng/230.png>
		<Img|x=372.5|y=245.0|img=zhangheng/231.png|esc=0>
		<Img|x=217.5|y=344.0|width=354|esc=0|img=zhangheng/230.png>
		]]
		msg=msg.."<Text|x=230.5|y=399.0|color=250|size=18|text=�鿴�ֽ�����|link=@show,0,1,"..makeid..",1>"
		for i = 1,10 do
			msg=msg.."<Img|x=".. 232.5+(i-1)%5*68 .."|y=".. 95+math.floor((i-1)/5)*66 .."|img=zhangheng/231.png|esc=0>"
		end
		
		local list = getbaglist(actor) --��ȡ���������б�
		local t = {}
		for i = 1,#list do
			local name = getitemname(actor,list[i])
			if fenjie_t[name] then
				table.insert(t,list[i])
			end
		end
		
		for i = 1,10 do
			if not t[i] then
				break
			end
			local weiyiid = getiteminfo(actor,t[i],1)
			if weiyiid == makeid then
				msg = msg .."<DBItemShow|x=".. 226.5+(i-1)%5*68 .."|y=".. 90+math.floor((i-1)/5)*66 .."|makeindex="..weiyiid.."|link=@show,0,1>"
				msg=msg.."<Img|x=".. 232.5+(i-1)%5*68 .."|y=".. 95+math.floor((i-1)/5)*66 .."|width=55|height=55|esc=0|img=zhangheng/39.png>"
				msg = msg .."<DBItemShow|x=366.5|y=240.0|makeindex="..weiyiid..">"
				
				if fenjie_t[getitemname(actor,t[i])] == 1 then
					msg = msg .."<Text|ax=0.5|ay=0.5|x=395.5|y=323.5|color=116|size=16|text=�ֽ�װ����ɻ�ã�1������֮���60����ˮ����>"
				else
					msg = msg .."<Text|ax=0.5|ay=0.5|x=395.5|y=323.5|color=116|size=18|text=�ֽ�װ����ɻ�ã�".. fenjie_t[getitemname(actor,t[i])] .."������֮��>"
				end
			else
				msg = msg .."<DBItemShow|x=".. 226.5+(i-1)%5*68 .."|y=".. 90+math.floor((i-1)/5)*66 .."|makeindex="..weiyiid.."|link=@show,0,1,"..weiyiid..">"
				
			end
		end
		msg=msg.."<Button|x=363.5|y=359.0|size=18|nimg=zhangheng/13.png|color=10051|text=ȷ���ֽ�|link=@fenjie,"..makeid..">"
	end
	
	if jiageshow == 1 then
		--msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@show,0,1,"..makeid..",0>"
		msg=msg.. [[
				<Img|x=15.5|y=37.0|width=558|height=392|scale9t=20|esc=0|img=zhangheng/253.png|scale9b=20|scale9r=20|scale9l=20>
				<Button|x=15.5|y=37.0|width=558|height=392|nimg=zhangheng/253.png|pimg=zhangheng/253.png|link=@kong>
				<RText|x=44.5|y=100.0|color=255|size=18|text=��Խ�߷ֽ������֮��Խ�࣬<�߼�����װ��/FCOLOR=70>�ڱ�����<���߻���/FCOLOR=250>ҳ>
				<RText|x=44.5|y=125.0|color=255|size=18|text=����л��տɻ������֮��>
				<RText|x=26.5|y=50.0|color=251|size=18|text=�ֽ���ܣ�>
				<RText|x=27.5|y=75.0|color=255|size=18|text=��ͨ���ֽ�<S1ϵ���Լ�S1ϵ������/FCOLOR=70>��װ���ɻ��<����֮��/FCOLOR=253>��װ��ϵ>
				<RText|x=27.5|y=150.0|color=255|size=18|text=��Ϊ��ֹ��λ��ʿ�ֽ�װ��ʱ����Ѹ߼�װ���ֽ������֮�ᣬϵ>
				<RText|x=44.5|y=175.0|color=255|size=18|text=ͳ����ֻ��ѡ�񵥼��ֽ�.>
				<RText|x=43.0|y=210.0|size=18|color=161|text=<S1���Σ�/FCOLOR=70>60%���ʷֽ�<1/FCOLOR=250>��<����֮��/FCOLOR=253>  40%���ʷֽ�<60/FCOLOR=250>��<��ˮ����/FCOLOR=253>>
				<RText|x=43.0|y=235.0|color=161|size=18|text=<S1�·���/FCOLOR=70>�ֽ�<2/FCOLOR=250>��<����֮��/FCOLOR=253>>
				<RText|x=299.0|y=235.0|size=18|color=161|text=<S1������/FCOLOR=70>�ֽ�<3/FCOLOR=250>��<����֮��/FCOLOR=253>>
				<RText|x=43.0|y=261.0|color=161|size=18|text=<S2���Σ�/FCOLOR=70>�ֽ�<3/FCOLOR=250>��<����֮��/FCOLOR=253>>
				<RText|x=299.0|y=261.0|color=161|size=18|text=<S2�·�������/FCOLOR=70>�ֽ�<6/FCOLOR=250>��<����֮��/FCOLOR=253>>
				<RText|x=43.0|y=286.0|color=161|size=18|text=<S3���Σ�/FCOLOR=70>�ֽ�<8/FCOLOR=250>��<����֮��/FCOLOR=253>>
				<RText|x=299.0|y=286.0|color=161|size=18|text=<S3�·�������/FCOLOR=70>�ֽ�<20/FCOLOR=250>��<����֮��/FCOLOR=253>>
				<RText|x=43.0|y=311.0|color=161|size=18|text=<S4���Σ�/FCOLOR=70>�ֽ�<20/FCOLOR=250>��<����֮��/FCOLOR=253>>
				<RText|x=299.0|y=311.0|color=161|size=18|text=<S4�·�������/FCOLOR=70>�ֽ�<60/FCOLOR=250>��<����֮��/FCOLOR=253>>
			]] 
			msg=msg.."<Text|x=437.0|y=382.0|color=250|size=18|text=���طֽ�ҳ��|link=@show,0,1,"..makeid..",0>"

		local zslv = getbaseinfo(actor,39) --ת���ȼ�

		if zslv >= 10 then
			msg=msg.. [[
				
				<RText|x=43.0|y=336.0|color=161|size=18|text=<S5���Σ�/FCOLOR=70>�ֽ�<50/FCOLOR=250>��<����֮��/FCOLOR=253>>
<RText|x=43.0|y=361.0|color=161|size=18|text=<S6���Σ�/FCOLOR=70>�ֽ�<100/FCOLOR=250>��<����֮��/FCOLOR=253>>
<RText|x=43.0|y=386.0|color=161|size=18|text=<S7���Σ�/FCOLOR=70>�ֽ�<200/FCOLOR=250>��<����֮��/FCOLOR=253>>

			]]
		end
	end
	say(actor,msg)
end

function fenjie(actor,wyid)
	wyid = tonumber(wyid)
	if wyid == 0 then
		sendmsg9(actor,"��ѡ��Ҫ�ֽ�ĵ���")
		return
	end
	local item = getitembymakeindex(actor,wyid) --��Ʒ����
	if item == "0" then
		sendmsg9(actor,"��û���������")
		return show(actor,0,1)
	end
	if not isinbag(actor,item) then
		sendmsg9(actor,"��Ʒ�Ѿ����ڱ���")
		return show(actor,0,1)
	end
	local sl = fenjie_t[getitemname(actor,item)]
	
	if delitem(actor,item,1) then
		if sl == 1 and math.random(1,100) < 50 then
			giveitem(actor,"��ˮ����",60)
			sendmsg9(actor,"�ֽ�ɹ��������ˮ����*".. 60)
			return show(actor,0,1)
		end
		
		giveitem(actor,"����֮��",sl)
		sendmsg9(actor,"�ֽ�ɹ����������֮��*"..sl)
		return show(actor,0,1)
	end
end

local jilv_t = {{500,100},{400,25},{300,20},{200,15},{100,10},{0,2},}
local buff_t = {10041,10042,10043,10044,10045,10046,10047,10048,10049,10050,10051}
function fenpei(actor)
	if gettianfudian(actor) - getint(actor,"�ѷ����츳��") < 1 then
		sendmsg9(actor,"��û�пɷ�����츳����")
		return
	end
	local data = gettf_data(actor)
	if getlevel(actor) < 75 then
		for i = 1,1000 do
			local suijizhi = math.random(1,10)
			if data[suijizhi] < 10 then
				data[suijizhi] = data[suijizhi] + 1
				--�˴���buff
				if suijizhi <= 3 then
					if getjob(actor) + 1 == suijizhi then
						addbuff(actor,buff_t[suijizhi])
					end
				else
					addbuff(actor,buff_t[suijizhi])
				end
				break
			end
		end
	else
		local isxwzl = false --�Ƿ������֮��
		if data[11] < 10 then
			for i = 1,#jilv_t do
				if getint(actor,"�츳���ô���") >= jilv_t[i][1] then
					if math.random(1,100) <= jilv_t[i][2] then
						data[11] = data[11] + 1
						if data[11] == 10 then
							addbuff(actor,buff_t[11])
							addskill(actor, 3000, 3)
						end
						isxwzl = true
					end
					break
				end
			end
		end
		if not isxwzl then
			for i = 1,1000 do
				local suijizhi = math.random(1,10)
				if data[suijizhi] < 10 then
					data[suijizhi] = data[suijizhi] + 1
					--�˴���buff
					if suijizhi <= 3 then
						if getjob(actor) + 1 == suijizhi then
							addbuff(actor,buff_t[suijizhi])
						end
					else
						addbuff(actor,buff_t[suijizhi])
					end
					break
				end
			end
		end
	end
	setint(actor,"�ѷ����츳��",getint(actor,"�ѷ����츳��")+1)
	setstr(actor,"�츳����",tbl2json(data))
	sendmsg9(actor,"����ɹ�")
	return show(actor)
end

function chongzhi(actor)
	if gettianfudian(actor) - getint(actor,"�ѷ����츳��") > 0 then
		sendmsg9(actor,"�츳��������������")
		return
	end
	local xidianshu = getint(actor,"�ѷ����츳��")
	if xidianshu < 1 then
		sendmsg9(actor,"��û�з����츳�㣬��������")
		return
	end
	
	local chengli = false
	local clsl = itemcount(actor,"����֮��") --������������
	if clsl >= xidianshu then
		clsl = xidianshu	--�����������
	end
	local xuqiuyb = (xidianshu - clsl)*600 --����Ԫ��
	if getingot(actor) >= xuqiuyb then
		chengli = true
	end
	
	if not chengli then
		sendmsg9(actor,"��û������֮���Ԫ������")
		return
	end

	takeitem(actor,"����֮��",clsl) 
	if xuqiuyb > 0 then
		subingot(actor,xuqiuyb,"ϴ�츳")
	end
	
	setint(actor,"�ѷ����츳��",0)
	setstr(actor,"�츳����","")
	if gettianfudian(actor) >= 28 then
		setint(actor,"�츳���ô���",getint(actor,"�츳���ô���")+1)
	end
	for i = 1,#buff_t do
		if hasbuff(actor,buff_t[i]) then
			delbuff(actor,buff_t[i])
		end
	end
	if getskillinfo(actor,3000,1) then
		delskill(actor, 3000)
	end
	sendmsg9(actor,"���óɹ�")
	post(actor,"�츳����������Ԫ��*"..xuqiuyb.. "���Ĳ���*"..clsl)
	return show(actor)
end

function gettf_data(actor)
	local data = {0,0,0,0,0,0,0,0,0,0,0}
	local datastr = getstr(actor,"�츳����")
	if datastr ~= "" then
		data = json2tbl(datastr)
	end
	return data
end