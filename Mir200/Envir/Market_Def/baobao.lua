require("Envir/Market_Def/zh.lua") --���˷�װ����

local guaiwut = {
	{name="���Ͷ�ǳ�",	mon="���Ͷ�ǳ�3",dengji=35,yanse=254,	},
	{name="������ʿ",	mon="������ʿ",dengji=45,yanse=70,	},

}
function show(actor,yemian)
	
	local msg = [[
		<Img|width=530|height=250|esc=1|bg=1|scale9r=10|scale9t=10|loadDelay=1|scale9b=10|scale9l=10|move=0|img=public/bg_npc_04.jpg|reset=1|show=0>
		<Button|x=529.0|y=2.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=159.0|y=22.0|img=zhangheng/142.png|esc=0>
		<Img|x=315.0|y=22.0|img=zhangheng/143.png|esc=0>
		<Text|ax=0.5|ay=0.5|x=264.0|y=31.0|color=251|size=18|text=ѱ��ʦ>
		<Img|x=34.0|y=50.0|img=zhangheng/203.png|esc=0>
		<RText|ax=0|ay=0.5|x=22.0|y=72.5|color=255|size=18|text=��ʦ��Ϊ�����Ⱥ������ְҵ,��ô��û�м�ֻҫ��������>
		<RText|ay=0.5|x=22.0|y=97.5|color=255|size=18|text=������? ������<������/FCOLOR=250>������ջ���, ��˵<δ֪����/FCOLOR=250>�����>
		<RText|ay=0.5|x=22.0|y=122.5|color=255|size=18|text=�ջ��ǿ��ı���Ŷ!>
		<RText|ay=0.5|x=22.0|y=164.5|color=70|size=18|text=���Ͷ�ǳ桡����������2����>
		<RText|ay=0.5|x=22.0|y=203.5|color=254|size=18|text=������ʿ��������������4����>
		<Text|ay=0.5|x=382.0|y=163.5|size=18|color=250|text=��ȡ����|link=@zhaohuan,1>
		<Text|ay=0.5|x=382.0|y=202.5|size=18|color=250|text=��ȡ����|link=@zhaohuan,2>
	]]
	say(actor,msg)
end

function zhaohuan(actor,par)
	par = tonumber(par)
	local bbt = getbaobaolist(actor) --��ȡ�����б�

	if getjob(actor) ~= 1 then
		sendmsg9(actor,"�Բ����㲻�Ƿ�ʦ�������ٻ���")
		return
	end
	if #bbt >= 5 then
		sendmsg9(actor,"���Ѿ���5���������������ٻ���")
		return
	end
	if getlevel(actor) < guaiwut[par].dengji then
		sendmsg9(actor,"��ʿ����Ҫ��ȡ������Ҫ�ȼ��ﵽ".. guaiwut[par].dengji .."��")
		return
	end
	if par == 1 then
		if getbindgold(actor) < 20000 then
			sendmsg9(actor,"��ȡ������Ҫ2����","#00FF00")
			return
		end
		subbindgold(actor,20000)
	else
		if getbindgold(actor) < 40000 then
			sendmsg9(actor,"��ȡ������Ҫ4����","#00FF00")
			return
		end
		subbindgold(actor,40000)
	end
	
	callscriptex(actor, "RECALLMOB", guaiwut[par].mon, 1,3600,0,0,0,0)
	sendmsg9(actor,"�ٻ��ɹ�","#00FF00")
end
