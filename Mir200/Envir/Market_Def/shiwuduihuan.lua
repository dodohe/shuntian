require("Envir/Market_Def/zh.lua") --���˷�װ����

local shiwu_t = {
	{"����",10,"005001"},{"���������",20,"005002"},{"�ϱ���",50,"005003"},{"����������",100,"005004"},{"������Ƥ",500,"005005"},{"�ľߺ�",1000,"005006"},{"̫������",5000,"005007"},{"��������Ƭ",10000,"005008"},
}
function show(actor)
	local msg = [[
		<Img|x=0|width=556|height=416|bg=1|scale9r=50|scale9t=50|scale9b=50|move=1|scale9l=50|esc=1|loadDelay=1|img=zhangheng/1.png|reset=0|show=4>
		<Button|x=552.0|y=1.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=16.5|y=38.5|img=zhangheng/204.png|esc=0>
		<RText|ay=0.5|x=63.0|y=362.5|color=161|outline=1|size=18|text=��ɱ�κι�����м��ʵ���ʵ����ڴ˴��һ�Ԫ��>
	]]
	for i = 1,#shiwu_t do
		msg = msg.."<Img|x=".. 60.5-2 + (i-1)%4*125 .."|y=".. 117.5 + math.floor((i-1)/4)*110 .."|img=zhangheng/205.png|esc=0>"
		msg = msg.."<ItemShow|x=".. 58-2 + (i-1)%4*125 .."|y=".. 116 + math.floor((i-1)/4)*110 .."|width=70|height=70|itemid=".. getidbyname(shiwu_t[i][1]) .."|itemcount=1|showtips=1|scale=0|bgtype=0>"
		msg = msg.."<Img|x=".. 60.5-2 + (i-1)%4*125 .."|y=".. 117.5 + math.floor((i-1)/4)*110 .."|img=zh/".. shiwu_t[i][3] ..".png|esc=0>"
		msg = msg.."<Button|x=".. 24.5+5 + (i-1)%4*125 .."|y=".. 182.5 + math.floor((i-1)/4)*110 .."|width=120|nimg=zh/20.png|color=150|size=16|text=�һ�".. shiwu_t[i][2] .."Ԫ��|link=@duihuan,"..i..">"
	end
	
	say(actor,msg)
end

function duihuan(actor,par)
	par = tonumber(par)
	if itemcount(actor,shiwu_t[par][1]) < 1 then
		sendmsg9(actor,"��û��"..shiwu_t[par][1])
		return
	end
	takeitem(actor,shiwu_t[par][1],1)
	addingot(actor,shiwu_t[par][2])
	sendmsg9(actor,"�һ��ɹ������Ԫ��"..shiwu_t[par][2],"#00FF00")
end
