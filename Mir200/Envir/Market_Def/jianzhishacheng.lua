require("Envir/Market_Def/zh.lua") --���˷�װ����


function show(actor,yemian)
	yemian = tonumber(yemian) or 1
	local msg = [[
		<Img|x=0|width=585|height=423|bg=1|scale9l=50|scale9r=50|scale9t=50|scale9b=50|move=1|loadDelay=1|esc=1|reset=0|img=zhangheng/1.png|show=4>
		<Button|x=581.5|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=15.5|y=38.5|img=zhangheng/255.png|esc=0>
		
	]]
	if yemian == 1 then
		msg=msg..[[
			<Text|x=410.5|y=205.5|color=250|size=18|text=ɳ��������|link=@shamove,ɳ��������>
			<Text|x=75.5|y=105.5|color=250|size=18|text=ɳ��������|link=@shamove,ɳ��������>
			<Text|x=410.5|y=105.5|color=250|size=18|text=ɳ�����ε�|link=@shamove,ɳ�����ε�>
			<Text|x=75.5|y=205.5|color=250|size=18|text=ɳ�Ϳ˲ֿ�|link=@shamove,ɳ�Ϳ˲ֿ�>
			<Text|x=245.5|y=155.5|color=250|size=18|text=ɳ�Ϳ˴���|link=@shamove,ɳ�Ϳ˴���>
			<Img|x=209.5|y=45.5|img=zhangheng/71.png|esc=0>
			<Text|ax=0.5|ay=0.5|x=290.5|y=63.0|outline=1|size=18|color=251|text=���ǵ㴫��>
			<Img|x=40.5|y=87.5|width=500|img=zhangheng/175.png|esc=0>
			<Img|x=40.5|y=242.5|width=500|img=zhangheng/175.png|esc=0>
			<RText|x=66.5|y=262.5|color=255|size=18|text=���ǽ�����ʤ�����л�������ȡ���Զ�ƽ�ָ�ɳ�Ϳ˳�Ա>
			<RText|x=144.5|y=299.5|color=31|size=18|text=ÿ�ι���ʱ��Ϊ���ϣ�21:00 -- 22:00>
			<Text|x=75.5|y=355.5|color=116|size=18|text=�鿴����|link=@show,2>
			
		]]
		local name = "��"
		if castleinfo(3) ~= "����Ա" then
			name = castleinfo(3)
		end
		msg=msg.."<RText|x=303.5|y=355.5|color=116|size=18|text=ɳ�Ϳ˳�����".. name ..">"
	else
		msg=msg..[[
			<RText|x=29.5|y=46.5|color=116|size=18|text=����ʱ�䣺>
<RText|x=29.5|y=69.5|color=255|size=18|text=����������������幥�ǣ����ÿ����й���>
<RText|x=29.5|y=96.5|color=116|size=18|text=����˵����>
<RText|x=29.5|y=119.5|color=255|size=18|text=�״κ�������⽱��<5��Ԫ��/FCOLOR=251>�� ���ÿ�칥�ǽ���<5000����/FCOLOR=251>��ս>
<RText|x=29.5|y=144.5|color=255|size=18|text=���������⽱��<10��Ԫ��/FCOLOR=253>���繥��������������׷��Ԫ��������>
<RText|x=29.5|y=169.5|color=255|size=18|text=�������עϵͳ���������ѯ��Ϸ�ͷ�>
<RText|x=29.5|y=197.5|color=116|size=18|text=�������ţ�>
<RText|x=29.5|y=220.5|color=255|size=18|text=���ǽ�����<22:01 - 22:30/FCOLOR=250>����ɳ�Ϳ������ڻʹ����"����Ա"��ȡ>
<RText|x=29.5|y=245.5|color=255|size=18|text=���ǽ�����<�л����Ŷ���20%����/FCOLOR=22>��ʣ�ཱ���ʹ����л��Աƽ��>
<RText|x=29.5|y=270.5|color=255|size=18|text=����(��������) <�л����Ŷ��⽱��10000���ͽ�ֵ�Լ���15��Ѫ��/FCOLOR=254>>
<RText|x=29.5|y=322.5|color=255|size=18|text=������ͨ���ʼ���ʽ���ţ�ƽ�����䵱�칥�ǽ���Ϊ����Ӱ������>
<RText|x=29.5|y=347.5|color=255|size=18|text=���빥����ҵ����棬<�����ڼ�û�ڹ�ɳ����μ�15�������ϵ���/FCOLOR=250>>
<RText|x=29.5|y=372.5|color=255|size=18|text=<�ҽ���ȡ�������ǽ���/FCOLOR=250>�����Ž����ڼ�����Ҿ�����������>
<Text|x=452.5|y=69.5|color=250|size=18|text=������ҳ|link=@show,1>
<RText|x=29.5|y=295.5|color=255|size=18|text=<�ϵ�boss���ʼӳ�/FCOLOR=254>>



		]]
	end

	say(actor,msg)
end
local shachuansong = {
		["ɳ��������"]={600,292},
        ["ɳ��������"]={639,312},
        ["ɳ�����ε�"]={668,285},
        ["ɳ�Ϳ˲ֿ�"]={640,245},
        ["ɳ�Ϳ˴���"]={681,338},
	}

function shamove(actor,par)
	if getlevel(actor) < 50 then
		sendmsg9(actor,"�ﵽ50���ſ���ֱ�Ӵ���")
		return
	end
	mapmove(actor,"3",shachuansong[par][1],shachuansong[par][2],0)
end