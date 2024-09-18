function buff_show(actor)
	local msg = ''
	if getispc(actor) then
		msg ='<Button|x=225|y=1|nimg=buff/btn_buffzy_01.png|link=@buffshow_open>'
	else
		msg ='<Button|x=266|y=1|nimg=buff/btn_buffzy_01.png|link=@buffshow_open>'
	end
	delbutton(actor,101,99)
	addbutton(actor,101,99,msg)
end

local buffshow_ids = {10065,10066,19996,19997,20072,20037,20096,20102,20110} --Ҫ��ʾ��buffid 20005,20006
-- 20005 �¿�
-- 20006 ˫������
local buffshow_t = {
	[20005] = {name="�¿�",tupian="buff_icon/102.png",jieshao="�����¿���Ȩ",isyongjiu=0},
	[10065] = {name="˫������",tupian="buff_icon/111.png",jieshao="ɱ�ֻ��˫������",isyongjiu=0},
	[10066] = {name="1.5������",tupian="buff_icon/111.png",jieshao="ɱ�ֻ��1.5������",isyongjiu=0},
	[19996] = {name="�ƶ�-�׶���",tupian="buff_icon/105.png",jieshao="��ħ������12�� �¶���<%s/FCOLOR=253>",isyongjiu="24����ʧ"},
	[19997] = {name="�ƶ�-�ϳ���",tupian="buff_icon/106.png",jieshao="˫������12�� �¶���<%s/FCOLOR=253>",isyongjiu="24����ʧ"},
	[20072] = {name="Ħڭ�ľ�",tupian="buff_icon/107.png",jieshao="����ֵ����10%%",isyongjiu=0},
	[20037] = {name="��ʯ���",tupian="buff_icon/108.png",jieshao="����ֵ����10%%",isyongjiu=0},
	[20096] = {name="�г�ر�",tupian="buff_icon/109.png",jieshao="ÿ����ʧ3%%Ѫ��",isyongjiu=0},
	[20102] = {name="���аԵ�",tupian="buff_icon/110.png",jieshao="��ֹʹ������ҩƷ",isyongjiu=0},
	[20110] = {name="���ʼӳ�",tupian="buff_icon/112.png",jieshao="���ʼӳɣ�+%s%%",isyongjiu=1},
}
function buffshow_open(actor)
	local hasbuffs = {} --���ڵ���Ҫ��ʾ��buff�б�
	for i = 1,#buffshow_ids do
		if hasbuff(actor,buffshow_ids[i]) then
			table.insert(hasbuffs,buffshow_ids[i])
		end
	end
	--sendmsg9(actor,"�������")
	local msg = ''
	msg=msg.."<Layout|x=-1000|y=-1000|width=3000|height=3000|color=255>|link=@buff_show>"
	if getispc(actor) then
		msg = msg ..'<Button|x=225|y=1|nimg=buff/btn_buffzy_01.png|link=@buff_show>'
		msg = msg ..'<Img|x=221.0|y=32.0|width=400|height=200|move=0|scale9t=10|img=buff/46.png|reset=1|show=0|scale9b=10|loadDelay=1|scale9r=0|scale9l=0|esc=0>'
		msg = msg ..'<ListView|children={2}|ay=1|x=221|y=32.0|width=400|height=200|margin=0|direction=1>'
	else
		msg = msg ..'<Button|x=266|y=1|nimg=buff/btn_buffzy_01.png|link=@buff_show>'
		msg = msg ..'<Img|x=262.0|y=32.0|width=400|height=200|move=0|scale9t=10|img=buff/46.png|reset=1|show=0|scale9b=10|loadDelay=1|scale9r=0|scale9l=0|esc=0>'
		msg = msg ..'<ListView|children={2}|ay=1|x=262|y=32.0|width=400|height=200|margin=0|direction=1>'
	end
	local pyy = 64
	local gao = pyy * #hasbuffs + 8
	local ids = ""
	for i = 3,500 do
		ids = ids..i..","
	end
	local qsid = 3
	msg = msg ..'<Img|id=2|children={'..ids..'}|x=30.0|y=40.0|width=400|height='..gao..'|img=0.png|esc=0>' --�����ӿؼ�ͼƬ
	for i = 1,#hasbuffs do
		local buffid = hasbuffs[i] --buffid
		local name = ""
		if buffid == 19996 then
			name = getdaystr(actor,"�׶����¶���")
		elseif buffid == 19997 then
			name = getdaystr(actor,"�ϳ����¶���")
		elseif buffid == 20110 then
			name = tostring(getbaseinfo(actor,51,215)/100)
		end
		
		local t = buffshow_t[buffid] --buff��ʾ��
		msg = msg ..'<Img|id='..qsid..'|x=30.0|y='.. 40-30 +(i-1)*pyy ..'|width=30|height=30|img='.. t.tupian ..'|esc=0>'
		qsid = qsid + 1
		msg = msg ..'<Text|id='..qsid..'|x=82.0|y='.. 42-30 +(i-1)*pyy ..'|color=255|size=18|text='.. t.name ..'>' --buff��
		qsid = qsid + 1
		msg = msg ..'<RText|id='..qsid..'|x=82.0|y='.. 70-30 +(i-1)*pyy ..'|color=251|size=16|text='.. string.format(t.jieshao,name) ..'>' --buff���Խ���
		qsid = qsid + 1
		local bufftime = getbuffinfo(actor,buffid,2)
		if t.isyongjiu == 1 then
			msg = msg ..'<Text|id='..qsid..'|x=200.0|y='.. 42-30 +(i-1)*pyy ..'|color=250|size=18|text=����>' --ʣ��ʱ����ʾ
		elseif t.isyongjiu ~= 0 then
			msg = msg ..'<Text|id='..qsid..'|x=200.0|y='.. 42-30 +(i-1)*pyy ..'|color=250|size=18|text='.. t.isyongjiu ..'>' --ʣ��ʱ����ʾ
		else
			if bufftime == 0 then
				buffshow_shuaxin(actor)
			end
			msg = msg ..'<TIMETIPS|id='..qsid..'|x=200.0|y='.. 42-30 +(i-1)*pyy ..'|color=250|size=18|time='..bufftime..'|link=@buffshow_shuaxin>' --ʣ��ʱ����ʾ
		end
		qsid = qsid + 1
		msg = msg ..'<Img|id='..qsid..'|x=0|y='.. 96-30 +(i-1)*pyy ..'|width=400|img=buff/bg_buffzy_02.png|esc=0>' --�м����߸���
		qsid = qsid + 1
	end

	delbutton(actor,101,99)
	addbutton(actor,101,99,msg)
end

function buffshow_shuaxin(actor)
	delaygoto(actor,200,"buffshow_open")
end
