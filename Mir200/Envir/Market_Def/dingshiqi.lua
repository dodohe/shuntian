function getshouhunbuffdata(actor) --��ȡ�޻�buff����
	local data = {"","","","","",""}
	local sh_str = getstr(actor,"�޻�buff����")
	if sh_str ~= "" then
		data=json2tbl(sh_str)
	end
	return data
end

function ontimer1(actor) --ÿ�붨ʱ�� ���� �޻�buff
	--sendmsg6(actor,"��ɫ"..getbaseinfo(actor,56))
	--haoshistart(actor) --�˺��Ĺ����޷��Ż�
	local sh_t = {} --ӵ�е��޻�T
	local sh_data = getshouhunbuffdata(actor) --�޻�buff����
	for i = 1,#sh_data do
		if sh_data[i] ~= "" then
			sh_t[sh_data[i]] = 1
		end
	end

	if sh_t["������"] then --������޻�꼼
		--sendmsg6(actor,"���������꼼")
		local sgsl = 0 --��������
		local sx_zbtab = {4,3,5,6,7,8,10,11,0}
		---------��������---------
		for i = 1,#sx_zbtab do
			local item = linkbodyitem(actor,sx_zbtab[i])
			if item ~= "0" then
				sgsl = sgsl + getitemaddvalue(actor,item,2,3)
			end
		end
		
		local cengshu = 0 --buff����
		if hasbuff(actor,20000) then
			cengshu = getbuffinfo(actor,20000,1) --�����еĲ���
		end
		local yy_cs = math.floor(sgsl/8) --��Ҫ���Ĳ���
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --���Ǳ仯
			delbuff(actor,20000)
		end
		for i = 1,csc do
			addbuff(actor,20000)
			--sendmsg6(actor,"��ӻ꼼������buff")
		end
	else
		if hasbuff(actor,20000) then
			delbuff(actor,20000)
		end
	end
	
	if sh_t["��ħ��"] then --������޻�꼼
		--sendmsg6(actor,"����ħ�߻꼼")
		local sgsl = getdayint(actor,"ÿ��ɱ������")
		local cengshu = 0 --buff����
		if hasbuff(actor,20001) then
			cengshu = getbuffinfo(actor,20001,1)
		end
		local yy_cs = math.floor(sgsl/100) --��Ҫ���Ĳ���
		if yy_cs > 5 then
			yy_cs = 5
		end
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --��������ִ����
			delbuff(actor,20001)
		end
		for i = 1,csc do
			addbuff(actor,20001)
			--sendmsg6(actor,"��ӻ꼼��ħ��buff")
		end
	else
		--sendmsg6(actor,"û����ħ�߻꼼")
		if hasbuff(actor,20001) then
			delbuff(actor,20001)
		end
	end
	
	if sh_t["����"] then --������޻�꼼
		local sgsl = getint(actor,"ɱ�������")
		local cengshu = 0 --buff����
		if hasbuff(actor,20007) then
			cengshu = getbuffinfo(actor,20007,1)
		end
		local yy_cs = sgsl --��Ҫ���Ĳ���
		if yy_cs > 3 then
			yy_cs = 3
		end
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --��������ִ����
			delbuff(actor,20007)
		end
		for i = 1,csc do
			addbuff(actor,20007)
			--sendmsg6(actor,"��ӻ꼼����buff")
		end
	else
		if hasbuff(actor,20007) then
			delbuff(actor,20007)
		end
	end
	
	if sh_t["�۱���"] then --������޻�꼼
		local sgsl = getdayint(actor,"ÿ��ɱ������")
		local cengshu = 0 --buff����
		if hasbuff(actor,20026) then
			cengshu = getbuffinfo(actor,20026,1)
		end
		local yy_cs = sgsl --��Ҫ���Ĳ���
		if yy_cs > 10 then
			yy_cs = 10
		end
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --��������ִ����
			delbuff(actor,20026)
		end
		for i = 1,csc do
			addbuff(actor,20026)
			--sendmsg6(actor,"��ӻ꼼�۱���buff")
		end
	else
		if hasbuff(actor,20026) then
			delbuff(actor,20026)
		end
	end
	
	if sh_t["Խ��Խǿ"] then --������޻�꼼
		local sgsl = getdayint(actor,"������������")
		local cengshu = 0 --buff����
		if hasbuff(actor,20035) then
			cengshu = getbuffinfo(actor,20035,1)
		end
		local yy_cs = sgsl --��Ҫ���Ĳ���
		if yy_cs > 8 then
			yy_cs = 8
		end
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --��������ִ����
			delbuff(actor,20035)
		end
		for i = 1,csc do
			addbuff(actor,20035)
			--sendmsg6(actor,"��ӻ꼼Խ��Խǿbuff")
		end
	else
		if hasbuff(actor,20035) then
			delbuff(actor,20035)
		end
	end
	
	if sh_t["����"] then --������޻�꼼
		--sendmsg6(actor,"�����ƻ꼼")
		local sgsl = itemcount(actor,"����")
		local cengshu = 0 --buff����
		if hasbuff(actor,20008) then
			cengshu = getbuffinfo(actor,20008,1)
		end
		local yy_cs = sgsl --��Ҫ���Ĳ���
		if yy_cs > 5 then
			yy_cs = 5
		end
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --�����仯
			delbuff(actor,20008)
		end
		for i = 1,csc do
			addbuff(actor,20008)
			--sendmsg6(actor,"��ӻ꼼����buff")
		end
	else
		if hasbuff(actor,20008) then
			delbuff(actor,20008)
		end
	end
	
	if sh_t["��ƶ���"] then --������޻�꼼
		--sendmsg6(actor,"�����ƻ꼼")
		local sgsl = itemcount(actor,"����")
		local cengshu = 0 --buff����
		if hasbuff(actor,20036) then
			cengshu = getbuffinfo(actor,20036,1)
		end
		local yy_cs = math.floor(sgsl/2) --��Ҫ���Ĳ���
		if yy_cs > 3 then
			yy_cs = 3
		end
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --�����仯
			delbuff(actor,20036)
		end
		for i = 1,csc do
			addbuff(actor,20036)
			--sendmsg6(actor,"��ӻ꼼����buff")
		end
	else
		if hasbuff(actor,20036) then
			delbuff(actor,20036)
		end
	end
	
	if sh_t["����"] then --������޻�꼼
		--sendmsg6(actor,"�����ƻ꼼")
		local sgsl = getingot(actor)
		local cengshu = 0 --buff����
		if hasbuff(actor,20016) then
			cengshu = getbuffinfo(actor,20016,1)
		end
		local yy_cs = math.floor(sgsl/10000) --��Ҫ���Ĳ��� --��Ҫ���Ĳ���
		if yy_cs > 5 then
			yy_cs = 5
		end
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --�����仯
			delbuff(actor,20016)
		end
		for i = 1,csc do
			addbuff(actor,20016)
			--sendmsg6(actor,"��ӻ꼼����buff")
		end
	else
		if hasbuff(actor,20016) then
			delbuff(actor,20016)
		end
	end
	
	if sh_t["ǿ����"] and getlevel(actor) > 40 then --������޻�꼼
		--sendmsg6(actor,"�����ƻ꼼")
		local sgsl = getlevel(actor) - 40
		local cengshu = 0 --buff����
		if hasbuff(actor,20018) then
			cengshu = getbuffinfo(actor,20018,1)
		end
		local yy_cs = sgsl --��Ҫ���Ĳ��� --��Ҫ���Ĳ���
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --ת�������仯
			delbuff(actor,20018)
		end
		for i = 1,csc do
			addbuff(actor,20018)
			--sendmsg6(actor,"��ӻ꼼ǿ����buff")
		end
	else
		if hasbuff(actor,20018) then
			delbuff(actor,20018)
		end
	end
	
	if sh_t["��������"] and getlevel(actor) > 47 then --������޻�꼼
		--sendmsg6(actor,"�����ƻ꼼")
		local sgsl = math.floor((getlevel(actor) - 45)/3)
		local cengshu = 0 --buff����
		if hasbuff(actor,20023) then
			cengshu = getbuffinfo(actor,20023,1)
		end
		local yy_cs = sgsl --��Ҫ���Ĳ��� 
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --ת�������仯
			delbuff(actor,20023)
		end
		for i = 1,csc do
			addbuff(actor,20023)
			--sendmsg6(actor,"��ӻ꼼��������buff")
		end
	else
		if hasbuff(actor,20023) then
			delbuff(actor,20023)
		end
	end
	
	if sh_t["�����ɸ�"] and getlevel(actor) > 60 then --������޻�꼼
		--sendmsg6(actor,"�б�������꼼")
		local sgsl = getlevel(actor) - 60
		local cengshu = 0 --buff����
		if hasbuff(actor,20054) then
			cengshu = getbuffinfo(actor,20054,1)
		end
		local yy_cs = sgsl --��Ҫ���Ĳ��� 
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --ת�������仯
			delbuff(actor,20054)
		end
		for i = 1,csc do
			addbuff(actor,20054)
			--sendmsg6(actor,"��ӻ꼼��������buff")
		end
	else
		if hasbuff(actor,20054) then
			delbuff(actor,20054)
		end
	end
	
	if sh_t["��ǿ��ʤ"] then --������޻�꼼
		--sendmsg6(actor,"�����ƻ꼼")
		local pk = getbaseinfo(actor,46) --pk��
		local cengshu = 0 --buff����
		if hasbuff(actor,20032) then
			cengshu = getbuffinfo(actor,20032,1)
		end
		local yy_cs = 0 --��Ҫ���Ĳ��� 
		if pk >= 1000 then
			yy_cs = 1
		end
		if pk >= 3000 then
			yy_cs = 2
		end
		if pk >= 5000 then
			yy_cs = 3
		end
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --pkֵ�仯
			delbuff(actor,20032)
		end
		for i = 1,csc do
			addbuff(actor,20032)
			--sendmsg6(actor,"��ӻ꼼��ǿ��ʤbuff")
		end
	else
		if hasbuff(actor,20032) then
			delbuff(actor,20032)
		end
	end
	
	if sh_t["�������"] then --������޻�꼼
		--sendmsg6(actor,"�����ƻ꼼")
		local pk = getbaseinfo(actor,46) --pk��
		if pk >= 15000 then
			if not hasbuff(actor,20051) then
				addbuff(actor,20051)
			end
		else
			if hasbuff(actor,20051) then
				delbuff(actor,20051)
			end
		end
	else
		if hasbuff(actor,20051) then
			delbuff(actor,20051)
		end
	end
	
	if sh_t["����֮ʦ"] then --������޻�꼼
		--sendmsg6(actor,"������֮ʦ�꼼")
		if getbaseinfo(actor,36) ~= "" then --���л�
			if not hasbuff(actor,20012) then
				addbuff(actor,20012)
				sendmsg6(actor,"��ӻ꼼����֮ʦbuff")
			end
		else
			if hasbuff(actor,20012) then
				delbuff(actor,20012)
			end
		end
	else
		if hasbuff(actor,20012) then
			delbuff(actor,20012)
		end
	end
	
	if sh_t["�����嵨"] then --������޻�꼼
		--sendmsg6(actor,"�������嵨�꼼")
		local duiyuanshu = getgroupmember(actor) or {} --��Ա�б�
		local you = false   --�Ƿ�Ӧ���и�buff
		if #duiyuanshu > 1 then --���״̬
			you = true
			local mapid = getmap(duiyuanshu[1])
			for i = 2,#duiyuanshu do
				if getmap(duiyuanshu[i]) ~= mapid then
					you = false
					break
				end
			end
		end
		if you then
			if not hasbuff(actor,20002) then
				addbuff(actor,20002)
				--sendmsg6(actor,"��ӻ꼼�����嵨buff")
			end
		else
			if hasbuff(actor,20002) then
				delbuff(actor,20002)
			end
		end
	else
		if hasbuff(actor,20002) then
			delbuff(actor,20002)
		end
	end
	
	if sh_t["ͬ�ʹ���"] then --������޻�꼼
		local peiouname = getconst(actor,"<$DEARNAME>") --��ż����
		--sendmsg6(actor,"��ż��"..peiouname)
		if peiouname ~= "" then --����ż
			if callcheckscriptex(actor, peiouname..".checkonline") then
				player = getplayerbyname(peiouname) --��ż����
				if getmap(player) == getmap(actor) then --ͬһ��ͼ
					if not hasbuff(actor,20014) then
						addbuff(actor,20014)
						--sendmsg6(actor,"��ӻ꼼ͬ�ʹ���buff")
					end
				else
					if hasbuff(actor,20014) then
						delbuff(actor,20014)
					end
				end	
			else
				if hasbuff(actor,20014) then
					delbuff(actor,20014)
				end
			end	
		else
			if hasbuff(actor,20014) then
				delbuff(actor,20014)
			end
		end
	else
		if hasbuff(actor,20014) then
			delbuff(actor,20014)
		end
	end
	
	if sh_t["�����ĭ"] then --������޻�꼼
		local peiouname = getconst(actor,"<$DEARNAME>") --��ż����
		--sendmsg6(actor,"��ż��"..peiouname)
		if peiouname ~= "" then --����ż
			if not hasbuff(actor,20033) then
				addbuff(actor,20033)
				--sendmsg6(actor,"��ӻ꼼ͬ�ʹ���buff")
			end	
		else
			if hasbuff(actor,20033) then
				delbuff(actor,20033)
			end
		end
	else
		if hasbuff(actor,20033) then
			delbuff(actor,20033)
		end
	end
	
	if sh_t["����ȡ��"] then --������޻�꼼
		local you = false
		local gongji = getbaseinfo(actor,20)
		local mofa = getbaseinfo(actor,22)
		local daoshu = getbaseinfo(actor,24)
		--sendmsg6(actor,"����"..gongji.." ħ��"..mofa.." ����"..daoshu)
		local job = getjob(actor)
		if job == 0 and gongji < 100 then
			you = true
		end
		if job == 1 and mofa < 100 then
			you = true
		end
		if job == 2 and daoshu < 100 then
			you = true
		end
		
		if you then 
			if not hasbuff(actor,20034) then
				addbuff(actor,20034)
				--sendmsg6(actor,"��ӻ꼼����ȡ��buff")
			end
		else
			if hasbuff(actor,20034) then
				delbuff(actor,20034)
			end
		end
	else
		if hasbuff(actor,20034) then
			delbuff(actor,20034)
		end
	end
	
	if sh_t["������Ȩ"] then --������޻�꼼
		if getbaseinfo(actor,37) then --�ǻ᳤
			if not hasbuff(actor,20015) then
				addbuff(actor,20015)
				--sendmsg6(actor,"��ӻ꼼������Ȩbuff")
			end
		else
			if hasbuff(actor,20015) then
				delbuff(actor,20015)
			end
		end
	else
		if hasbuff(actor,20015) then
			delbuff(actor,20015)
		end
	end
	
	if sh_t["�ಲ����"] then --������޻�꼼
		--sendmsg6(actor,"�·� "..linkbodyitem(actor,0))
		if linkbodyitem(actor,0) == "0" then --û�д��·�
			if not hasbuff(actor,20017) then
				addbuff(actor,20017)
				--sendmsg6(actor,"��ӻ꼼�ಲ����buff")
			end
		else
			if hasbuff(actor,20017) then
				delbuff(actor,20017)
			end
		end
	else
		if hasbuff(actor,20017) then
			delbuff(actor,20017)
		end
	end
	
	if sh_t["��ѡ֮��"] then --������޻�꼼
		if hasbuff(actor,10001) or hasbuff(actor,20083) then --�п�
			if not hasbuff(actor,20003) then
				addbuff(actor,20003)
				--sendmsg6(actor,"��ӻ꼼��ѡ֮��buff")
			end
		else
			if hasbuff(actor,20003) then
				delbuff(actor,20003)
			end
		end
	else
		if hasbuff(actor,20003) then
			delbuff(actor,20003)
		end
	end
	
	if sh_t["���Ĵ���"] then --������޻�꼼
		if hasbuff(actor,10001) then --�п�
			if not hasbuff(actor,20019) then
				addbuff(actor,20019)
				--sendmsg6(actor,"��ӻ꼼���Ĵ���buff")
			end
		else
			if hasbuff(actor,20019) then
				delbuff(actor,20019)
			end
		end
	else
		if hasbuff(actor,20019) then
			delbuff(actor,20019)
		end
	end
	
	if sh_t["�����е�"] then --������޻�꼼
		local zhi = getbaseinfo(actor,51,21) --��������
		if zhi==0 then --��������Ϊ0
			if not hasbuff(actor,20020) then
				addbuff(actor,20020)
				--sendmsg6(actor,"��ӻ꼼�����е�buff")
			end
		else
			if hasbuff(actor,20020) then
				delbuff(actor,20020)
			end
		end
	else
		if hasbuff(actor,20020) then
			delbuff(actor,20020)
		end
	end
	
	if sh_t["����֮��"] then --������޻�꼼
		if castleidentity(actor)~=0 and getmap(actor) == "3" then --ɳ�Ϳ˵�
			if not hasbuff(actor,20021) then
				addbuff(actor,20021)
				--sendmsg6(actor,"��ӻ꼼����֮��buff")
			end
		else
			if hasbuff(actor,20021) then
				delbuff(actor,20021)
			end
		end
	else
		if hasbuff(actor,20021) then
			delbuff(actor,20021)
		end
	end
	
	if sh_t["һ������"] then --������޻�꼼
		if castleidentity(actor)==2 then --ɳ�ϴ�
			if not hasbuff(actor,20039) then
				addbuff(actor,20039)
				--sendmsg6(actor,"��ӻ꼼һ������buff")
			end
		else
			if hasbuff(actor,20039) then
				delbuff(actor,20039)
			end
		end
	else
		if hasbuff(actor,20039) then
			delbuff(actor,20039)
		end
	end
	
	if sh_t["���˼���"] then --������޻�꼼
		if getdayint(actor,"������������") > 0 then --ÿ��������
			if not hasbuff(actor,20022) then
				addbuff(actor,20022)
				--sendmsg6(actor,"��ӻ꼼���˼���buff")
			end
		else
			if hasbuff(actor,20022) then
				delbuff(actor,20022)
			end
		end
	else
		if hasbuff(actor,20022) then
			delbuff(actor,20022)
		end
	end
	
	if sh_t["�����ͽ"] then --������޻�꼼
		if getbaseinfo(actor,46) >= 200 then --pk�� ����
			if not hasbuff(actor,20024) then
				addbuff(actor,20024)
				--sendmsg6(actor,"��ӻ꼼�����ͽbuff")
			end
		else
			if hasbuff(actor,20024) then
				delbuff(actor,20024)
			end
		end
	else
		if hasbuff(actor,20024) then
			delbuff(actor,20024)
		end
	end
	
	if sh_t["����ն��"] then --������޻�꼼
		if getbaseinfo(actor,46) >= 200 then --pk�� ����
			if not hasbuff(actor,20104) then
				addbuff(actor,20104)
				--sendmsg6(actor,"��ӻ꼼����ն��buff")
			end
		else
			if hasbuff(actor,20104) then
				delbuff(actor,20104)
			end
		end
	else
		if hasbuff(actor,20104) then
			delbuff(actor,20104)
		end
	end
	
	if sh_t["ɳ�ǰ���"] then --������޻�꼼
		if callcheckscriptex(actor,"CheckInWarArea") then --��������
			if not hasbuff(actor,20043) then
				addbuff(actor,20043)
				--sendmsg6(actor,"��ӻ꼼ԽǿԽ��buff")
			end
		else
			if hasbuff(actor,20043) then
				delbuff(actor,20043)
			end
		end
	else
		if hasbuff(actor,20043) then
			delbuff(actor,20043)
		end
	end
	
	if sh_t["Ψ�Ҷ���"] then --������޻�꼼
		if callcheckscriptex(actor,"CheckInWarArea") then --��������
			if not hasbuff(actor,20046) then
				addbuff(actor,20046)
				--sendmsg6(actor,"��ӻ꼼Ψ�Ҷ���buff")
			end
		else
			if hasbuff(actor,20046) then
				delbuff(actor,20046)
			end
		end
	else
		if hasbuff(actor,20046) then
			delbuff(actor,20046)
		end
	end
	
	if sh_t["��������"] then --������޻�꼼
		if callcheckscriptex(actor,"checkhumanstate",11) then --�ж�״̬
			if not hasbuff(actor,20048) then
				addbuff(actor,20048)
				--sendmsg6(actor,"��ӻ꼼��������buff")
			end
		else
			if hasbuff(actor,20048) then
				delbuff(actor,20048)
			end
		end
	else
		if hasbuff(actor,20048) then
			delbuff(actor,20048)
		end
	end
	
	
	if sh_t["����"] then --������޻�꼼
		local hour = tonumber(os.date("%H",os.time()))
		--sendmsg6(actor,"Сʱ"..hour)
		if hour >= 6 and hour < 18 then --6�㵽18��
			if not hasbuff(actor,20025) then
				addbuff(actor,20025)
				--sendmsg6(actor,"��ӻ꼼����buff")
			end
		else
			if hasbuff(actor,20025) then
				delbuff(actor,20025)
			end
		end
	else
		if hasbuff(actor,20025) then
			delbuff(actor,20025)
		end
	end
	
	if sh_t["��ҹ"] then --������޻�꼼
		local hour = tonumber(os.date("%H",os.time()))
		--sendmsg6(actor,"Сʱ"..hour)
		if hour >= 18 or hour < 6 then --18�㵽6�� ֮��
			if not hasbuff(actor,20031) then
				addbuff(actor,20031)
				--sendmsg6(actor,"��ӻ꼼��ҹbuff")
			end
		else
			if hasbuff(actor,20031) then
				delbuff(actor,20031)
			end
		end
	else
		if hasbuff(actor,20031) then
			delbuff(actor,20031)
		end
	end
	
	if sh_t["��ˮ"] and getlevel(actor) < 55 then --������޻�꼼
		if not hasbuff(actor,20004)  then
			addbuff(actor,20004)
		end
	else
		if hasbuff(actor,20004) then
			delbuff(actor,20004)
		end
	end
	
	if sh_t["����"] and getlevel(actor) > 50 then --������޻�꼼
		if not hasbuff(actor,20005) then
			addbuff(actor,20005)
			--sendmsg6(actor,"��ӻ꼼����buff")
		end
	else
		if hasbuff(actor,20005) then
			delbuff(actor,20005)
		end
	end
	
	
	if sh_t["��ľ�괺"] then --������޻�꼼
		if not hasbuff(actor,20009) then
			addbuff(actor,20009)
			--sendmsg6(actor,"��ӻ꼼��ľ�괺buff")
		end
	else
		if hasbuff(actor,20009) then
			delbuff(actor,20009)
		end
	end
	if sh_t["����"] then --������޻�꼼
		if not hasbuff(actor,20010) then
			addbuff(actor,20010)
			--sendmsg6(actor,"��ӻ꼼����buff")
		end
	else
		if hasbuff(actor,20010) then
			delbuff(actor,20010)
		end
	end
	if sh_t["����"] then --������޻�꼼
		if not hasbuff(actor,20027) then
			addbuff(actor,20027)
			--sendmsg6(actor,"��ӻ꼼����buff")
		end
	else
		if hasbuff(actor,20027) then
			delbuff(actor,20027)
		end
	end

	
	if sh_t["�������"] then --������޻�꼼
		local hour = tonumber(os.date("%H",os.time()))
		--sendmsg6(actor,"Сʱ"..hour)
		if hour >= 13 or hour < 11 then --6�㵽18��
			if not hasbuff(actor,20029) then
				addbuff(actor,20029)
				--sendmsg6(actor,"��ӻ꼼�������_��Ѫbuff")
			end
			if hasbuff(actor,20030) then
				delbuff(actor,20030)
			end
		else
			if hasbuff(actor,20029) then
				delbuff(actor,20029)
			end
			if not hasbuff(actor,20030) then
				addbuff(actor,20030)
				--sendmsg6(actor,"��ӻ꼼�������_�ӹ���buff")
			end
		end
	else
		if hasbuff(actor,20029) then
			delbuff(actor,20029)
		end
		if hasbuff(actor,20030) then
			delbuff(actor,20030)
		end
	end
	
	if sh_t["������"] then --
		if getbaseinfo(actor,9)/getbaseinfo(actor,10) < 0.6 then
			if not hasbuff(actor,20038) then
				addbuff(actor,20038)
				--sendmsg6(actor,"�����꼼����������˫������15-15")
			end
		else
			if hasbuff(actor,20038) then
				delbuff(actor,20038)
			end
		end
	else
		if hasbuff(actor,20038) then
			delbuff(actor,20038)
		end
	end
	
	if sh_t["��ˮһս"] then --
		if getbaseinfo(actor,9)/getbaseinfo(actor,10) < 0.25 then
			if not hasbuff(actor,20055) then
				addbuff(actor,20055)
				--sendmsg6(actor,"�����꼼����ˮһս������������+50%")
			end
		else
			if hasbuff(actor,20055) then
				delbuff(actor,20055)
			end
		end
	else
		if hasbuff(actor,20055) then
			delbuff(actor,20055)
		end
	end
	
	if sh_t["��۵糸"] then --
		if getbaseinfo(actor,9)/getbaseinfo(actor,10) < 0.8 then
			if not hasbuff(actor,19999) then
				addbuff(actor,19999)
				--sendmsg6(actor,"�����꼼����۵糸���������ٶ�+1 ʩ���ٶ�+1")
			end
		else
			if hasbuff(actor,19999) then
				delbuff(actor,19999)
			end
		end
	else
		if hasbuff(actor,19999) then
			delbuff(actor,19999)
		end
	end
	
	if sh_t["���Ͳ���"] then --������޻�꼼
		--sendmsg6(actor,"�м��Ͳ��λ꼼")
		local bili = math.ceil((getbaseinfo(actor,9)/getbaseinfo(actor,10))*10) --Ѫ���ٷֱ�
		local cengshu = 0 --buff����
		if hasbuff(actor,20053) then
			cengshu = getbuffinfo(actor,20053,1)
		end
		local yy_cs = 0 --��Ҫ���Ĳ��� 
		yy_cs = 10 - bili
		local csc = yy_cs - cengshu   --������
		if csc < 0 then --pkֵ�仯
			delbuff(actor,20053)
		end
		for i = 1,csc do
			addbuff(actor,20053)
			--sendmsg6(actor,"��ӻ꼼���Ͳ���buff")
		end
	else
		if hasbuff(actor,20053) then
			delbuff(actor,20053)
		end
	end
	
	if sh_t["�����ư�"] and getsysstr("������������") == getname(actor) then --������޻�꼼
		if not hasbuff(actor,19998) then
			addbuff(actor,19998)
			--sendmsg6(actor,"��ӻ꼼�����ư�buff")
		end
	else
		if hasbuff(actor,19998) then
			delbuff(actor,19998)
		end
	end
	
	if sh_t["��֮�ػ�"] then --������޻�꼼
		if not hasbuff(actor,19994) then
			addbuff(actor,19994)
			--sendmsg6(actor,"��ӻ꼼�����ư�buff")
		end
	else
		if hasbuff(actor,19994) then
			delbuff(actor,19994)
		end
	end
	
	if sh_t["�Ƹ�����"] then --������޻�꼼
		if not hasbuff(actor,20100) then
			addbuff(actor,20100)
		end
	else
		if hasbuff(actor,20100) then
			delbuff(actor,20100)
		end
	end
	if sh_t["���ٵ�־"] then --������޻�꼼
		if getlevel(actor) < 70 then
			if not hasbuff(actor,20101) then
				addbuff(actor,20101)
			end
		else
			if hasbuff(actor,20101) then
				delbuff(actor,20101)
			end
		end
	else
		if hasbuff(actor,20101) then
			delbuff(actor,20101)
		end
	end
	--haoshiend(actor)
	--haoshistart(actor) ��ʱ�޷��Ż� ��������PKֵ�仯����
	if getbaseinfo(actor, 46) ~= querymoney(actor,13) then
		changemoney(actor,13,"=",getbaseinfo(actor, 46),"pkֵ�䶯",true)
	end

	-----------ÿ���Ѫ
	meimiaohuixue(actor) --ÿ���Ѫ �޷��Ż� ֻ�ܶ�ʱ��
	----------Ѻ������
	yabiaoshuxing(actor)
	--------��������
	dizhushuxing(actor)

	--��������ÿ�ս�����Ч��
	wumuyishujiang_gf(actor)
	--�Զ�����
	zidongshifangjineng(actor)
	--�Զ��һ�������
	zidongguajisuijijiance(actor)
	--�����Զ���ɫ
	namechangcolor(actor)
	---��Ч����
	texiaochuli(actor)
	--ɳ�Ϳ˹�����Ҽ�¼
	shabakejilu(actor)
	--��ʱ��ͼ
	xianshiditu(actor)
	--�رվ����ͼ
	jingxiangditu(actor)
	--����CD��ʾ
	fuhuocdxianshi(actor) --����CD��ʾ
	
	--��Ӱ��μ��
	baipiaozudui(actor)
	--haoshiend(actor)
end

function baipiaozudui(actor)
	if getsysint("��������") > 0 then
		return
	end
	if os.time()%3 == 0 then
		local t = getgroupmember(actor) --����б�
		if t and #t >= 3 then
			local bpsl = 0 --��������
			for i = 1,#t do
				if getint(t[i],"�ۼƳ�ֵ") == 0 then
					bpsl = bpsl + 1
				end
			end
			--sendmsg0(0,"��������"..bpsl)
			if bpsl >= 3 then
				if getint(actor,"�ۼƳ�ֵ") == 0 and getint(actor,"���κ�") == 0 then
					setattackmode(actor,1,99999)
					setint(actor,"���κ�",1)
					--sendmsg9(actor,"Ϊ��ֹȺ����Ҷ��⵷��Ӱ�������Ϸ,�뽫�޳�ֵ������Ա��������������,�����½�,������ѯ�ͷ�")
					sendcentermsg(actor,253,0,"Ϊ��ֹȺ����Ҷ��⵷��Ӱ�������Ϸ,�뽫�޳�ֵ������Ա��������������,�����½�,������ѯ�ͷ�.",0,5)
				end
				if os.time()%60 == 0 and getint(actor,"���κ�") == 1 then
					--sendmsg9(actor,"Ϊ��ֹȺ����Ҷ��⵷��Ӱ�������Ϸ,�뽫�޳�ֵ������Ա��������������,�����½�,������ѯ�ͷ�")
					sendcentermsg(actor,253,0,"Ϊ��ֹȺ����Ҷ��⵷��Ӱ�������Ϸ,�뽫�޳�ֵ������Ա��������������,�����½�,������ѯ�ͷ�.",0,5)
				end
			else
				if getint(actor,"���κ�") == 1 then
					setattackmode(actor,-1)
					setint(actor,"���κ�",0)
				end
			end
			
			if bpsl >= 4 then
				if not hasbuff(actor,20117) and getint(actor,"�ۼƳ�ֵ") == 0 then --���κŴ���3����ֹ��Ѫ����
					addbuff(actor,20117)
					--sendmsg9(actor,"����buff")
				end
			else
				if hasbuff(actor,20117) then
					delbuff(actor,20117)
					--sendmsg9(actor,"ɾ��buff")
				end
			end
		else
			if hasbuff(actor,20117) then
				delbuff(actor,20117)
			end
			if getint(actor,"���κ�") == 1 then
				setattackmode(actor,-1)
				setint(actor,"���κ�",0)
			end	
		end	
	end
end

function yichangjiance(actor)
	if getdayint(actor,"�쳣���") == 0 then
		if getint(actor,"�ۼƳ�ֵ") < 1000 then
			if getbindgold(actor) >= 30000000 then
				post1(actor,"�����쳣����ֵС��1000�󶨽�Ҵ���3000��")
				setdayint(actor,"�쳣���",1)
			end 
			if getingot(actor) >= 300000 then
				post1(actor,"�����쳣����ֵС��1000Ԫ������30��")
				setdayint(actor,"�쳣���",1)
			end
		end
		if getint(actor,"�ۼƳ�ֵ") < 3000 then
			if getgold(actor) >= 100000000 then
				post1(actor,"�����쳣����ֵС��3000��Ҵ���1��")
				setdayint(actor,"�쳣���",1)
			end 
			if itemcount(actor,"����") >= 100 then
				post1(actor,"�����쳣����ֵС��3000��������100")
				setdayint(actor,"�쳣���",1)
			end
		end
		if getint(actor,"�ۼƳ�ֵ") < 5000 then
			if getingot(actor) >= 800000 then
				post1(actor,"�����쳣����ֵС��5000Ԫ������80��")
				setdayint(actor,"�쳣���",1)
			end
		end
	end
end
	
function jingxiangditu(actor)
	local mapid = getmap(actor)
	if mapid == "womajingxiang" and os.time() - getsysint("����ʱ��") > 3600*6 then
		map(actor,"d022")
	end
	if mapid == "niumojingxiang" and os.time() - getsysint("����ʱ��") > 3600*4 then
		map(actor,"d2073")
	end
end

function xianshiditu(actor) --��ʱ��ͼ
	if getmap(actor) == "wzad" then
		if not hasbuff(actor,20112) then
			addbuff(actor,20112)
		end
	else
		if hasbuff(actor,20112) then
			delbuff(actor,20112)
		end
	end
	if getstr(actor,"��ʱ��ͼ") == getmap(actor) then
		if os.time() - getint(actor,"��ʱ��ͼ����ʱ��") > getint(actor,"��ʱʱ��") + 2 then
			huicheng(actor)
		end
	end
end

function shabakejilu(actor)
	--haoshistart(actor)
	if getbaseinfo(actor,36) == "" then --���л�
		return
	end
	if not isingongchengquyu(actor) then --���ǹ�������
		return
	end
	
	setdayint(actor,"�ڹ�������ʱ��",getdayint(actor,"�ڹ�������ʱ��")+1)
	if getdayint(actor,"�ڹ�������ʱ��") >= 60*15 and getdayint(actor,"�ڹ��ǽ�������") == 0 then
		addgongchengmingdan(actor) --��ӹ�������
		--sendmsg9(actor,"��ӵ���������")
	end
	--haoshiend(actor)
end

function addgongchengmingdan(actor) --��ӹ�������
	local t = {}
	local str = getsysstr("���ǽ�������") --���ǿɽ���������
	if str ~= "" then
		--sendmsg9(actor,"������"..str)
		t = json2tbl(str)
	end
	local zai = false
	for i = 1,#t do
		if getname(actor) == t[i][1] then
			zai = true
		end
	end
	if not zai then
		table.insert(t,{getname(actor),getbaseinfo(actor,36)}) --���� �л�
		setsysstr("���ǽ�������",tbl2json(t))
		setdayint(actor,"�ڹ��ǽ�������",1)
	end
end

function texiaochuli(actor)
	--sendmsg6(actor,"����ʱ"..os.time() - getint(actor,"�ϴξ�ħʱ��"))
	if getint(actor,"��������2���")==27 and getjob(actor) == 1 and os.time() - getint(actor,"�ϴξ�ħʱ��") == 300 then
		--sendmsg6(actor,"����Ч")
		playeffect(actor,108,0,0,1,0,0)	
	end
end

local namecolors = {253,243,144,250,249,255,48,251,147,247}
function namechangcolor(actor)
	if getint(actor,"�����Զ���ɫ") == 1 then
		local colorbh = getint(actor,"������ɫ���") + 1
		changenamecolor(actor,namecolors[colorbh])
		if colorbh >= 10 then
			setint(actor,"������ɫ���",0)
		else
			setint(actor,"������ɫ���",colorbh)
		end
	end
end

function zidongguajisuijijiance(actor)
	local mapid = getmap(actor)
	if getint(actor,"�һ��Զ����") == 1 then
		if getplaydef(actor,"N$�һ�״̬") == 1 then --�һ���
			if os.time() - getint(actor,"������ʱ��") >= 60 then				
				if itemcount(actor,"�������ʯ") > 0 then
					eatitem(actor,"�������ʯ",1)
				elseif itemcount(actor,"�������ʯ") > 0 then
					eatitem(actor,"�������ʯ",1)
				end
				setint(actor,"������ʱ��",os.time())
			end
			--sendmsg9(actor,"�������ʱ"..os.time() - getint(actor,"������ʱ��"))
		end
	end 
end

function zidongshifangjineng(actor)
	if getjob(actor) == 2 then
		if getskillinfo(actor,getskillidbyname("�޼�����"),1) and getint(actor,"�Զ��޼�����") == 1 and not getbaseinfo(actor,0) then
			if os.time() - getint(actor,"�޼�����ʱ��") >= 60 then
				callscriptex(actor, "ReleaseMagic", 50,0, getskillinfo(actor,getskillidbyname("�޼�����"),1), 2)
			end
		end
		if getint(actor,"�Զ��ٻ�����") == 1 and not getbaseinfo(actor,0) then --��������״̬
			local bb_t = getbaobaolist(actor) --�����б�
			local zuidashu = 1
			if getint(actor,"��������2���") == 42 and getskilllevel(actor,getskillidbyname("�ٻ�����")) == 4 then
				zuidashu = 2
			end
			if #bb_t < zuidashu then
				releasemagic(actor,getskillidbyname("�ٻ�����"),1,getskillinfo(actor,getskillidbyname("�ٻ�����"),1),2,1)
			end
		end
	end
end

function wumuyishujiang_gf(actor)
	if getint(actor,"��������3���") == 46 and os.time()%3 == 0 then
		detoxifcation(actor,0)
		detoxifcation(actor,1)
	end

	if getint(actor,"��������3���")==3 then
		if getbaseinfo(actor,9)/getbaseinfo(actor,10) < 0.8 then
			if not hasbuff(actor,20089) then
				addbuff(actor,20089)
			end
		else
			if hasbuff(actor,20089) then
				delbuff(actor,20089)
			end
		end
	end
	
	if getint(actor,"��������3���")==4 then
		if getbaseinfo(actor,9)/getbaseinfo(actor,10) < 0.8 then
			if not hasbuff(actor,20090) then
				addbuff(actor,20090)
			end
		else
			if hasbuff(actor,20090) then
				delbuff(actor,20090)
			end
		end
	end
	
	
	
	if getdayint(actor,"�������齵����") == 1 then
		if not hasbuff(actor,20080) then
			addbuff(actor,20080)
		end
	else
		if hasbuff(actor,20080) then
			delbuff(actor,20080)
		end
	end
	if getdayint(actor,"�������齵����") == 1 then
		if not hasbuff(actor,20081) then
			addbuff(actor,20081)
		end
	else
		if hasbuff(actor,20081) then
			delbuff(actor,20081)
		end
	end
	
	local item = linkbodyitem(actor,16) --��λ��װ�� �ƺ�«
	if item ~= "0" then
		if getint(actor,"��������3���") == 43 then
			if hasbuff(actor,10054) or hasbuff(actor,10055) then
				if not hasbuff(actor,20082) then
					addbuff(actor,20082)
				end
			else
				if hasbuff(actor,20082) then
					delbuff(actor,20082)
				end
			end		
		else
			if hasbuff(actor,20082) then
				delbuff(actor,20082)
			end
		end
	else
		if hasbuff(actor,20082) then
			delbuff(actor,20082)
		end
	end
	
	----ʩ���ٶ�
	local sufasudu = getbaseinfo(actor,51,207)
	--sendmsg6(actor,"ʩ���ٶ�"..sufasudu)
	--changespeed(actor,3,2)
	callscriptex(actor, "CHANGESPEEDEX", 3, math.floor(sufasudu*2))
end

function songhonglan(actor)
	if getdayint(actor,"ÿ���ͺ���") == 0 then
		setint(actor,"�洢����",getint(actor,"�洢����")+20000)
		setint(actor,"�洢����",getint(actor,"�洢����")+20000)
		if getint(actor,"�洢����") >= 500000 then
			setint(actor,"�洢����",500000)
		end
		if getint(actor,"�洢����") >= 500000 then
			setint(actor,"�洢����",500000)
		end
		setdayint(actor,"ÿ���ͺ���",1)
		chuliangxiangshi(actor)
	end
end

function ontimer55(actor) --�����ݵ㶨ʱ�� 1��
	if getlevel(actor) < 30 and getmap(actor) ~= "xinshou" then
		changeexp(actor,"+",22,false)
		getexp(actor,22) --��ȡ���鴥��
	end
end

function dizhushuxing(actor)
	local curmap = getmap(actor)
	local you = false
	
	if curmap == "d2001" and getname(actor) == getsysstr("��ħ�����") then --ͨ��֮·
		you = true
	end
	if curmap == "d021" and getname(actor) == getsysstr("�����������") then
		you = true
	end
	if curmap == "jxdt" and getname(actor) == getsysstr("������õ���") then --�������
		you = true
	end
	if curmap == "zmjt" and getname(actor) == getsysstr("�����̳����") then --�����̳
		you = true
	end
	if curmap == "hqsy" and getname(actor) == getsysstr("��Ȫ��Ԩ����") then --��Ȫ��Ԩ
		you = true
	end
	if curmap == "qlsy" and getname(actor) == getsysstr("Ǳ����Ԩ����") then --Ǳ����Ԩ
		you = true
	end
	if you then
		if not hasbuff(actor,10060) then
			addbuff(actor,10060)
		end
	else
		if hasbuff(actor,10060) then
			delbuff(actor,10060)
		end
	end
end


function yabiaoshuxing(actor)
	if getsysstr("Ѻ�ڳɹ��л�") ~= "" and getbaseinfo(actor,36) == getsysstr("Ѻ�ڳɹ��л�") then
	else
		if hasbuff(actor,10058) then --����buff
			delbuff(actor,10058)
		end
	end
	if getdayint(actor,"Ѻ����ȡ����") > 0 and isingongchengquyu(actor) then
		if not hasbuff(actor,10059) then
			addbuff(actor,10059,0,getdayint(actor,"Ѻ����ȡ����"))
		end
	else
		if hasbuff(actor,10059) then --����buff
			delbuff(actor,10059)
		end
	end
end


function meimiaohuixue(actor)
	if hasbuff(actor,20117) then
		return
	end
	--sendmsg6(actor,"����"..tostring(getbaseinfo(actor,0)))
	if not getbaseinfo(actor,0) and getbaseinfo(actor,9) > 0 then --δ����״̬
		local shuaxin = 0
		if getbaseinfo(actor,9) < getbaseinfo(actor,10) then
			local morenhp = 5
			if getint(actor,"�����Զ��ָ�") == 1 and  getbaseinfo(actor,9)/getbaseinfo(actor,10) < getint(actor,"�����ָ��ٷֱ�")/100 and getint(actor,"�洢����") >=15 then
				morenhp = 20
				setint(actor,"�洢����",getint(actor,"�洢����")-15)
				shuaxin = 1
			end
			--sendmsg6(actor,"��Ѫǰ"..getbaseinfo(actor,9))
			local chazhi = getbaseinfo(actor,10) - getbaseinfo(actor,9) --Ѫ����ֵ
			if chazhi < morenhp then
				morenhp = chazhi
			end
			setbaseinfo(actor,9,getbaseinfo(actor,9)+morenhp)
			healthspellchanged(actor)
			sendattackeff(actor,4,morenhp,"*")
			--sendmsg6(actor,"��Ѫ��"..getbaseinfo(actor,9))
		end
		if getbaseinfo(actor,11) < getbaseinfo(actor,12) then
			local morenmp = 5
			if getint(actor,"�����Զ��ָ�") == 1 and  getbaseinfo(actor,11)/getbaseinfo(actor,12) < getint(actor,"�����ָ��ٷֱ�")/100 and getint(actor,"�洢����") >=20 then
				morenmp = 25
				setint(actor,"�洢����",getint(actor,"�洢����")-15)
				shuaxin = 1
			end
			humanmp(actor,"+",morenmp,1000)
		end
		if shuaxin == 1 then
			chuliangxiangshi(actor)
		end
	end
end





function qixingta_buffchuli(actor)
	local jishazhe = getsysstr("��������ɱ��") --��ɱ������

	if jishazhe == getname(actor) then
		if not hasbuff(actor,10039) then
			addbuff(actor,10039)
		end
	else
		if hasbuff(actor,10039) then
			delbuff(actor,10039)
		end
	end
end

function xinyunbeigong(actor)
	--sendmsg6(actor,"���˱�������")
	local luck = getbaseinfo(actor,25) --��ɫ����ֵ
	if luck  >= 13 then --����ֵ
		if not hasbuff(actor,20085) then
			addbuff(actor,20085)
			recalcabilitys(actor)
		end	
	elseif luck  >= 12 then --����ֵ
		if not hasbuff(actor,20084) then
			addbuff(actor,20084)
			recalcabilitys(actor)
		end	
	elseif luck  >= 11 then --����ֵ
		if not hasbuff(actor,10034) then
			addbuff(actor,10034)
			recalcabilitys(actor)
		end
	elseif luck  >= 10 then --����ֵ
		if not hasbuff(actor,10033) then
			addbuff(actor,10033)
			recalcabilitys(actor)
		end
	else
		if hasbuff(actor,10034) then
			delbuff(actor,10034)
			recalcabilitys(actor)
		end
		if hasbuff(actor,10033) then
			delbuff(actor,10033)
			recalcabilitys(actor)
		end
		if hasbuff(actor,20085) then
			delbuff(actor,20085)
			recalcabilitys(actor)
		end
		if hasbuff(actor,20084) then
			delbuff(actor,20084)
			recalcabilitys(actor)
		end
	end
end

local gcsjditu = {"aqgj1","aqgj2","aqgj3","aqgj4"}

----------------��������ף��ֵ
function ontimer10(actor) --1���Ӷ�ʱ��
	--sendmsg9(actor,"�������ף��ֵ")
	----װ����
	local item = linkbodyitem(actor, 1) --����
	if item ~= "0" then
		if getitem_zfz(actor,item) > 1 then
			setitem_zfz(actor,item,getitem_zfz(actor,item)-2)
			callscriptex(actor, "CallLua", "wuqizhufu", "@setxingyun,"..item) --������������
		end
		xingyunwuqi(actor)
	end
	----����
	local bagitems = getbagitems(actor) --������Ʒ�б�
	for i = 1,#bagitems do
		local wupin = bagitems[i]
		if getitem_zfz(actor,wupin) > 1 then
			setitem_zfz(actor,wupin,getitem_zfz(actor,wupin)-2)
			callscriptex(actor, "CallLua", "wuqizhufu", "@setxingyun,"..wupin) --������������
		end
	end
	----�ֿ�
	local cangkuitems = getstorageitems(actor) --�ֿ���Ʒ�б�
	for i = 1,#cangkuitems do
		local wupin = cangkuitems[i]
		if getitem_zfz(actor,wupin) > 1 then
			setitem_zfz(actor,wupin,getitem_zfz(actor,wupin)-2)
			callscriptex(actor, "CallLua", "wuqizhufu", "@setxingyun,"..wupin) --������������
		end
	end
	local hour = tonumber(os.date("%H",os.time()))
	
	if getsysint("��������") >= 2 and (hour == 20 or hour == 21) and getmap(actor) == "3" and getbaseinfo(actor,48) then
		if os.time() - getint(actor,"����ƶ�ʱ��") > 120 then
			map(actor,gcsjditu[math.random(1,4)])
			delaygoto(actor,200,"zidong_anquan")
			
			messagebox(actor,"Ϊ��֤��Ϸ�����ԣ������ڼ��ؽ��޶�����ɫ���밲ȫ��ͼ�һ��������½⣡")
		end
	end
end

function zidong_anquan(actor)
	startautoattack(actor)
end

function chulizhufuzhi(actor)
	local lixiantime = getint(actor,"����ʱ��")
	local curtime = os.time()
	local jiange = math.floor((curtime-lixiantime)/60)
	if jiange < 1 then
		return
	end
	----װ����
	local item = linkbodyitem(actor, 1) --����
	if item ~= "0" then
		local zhufuzhi = getitem_zfz(actor,item)
		if zhufuzhi > 0 then
			local zhi = zhufuzhi - jiange
			if zhi < 0 then
				zhi = 0
			end
			setitem_zfz(actor,item,zhi)
			callscriptex(actor, "CallLua", "wuqizhufu", "@setxingyun,"..item) --������������
		end
		xingyunwuqi(actor)
	end
	----����
	local bagitems = getbagitems(actor) --������Ʒ�б�
	for i = 1,#bagitems do
		local wupin = bagitems[i]
		local zhufuzhi = getitem_zfz(actor,wupin)
		if zhufuzhi > 0 then
			local zhi = zhufuzhi - jiange
			if zhi < 0 then
				zhi = 0
			end
			setitem_zfz(actor,wupin,zhi)
			callscriptex(actor, "CallLua", "wuqizhufu", "@setxingyun,"..wupin) --������������
		end
	end
	----�ֿ�
	local cangkuitems = getstorageitems(actor) --�ֿ���Ʒ�б�
	for i = 1,#cangkuitems do
		local wupin = cangkuitems[i]
		local zhufuzhi = getitem_zfz(actor,wupin)
		if zhufuzhi > 0 then
			local zhi = zhufuzhi - jiange
			if zhi < 0 then
				zhi = 0
			end
			setitem_zfz(actor,wupin,zhi)
			callscriptex(actor, "CallLua", "wuqizhufu", "@setxingyun,"..wupin) --������������
		end
	end
	
end

function xingyunwuqi(actor)
	--sendmsg6(actor,"�����������ף��ֵ")
	local item = linkbodyitem(actor, 1) --����
	if item ~= "0" then
		local luck = getluck(actor,item)
		if luck  >= 8 then --����ֵ
			if not hasbuff(actor,10032) then
				addbuff(actor,10032)
			end
		elseif luck  >= 7 then --����ֵ
			if not hasbuff(actor,10031) then
				addbuff(actor,10031)
			end
		else
			if hasbuff(actor,10032) then
				delbuff(actor,10032)
			end
			if hasbuff(actor,10031) then
				delbuff(actor,10031)
			end
		end
	else
		if hasbuff(actor,10032) then
			delbuff(actor,10032)
		end
		if hasbuff(actor,10031) then
			delbuff(actor,10031)
		end
	end
end
----------------��������ף��ֵ���


----------------�����洢��
function ontimer11(actor) --30�붨ʱ��
	--�쳣���
	yichangjiance(actor)
	--�лẰ��
	hanghuihanhua(actor)
	--sendmsg9(actor,"�������ף��ֵ")
	if getint(actor,"�����Զ��ָ�") == 1 and getint(actor,"�洢����") < 15 then
		sendmsg9(actor,"����ֵ�洢������ ��ǰ������ҩ�겹��ҩƷ")
	end

	if getint(actor,"�����Զ��ָ�") == 1 and  getint(actor,"�洢����") < 20 then
		sendmsg9(actor,"ħ��ֵ�洢������ ��ǰ������ҩ�겹��ҩƷ")
	end

end

function hanghuihanhua(actor)
	local jiuzhiwei = getstr(actor,"�л�ְλ")
	local xianzhizhiwei = getconst(actor,"<$RANK>")
	
	if jiuzhiwei ~= xianzhizhiwei then
		hanghuihanhuaxiangguan(actor)
		setstr(actor,"�л�ְλ",xianzhizhiwei)
	end

	if (getbaseinfo(actor,37) or tonumber(getconst(actor,"<$RANK>")) == 2 ) and getstr(actor,"�Զ���������") ~= "" and getint(actor,"�Զ��лẰ��") == 1 then --�ǻ᳤
		sendmsg(actor, 3, '{"Msg":"'.. getstr(actor,"�Զ���������") ..'","FColor":219,"BColor":255,"Type":1,"Time":3,"SendName":"'..getname(actor)..'","SendId":"123"}')
	end
end