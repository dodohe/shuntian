require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor,yemian)
	
	local msg = [[
		<Img|width=530|height=200|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=zhangheng/176.png|reset=1|show=0>
<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
<Text|ax=0.5|ay=0.5|x=264.0|y=31.5|color=251|size=18|text=����ʹ��>
<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
<RText|ax=0|ay=0.5|x=22.0|y=72.5|size=18|color=255|text=�̹Ŵ��һֱ�ػ��߻���������ܣ�ֻ��������<�̹Ŵ��/FCOLOR=70>����>
<RText|ay=0.5|x=22.0|y=102.5|color=255|size=18|text=�Ҹ��Ϸ�<��ʮ����ˮ����/FCOLOR=253>���Ҳ�������ǰ���������̽��>
<Text|ay=0.5|x=229.0|y=152.5|size=18|color=250|text=��Ҫǰ��|link=@qianwang>



	]]
	say(actor,msg)
end


function qianwang(actor)
	local monlist = getmapmon("pgjd","�̹Ŵ��",17,18,20)
	if #monlist > 0 then
		sendmsg9(actor,"���������̹Ŵ��")
		return
	end
	if itemcount(actor,"��ˮ����") < 50 then
		sendmsg9(actor,"��ˮ������")
		return
	end
	takeitem(actor,"��ˮ����",50)
	mapmove(actor,"hlsd",18,73,1)
	sendmsg0(actor,"����ϵͳ���¸ҵ���ʿ:��".. getname(actor) .."������������Ѱ�Ҹ߼�װ��ȥ�ˣ����ף�����ɡ�",117,94)
end