----��������
function getint(player,bianlian)
	iniplayvar(player, "integer", "HUMAN", "N"..bianlian)
	return getplayvar(player, "HUMAN","N"..bianlian)
end

function getstr(player,bianlian)
	iniplayvar(player, "string", "HUMAN", "S"..bianlian)
	return getplayvar(player, "HUMAN","S"..bianlian)
end

function setint(player,bianlian,zhi,baocun)
	if not baocun then
		baocun = 1
	end
	iniplayvar(player, "integer", "HUMAN", "N"..bianlian)
	setplayvar(player, "HUMAN", "N"..bianlian, zhi, baocun)
end

function setstr(player,bianlian,zhi,baocun)
	if not baocun then
		baocun = 1
	end
	iniplayvar(player, "string", "HUMAN", "S"..bianlian)
	setplayvar(player, "HUMAN", "S"..bianlian, zhi, baocun)
end

function getsysint(bianlian)
	inisysvar("integer", "N"..bianlian)
	return getsysvarex("N"..bianlian)
end

function getsysstr(bianlian)
	inisysvar("string", "S"..bianlian)
	return getsysvarex("S"..bianlian)
end

function setsysint(bianlian,zhi,baocun)
	if not baocun then
		baocun = 1
	end
	inisysvar("integer", "N"..bianlian)
	setsysvarex("N"..bianlian,zhi,baocun)
end

function setsysstr(bianlian,zhi,baocun)
	if not baocun then
		baocun = 1
	end
	inisysvar("string", "S"..bianlian)
	setsysvarex("S"..bianlian,zhi,baocun)
end

function setsyslinshiint(bianlian,zhi)
	inisysvar("integer", "N"..bianlian)
	setsysvarex("N"..bianlian,zhi)
end

--��ȡ�����ֵ�������
function getdayint(actor,bianliang)
	local biao = {}
	local s = getplaydef(actor,"Z0")
	local n = 0
	if s ~= "" then
		local z = json2tbl(s)
		if not z then
			setplaydef(actor,"Z0","")
		end
		for k,v in pairs(z) do
			if k == bianliang then
				n = v
				break
			end
		end
	end
	return n
end
--���������ֵ�������
function setdayint(actor,bianliang,num)
	if type(num) ~= "number" then
		return
	end
	local biao = {}
	local s = getplaydef(actor,"Z0")
	if s ~= "" then
		biao = json2tbl(s)
	end
	biao[bianliang] = num
	setplaydef(actor,"Z0",tbl2json(biao))
end

--��ȡ����ַ��������
function getdaystr(actor,bianliang)
	local biao = {}
	local s = getplaydef(actor,"Z1")
	local n = ""
	if s ~= "" then
		local z = json2tbl(s)
		for k,v in pairs(z) do
			if k == bianliang then
				n = v
				break
			end
		end
	end
	return n
end
--��������ַ��������
function setdaystr(actor,bianliang,str)
	if type(str) ~= "string" then
		return
	end
	local biao = {}
	local s = getplaydef(actor,"Z1")
	if s ~= "" then
		biao = json2tbl(s)
	end
	biao[bianliang] = str
	setplaydef(actor,"Z1",tbl2json(biao))
end

--���һ������ķ�Χ
function FCheckRange(obj, x, y, range)
    local cur_x, cur_y = getbaseinfo(obj, 4), getbaseinfo(obj, 5)
    local min_x, max_x = x-range, x+range
    local min_y, max_y = y-range, y+range

    if (cur_x >= min_x) and (cur_x <= max_x) and (cur_y >= min_y) and (cur_y <= max_y) then
        return true
    end
    return false
end
--����ɫ���ַ���
function sencolormsg(actor,idx,msg,co1,co2)
	local x = getconst(actor,'$SCREENWIDTH') * 0.5
	local y  = getconst(actor,'$SCREENHEIGHT') * 0.65
	sendcustommsg(actor,idx,msg,co1,co2,x,y)
end
--��ȡ���ﱦ���б�
function getbaobaolist(actor)
	local t = {}
	local ncount=getbaseinfo(actor,38)
    for i = 0 ,ncount-1 do
        mon = getslavebyindex(actor, i)
		table.insert(t,mon)
    end
	return t
end
--������Ϣ����9
function sendmsg9(actor,msg,yanse,miaobian)
	if yanse == nil then
		yanse = "#FFFFFF"
	end
	if miaobian == nil then
		if getispc(actor) then
			miaobian = 1
		else
			miaobian = 0
		end
	end
	sendmsg(actor,1,[[{"Msg":"<outline size=']].. miaobian ..[['> <font color=']].. yanse ..[['>]]..msg..[[</font> </outline>","Type":9,"Time":"1"}]])
end
--������ʾ��Ϣ
function sendmsg6(actor,msg,yanse)
	if yanse == nil then
		yanse = "#ff0000"
	end
	callscriptex(actor, "SENDMSG", 6, "<font color=\'".. yanse .."\'>".. msg .."</font>")
end
--ȫ���ϲ�����ϵͳ����
function sendmsg13(actor,msg)
	sendmsg(actor,2,'{"Msg":"'.. msg ..'","FColor":255,"BColor":0,"Type":13,"Time":5}')
end

--ȫ�������ϵͳ����
function sendmsg0(actor,msg,qianse,house)
	qianse = qianse or 255 --ǰ��ɫ
	house = house or 56	--����ɫ
	sendmsg(actor,2,'{"Msg":"'.. msg ..'","FColor":'.. qianse ..',"BColor":'.. house ..',"Type":1}')
end

--��ȡ��������
function getname(actor) --����
	return getbaseinfo(actor,1)
end
--��ȡ�����ͼid
function getmap(actor) --��ͼid
	return getbaseinfo(actor,3)
end
--��ȡ����x����
function getx(actor) --x����
	return getbaseinfo(actor,4)
end
--��ȡ����y����
function gety(actor) --y����
	return getbaseinfo(actor,5)
end
--��ȡ�ȼ�
function getlevel(actor) --�ȼ�
	return getbaseinfo(actor,6)
end
--���õȼ�
function setlevel(actor,zhi) --�ȼ�
	changelevel(actor,"=",zhi)
	--setbaseinfo(actor,6,zhi)
end 
--��ȡְҵ
function getjob(actor) --ְҵ0 1 2 ս����
	return getbaseinfo(actor,7)
end
--����ְҵ
function setjob(actor,zhi) --ְҵ0 1 2 ս����
	setbaseinfo(actor,7,zhi)
end 

--��ȡ�Ա�
function getsex(actor) --�Ա�0��1Ů
	return getbaseinfo(actor,8)
end
--�����Ա�
function setsex(actor,zhi) --�Ա�0��1Ů
	setbaseinfo(actor,8,zhi)
end 


local skillid_t = {
	["��ͨ����"]=0,
	["������"]=1,
	["������"]=2,
	["��������"]=3,
	["������ս��"]=4,
	["�����"]=5,
	["ʩ����"]=6,
	["��ɱ����"]=7,
	["���ܻ�"]=8,
	["������"]=9,
	["�����Ӱ"]=10,
	["�׵���"]=11,
	["��ɱ����"]=12,
	["�����"]=13,
	["�����"]=14,
	["��ʥս����"]=15,
	["��ħ��"]=16,
	["�ٻ�����"]=17,
	["������"]=18,
	["����������"]=19,
	["�ջ�֮��"]=20,
	["˲Ϣ�ƶ�"]=21,
	["��ǽ"]=22,
	["���ѻ���"]=23,
	["�����׹�"]=24,
	["�����䵶"]=25,
	["�һ𽣷�"]=26,
	["Ұ����ײ"]=27,
	["������ʾ"]=28,
	["Ⱥ��������"]=29,
	["�ٻ�����"]=30,
	["ħ����"]=31,
	["ʥ����"]=32,
	["������"]=33,
	["�ⶾ��"]=34,
	["�����"]=36,
	["Ⱥ���׵���"]=37,
	["������"]=38,
	["���ض�"]=39,
	["˫��ն"]=40,
	["ʨ�Ӻ�"]=41,
	["��Ӱ����"]=42,
	["��������"]=43,
	["������"]=44,
	["�����"]=45,
	["��������"]=47,
	["������"]=48,
	["�޼�����"]=50,
	["Ⱥ��ʩ����"]=51,
	["쫷���"]=52,
	["�ٻ�����"]=55,
	["���ս���"]=56,
	["��Ѫ��"]=57,
	["���ǻ���"]=58,
	["�ƻ�ն"]=60,
	["����ն"]=61,
	["����һ��"]=62,
	["�ɻ�����"]=63,
	["ĩ������"]=64,
	["��������"]=65,
	["����ն"]=66,
	["������"]=69,
	["�����ٻ�"]=70,
	["������"]=71,
	["������"]=73,
	["������"]=74,
	["�������"]=75,
	["�ٻ�ʥ��"]=76,
	["�ݺὣ��"]=81,
	["ʮ��һɱ"]=82,
	["������"]=83,
	["��˪Ⱥ��"]=84,
	["�����"]=85,
	["����֮��"]=86,
	["������"]=87,
	["��˪ѩ��"]=92,
	["���׺�"]=94,
	["��ڤ���"]=95,
	["����֮��"]=3000,
	["�����"]=3001,

}
--���ݼ������ƻ�ȡ����ID
function getskillidbyname(skillname)
	return skillid_t[skillname]
end

--�ж��Ƿ�ΪPC�����ֻ�
function getispc(actor) --��ȡ�Ƿ���Զ�
	if getconst(actor,"<$CLIENTFLAG>") == "1" then
		return true
	else
		return false
	end
end

----��Ļ��С
function getpingmusize(actor)
	return tonumber(getconst(actor,"<$CLIENTFLAG>")),tonumber(getconst(actor,"<$SCREENHEIGHT>"))
end

--������
function getDateNum(timeNow, timeNext)
    local ret = 0
    if timeNow and timeNext then
        local now = os.date("*t", timeNow)
        local next = os.date("*t", timeNext)

        if now and next then
            local num1 = os.time({ year = now.year, month=now.month, day=now.day })
            local num2 = os.time({ year = next.year, month=next.month, day=next.day })
            if num1 and num2 then
                ret =  math.abs(num1 - num2) / (3600*24)
            end
        end
    end
    return ret
end

--��ȡ��������
function getkaiquday()
	local kqtime = getsysint("����ʱ��") --����ʱ���
	if kqtime == 0 then
		return 1
	end
	local curtime = os.time() --��ǰʱ���
	return getDateNum(curtime,kqtime) + 1
end
--��ȡ������Ʒ����
function itemcount(actor,name)
	local ncount=getbaseinfo(actor,34) --��ȡ������Ʒ����
	local sl = 0
	for i = 0 ,ncount-1 do
		local item = getiteminfobyindex(actor, i) --�����������ض���
		local itemid = getiteminfo(actor,item,2) --��Ʒid
		local iname = getstditeminfo(itemid,1)
		if iname == name then
			if getiteminfo(actor,item,5) == 0 then
				sl = sl + 1
			else
				sl = sl + getiteminfo(actor,item,5) --��������
			end
		end
    end
	return sl
end

--�Ƿ��ڱ���
function isinbag(actor,item)
	local ncount=getbaseinfo(actor,34) --��ȡ������Ʒ����
	for i = 0 ,ncount-1 do
		local item1 = getiteminfobyindex(actor, i) --�����������ض���
		if item1 == item then
			return true
		end
    end
	return false
end

--�Ƿ���װ����
function isinrole(actor,makeid)
	for i = 0 ,100 do
		local item = linkbodyitem(actor,i)
		if item ~= "0" and makeid == getiteminfo(actor,item,1) then
			return true
		end
    end
	return false
end

--��ȡ��Ʒ������
function getluck(actor,item)
	local itemid = getiteminfo(actor,item,2)
	local jichuluck = getstditematt(itemid,39) --��������
	local addluck = getitemaddvalue(actor,item,1,5) --��Ʒ����
	return jichuluck + addluck
end

--������Ʒ�����ȡ��Ʒ����
function getitemname(actor,item,zidingyiname) --��� ���� �Զ�������
	if zidingyiname == 1 then
		local jsonstr = getitemcustomabil(actor,item)
		if jsonstr ~= "" then
			local json_t = json2tbl(jsonstr)
			if json_t["name"] ~= "" then
				return json_t["name"]
			end
		end
	end
	local id = getiteminfo(actor,item,2)
	return getstditeminfo(id,1)
end
--�������ֻ�ȡ��Ʒid
function getidbyname(name)
	return getstditeminfo(name,0)
end

--��ȡ������Ʒ�����б�
function getbaglist(actor)
	local t = {}
	local ncount=getbaseinfo(actor,34)
	local str = ""
	for i = 0 ,ncount-1 do
	  table.insert(t,getiteminfobyindex(actor, i))
	end
	return t
end

--��ȡ����װ���б�
function getrolelist(actor)
	local t = {}
	for i = 0,100 do
		local item = linkbodyitem(actor,i)
		if item ~= "0" then
		  table.insert(t,item)
		end
	end
	return t
end

-------��Ʒ��ʶʹ�ö�  ��ʶ��Χ0-31
--��ʶ1  �Ƿ��ֹ��ȡ
function getisjianqu(actor,item) --�Ƿ��ֹ��ȡ   
	return getitemaddvalue(actor,item,3,1)
end
function setisjianqu(actor,item,zhi) --�����Ƿ��ֹ��ȡ  
	setitemaddvalue(actor,item,3,1,zhi)
end

--��ʶ2  �Ƿ��ȡ������
function getisjianquguo(actor,item) --�Ƿ��ֹ��ȡ   
	return getitemaddvalue(actor,item,3,2)
end
function setisjianquguo(actor,item,zhi) --�����Ƿ��ֹ��ȡ  
	setitemaddvalue(actor,item,3,2,zhi)
end

--��ʶ3  �Ƿ���ﱬ
function getisguaibao(actor,item) --��ȡ�Ƿ���ﱬ��
	return getitemaddvalue(actor,item,3,3)
end
function setisguaibao(actor,item,zhi) --�����Ƿ���ﱬ��
	setitemaddvalue(actor,item,3,3,zhi)
end



-------
-----��Ʒ��¼��Ϣ��Ч����ʹ��
--����34 ������ 
function getitem_sxzsx(actor,item) --����������   
	return getitemaddvalue(actor,item,1,34)
end
function setitem_sxzsx(actor,item,zhi) --   
	setitemaddvalue(actor,item,1,34,zhi)
end
--����35 ����
function getitem_sxfy(actor,item) --���Ƿ���   
	return getitemaddvalue(actor,item,1,35)
end
function setitem_sxfy(actor,item,zhi) --   
	setitemaddvalue(actor,item,1,35,zhi)
end
--����36 ħ��
function getitem_sxmf(actor,item) --����ħ��   
	return getitemaddvalue(actor,item,1,36)
end
function setitem_sxmf(actor,item,zhi) --
	setitemaddvalue(actor,item,1,36,zhi)
end

--����37 ף��ֵ
function getitem_zfz(actor,item) --ף��ֵ   
	return getitemaddvalue(actor,item,1,37)
end
function setitem_zfz(actor,item,zhi) --
	setitemaddvalue(actor,item,1,37,zhi)
end

--����38 �����ںϱ��
function getitem_fabaozhi(actor,item) --�����ںϱ��   
	return getitemaddvalue(actor,item,1,38)
end
function setitem_fabaozhi(actor,item,zhi) --�����ںϱ��
	setitemaddvalue(actor,item,1,38,zhi)
end

--����39 ��������ȼ�
function getitem_wmyslv(actor,item) --��������ȼ�   
	return getitemaddvalue(actor,item,1,39)
end
function setitem_wmyslv(actor,item,zhi) --��������ȼ�
	setitemaddvalue(actor,item,1,39,zhi)
end

--����40 �������龭�� �;���ֵ �������� ����ͻ
function getitem_wmysjy(actor,item) --�������龭��   
	return getitemaddvalue(actor,item,1,40)
end
function setitem_wmysjy(actor,item,zhi) --�������龭��
	setitemaddvalue(actor,item,1,40,zhi)
end

function getitem_jiuqizhi(actor,item) --����ֵ   
	return getitemaddvalue(actor,item,1,40)
end
function setitem_jiuqizhi(actor,item,zhi) --����ֵ
	setitemaddvalue(actor,item,1,40,zhi)
end

--����41 ��������������Եȼ�1,2,3
function getitem_wmysjsdj(actor,item) --������������ȼ�   
	return getitemaddvalue(actor,item,1,41)
end
function setitem_wmysjsdj(actor,item,zhi) --������������ȼ�
	setitemaddvalue(actor,item,1,41,zhi)
end

--����42 ���������һ������ϴ������
function getitem_wmysdytcs(actor,item) --���������һ������ϴ������   
	return getitemaddvalue(actor,item,1,42)
end
function setitem_wmysdytcs(actor,item,zhi) --���������һ������ϴ������
	setitemaddvalue(actor,item,1,42,zhi)
end

--����43 ���������2�����Ա��
function getitem_wmysd2tbh(actor,item) --���������2�����Ա��   
	return getitemaddvalue(actor,item,1,43)
end
function setitem_wmysd2tbh(actor,item,zhi) --���������2�����Ա��
	setitemaddvalue(actor,item,1,43,zhi)
end

--����44 ���������2������ֵ
function getitem_wmysd2tzhi(actor,item) --���������2������ֵ
	return getitemaddvalue(actor,item,1,44)
end
function setitem_wmysd2tzhi(actor,item,zhi) --���������2������ֵ
	setitemaddvalue(actor,item,1,44,zhi)
end

--����46 ���������3�����Ա��
function getitem_wmysd3tbh(actor,item) --���������3�����Ա��
	return getitemaddvalue(actor,item,1,46)
end
function setitem_wmysd3tbh(actor,item,zhi) --���������3�����Ա��
	setitemaddvalue(actor,item,1,46,zhi)
end

--����2 8 ����ϴ������
function getitem_xlxlcs(actor,item) --����ϴ������
	return getitemaddvalue(actor,item,2,8)
end
function setitem_xlxlcs(actor,item,zhi) --����ϴ������
	setitemaddvalue(actor,item,2,8,zhi)
end

--����2 7 ����ʱ��
function getitem_daoqishijian(actor,item) --����ʱ��
	return getitemaddvalue(actor,item,2,7)
end
function setitem_daoqishijian(actor,item,zhi) --����ʱ��
	setitemaddvalue(actor,item,2,7,zhi)
end

--����2 9 ������������
function getitem_wmysxiaxian(actor,item) --������������
	return getitemaddvalue(actor,item,2,9)
end
function setitem_wmysxiaxian(actor,item,zhi) --������������
	setitemaddvalue(actor,item,2,9,zhi)
end

--����2 10 ������������
function getitem_wmysshangxian(actor,item) --������������
	return getitemaddvalue(actor,item,2,10)
end
function setitem_wmysshangxian(actor,item,zhi) --������������
	setitemaddvalue(actor,item,2,10,zhi)
end

--����2 11 ɳ�Ϳ˱�ʶ
function getitem_shabake(actor,item) --ɳ�Ϳ˱�ʶ
	return getitemaddvalue(actor,item,2,11)
end
function setitem_shabake(actor,item,zhi) --ɳ�Ϳ˱�ʶ
	setitemaddvalue(actor,item,2,11,zhi)
end

-----
--�Ƿ��
function isbind(actor,item)
	if getitemaddvalue(actor,item,2,1) == 0 then
		return false
	else
		return true
	end
end

-------���Ҳ���
----��ȡ��Ұ������
function getbindgold(actor)
	return getbindmoney(actor,"���")
end
----�۳���� ���ȿ۳��󶨽��
function subbindgold(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	if num > 0 then
	post(actor,beizhu.."ͨ�ý�һ�������*"..num)
	end
	consumebindmoney(actor,"���",num)
end
--�Ӱ󶨽��
function addbindgold(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	return changemoney(actor,8,"+",num,beizhu,true)
end
---��ȡ����ȡ���
function getgold(actor)
	return querymoney(actor,7)
end

---��ȡ����ȡ�󶨽��
function getbindjinbi(actor)
	return querymoney(actor,8)
end

--�ӽ��
function addgold(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	return changemoney(actor,7,"+",num,beizhu,true)
end
--�����
function subgold(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	if num > 0 then
		post(actor,beizhu.."�ǰ󶨽�һ�������*"..num)
	end
	return changemoney(actor,7,"-",num,beizhu,true)
end

--���Ԫ��
function getingot(actor)
	return querymoney(actor,2)
end
--��Ԫ��
function addingot(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	return changemoney(actor,2,"+",num,beizhu,true)
end
--��Ԫ��
function subingot(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	post(actor,beizhu.."Ԫ����������*"..num)
	
	if beizhu == "������" then
		setsysint("�������ĵ�Ԫ��",getsysint("�������ĵ�Ԫ��")+num)
		setsysint("ÿ�տ������ĵ�Ԫ��",getsysint("ÿ�տ������ĵ�Ԫ��")+num)
	elseif beizhu == "����" then
		setsysint("�������ĵ�Ԫ��",getsysint("�������ĵ�Ԫ��")+num)
		setsysint("ÿ���������ĵ�Ԫ��",getsysint("ÿ���������ĵ�Ԫ��")+num)
	elseif beizhu == "��ҩ" then
		setsysint("��ҩ���ĵ�Ԫ��",getsysint("��ҩ���ĵ�Ԫ��")+num)
		setsysint("ÿ����ҩ���ĵ�Ԫ��",getsysint("ÿ����ҩ���ĵ�Ԫ��")+num)
	elseif beizhu == "ϴ��������" then
		setsysint("ϴ�����������ĵ�Ԫ��",getsysint("ϴ�����������ĵ�Ԫ��")+num)
		setsysint("ÿ��ϴ�����������ĵ�Ԫ��",getsysint("ÿ��ϴ�����������ĵ�Ԫ��")+num)
	elseif beizhu == "��������" then
		setsysint("�����������ĵ�Ԫ��",getsysint("�����������ĵ�Ԫ��")+num)
		setsysint("ÿ�������������ĵ�Ԫ��",getsysint("ÿ�������������ĵ�Ԫ��")+num)
	elseif beizhu == "�����ͷ" then
		setsysint("�����ͷ���ĵ�Ԫ��",getsysint("�����ͷ���ĵ�Ԫ��")+num)
		setsysint("ÿ�չ����ͷ���ĵ�Ԫ��",getsysint("ÿ�չ����ͷ���ĵ�Ԫ��")+num)
	elseif beizhu == "ϴ�츳" then
		setsysint("������ʦ���ĵ�Ԫ��",getsysint("������ʦ���ĵ�Ԫ��")+num)
		setsysint("ÿ��������ʦ���ĵ�Ԫ��",getsysint("ÿ��������ʦ���ĵ�Ԫ��")+num)	
	elseif beizhu == "�����ܿ�" then
		setsysint("�����ܿ�����Ԫ��",getsysint("�����ܿ�����Ԫ��")+num)
		setsysint("ÿ�չ����ܿ�����Ԫ��",getsysint("ÿ�չ����ܿ�����Ԫ��")+num)		
	end
	return changemoney(actor,2,"-",num,beizhu,true)
end


--�����������
function getshengwang(actor)
	return querymoney(actor,15)
end
--������
function addshengwang(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	return changemoney(actor,15,"+",num,beizhu,true)
end
--������
function subshengwang(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	return changemoney(actor,15,"-",num,beizhu,true)
end

--����츳������
function gettianfudian(actor)
	return querymoney(actor,5)
end
--���츳��
function addtianfudian(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	return changemoney(actor,5,"+",num,beizhu,true)
end
--���츳��
function subtianfudian(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	return changemoney(actor,5,"-",num,beizhu,true)
end

--����޻�ֵ����
function getshouhunzhi(actor)
	return querymoney(actor,10)
end
--���޻�ֵ
function addshouhunzhi(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	return changemoney(actor,10,"+",num,beizhu,true)
end
--���޻�ֵ
function subshouhunzhi(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	return changemoney(actor,10,"-",num,beizhu,true)
end

--����ͽ�ֵ����
function getshangjinzhi(actor)
	return querymoney(actor,11)
end
--���ͽ�ֵ
function addshangjinzhi(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	return changemoney(actor,11,"+",num,beizhu,true)
end
--���ͽ�ֵ
function subshangjinzhi(actor,num,beizhu)
	if beizhu == nil then
		beizhu = ""
	end
	return changemoney(actor,11,"-",num,beizhu,true)
end


--�ű��ܺ�ʱ
function haoshistart(actor)
	callscriptex(actor, "PRINTUSETIME", 1)
end
function haoshiend(actor)
	callscriptex(actor, "PRINTUSETIME", 2)
end

--ɾ����Ʒ
function delitem(actor,item,sl)
	if sl == nil then
		sl = getiteminfo(actor,item,5)
		if sl == 0 then
			sl = 1
		end
	end
	return delitembymakeindex(actor,getiteminfo(actor,item,1),sl)
end

--��ȡ��װ����ȫ��װ������ͼ�Ʒ�ȼ�
local jipintaozhuangjisuant = {1,0,4,3,7,8,5,6,2,11,12,10,13,14}
function getjipintaozhuanglevel(actor)
    local _List = {}
	local t = jipintaozhuangjisuant
    for i = 1, #t do
        _List[i] = 0
        local item = linkbodyitem(actor,t[i])
		if item ~= "0" then
			local val = getitemaddvalue(actor,item,1,2)
			local val2 = getitemaddvalue(actor,item,1,3)
			local val3 = getitemaddvalue(actor,item,1,4)
			if val < val2 then
				val = val2
			end
			if val < val3 then
				val = val3
			end
			_List[i] = val
		end
    end

    table.sort(_List, function(l, r)
        return l > r
    end)

    return _List[10]
end

local taozhuanggeibuff_t = {
	[0]=10100,[1]=10101,[2]=10102,[3]=10103,[4]=10104,[5]=10105,[6]=10106,[7]=10107,[8]=10108,[9]=10109,[10]=10110,
}
local jptzjieshao = {
		"HP+3%",
		"HP+6%",
		"HP+9%",
		"HP+12%",
		"HP+15%����ħ��+3%",
		"HP+18%����ħ��+6%",
		"HP+20%����ħ��+9%",
		"HP+20%����ħ��+12%",
		"HP+20%����ħ��+15%",
		"HP+20%����ħ��+15%������+2%",
			}
function jipintaozhuanggeibuff(actor)
	local lev = getjipintaozhuanglevel(actor) --��ȡ��װ�ȼ�����
	--sendmsg6(actor,"��װ�ȼ�"..lev)
	if not hasbuff(actor,taozhuanggeibuff_t[lev]) then
		addbuff(actor,taozhuanggeibuff_t[lev])
		if lev > 0 then
			sendmsg6(actor,"������Ʒ+".. lev .."�ף�"..jptzjieshao[lev])
		end
	end
	
end

--��תʱ����  100 = 00:01:40
function ssrSecToHMS(sec)
    sec = sec or 0

    local h,m,s = 0,0,0
    if sec > 3600 then
        h = math.floor(sec/3600)
    end
    sec = sec % 3600
    if sec > 60 then
        m = math.floor(sec/60)
    end
    s = sec % 60

    return string.format("%02d:%02d:%02d", h, m, s)
end

function huicheng(actor)
	mapmove(actor,"3",330,330,6)
end

function getitemnamebymakeid(actor,makeid)
	local item = getitembymakeindex(actor,makeid)
	local name = getitemname(actor,item)
	return name
end

function jianhuanum(num)
	if num >= 100000000 then
		local yi = num/100000000
		local zhi = yi - yi%0.01
		return zhi .. "��"
	end
	if num >= 10000 then
		local wan = num/10000
		if wan >= 10 then
			return math.floor(wan) .. "��"
		end
		
		local zhi = wan - wan%0.01
		return zhi .. "��"
	end
	return num
end

function isyongyou(actor,iname,weizi) --װ����  λ��
	if itemcount(actor,iname) > 0 then
		return true
	end
	local item = linkbodyitem(actor,weizi)
	--sendmsg9(actor,item)
	if item ~= "0" then
		if getitemname(actor,item) == iname then
			return true
		end
	end
	return false
end

local hongdianlv = {40,42,44,46,48,50,52,54,56}
function dengjihongdian(actor)
	local rolelv = getlevel(actor)
	for i = 1,#hongdianlv do
		if rolelv < hongdianlv[i] then
			break
		end
		if getint(actor,"�ȼ�����"..hongdianlv[i]) == 0 then
			return true
		end
	end
	return false
end

function movejiuguan(actor)
	if getmap(actor) == "waigua" or getmap(actor) == "tuoji" then
		return false
	end
	opennpcshowex(actor,36,12,3)
	setint(actor,"�ƽ�����������",1)
	callscriptex(actor, "CallLua", "renwuzhanshi", "@renwu_show") --�ڿ�������ʾ
end

function isingongchengquyu(actor)
	if castleinfo(5) and (getmap(actor) == "0150" or (getmap(actor) == "3" and getx(actor) >= 544  and gety(actor) <= 390 )) then
		return true
	end
	return false
end

--��ȡ����ֵ
function getjingyan(actor)
	local jingyan = getstr(actor,"����ֵ")
	return tonumber(jingyan) or 0
end

--�洢����ֵ
function setjingyan(actor,zhi)
	setstr(actor,"����ֵ",tostring(zhi))
	zhuangtaijiemian(actor)
end

--post��Ϣ��¼
function post(actor,xiaoxi)
	local fuwuqiname = getconst(actor,"<$SERVERNAME>") --����������
	if fuwuqiname == "" then
		fuwuqiname = "���߷�"
	end
	local curtime = os.date("%Y-%m-%d %H:%M:%S", os.time())
	callscriptex(actor, "HTTPPOST", "http://www.9yxk.com/shuntianchuanqi/CunShuju.php", 0,fuwuqiname,curtime,getname(actor),xiaoxi.."^")
end

--post1��Ϣ��¼
function post1(actor,xiaoxi)
	local fuwuqiname = getconst(actor,"<$SERVERNAME>") --����������
	if fuwuqiname == "" then
		fuwuqiname = "���߷�"
	end
	local curtime = os.date("%Y-%m-%d %H:%M:%S", os.time())
	callscriptex(actor, "HTTPPOST", "http://www.9yxk.com/shuntianchuanqi/1.php", 0,fuwuqiname,curtime,getname(actor),xiaoxi.."^")
end

function getguaigongjitime(mon)
	local zhi = getcurrent(mon,6)
	if zhi == "" then
		zhi = 0
	end
	return tonumber(zhi) or 0
end

function setguaigongjitime(mon,zhi)
	setcurrent(mon,6,tostring(zhi))
end

function getdiaoluodata()
	local t = {}
	local str = getsysstr("�����ѯ����")
	if str ~= "" then
		t = json2tbl(str)
	end
	return t
end

-----���ܹ��ú���----------------------------------------------------
function touwangchuli(actor)
	local is = false
	local name = getname(actor)
	for i =1,6 do
		if getsysstr("����"..i) == name then
			is = true
		end
	end
	if is then --�ǵĻ�
		if not hasbuff(actor,10057) then
			addbuff(actor,10057)
		end
	else
		if hasbuff(actor,10057) then
			delbuff(actor,10057)
		end
	end
end

function wulinzhizunchuli(actor)
	if getsysstr("������������") == getname(actor) then --�ǵĻ�
		if not checktitle(actor,"��������") then
			confertitle(actor,"��������")
		end
	else
		if checktitle(actor,"��������") then
			deprivetitle(actor,"��������")
		end
	end
end