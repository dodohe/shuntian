require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor,xianshi)
	xianshi = tonumber(xianshi) or 0
	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
	<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
	<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|size=18|color=251|text=��������>
	<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
	<RText|ax=0|ay=0.5|x=22.0|y=81.5|size=18|color=255|text=���������������������죬�����������æµ���£�Ҳ��>
	<RText|ay=0.5|x=22.0|y=106.5|color=255|size=18|text=�����Ļ������������۾��������컨�����������һ��������>
	<RText|ay=0.5|x=22.0|y=131.5|color=255|size=18|text=������������������������ֻ���ṩ<"������ʯ*6+12����"/FCOLOR=250>>
	<RText|ay=0.5|x=22.0|y=156.5|color=255|size=18|text=�Ϳ��������ҵ����գ�ÿ��������߿�����<10��������/FCOLOR=253>...>
	<Img|x=34.0|y=190.0|img=zhangheng/203.png|esc=0>
	]]
	
	if getsysint("��������") < 1 then
		msg=msg.."<Text|ax=0.5|ay=0.5|x=264.0|y=214.5|color=250|size=18|text=��� �� ��������|link=@shengji>"
	else
		msg=msg.."<Text|ay=0.5|x=122.0|y=214.5|color=250|size=18|text=�������|link=@qingkong>"
		msg=msg.."<Text|ay=0.5|x=333.0|y=214.5|color=250|size=18|text=�������|link=@shengji>"
	end
	if getint(actor,"����10��") == 1 and getlevel(actor) >= 58 then
		msg=msg.."<Button|x=13.0|y=205.0|nimg=zhangheng/8.png|pimg=zhangheng/8.png|link=@show,1>"
	end
	
	if xianshi == 1 then
		msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@show>"
		msg=msg..[[
		<Img|ay=0.5|x=48.0|y=154.0|width=280|height=160|scale9r=10|scale9t=10|scale9b=10|img=zh/7.png|scale9l=10|esc=0>
		<RText|x=59.0|y=82.0|width=344|color=251|size=16|text=�������ܣ�>
		<RText|x=59.0|y=107.0|width=344|size=16|color=255|text=��������������<10��/FCOLOR=250>����������>
		<RText|x=76.0|y=132.0|width=344|color=255|size=16|text=<1-6�����ֵ/FCOLOR=250>, ������������Ĵ���>
		<RText|x=76.0|y=157.0|width=344|color=255|size=16|text=ֵ�ɼ�����������>
		<RText|x=60.0|y=182.0|width=344|size=16|color=255|text=������ֵ�ﵽ<4�㼤��PK����+2%/FCOLOR=254>>
		<RText|x=75.0|y=207.0|width=344|size=16|color=255|text=<9�㼤��PK����+6%/FCOLOR=253>>
		]]
	end
	say(actor,msg)
end

local shengji_t =  {50,30,20,20,10,10,5,5,5,5}
local wuqi_t = {
	["����"]=2,["ħ��"]=3,["����"]=4,["����"]=2,["����Ȩ��"]=3,["�޼���"]=4,["�þ�֮��"]=2,["Ѫ��"]=3,["���ƽ�"]=4,["ŭն"]=2,["����"]=3,["��ң��"]=4,["����"]=2,["�Ȼ귨��"]=3,["����֮��"]=4,
	["�ƽ�þ�"]=2,["�Ͻ��Ȼ귨��"]=3,["�����ң��"]=4,["�ϹŹ���"]=2,["���֮��"]=3,["�����޼�"]=4,["����¾"]=2,["���鷨��"]=3,["������"]=4,["����������"]=2,["����Ȩ��"]=3,["̫������"]=4,
	["��˵:��Ӱ��"]=2,["��˵:��ˮ��"]=3,["��˵:̫����"]=4,["������׶��ն"]=2,["������ŭ����"]=3,["��Լ���񷣽�"]=4,["�����ޤ�����֮��"]=2,["�����������֮��"]=3,["��¥�ޤ��򽣹���"]=4,
	["����"]=2,["����"]=3,["����"]=4,["���ߵ�����"]=2,["����������"]=3,["��ħ����Լ"]=4,
}
function shengji(actor)
	local item = linkbodyitem(actor,1)
	if item == "0" then
		sendmsg9(actor,"���Ҫ�������������������")
		return
	end
	
	local attid = 2
	local iname = getitemname(actor,item)
	if wuqi_t[iname] then
		attid = wuqi_t[iname]
	end
	local jipinzhi = getitemaddvalue(actor,item,1,attid) --��Ʒ����ֵ
	if jipinzhi >= 10 then
		sendmsg9(actor,"�������Ѿ�������10��")
		return
	end
	if itemcount(actor,"������ʯ") < 6 then
		sendmsg9(actor,"������ʯ����6��")
		return
	end
	sendmsg0(actor, "attid:"..attid.."jipinzhi:"..jipinzhi)
	if jipinzhi >= 5 then
		if getgold(actor) < 120000 then
			sendmsg9(actor,"���ķǰ󶨽�Ҳ���12��")
			return
		end
		subgold(actor,120000)
	else
		if getbindgold(actor) < 120000 then
			sendmsg9(actor,"���Ľ�Ҳ���12��")
			return
		end
		subbindgold(actor,120000)
	end
	
	takeitem(actor,"������ʯ",6)
	if math.random(1,100) <= shengji_t[jipinzhi+1] then
		setitemaddvalue(actor,item,1,attid,jipinzhi+1)
		if jipinzhi == 9 then
			local maxzhi = 3
			if math.random(1,100) <= 10 then
				maxzhi = 6
			end	
			changecustomitemtext(actor,item,"[��������]��",5)
			changecustomitemtextcolor(actor,item,154,5) --��ɫ
			changecustomitemabil(actor,item,0,1,209,5) --����4  1Ϊ��att���� 
			changecustomitemabil(actor,item,0,2,31,5) --����4  2Ϊ���Զ����Ա� ��ʾ��
			changecustomitemabil(actor,item,0,3,0,5) --����4  3Ϊ�󶨵�ֵ�Ƿ�Ϊ�ٷֱ� 0���� 1��
			changecustomitemabil(actor,item,0,4,0,5) --����4  4Ϊ��������ʾλ����һ��
			changecustomitemvalue(actor,item,0,"=",math.random(1,maxzhi),5) --���ð�att���Ե�ֵ
			
			setcuilianzhishuxing(actor)
			setint(actor,"����10��",1)
		end
		refreshitem(actor,item)
		sendmsg6(actor,"��ϲ�㣬�����ɹ���","#008B45")
	else
		sendmsg6(actor,"���ź�������ʧ����")
		return
	end
end

function qingkong(actor)
	messagebox(actor,"\n������Խ�������������Ժʹ���ֵ����\n\n�Ƿ������ϴ��","@qingkong1","@kong")
end

function qingkong1(actor)
	local item = linkbodyitem(actor,1)
	if item == "0" then
		sendmsg9(actor,"���Ҫ�������������������")
		return
	end
	
	local attid = 2
	local iname = getitemname(actor,item)
	if wuqi_t[iname] then
		attid = wuqi_t[iname]
	end
	
	local jipinzhi = getitemaddvalue(actor,item,1,attid) --��Ʒ����ֵ
	if jipinzhi < 10 then
		sendmsg9(actor,"��������10�β�����ϴ")
		return
	end
	
	setitemaddvalue(actor,item,1,attid,0)
	clearitemcustomabil(actor,item,5) --�����Զ������
	callscriptex(actor, "CallLua", "wuqishengji", "@setcuilianzhishuxing") --���ô���ֵ����
	refreshitem(actor,item)
	sendmsg9(actor,"���������������","#FF0000")
end

function setcuilianzhishuxing(actor)
	local cuilianzhi = getbaseinfo(actor,51,209)
	--sendmsg6(actor,"����ֵ"..cuilianzhi)
	if hasbuff(actor,10053) then
		delbuff(actor,10053)
	end
	if cuilianzhi >= 9 then
		addbuff(actor,10053,0,1,actor,{[76]=600})
	elseif cuilianzhi >= 4 then
		addbuff(actor,10053,0,1,actor,{[76]=200})
	end
end
