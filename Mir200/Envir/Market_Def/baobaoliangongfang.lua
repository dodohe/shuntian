require("Envir/Market_Def/zh.lua") --���˷�װ����


function show(actor,yemian)
	
	local msg = [[
		<Img|width=530|height=200|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=����������>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ax=0|ay=0.5|x=91.0|y=90.5|color=255|size=18|text=����˵���Ҫ20���ң����Ƿ�Ը����룿>
		<Text|ay=0.5|x=226.0|y=147.5|color=250|size=18|text=ȷ������|link=@jinru>

	]]
	say(actor,msg)
end

function jinru(actor)
	if getlevel(actor) < 50 then
		sendmsg9(actor,"��Ҫ50�����ܽ���")
		return
	end
	if getbindgold(actor) < 200000 then
		sendmsg9(actor,"��Ҳ���20��")
		return
	end
	subbindgold(actor,200000)
	map(actor,"0139")
	local guai_t = getobjectinmap("0139",23,27,100,2)
	if #guai_t < 50 then
		genmon("0139",23,27,"������10",100,150,255)
	end
end