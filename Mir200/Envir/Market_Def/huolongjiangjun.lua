require("Envir/Market_Def/zh.lua") --���˷�װ����

function show(actor,yemian)
	local msg = [[
		<Img|width=530|height=240|esc=1|bg=1|scale9r=10|scale9t=10|show=0|scale9b=10|reset=1|move=0|img=zhangheng/176.png|scale9l=10|loadDelay=1>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.5|color=251|size=18|text=��������>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ax=0|ay=0.5|x=22.0|y=72.5|color=255|size=18|text=�����귨��½���ڻ�����ĸ��ִ�˵���ѷз�����.��ֻ֪����>
		<RText|ay=0.5|x=22.0|y=97.5|color=255|size=18|text=���׵�һ��˵�����ڻ������<����80ֻ���ϵĹ���/FCOLOR=250>���ܶԻ�>
		<RText|ay=0.5|x=22.0|y=122.5|color=255|size=18|text=������������˺�Ч����������õ�������ı����ע����>
		<RText|ay=0.5|x=22.0|y=147.5|color=255|size=18|text=�����𣬴�֮����������ֻ��<սʿ�Ĵ�ɱ����ʦ���ջ�֮�⣬/FCOLOR=253>>
		<RText|ay=0.5|x=23.0|y=172.5|color=255|size=18|text=<��ʿ����ħ��/FCOLOR=253>���ܿ�����....>
	]]
	msg = msg .."<RText|x=151.0|y=194.0|color=255|size=18|text=��ǰ��ͼ����������<".. #getmapmon("hlsd","",50,50,50) .."/FCOLOR=254>>"
	say(actor,msg)
end
