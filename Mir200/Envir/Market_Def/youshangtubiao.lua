
require("Envir/Market_Def/fuli.lua") --��������
require("Envir/Market_Def/shouchong.lua") --�׳�
require("Envir/Market_Def/zhouka.lua") --�ܿ�
---------����ͼ����ʾ��
local tubiao_t1 = {
	{"����ʡǮ",5,"tubiao_ttsq"},
	{"������",18,"tubiao_pmh"},
	--{"������",6,"tubiao_jyh"},
	
	{"����",7,"tubiao_fuli"},
	{"��ɱ",9,"tubiao_shousha"},
	{"΢�����",15,"tubiao_libao"},
	{"���ں�",19,"tubiao_gongzonghao"},
	--{"ʵ��һ�",10,"tubiao_shiwuduihuan"},
	{"��Ϸ�",16,"tubiao_huodong"},
	{"����",14,"tubiao_gonglue"},
	

}
local tubiao_t2 = {
	{"�׳�",12,"tubiao_shouchong",bianliang = "�׳���ȡ"},
	{"�ܿ�",13,"tubiao_zhouka",},
	{"����",8,"tubiao_touwang",},
	{"��ֵ",17,"tubiao_chongzhi"},
}

function touzihongdian(actor)
	if getint(actor,"��Ա�ȼ�") >= 2 then
		return false
	end
	if ( getlevel(actor) == 40 or getlevel(actor) == 43 ) and getint(actor,"Ͷ�ʺ��") == 0 then
		setint(actor,"��Ѹ������",1)
		return true
	end
	return false
end

function tubiaoxianshi(actor)
	--haoshistart(actor)
	local msg = ""
	if getispc(actor) then --���Զ�
		msg = msg .. '<Button|x=-235.0|y=20.0|nimg=tubiao/2.png|link=@close_tubiao>'
		local xh = 1
		for i = 1,#tubiao_t1 do				
			if tubiao_t1[i][1] == "΢�����" or ( getmap(actor) ~= "tuoji" and getmap(actor) ~= "waigua" ) then
				
				if tubiao_t1[i][1] == "���ں�" and ( (getlevel(actor) >= 48 and getint(actor,"���ں�����") ~= 0 ) or getint(actor,"���ں�����") == 2 ) then
				else
					msg = msg .. '<Button|x='.. -305 - (xh-1)*65 ..'|y=15.0|nimg=tubiao/'.. tubiao_t1[i][2] ..'1.png|link=@'.. tubiao_t1[i][3] ..'>'
					if tubiao_t1[i][1] == "��ɱ" and (dengjihongdian(actor) or getint(actor,"�ش������") == 1 ) then --���
						msg = msg .. '<Img|x='.. -265 - (xh-1)*65 ..'|y=15.0|img=zh/100.png|esc=0>'
					end
					if tubiao_t1[i][1] == "���ں�" and getint(actor,"΢��������") == 0 then --���
						msg = msg .. '<Img|x='.. -265 - (xh-1)*65 ..'|y=15.0|img=zh/100.png|esc=0>'
					end
					--if tubiao_t1[i][1] == "����" and touzihongdian(actor) then --���
					--	msg = msg .. '<Img|x='.. -265 - (xh-1)*65 ..'|y=15.0|img=zh/100.png|esc=0>'
					--end
					if tubiao_t1[i][1] == "΢�����" and getint(actor,"�ͷ������ʾ") == 1 then --���
						msg = msg .. '<Img|x='.. -265 - (xh-1)*65 ..'|y=15.0|img=zh/100.png|esc=0>'
					end
					xh = xh + 1
				end
			end
		end
		xh = 1
		for i = 1,#tubiao_t2 do
			if tubiao_t2[i].bianliang ~= nil and getint(actor,tubiao_t2[i].bianliang) == 1 then
			elseif (tubiao_t2[i][1] == "����" and getsysint("��������") < 1) or (tubiao_t2[i][1] == "�ܿ�" and getlevel(actor) < 50) then
			elseif (tubiao_t2[i][1] == "����" or tubiao_t2[i][1] == "�ܿ�") and getint(actor,"����ͼ��") == 1 then	
			else
				if getmap(actor) ~= "tuoji" and getmap(actor) ~= "waigua" then
					msg = msg .. '<Button|x='.. -305 - (xh-1)*65 ..'|y=85.0|nimg=tubiao/'.. tubiao_t2[i][2] ..'1.png|link=@'.. tubiao_t2[i][3] ..'>'
					
					if tubiao_t2[i][1] == "�ܿ�" and getsysint("��������") > 0 and getdayint(actor,"�ܿ����") == 0 then --���
						msg = msg .. '<Img|x='.. -265 - (xh-1)*65 ..'|y=85.0|img=zh/100.png|esc=0>'
					end
					
					xh = xh + 1
				end
			end
		end
	else
		msg = msg .. '<Button|x=-220.0|y=40.0|nimg=tubiao/2.png|link=@close_tubiao>'
		local xh = 1
		for i = 1,#tubiao_t1 do		
			if tubiao_t1[i][1] == "΢�����" or ( getmap(actor) ~= "tuoji" and getmap(actor) ~= "waigua" ) then
				if tubiao_t1[i][1] == "���ں�" and ( (getlevel(actor) >= 48 and getint(actor,"���ں�����") ~= 0 ) or getint(actor,"���ں�����") == 2 ) then
				else
					msg = msg .. '<Button|x='.. -310 - (xh-1)*75 ..'|y=30.0|nimg=tubiao/'.. tubiao_t1[i][2] ..'.png|link=@'.. tubiao_t1[i][3] ..'>'
					if tubiao_t1[i][1] == "��ɱ" and (dengjihongdian(actor) or getint(actor,"�ش������") == 1 ) then --���
						msg = msg .. '<Img|x='.. -255 - (xh-1)*75 ..'|y=30.0|img=zh/100.png|esc=0>'
					end
					if tubiao_t1[i][1] == "���ں�" and getint(actor,"΢��������") == 0 then --���
						msg = msg .. '<Img|x='.. -255 - (xh-1)*75 ..'|y=30.0|img=zh/100.png|esc=0>'
					end
					--if tubiao_t1[i][1] == "����" and touzihongdian(actor) then --���
					--	msg = msg .. '<Img|x='.. -255 - (xh-1)*75 ..'|y=30.0|img=zh/100.png|esc=0>'
					--end
					if tubiao_t1[i][1] == "΢�����" and getint(actor,"�ͷ������ʾ") == 1 then --���
						msg = msg .. '<Img|x='.. -255 - (xh-1)*75 ..'|y=30.0|img=zh/100.png|esc=0>'
					end
					xh = xh + 1
				end
				
			end
		end
		xh = 1
		for i = 1,#tubiao_t2 do
			if tubiao_t2[i].bianliang ~= nil and getint(actor,tubiao_t2[i].bianliang) == 1 then
			elseif (tubiao_t2[i][1] == "����" and getsysint("��������") < 1) or (tubiao_t2[i][1] == "�ܿ�" and getlevel(actor) < 50) then
			elseif (tubiao_t2[i][1] == "����" or tubiao_t2[i][1] == "�ܿ�") and getint(actor,"����ͼ��") == 1 then	
			else
				if getmap(actor) ~= "tuoji" and getmap(actor) ~= "waigua" then
					msg = msg .. '<Button|x='.. -310 - (xh-1)*75 ..'|y=105.0|nimg=tubiao/'.. tubiao_t2[i][2] ..'.png|link=@'.. tubiao_t2[i][3] ..'>'
					if tubiao_t2[i][1] == "�ܿ�" and getsysint("��������") > 0 and getdayint(actor,"�ܿ����") == 0 then --���
						msg = msg .. '<Img|x='.. -255 - (xh-1)*75 ..'|y=105.0|img=zh/100.png|esc=0>'
					end
					xh = xh + 1
				end
			end
		end
	end
	--delbutton(actor,102,1)
	addbutton(actor,102,1,msg)
	--haoshiend(actor)
end



function close_tubiao(actor)
	local msg = ""
	if getispc(actor) then --���Զ�
		msg = msg .. '<Button|a=0|x=-235.0|y=20.0|nimg=tubiao/1.png|link=@tubiaoxianshi>'
	else
		msg = msg .. '<Button|a=0|x=-220.0|y=40.0|nimg=tubiao/1.png|link=@tubiaoxianshi>'
	end
	--delbutton(actor,102,1)
	addbutton(actor,102,1,msg)
end


------------------------------------------------------------
function tubiao_jubaopen(actor)
	fulishow(actor,5)
end


function tubiao_gonglue(actor)
	gonglue_show(actor)
end

function tubiao_shouchong(actor)
	shouchong_show(actor)
end

function tubiao_sjbs(actor)
	shijieboss_show(actor)
end

function tubiao_ttsq(actor)
	openhyperlink(actor,111,0)
end

function tubiao_pmh(actor)
	openhyperlink(actor,27,0)
end

function tubiao_fuli(actor)
	fulishow(actor)
	setint(actor,"Ͷ�ʺ��",1)
	tubiaoxianshi(actor)
end

function tubiao_baobao(actor)
	baobaoshow(actor)
end

function tubiao_bscs(actor)
	--haoshistart(actor)
	bosschaxunshow(actor)
	--haoshiend(actor)
end

function tubiao_zbtj(actor)
	zhuangbeitujian_show(actor)
end

function tubiao_zhouka(actor)
	zhouka_show(actor)
	setdayint(actor,"�ܿ����",1)
	tubiaoxianshi(actor)
end

function tubiao_touwang(actor)
	callscriptex(actor, "CallLua", "touwang", "@show") --��������
end

function tubiao_shousha(actor)
	callscriptex(actor, "CallLua", "shousha", "@show") --��ɱ����
end

function tubiao_shiwuduihuan(actor)
	callscriptex(actor, "CallLua", "shiwuduihuan", "@show") --ʵ��һ�����
end

function tubiao_gonglue(actor)
	callscriptex(actor, "CallLua", "gonglue", "@show") --��ɱ����
end

function tubiao_libao(actor)
	callscriptex(actor, "CallLua", "libao", "@show") --�������
	setint(actor,"�ͷ������ʾ",0)
	tubiaoxianshi(actor)
end

function tubiao_gongzonghao(actor)
	callscriptex(actor, "CallLua", "libao", "@show1") --���ںŽ���
	setint(actor,"΢��������",1)
	tubiaoxianshi(actor)
end

function tubiao_huodong(actor)
	callscriptex(actor, "CallLua", "huodong", "@show") --�����
end

function tubiao_chongzhi(actor)
	openhyperlink(actor,26,0)
end

---------����ͼ����ʾ�ν���