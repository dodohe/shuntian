shouhun_gongjicl = {

	["ǿ�ߺ�ǿ"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 
			if not getbaseinfo(shoujizhe,-1) and getbaseinfo(shoujizhe,10) >= 10000 then
				if not hasbuff(gongjizhe,20006) then
					addbuff(gongjizhe,20006)
				end
			end
		return fhhp
	end,
	
	["����"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 
			if not getbaseinfo(shoujizhe,-1) and getbaseinfo(shoujizhe,10) < 10000 then
				if not hasbuff(gongjizhe,20095) then
					addbuff(gongjizhe,20095)
				end
			end
		return fhhp
	end,

	["���ϼ���"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 
			if getbaseinfo(shoujizhe,-1) and callcheckscriptex(shoujizhe,"CheckHumanState",11) and not hasbuff(shoujizhe,10052) then --�ж�״̬
				fhhp = math.floor(hp*0.03)
				--sendmsg6(gongjizhe,"�����꼼�����ϼ��ˡ��������˺�����3%")
			end
		return fhhp
	end,
	["��ǵ���"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 
			if getbaseinfo(shoujizhe,-1) and getsex(gongjizhe) ~= getsex(shoujizhe) and not hasbuff(shoujizhe,10052) then --����
				fhhp = math.floor(hp*0.03)
				--sendmsg6(gongjizhe,"�����꼼����ǵ��ԡ��������˺�����3%")
			end
		return fhhp
	end,
	["ͬ�����"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 
			if getbaseinfo(shoujizhe,-1) and getjob(gongjizhe) == getjob(shoujizhe) and not hasbuff(shoujizhe,10052) then --��ְҵ
				--fhhp = math.floor(hp*0.03)
				local wushang = getbaseinfo(shoujizhe,51,26) --���˼���
				local moshang = getbaseinfo(shoujizhe,51,27) --ħ�˼���
				if getjob(gongjizhe) == 0 then
					fhhp = math.floor(hp*wushang/100)
				else
					fhhp = math.floor(hp*moshang/100)
				end
				--sendmsg6(gongjizhe,"�����꼼��ְҵ��ˡ���������ְҵ���ʱ����Ŀ��˫��(���˼���.ħ�˼���)")
			end
		return fhhp
	end,
	["ǿ��"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 
			if getbaseinfo(shoujizhe,-1) then
				local duiyuanshu = getgroupmember(shoujizhe) or {} --��Ա�б�
				if #duiyuanshu > 1 then --���״̬
					fhhp = math.floor(hp*0.05)
					--sendmsg6(gongjizhe,"�����꼼��ǿ�����������˺�����5%")
				end
			end
		return fhhp
	end,
	["�ٻ�"] = function (gongjizhe,shoujizhe,hp)  --����ʱ��1%�ĸ���ʹ����������Ŀ��3�� Ŀ�겻���ܶ�
			if math.random(1,100) <= 2 then
				if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,10052) then --���˵����
					if os.time() - getint(shoujizhe,"�޻�ٻ�ʱ��") > 30 then
						if getint(shoujizhe,"��������3���") == 35 then
						elseif getint(shoujizhe,"��������3���") == 5 then
							if math.random(1,100) < 50 then
								makeposion(shoujizhe,13,4)
								setint(shoujizhe,"�޻�ٻ�ʱ��",os.time())
							end
						else
							makeposion(shoujizhe,13,4)
							setint(shoujizhe,"�޻�ٻ�ʱ��",os.time())
						end						
						
					end
				else
					makeposion(shoujizhe,13,4)
				end
				--sendmsg6(gongjizhe,"�����꼼���ٻ�������������Ŀ��4��")
			end
		return 0
	end,
	["��ħ"] = function (gongjizhe,shoujizhe,hp)  --����ʱ��3%�ĸ��ʻظ�����ȫ��ħ��ֵ
		local fhhp = 0 
			if math.random(1,100) <= 1 and not hasbuff(shoujizhe,10052) then
				humanmp(gongjizhe,"=",0,1000)
				fhhp = math.floor(hp*0.5)
				--sendmsg6(gongjizhe,"�����꼼����ħ�����ظ�����ȫ��ħ��ֵ")
			end
		return fhhp
	end,
	["������"] = function (gongjizhe,shoujizhe,hp)  --����ʱ����Ŀ��10%��ҩƷ��Ч ����ʮ��
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,10052) then
				--local haszhi = getbaseinfo(shoujizhe,51,83) --�Ѿ��е�ֵ	
				--sendmsg6(gongjizhe,"����ֵ"..haszhi)
				addbuff(shoujizhe,20011)
				--sendmsg6(gongjizhe,"�����꼼������������Ŀ��ҩƷ��Ч-10%")
			end
		return 0
	end,
	["�Ի���"] = function (gongjizhe,shoujizhe,hp)  --���ζԷ�2��
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,10052) then
				if math.random(1,100) <= 5 then
					if getlevel(gongjizhe) - getlevel(shoujizhe) > 4 then
						addbuff(shoujizhe,20013)
						--sendmsg6(gongjizhe,"�����꼼���Ի��󡿣����ζԷ�2��")
					end
				end
			end
		return 0
	end,
	["����"] = function (gongjizhe,shoujizhe,hp)  --ʹ������Ŀ���˺��񵲸��ʽ���3%
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,10052) then
				--local haszhi = getbaseinfo(shoujizhe,51,63) --�Ѿ��е�ֵ	
				--sendmsg6(gongjizhe,"����ֵ"..haszhi)
				addbuff(shoujizhe,20028)
				--sendmsg6(gongjizhe,"�����꼼����������Ŀ��10���ڸ񵲸��ʽ���3%")
			end
		return 0
	end,
	["�߼�����"] = function (gongjizhe,shoujizhe,hp)  --ʹ������Ŀ���˺��񵲸��ʽ���5%
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,10052) then
				--local haszhi = getbaseinfo(shoujizhe,51,63) --�Ѿ��е�ֵ	
				--sendmsg6(gongjizhe,"����ֵ"..haszhi)
				addbuff(shoujizhe,20042)
				--sendmsg6(gongjizhe,"�����꼼���߼���������Ŀ��10���ڸ񵲸��ʽ���10%")
			end
		return 0
	end,
	["Ϊ�����"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 			
			if getbaseinfo(shoujizhe,46) >= 200 and not hasbuff(shoujizhe,10052) then --����״̬
				fhhp = math.floor(hp*0.08)
				--sendmsg6(gongjizhe,"�����꼼��Ϊ��������������˺�����8%")
			end
		return fhhp
	end,
	["ɨ�ڳ���"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 			
			if getbaseinfo(shoujizhe,46) >= 200 and not hasbuff(shoujizhe,10052) then --����״̬
				fhhp = math.floor(hp*0.15)
				--sendmsg6(gongjizhe,"�����꼼��Ϊ��������������˺�����15%")
			end
		return fhhp
	end,
	["����"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,10052) then --�����
				if math.abs( getlevel(gongjizhe) - getlevel(shoujizhe) ) <= 1 then --�ȼ����1������
					fhhp = math.floor(hp*0.03)
					--sendmsg6(gongjizhe,"�����꼼�����㡿�������˺�����3%")
				end
			end
		return fhhp
	end,
	["�ٻ����"] = function (gongjizhe,shoujizhe,hp,skillid,gudingshanghai)
			local fhhp = 0
			if math.random(1,100) <= 2 then
				local gongji = getbaseinfo(gongjizhe,20)
				local mofa = getbaseinfo(gongjizhe,22)
				local daoshu = getbaseinfo(gongjizhe,24)
				--sendmsg6(gongjizhe,"����"..gongji.." ħ��"..mofa.." ����"..daoshu)
				local job = getjob(gongjizhe)
				if job == 0 then
					fhhp = math.floor(gongji*0.5)
					gudingshanghai = gudingshanghai + math.floor(gongji*0.5)
				end
				if job == 1 then
					fhhp = math.floor(mofa*0.5)
					gudingshanghai = gudingshanghai + math.floor(gongji*0.5)
				end
				if job == 2 then
					fhhp = math.floor(daoshu*0.5)
					gudingshanghai = gudingshanghai + math.floor(gongji*0.5)
				end
				
				playeffect(shoujizhe,62,0,0,1,0,0)
				--sendmsg6(gongjizhe,"�����꼼���ٻ���𡿣���ɱ�ְҵ����������50%�Ĺ̶��˺�")
			end
		return fhhp,gudingshanghai
	end,
	["���㷴ɱ"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0
			if math.random(1,100) <= 1 and not hasbuff(shoujizhe,10052) then
				local maxhp = getbaseinfo(shoujizhe,10)
				if getbaseinfo(shoujizhe,-1) then --�����
					if os.time() - getint(shoujizhe,"���巴ɱʱ��") > 30 then
						fhhp = math.floor(maxhp*0.05)
						rangeharm(gongjizhe,getx(gongjizhe),gety(gongjizhe),0,0,1,1)
						setint(shoujizhe,"���巴ɱʱ��",os.time())
						--sendmsg6(gongjizhe,"�����꼼�����㷴ɱ��������Ŀ��һ��նɱ5%Ѫ��")
					end
				end
			end
		return fhhp
	end,
	["������"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,20094) and not hasbuff(shoujizhe,10052) then --�����
				setint(gongjizhe,"�޻���������",getint(gongjizhe,"�޻���������")+1)
				if getint(gongjizhe,"�޻���������") >= 300 then
					local maxhp = getbaseinfo(gongjizhe,10)
					humanhp(gongjizhe,"+",math.floor(maxhp*0.5),1)
					setbaseinfo(shoujizhe,11,0)
					setint(gongjizhe,"�޻���������",0)
					sendmsg9(gongjizhe,"�㴥����'������'�����ֵ�MP���Ⲣ������Ѫ���ָ�50%")
					--sendmsg6(gongjizhe,"�����꼼�������󷨡���������ħ��ֵ����,���ظ�����50%����ֵ")
				end
			end
		return fhhp
	end,
	--[[["����ն��"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0
			if getbaseinfo(gongjizhe,46) >= 200 then --����
				fhhp = math.floor(hp*0.05)
				sendmsg6(gongjizhe,"�����꼼������ն����������5%���ع���.")
			end
		return fhhp
	end,--]]

	["��ά���"] = function (gongjizhe,shoujizhe,hp,skillid)
			local fhhp = 0
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,10052) then --�����
				if getlevel(gongjizhe) - getlevel(shoujizhe) > 0 and math.random(1,100) <= 1 then
					if getint(shoujizhe,"��������3���") == 35 then
					elseif getint(shoujizhe,"��������3���") == 5 then
						if math.random(1,100) < 50 then
							if skillid == 22 or skillid == 58 then
							if math.random(1,100) < 50 then
									makeposion(shoujizhe,5,3)
								end
							else
								makeposion(shoujizhe,5,3)
							end
						end
					else
						if skillid == 22 or skillid == 58 then
							if math.random(1,100) < 50 then
								makeposion(shoujizhe,5,3)
							end
						else
							makeposion(shoujizhe,5,3)
						end						
					end					
					--sendmsg6(gongjizhe,"�����꼼����ά���������Եз�2��")
				end
			end
		return fhhp
	end,
	["ְҵ����"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0
			if getbaseinfo(shoujizhe,-1) then --�����
				if getjob(gongjizhe) ~= getjob(shoujizhe) then
					fhhp = math.floor(hp*0.1)
					--sendmsg6(gongjizhe,"�����꼼��ְҵ���ơ����ԷǱ�ְҵ������10%�����˺�")
				end
			end
		return fhhp
	end,
	["����֮��"] = function (gongjizhe,shoujizhe,hp,skillid)
			local fhhp = 0
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,10052) then --�����
				if skillid == 58 and getskillinfo(gongjizhe,58,1) == 4 then --4�����ǻ���
					if not hasbuff(shoujizhe,20052) then
						local mofa = getbaseinfo(gongjizhe,22)
						setint(shoujizhe,"����֮����Ѫֵ",math.floor(mofa*0.15))
						setontimer(shoujizhe,20052,1,10) --1���Ѫ ����10��
						addbuff(shoujizhe,20052)
						--sendmsg6(gongjizhe,"�����꼼������֮�ء����з�������Ѫ10��")
					end
				end
			end
		return fhhp
	end,
	["��Ѫ֮��"] = function (gongjizhe,shoujizhe,hp,skillid)
			local fhhp = 0
			if getbaseinfo(shoujizhe,-1) and not hasbuff(shoujizhe,10052) then --�����
				if skillid == 57 and getskillinfo(gongjizhe,57,1) == 4 then --4����Ѫ��
					local curhp = getbaseinfo(shoujizhe,9)
					fhhp = math.floor(curhp * 0.02)
					--sendmsg0(gongjizhe,"�����꼼����Ѫ֮�ء�����Ŀ�����︽����ǰѪ��2%�����˺�")
				end
			end
		return fhhp
	end,
	["����֮��"] = function (gongjizhe,shoujizhe,hp,skillid)
			local fhhp = 0
			if getskillidbyname("���ս���") == skillid and getskillinfo(gongjizhe,getskillidbyname("���ս���"),1) == 4 and not hasbuff(shoujizhe,10052) then
				if not hasbuff(shoujizhe,20099) and not hasbuff(player,20076) then
					addbuff(shoujizhe,20099)
				end
				if math.random(1,100) < 30 then
					if getbaseinfo(shoujizhe,-1) then --���˵����
						if getint(shoujizhe,"��������3���") == 35 then
						elseif getint(shoujizhe,"��������3���") == 5 then
							if math.random(1,100) < 50 then
								makeposion(shoujizhe,13,4)
							end
						else
							makeposion(shoujizhe,13,4)
						end						
					else
						makeposion(shoujizhe,13,4)
					end				
				end 
			end
		return fhhp		
	end,
	["����֮��"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0
				if os.time() - getint(gongjizhe,"����֮��ʱ��") >= 30 and math.random(1,100) <= 2 and getbaseinfo(shoujizhe,-1) then
					changemode(gongjizhe,2,2)
					setint(gongjizhe,"����֮��ʱ��",os.time())
				end
		return fhhp
	end,

	["ç��֮ŭ"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0
			if getbaseinfo(shoujizhe,-1) then --������
				local t = getobjectinmap(getmap(gongjizhe),getx(gongjizhe),gety(gongjizhe),8,1) --�����߷�Χ��
				local t1 = getobjectinmap(getmap(shoujizhe),getx(shoujizhe),gety(shoujizhe),8,1) --�ܻ��߷�Χ��
				local dantiao = true
				if #t==1 or (#t == 2 and (t[1] == shoujizhe or t[2] == shoujizhe)) then
				else
					dantiao = false
				end
				if #t==1 or (#t1 == 2 and (t1[1] == gongjizhe or t1[2] == gongjizhe)) then
				else
					dantiao = false
				end
				--release_print(tbl2json(t))
				--release_print(tbl2json(t1))	
				if dantiao then
					fhhp = math.floor(hp*0.1)
					--sendmsg6(gongjizhe,"�����꼼������ǧ������5*5��Χ�ڵ���ʱ��������PK����10%")
				end
			end
		return fhhp
	end,
	
	["ת��ѹ��"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0
			if getbaseinfo(shoujizhe,-1) then --������
				local zsc = getbaseinfo(gongjizhe,39) - getbaseinfo(shoujizhe,39) --ת����
				if zsc > 0 then
					local shbl = zsc*2 --�˺�����
					if shbl > 10 then
						shbl = 10
					end
					fhhp = math.floor(hp*shbl/100)
				end
			end
		return fhhp
	end,
	
	["�ƺ��ͽ"] = function (gongjizhe,shoujizhe,hp) --
			local fhhp = 0
			if hasbuff(gongjizhe,10054) or hasbuff(gongjizhe,10055) then
				fhhp = math.floor(hp*0.1)
			end
		return fhhp
	end,
}

shouhun_shoujicl = {
	--�ܵ�Ѫ������80%Ŀ�깥��ʱ.������ÿ�ι���������ʧ����Ѫ��1%
	["��������"] = function (gongjizhe,shoujizhe,hp)
			if getbaseinfo(gongjizhe,-1) and getbaseinfo(gongjizhe,9)/getbaseinfo(gongjizhe,10) > 0.8 and not hasbuff(gongjizhe,10052) then
				humanhp(gongjizhe,"-",math.floor(getbaseinfo(gongjizhe,10)*0.01),1000)
			end	
			
		return 0
	end,
	["����"] = function (gongjizhe,shoujizhe,hp)
			if math.random(1,100) <= 1 and not hasbuff(gongjizhe,10052) then
				humanhp(gongjizhe,"-",math.floor(hp/2),1000)
				--sendmsg6(shoujizhe,"�����꼼�������������������˺�")
			end
		return 0
	end,
	
	["��ת����"] = function (gongjizhe,shoujizhe,hp)
		if getbaseinfo(gongjizhe,-1) and not hasbuff(gongjizhe,10052) then
			humanhp(gongjizhe,"-",math.floor(hp*0.08),1000)
		end
		return 0
	end,
	
	["����"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 
			--sendmsg6(gongjizhe,tostring(callcheckscriptex(shoujizhe,"checkHumanState",7)))
			if getbaseinfo(shoujizhe,-1) and (callcheckscriptex(shoujizhe,"checkHumanState",7) or callcheckscriptex(shoujizhe,"checkHumanState",8) or callcheckscriptex(shoujizhe,"checkHumanState",10)) and not hasbuff(gongjizhe,10052) then
				fhhp = math.floor(hp*0.05)
				--sendmsg6(shoujizhe,"�����꼼�����ˡ����ܵ��˺�����5%")
			end
		return -fhhp
	end,
	["����"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 
			if getbaseinfo(gongjizhe,-1) and getsex(gongjizhe) == 0 and not hasbuff(gongjizhe,10052) then
				fhhp = math.floor(hp*0.03)
				--sendmsg6(shoujizhe,"�����꼼�����塿���ܵ��˺�����3%")
			end
		return -fhhp
	end,
	["���ƺ쳾"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 
			if getbaseinfo(gongjizhe,-1) and getsex(gongjizhe) == 1 and not hasbuff(gongjizhe,10052) then
				fhhp = math.floor(hp*0.03)
				--sendmsg6(shoujizhe,"�����꼼�����ƺ쳾�����ܵ��˺�����3%")
			end
		return -fhhp
	end,
	["�ȼ�ѹ��"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 
			if getbaseinfo(gongjizhe,-1) then
				if getlevel(shoujizhe) - getlevel(gongjizhe) > 0 then
					fhhp = math.floor(hp*0.05)
					--sendmsg6(shoujizhe,"�����꼼���ȼ�ѹ�ơ����ܵ��˺�����5%")
				end
			end
		return -fhhp
	end,
	--[[["��֮�ػ�"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0 
			if getbaseinfo(gongjizhe,-1) then --���
				local gdsh = getbaseinfo(gongjizhe,51,68) --�����ߵĹ̶��˺�ֵ
				if gdsh > 0 then
					local zhi = 30
					if gdsh < 30 then
						zhi = gdsh
					end
					if zhi > 0 then
						fhhp = zhi
						--sendmsg6(shoujizhe,"�����꼼����֮�ػ��������ܵ��Ĺ̶��˺�����"..zhi.."��")
					end
				end
			end
		return -fhhp
	end,--]]
	["�Թ����"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0
			if not getbaseinfo(gongjizhe,-1) then --�ǹ���
				if math.random(1,100) <= 2 then
					makeposion(gongjizhe,5,4)
					--sendmsg6(shoujizhe,"�����꼼���Թ���ԡ�����Թ���2��")
				end
			end
		return fhhp
	end,
	["��Ұ����"] = function (gongjizhe,shoujizhe,hp)
			local fhhp = 0
			if not getbaseinfo(gongjizhe,-1) then --�ǹ���
				if getbaseinfo(shoujizhe,9)/getbaseinfo(shoujizhe,10) < 0.5 then
					fhhp = math.floor(hp*0.25)
				end
			end
		return -fhhp
	end,
	["���ֿ��"] = function (gongjizhe,shoujizhe,hp) --���������˺���������ֵ30%,�����ƻ������״̬�Ĺ����߷���ħ������60%.����5��
			local fhhp = 0
			if getbaseinfo(gongjizhe,-1) and hp/getbaseinfo(shoujizhe,10) > 0.3 and not hasbuff(gongjizhe,10054) and not hasbuff(gongjizhe,10055) and not hasbuff(gongjizhe,10052) then --������
				if not hasbuff(gongjizhe,20097) then
					addbuff(gongjizhe,20097)
					sendmsg9(shoujizhe,"�㴥����'���ֿ��'�Է�����ħ������100%����5��")
				end
			end
		return fhhp
	end,
	["��ղ���"] = function (gongjizhe,shoujizhe,hp) --���ƻ������״̬�±����﹥��ʱ�и��ʴ����޵�����
			local fhhp = 0
			if getbaseinfo(gongjizhe,-1) then --������
				if math.random(1,100) <= 2 and (hasbuff(shoujizhe,10054) or hasbuff(shoujizhe,10055)) and os.time() - getint(shoujizhe,"��ղ���ʱ��") >= 120 then
					addbuff(shoujizhe,20105)
					--changemode(shoujizhe, 1, 2)
					setint(shoujizhe,"��ղ���ʱ��",os.time())
				end
			end
		return fhhp
	end,
	
	["����֮��"] = function (gongjizhe,shoujizhe,hp) --�ܵ����˹���ʱ ���˹����ٶ��Լ�ʩ���ٶȽ���2�� ����10��
			local fhhp = 0
			if getbaseinfo(gongjizhe,-1) and os.time() - getint(gongjizhe,"����֮��") > 30 and not hasbuff(gongjizhe,10052) then --������
				if not hasbuff(gongjizhe,20098) then
					addbuff(gongjizhe,20098)
					setint(gongjizhe,"����֮��",os.time())
					sendmsg9(shoujizhe,"�㴥����'����֮��'���ֹ�����ʩ���ٶȽ���10�����10��")
				end
			end
		return fhhp
	end,
	["״̬����"] = function (gongjizhe,shoujizhe,hp) --
			local fhhp = 0
			if (callcheckscriptex(shoujizhe,"checkHumanState",7) or callcheckscriptex(shoujizhe,"checkHumanState",8) or callcheckscriptex(shoujizhe,"checkHumanState",10) or callcheckscriptex(shoujizhe,"checkHumanState",11)) and not hasbuff(shoujizhe,10052) then
				fhhp = math.floor(hp*0.3)
			end
		return -fhhp
	end,
	["�ƺ��ͽ"] = function (gongjizhe,shoujizhe,hp) --
			local fhhp = 0
			if hasbuff(shoujizhe,10054) or hasbuff(shoujizhe,10055) then
				fhhp = math.floor(hp*0.05)
			end
		return fhhp
	end,
}

function ontimer20052(actor) --ÿ�붨ʱ�� ���� �޻�buff
	local hp = getint(actor,"����֮����Ѫֵ")
	humanhp(actor,"-",hp,101)
	--sendmsg6(actor,"������Ѫ����")
end