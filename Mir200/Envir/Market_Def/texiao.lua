
-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------��ЧչʾUI------------------------------------------------------------------
local yijiannius = {"��ɫ","����","NPC","��Ч","����","����","���","����"}
--1-��ɫ;2-����;3-NPC;4-���ܻ���Ч;6-����;7-����;8-���;9-����      ����ķ���
--��Ч���� 0.��Ч 1.npc 2.���� 3.���� 4.���� 5.���� 6.��� 7.����   ��Ч��ʾ�ķ���
local fenlei = {
	["��ɫ"] = {biaofenlei=1,texiaofenlei=4,dir=4},
	["����"] = {biaofenlei=2,texiaofenlei=2,dir=0},
	["NPC"] =  {biaofenlei=3,texiaofenlei=1,dir=0},
	["��Ч"] = {biaofenlei=4,texiaofenlei=0,dir=5},
	["����"] = {biaofenlei=6,texiaofenlei=5,dir=5},
	["����"] = {biaofenlei=7,texiaofenlei=8,dir=5},
	["���"] = {biaofenlei=8,texiaofenlei=6,dir=5},
	["����"] = {biaofenlei=9,texiaofenlei=7,dir=5},
}
local texiaobiao = require("Envir/Market_Def/texiaodata.lua")
function texiaoshow(actor,anniu1id,anniu2id)
	anniu1id = tonumber(anniu1id) or 1
	anniu2id = tonumber(anniu2id) or 1
	local txb = {}
	for i = 1,#texiaobiao do
		if texiaobiao[i].type == fenlei[yijiannius[anniu1id]].biaofenlei then
			table.insert(txb,texiaobiao[i])
		end
	end
	
	local msg = [[
		<Img|width=1600|height=1000|reload=0|show=4|scale9r=50|scale9l=50|bg=1|scale9b=50|move=1|scale9t=50|loadDelay=0|reset=1|img=zh/1.png|esc=1>
		<Button|x=1562.0|y=10.0|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Text|x=25.0|y=16.0|outline=2|color=149|size=20|text=��Ч��ʾ>
		<Img|x=232.0|y=57.0|height=900|img=zh/8.png|esc=0>
		<ListView|children=2|x=30.0|y=56.0|width=200|height=900|bounce=0|direction=1|reload=0|margin=1>
	]]
	local ids = ""
	for i = 4,500 do
		ids = ids .. i .. ","
	end
	
	local addgaodu = 0
	local anniujiange = 45 --��ť���
	local gao = #yijiannius * anniujiange --һ����ť�߶�
	local wenzigao = 0
	
	wenzigao = math.ceil(#txb/40) *30 --������ť�߶�

	msg = msg ..'<Img|id=2|children=3|height='.. gao + wenzigao ..'|img=zh/0.png|esc=0>' --���õ�ͼ�� ��
	msg = msg ..'<Img|id=3|children={'.. ids ..'}|height='.. gao + wenzigao ..'|img=zh/0.png|esc=0>' --���õ�ͼ�� ��

	local qsid = 4
	for i = 1,#yijiannius do
		if i == anniu1id then
			msg = msg ..'<Button|id='..qsid..'|x=4.0|y='.. 5+(i-1)*anniujiange ..'|size=18|width=190|nimg=zh/10.png|color=250|outline=2|text='..yijiannius[i]..'>'
			qsid = qsid + 1
			addgaodu = wenzigao
			for j = 1,math.ceil(#txb/40) do
				msg = msg ..'<Button|id='..qsid..'|x=4.0|y='.. i*45+(j-1)*30 ..'|size=18|width=190|nimg=zh/21.png|color=250|outline=2|text=��'..j..'ҳ|link=@texiaoshow,'.. i ..","..j..'>'
				qsid = qsid + 1
				if anniu2id == j then
					msg = msg ..'<Img|id='..qsid..'|x=4.0|y='.. i*45+(j-1)*30 ..'|size=18|width=190|height=31|img=zh/22.png>'
					qsid = qsid + 1
				end
			end
		else
			msg = msg ..'<Button|id='..qsid..'|x=4.0|y='.. 5+(i-1)*anniujiange + addgaodu ..'|size=18|width=190|nimg=zh/11.png|color=140|outline=2|text='..yijiannius[i]..'|link=@texiaoshow,'.. i ..'>'
			qsid = qsid + 1			
		end
	end
	local ysxx = 349
	local ysyy = 144
	local xh = 0
	local geshu = 8
	for i = (anniu2id-1) * 40 + 1,#txb do
		if xh >= 40 then
			break
		end
		msg = msg ..'<Effect|x='.. ysxx-10 + xh%geshu*155 ..'|y='.. ysyy+6+math.floor(xh/geshu) * 170 ..'|scale=1|speed=0.5|dir='.. fenlei[yijiannius[anniu1id]].dir ..'|sex='..txb[i].sex..'|effectid='..txb[i].id..'|effecttype='..fenlei[yijiannius[anniu1id]].texiaofenlei..'>'
		msg = msg ..'<Text|x='.. ysxx-40 + xh%geshu*155 ..'|y='.. ysyy+26+math.floor(xh/geshu) * 170 ..'|color=250|size=18|text=��ţ�'..txb[i].id..'>'
		msg = msg ..'<Text|x='.. ysxx-40 + xh%geshu*155 ..'|y='.. ysyy+56+math.floor(xh/geshu) * 170 ..'|color=255|size=18|text='..txb[i].name..'>'
		xh = xh + 1
	end
	
	
	say(actor,msg)
end

