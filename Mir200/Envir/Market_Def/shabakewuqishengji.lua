require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor)

	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
	<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
	<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=��������>
	<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
	<Text|a=0|x=32|y=60|tipsx=10|tipsy=80|color=255|size=18|text=û��һ��������ˣ��˿ͣ����>
	<Text|a=0|x=32.0|y=90.0|tipsx=10|tipsy=80|color=255|size=18|text=�ҵ�����ʹ�Ҳ�����������Ʒ�ļ۸���Ҫ�����>
	<Text|a=0|x=32.0|y=135.0|tipsx=10|tipsy=80|color=251|size=18|text=��ʼ��������|link=@startshengji>
	<Text|a=0|x=32.0|y=180.0|tipsx=10|tipsy=80|color=251|size=18|text=������������|link=@quhuiwuqi>
	]]
	
	say(actor,msg)
end

function startshengji(actor)
	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=��������>
<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
<Text|a=0|x=32|y=60|tipsx=10|tipsy=80|color=255|size=18|text=��������Ҫ�����������>
<Text|a=0|x=32.0|y=82.0|tipsx=10|tipsy=80|color=255|size=18|text=���ҿ��������,�����۸���10000���>
<Text|a=0|x=32.0|y=104.0|tipsx=10|tipsy=80|color=255|size=18|text=�������������Ҫԭ��>
<Text|a=0|x=215.0|y=104.0|tipsx=10|tipsy=80|color=251|size=18|text=������ʯ*2>
<Text|a=0|x=311.0|y=104.0|tipsx=10|tipsy=80|color=255|size=18|text=,>
<Text|a=0|x=321.0|y=104.0|tipsx=10|tipsy=80|color=251|size=18|text=��Ʒ>
<Text|a=0|x=361.0|y=104.0|tipsx=10|tipsy=80|color=255|size=18|text=,>
<Text|a=0|x=371.0|y=104.0|tipsx=10|tipsy=80|color=251|size=18|text=����>
<Text|a=0|x=413.0|y=104.0|tipsx=10|tipsy=80|color=255|size=18|text=��>
<Text|a=0|x=435.0|y=104.0|tipsx=10|tipsy=80|color=251|size=18|text=���>
<Text|a=0|x=32.0|y=126.0|tipsx=10|tipsy=80|color=255|size=18|text=��ȷ��Ҫ��������>
<Text|a=0|x=32.0|y=148.0|tipsx=10|tipsy=80|color=250|size=18|text=��ʼ�������������߱�����������>
<Text|a=0|x=32.0|y=170.0|tipsx=10|tipsy=80|color=250|size=18|text=����ؽ�������Ʒ�����ֿ�>
<Text|a=0|x=32.0|y=202.0|tipsx=10|tipsy=80|color=251|size=18|text=ȷ������|link=@shengji>

	]]
	
	say(actor,msg)
end

local wuqi_t = {
	["�þ�֮��"]=2,["Ѫ��"]=3,["���ƽ�"]=4,["ŭն"]=2,["����"]=3,["��ң��"]=4,["����"]=2,["�Ȼ귨��"]=3,["����֮��"]=4,["����Ȩ��"]=3,
}
local shoushi_t = {
	["��������"]=1,["���۽�ָ"]=1,["ħ������"]=1,["ħ������"]=1,["�������"]=1,["���"]=1,["���������"]=1,["��˪"]=1,["������"]=1,
	["��������"]=1,["������"]=1,["��̴����"]=1,["������ָ"]=1,["ɺ����ָ"]=1,["������ħ��ָ"]=1,
	["���ý�ָ"]=1,["�Ŵ�"]=1,["��ʿ����"]=1,["���½�ָ"]=1,
	["��������"]=2,["˼��������"]=2,["�챦ʯ��ָ"]=2,["��������"]=2,["��������"]=2,["�����ָ"]=2,["��������"]=2,["��������"]=2,["��֮��ָ"]=2,
	["��ɫ����"]=3,["��ʿ����"]=3,["������ָ"]=3,	["��ħ����"]=3,["��֮����"]=3,["�ϱ���"]=3,["�������"]=3,["��������"]=3,["̩̹��ָ"]=3,
	["ʥս����"]=4,["ʥս����"]=4,["ʥս��ָ"]=4,["��������"]=4,["��������"]=4,["�����ָ"]=4,["����ͷ��"]=4,["��������"]=4,["��������"]=4,["�����ָ"]=4,["��������"]=4,
}
function shengji(actor)
	local item = linkbodyitem(actor,1)
	if item == "0" then
		sendmsg9(actor,"���Ҫ�������������������")
		return
	end
	if getitem_shabake(actor,item) == 1 then
		sendmsg9(actor,"��������û���Ե�")
		return
	end
	
	if getint(actor,"ɳ�Ϳ�����״̬") == 1 then
		sendmsg9(actor,"���Ѿ�����������������.����ѡ�񷵻���������")
		return
	end
	
	local iname = getitemname(actor,item)
	if not wuqi_t[iname] then
		sendmsg9(actor,"�������޷�����������")
		return
	end
	
	local attid = 2
	if wuqi_t[iname] then
		attid = wuqi_t[iname]
	end
	local jipinzhi = getitemaddvalue(actor,item,1,attid) --��Ʒ����ֵ
	if jipinzhi >= 7 then
		sendmsg9(actor,"�������Ѿ�������7��")
		return
	end
	if itemcount(actor,"������ʯ") < 2 then
		sendmsg9(actor,"������ʯ����2��")
		return
	end
	if getbindgold(actor) < 10000 then
		sendmsg9(actor,"���Ľ�Ҳ���1��")
		return
	end
	
	local youshoushi = false
	local t = getbagitems(actor) --������Ʒ
	for i = 1,#t do
		local itemname = getitemname(actor,t[i])
		if shoushi_t[itemname] then
			delitem(actor,t[i])
			youshoushi = true
		end
	end
	
	if not youshoushi then
		sendmsg9(actor,"���β���")
		return
	end
	
	subbindgold(actor,10000)
	takeitem(actor,"������ʯ",2)
	setint(actor,"ɳ�Ϳ�������Ʒ����id",attid)
	setint(actor,"ɳ�Ϳ�������Ʒֵ",jipinzhi)
	setint(actor,"ɳ�Ϳ���������ֵ",getitemaddvalue(actor,item,1,5))
	local jsonstr = getitemjson(item) --��ȡ������json��
	--sendmsg6(actor,"����json��"..jsonstr)
	setstr(actor,"ɳ�Ϳ�����json",jsonstr)
	delitem(actor,item) --ɾ������
	setint(actor,"ɳ�Ϳ�����״̬",1) --0 δ�� 1 ����
	setint(actor,"ɳ�Ϳ�������ʱ��",os.time()) --ɳ�Ϳ�������ʱ��
	return show_lianzhong(actor)
end

function show_lianzhong(actor)
	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
	<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
	<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=��������>
	<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
	<Text|a=0|x=32.0|y=81.0|tipsx=10|tipsy=80|color=255|size=18|text=�һ����Ū�����µ�һ����>
	<Text|a=0|x=32.0|y=133.0|tipsx=10|tipsy=80|color=255|size=18|text=���ԵȾͿ���ȡ����������ȴ�һ����>
	<Text|x=32.0|y=193.0|color=251|size=18|text=��֪����|link=@exit>
	]]
	say(actor,msg)
end

function quhuiwuqi(actor)
	if getint(actor,"ɳ�Ϳ�����״̬") == 0 then
		sendmsg9(actor,"��û��������ȡ��")
		return
	end
	if os.time() - getint(actor,"ɳ�Ϳ�������ʱ��") < 60 then
		sendmsg9(actor,"���������æ���أ����Ե�Ƭ��...")
		return
	end
	setint(actor,"ɳ�Ϳ�����״̬",0)
	local item = giveitembyjson(actor,getstr(actor,"ɳ�Ϳ�����json"))
	setitemaddvalue(actor,item,1,getint(actor,"ɳ�Ϳ�������Ʒ����id"),getint(actor,"ɳ�Ϳ�������Ʒֵ"))
	setitemaddvalue(actor,item,1,5,getint(actor,"ɳ�Ϳ���������ֵ"))
	setitem_shabake(actor,item,1) --����ɳ�Ϳ˱�ʶ
	refreshitem(actor, item)
	return show_chenggong(actor)
end

function show_chenggong(actor)
	local msg = [[
	<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
	<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
	<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
	<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
	<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=��������>
	<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
	<Text|a=0|x=32.0|y=77.0|tipsx=10|tipsy=80|color=255|size=18|text=��������,�Ҿ������Ŭ���������������,>
	<RText|a=0|x=32.0|y=115.0|tipsx=10|tipsy=80|color=255|size=18|text=����Ƿ�<�ɹ�/FCOLOR=250>ֻ������ʹ�ù�һ�κ��֪������ȥ���԰ɡ�>
	<Text|x=32.0|y=193.0|color=251|size=18|text=�˳�|link=@exit>

	]]
	say(actor,msg)
end
