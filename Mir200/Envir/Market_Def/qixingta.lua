require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor,xianshi)
	xianshi = tonumber(xianshi) or 0
	local msg = [[
		<Img|x=0|width=606|height=453|bg=1|scale9r=50|scale9t=50|scale9b=50|move=1|esc=1|scale9l=50|loadDelay=1|img=zhangheng/1.png|reset=0|show=4>
		<Button|x=601.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.5|y=38.5|img=zhangheng/179.png|esc=0>
		<Img|x=16.5|y=39.5|img=zhangheng/180.png|esc=0>
		<Button|x=20.0|y=393.5|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@show,1>
		<Button|x=427.5|y=376.5|width=94|size=18|color=10051|nimg=zhangheng/13.png|text=��ս������|link=@tiaozhan>
		<Button|x=108.5|y=376.5|width=156|size=18|color=10051|nimg=zhangheng/13.png|text=�ύ �� �а�ƾ֤|link=@tijiao>
		<RText|x=441.5|y=55.5|color=161|size=16|text=�淨����>
		<RText|x=372.0|y=90.5|size=16|color=161|text=ÿλ���ͨ���ύ�а�ƾ֤>
		<RText|x=372.0|y=115.5|size=16|color=161|text=���л����Ϊ<��������ҡ�/FCOLOR=250>>
		<RText|x=372.0|y=140.5|color=161|size=16|text=���ܴ���������>
		<Text|x=398.0|y=289.5|color=161|size=18|text=������ҽ�ͼ���>
		<Text|x=388.0|y=328.5|color=161|size=18|text=������ң�30����>
	]]

		msg=msg.."<RText|x=29.0|y=294.5|size=18|color=103|text=���˽��ؽ������Ϊ��<".. getsysint("���������˽���") .."/FCOLOR=250>>"
		msg=msg.."<RText|x=29.5|y=321.5|size=18|color=103|text=��ɱ���ؽ������Ϊ��<".. getsysint("��������ɱ����") .."/FCOLOR=250>>"
		
		if getsysstr("�������������") == "" then
			msg=msg.."<RText|x=372.0|y=186.5|size=16|color=251|text=������ң�<����/FCOLOR=254>>"
		else
			msg=msg.."<RText|x=372.0|y=186.5|size=16|color=251|text=������ң�<".. getsysstr("�������������")  .."/FCOLOR=254>>"
		end
		if getsysstr("��������ɱ��") == "" then
			msg=msg.."<RText|x=372.0|y=224.5|size=16|color=251|text=boss��ɱ�ߣ�<����/FCOLOR=254>>"
		else
			msg=msg.."<RText|x=372.0|y=224.5|size=16|color=251|text=boss��ɱ�ߣ�<".. getsysstr("��������ɱ��")  .."/FCOLOR=254>>"
		end
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@show>"
		msg=msg..[[
		<Img|ay=0.5|x=52.0|y=239.5|width=410|height=370|scale9r=10|scale9t=10|scale9l=10|img=zh/7.png|scale9b=10|esc=0>
<RText|x=228.0|y=65.5|color=251|size=16|text=����������>
<RText|x=64.0|y=94.5|color=255|size=16|text=����ҽ����������ķ��ã�����<50%�Ľ��/FCOLOR=250>����������>
<RText|x=80.0|y=114.5|color=255|size=16|text=���أ�ÿλ��Ҷ��л����Ϊ<"�������"/FCOLOR=250>>
<RText|ax=0|x=64.0|y=144.5|color=255|size=16|text=�����ͨ���ύ<"�а�ƾ֤"/FCOLOR=250>����Ѳμ��н��ʸ�<��ɱ/FCOLOR=253>>
<RText|x=80.0|y=164.5|color=253|size=16|text=5000Ѫ����<���󾭵����/FCOLOR=250>�и��ʻ�óа�ƾ֤.........>
<RText|x=80.0|y=184.5|color=255|size=16|text=����ʱ������ύ"�а�ƾ֤"ÿ�쿪��ʱ��Ϊ��>
<RText|x=80.0|y=204.5|color=255|size=16|text=����00:01    ����6:01   ����12:01   ����18:01>
<RText|x=80.0|y=224.5|size=16|color=255|text=�������������ύ֤����ÿ�����Ĵ��н�����>
<RText|x=64.0|y=254.5|color=255|size=16|text=���ύ������ϵͳ�����ȡһ��<"�������"/FCOLOR=250>��Ϊ����>
<RText|x=80.0|y=274.5|color=255|size=16|text=���а��ߣ��ɻ��<��������/FCOLOR=250>�Լ�<��ѽ���������>Ȩ��>
<RText|x=80.0|y=294.5|color=255|size=16|text=������ȡ������<����40%/FCOLOR=250>�Ľ�ң�����һλ<"������"/FCOLOR=250>>
<RText|x=80.0|y=314.5|color=255|size=16|text=����ʱ���������ʼ���ʽ����!>
<RText|x=65.0|y=344.5|color=255|size=16|text=����ɱ����������BOSS�ߣ��ɻ��������<����60%��/FCOLOR=250>>
<RText|x=80.0|y=364.5|color=255|size=16|text=<���/FCOLOR=250>��������ɱ������<5%����/FCOLOR=250>�ӳ֣�>
<RText|x=64.0|y=396.5|color=255|size=16|text=��ʾ������ֻ����<"�������"/FCOLOR=250>����������ͼ<������/FCOLOR=250>����>

		]]
	end
	
	say(actor,msg)
end

function tiaozhan(actor)
	if getsysint("��������") == 0 then
		sendmsg9(actor,"��������ͼ�����󿪷ţ������ڴ�")
		return
	end
	if getsysstr("�������������") == getname(actor) then	
	else
		if getbindgold(actor) < 300000 then
			sendmsg9(actor,"��Ҳ���30��")
			return
		end
		subbindgold(actor,300000)
		setsysint("���������˽���",getsysint("���������˽���")+150000*0.4)
		setsysint("��������ɱ����",getsysint("��������ɱ����")+150000*0.6)
	end
	map(actor,"qxt1")
	callscriptex(actor, "SENDDELAYMSG", "��ʣ��%s�뿪����ͼ",3600, 251,1,"@huicheng")
	setstr(actor,"��ʱ��ͼ","qxt1")
	setint(actor,"��ʱ��ͼ����ʱ��",os.time())
	setint(actor,"��ʱʱ��",3600)
end


function tijiao(actor)
	local data = gettoupiaodata()
	local hour = tonumber(os.date("%H",os.time())) --Сʱ
	local fen = tonumber(os.date("%M",os.time())) --����
	--sendmsg6(actor,hour.." "..fen)
--[[	if (hour == 0 or hour == 6 or hour == 12 or hour == 18) and fen < 30 then
	else
		sendmsg9(actor,"��ǰ����ͶƱʱ��")
		return
	end--]]
	if istoupiao(actor) then
		sendmsg9(actor,"���Ѿ�ͶƱ���ˣ���ȴ�����")
		return
	end
	
	if itemcount(actor,"�а�ƾ֤") < 1 then
		sendmsg9(actor,"��û�га�ƾ֤")
		return
	end
	takeitem(actor, "�а�ƾ֤", 1)
	
	table.insert(data,{name=getname(actor),level=getlevel(actor)})
	setsysstr("������ͶƱ����",tbl2json(data))
	sendmsg6(actor,"ͶƱ�ɹ��������ĵȴ�����")
	sendmsg9(actor,"ͶƱ�ɹ��������ĵȴ�����")
	
	return show(actor)
end

function istoupiao(actor)
	local data = gettoupiaodata()
	local zai = false --���ڱ���
	for i = 1,#data do
		if getname(actor) == data[i].name then
			zai = true
			break
		end
	end
	return zai
end

function gettoupiaodata()
	local data = {}
	local data_str = getsysstr("������ͶƱ����")
	if data_str ~= "" then
		data=json2tbl(data_str)
	end
	return data
end