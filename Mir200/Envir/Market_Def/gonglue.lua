require("Envir/Market_Def/zh.lua") --���˷�װ����
local biaoti_anniu = {"Ʒ�ƽ���","�𲽹���","��Ϸ��ɫ","��Ϸ�淨","ְҵ����","��ͼ����","����˵��","ƭ��˵��"}
function show(actor,anniuid)
	anniuid = tonumber(anniuid) or 1
	local msg = [[
		<Img|x=0|width=700|height=494|bg=1|show=4|scale9r=50|scale9t=50|scale9b=50|move=1|scale9l=50|loadDelay=0|reset=0|img=zhangheng/1.png|esc=1>
		<Button|x=697.0|y=1.5|nimg=public/1900000510.png|pimg=public/1900000511.png|link=@exit>
		<Img|x=-23.5|y=-15.5|img=zhangheng/2.png|esc=0>
		<Img|x=17.0|y=39.5|img=zhangheng/266.png|esc=0>
	]]
	
	for i = 1,#biaoti_anniu do
		if i == anniuid then
			msg = msg ..'<Button|x=19.0|y='.. 45+(i-1)*45 ..'|size=18|nimg=zhangheng/267.png|pimg=zhangheng/267.png|color=250|outline=2|text='..biaoti_anniu[i]..'>'
		else
			msg = msg ..'<Button|x=19.0|y='.. 45+(i-1)*45 ..'|size=18|nimg=zhangheng/267.png|pimg=zhangheng/267.png|color=7|outline=2|text='..biaoti_anniu[i]..'|link=@show,'.. i ..'>'
		end
	end
	
	if biaoti_anniu[anniuid] == "����˵��" then
		msg = msg ..[[
		<RText|x=170.0|y=50.0|color=251|size=20|text=����˵��>
<RText|ax=0|x=170|y=85.0|color=255|size=18|text=Ϊ��ֹӰ��������ҵ���Ϸ���飬<�ٷ��ԷǷ���ң�Ⱥ���ѻ���/FCOLOR=250>>
<RText|ax=0|x=170|y=110.0|color=255|size=18|text=<�ң�Ⱥ���ѻ���ɢ��BOSS��Ϊ�Լ�������ҵ������̣�һ����/FCOLOR=250>>
<RText|ax=0|x=170|y=135.0|color=255|size=18|text=<ʵ���÷�ͣ��/FCOLOR=250>��Ҫ���н�����������ϧ�Լ�����Ϸ�ʺţ�����>
<RText|x=170.0|y=160.0|color=255|size=18|text=�����Լ���ɫ����Ϸ������>
<RText|x=170.0|y=195.0|color=255|size=18|text=�����һ��Ͷ�ʺ��϶�����κź�ɨ��ͼ����ͼ�������������>
<RText|x=170.0|y=220.0|color=255|size=18|text=û�йִ򣬰��κŲ���������Ϊ���ж�ΪȺ����Ϊ����������>
<RText|x=170.0|y=245.0|color=255|size=18|text=�˺Ž��������촦����>
<RText|x=170.0|y=280.0|color=255|size=18|text=�����Ⱥ���Զ�ɱ�ˣ�Ⱥ�����ˣ���һ������һ���ž���һ�Ѻ�>
<RText|x=170.0|y=305.0|color=255|size=18|text=���𹥻���ҵ���Ϊ�������÷��ͬIP���������������˺ţ���>
<RText|x=170.0|y=330.0|color=255|size=18|text=����⡣>



		]]
	end
	
	if biaoti_anniu[anniuid] == "Ʒ�ƽ���" then
		msg = msg ..[[
		<RText|x=170.0|y=50.0|color=251|size=20|text=Ʒ�ƽ���>
<RText|x=170.0|y=85.0|size=18|color=255|text=��<��˳�촫�桷/FCOLOR=250>��һ���ʱ���꾫���з�����ְҵ��ɫ80����>
<RText|x=188.0|y=110.0|color=255|size=18|text=�汾�����������Ǳ���Ϸ��������㣬ÿһ��ϸ�ڶ�������>
<RText|x=188.0|y=135.0|size=18|color=255|text=�Ĵ�ĥֻΪ��Ϸ����ƽ�����<�ż����淨�ḻ/FCOLOR=253>�������ط���>
<RText|x=188.0|y=160.0|color=255|size=18|text=Ѫȼ�յ����>
<RText|x=170.0|y=195.0|size=18|color=255|text=����Ϸ���<��ҡ�Ԫ����װ�������� �����ǳ���ֵ/FCOLOR=250>�������Ʊ�>
<RText|x=188.0|y=220.0|color=255|size=18|text=�ܺ��Լ����˺ţ�������߱�ƭ����ɵ���ʧ�ٷ��Ų�����>
<RText|x=188.0|y=245.0|size=18|color=255|text=���к���Ľ������BUG������ϵ�ͷ�������һ�����ɽ�<��/FCOLOR=253>>
<RText|x=188.0|y=270.0|size=18|color=255|text=<�ֽ���/FCOLOR=253>>

		]]
	end
	
	if biaoti_anniu[anniuid] == "�𲽹���" then
		msg = msg ..[[
		<RText|x=170.0|y=50.0|color=251|size=20|text=�𲽹���>
<RText|x=170.0|y=79.0|size=18|color=255|text=������Ϸ<���޻�Ա,������,�޻���,�����,���۳�,������,�ް���,/FCOLOR=250>>
<RText|x=188.0|y=104.0|color=255|size=18|text=<�޶���,��ɳ�衿/FCOLOR=250>���κ�ǿ�����ѣ�һ����Ʒ�Կ�����Ϸ��ã�>
<RText|x=188.0|y=129.0|color=255|size=18|text=��ֿɻ�þ���ӳ��Լ����������������������������>
<RText|x=188.0|y=154.0|color=255|size=18|text=�ȼ�������<��ɫ��Ϸ/FCOLOR=253>����ζ<���澭��/FCOLOR=253>�����>
<RText|x=170.0|y=182.0|color=255|size=18|text=������Ψһͨ����ֵ��ȡ��ֻ��һ��<�����ĺ���/FCOLOR=250>��ֵ������>
<RText|x=188.0|y=207.0|color=255|size=18|text=������ȡ��ɢ�˺�С�����ǿ���Ƽ�>
<RText|x=170.0|y=235.0|color=255|size=18|text=������������������ʱ������ң�ͨ����ֵ������Ϸ�����ȡ>
<RText|x=188.0|y=260.0|color=255|size=18|text=��Ԫ��������<��ͨͶ�ʴ�ʹ/FCOLOR=70><��ý���Լ�/FCOLOR=251><��ש����Ȩ��/FCOLOR=251>������>
<RText|x=188.0|y=285.0|color=255|size=18|text=��Ѱѹ���Ͷ�ʵ�Ԫ��ȫ���������<��ֵ/FCOLOR=254><����/FCOLOR=254>��<��ǿ���Ƽ�/FCOLOR=253>>
<RText|x=170.0|y=313.0|color=255|size=18|text=����������û�������������ѵĵط�����Ҫ���ٵ������Լ�����>
<RText|x=188.0|y=338.0|color=255|size=18|text=�໨ʱ�����Ϸ��û��ߴ�ɢ����������չ�>
<RText|x=170.0|y=366.0|size=18|color=255|text=�������������ڻ𱬣����������ϰ��ͨ��<�������չ�/FCOLOR=250>�������>
<RText|x=188.0|y=391.0|color=255|size=18|text=Ϸ��򵽵ľ�������ٵ�50�������ڸ�ƽ�������������ͼ>
<RText|x=188.0|y=416.0|size=18|color=255|text=���·���������50���Լ�50������ĵ�ͼ�д���Ĺ����Լ�>
<RText|x=188.0|y=439.0|size=18|color=255|text=<�߼�BOSS/FCOLOR=250>������<BOSS��ɱ/FCOLOR=249>Ŷ��>

		]]
	end
	
	if biaoti_anniu[anniuid] == "��Ϸ��ɫ" then
		msg = msg ..[[
			<RText|x=170.0|y=50.0|color=251|size=20|text=��Ϸ��ɫ>
<RText|x=170.0|y=85.0|size=18|color=255|text=����Ҫ����Ϊ<���/FCOLOR=250>�Ǳ���Ϸ������ɫ֮һ��ֻ��ͨ���������>
<RText|x=188.0|y=110.0|size=18|color=255|text=�ٷ�<�Ų�����/FCOLOR=253>Ҳ�ޱ���ͨ����ֵ��ʽ��ã�����ط�ֻΪ����>
<RText|x=188.0|y=135.0|size=18|color=255|text=���ǰ���𲽿�������ã���Ҫ�𲽿�ֻ��<ͨ�������������/FCOLOR=254>>
<RText|x=188.0|y=160.0|size=18|color=255|text=<�Ľ��/FCOLOR=254>>
<RText|x=170.0|y=195.0|size=18|color=255|text=�����������������<��Ʒ���ɻ���/FCOLOR=250>�ɽ�ң����Ի�ȡ��ҷǳ�>
<RText|x=188.0|y=220.0|color=255|size=18|text=���ף�ɢ����Ҵ򵽵ķǰ󶨽��,�����������ϽǲֿⱣ��>
<RText|x=188.0|y=245.0|size=18|color=255|text=Ա���һ���<����/FCOLOR=249>�����۸��ϰ�ɻ�ò��Ƶ�����>
<RText|x=170.0|y=280.0|size=18|color=255|text=��װ�����ϲ�����ֻ��ͨ�����ﱬ����ã�<�κε�ͼ���ɱ�����/FCOLOR=250>>
<RText|x=188.0|y=305.0|size=18|color=255|text=<��װ�������ⶥ��װ��/FCOLOR=250>��Ϊ��ֹ��������������ɢ������޷�>
<RText|x=188.0|y=330.0|color=255|size=18|text=������ϵͳ���趨"��ѯ����ˢ��ʱ�书��"��ͼ����Ҳ��ˢ��>
<RText|x=188.0|y=355.0|size=18|color=255|text=���ַǶ���BOSS����ͼ�淨�Լ������淨�����ζ����>


		]]
	end
	
	if biaoti_anniu[anniuid] == "��Ϸ�淨" then
		msg = msg ..[[
		<RText|x=170.0|y=50.0|color=251|size=20|text=��Ϸ�淨>
		<RText|x=170.0|y=85.0|color=255|size=18|text=��<����9��/FCOLOR=250>��ÿ�����׷��ļ��£�����ܻ��ף���Ϳ����ɰ�>
		<RText|x=188.0|y=109.0|color=255|size=18|text=�������ȵ�����6������3������ͨ��NPC������ã�<���õ�/FCOLOR=253>>
		<RText|x=188.0|y=135.0|color=255|size=18|text=<�ɹ��ʸ�/FCOLOR=253>>
		<RText|x=170.0|y=165.0|size=18|color=255|text=��װ���淨Ȥζ�ḻ��S����װ�Լ��ټ�����װ������ҿɽ���>
		<RText|x=188.0|y=190.0|size=18|color=255|text=������䣬ѡ�����ʺ��Լ��Ĳ�����ǿ���ģ�ÿ������װ����>
		<RText|x=188.0|y=215.0|size=18|color=255|text=���Զ�������ģ����������ֱ����Ϯ����һ������ͨͨ��װ>
		<RText|x=188.0|y=240.0|size=18|color=255|text=�����Կ��ܱȶ���װ����Ҫǿ������Ȼ��<һ��ֻ�ܿ���/FCOLOR=70>������>
		<RText|x=188.0|y=265.0|size=18|color=255|text=������PK�����֣������ܻ����ڷ�Ŭ��֮��>
		<RText|x=170.0|y=295.0|size=18|color=255|text=���ڱ�����Ʒ��ʱ��ͬʱҲ�����<��ɫ��Ʒװ��/FCOLOR=249>�����ϳ��ֺ�ɫ>
		<RText|x=188.0|y=320.0|size=18|color=255|text=���ֵ�װ��һ��Ҫ�����۾����ҵ����ǵ���ң�ӣ�����Ϊ���>
		<RText|x=188.0|y=345.0|size=18|color=255|text=����Ʒװ��֮��>
		<RText|x=170.0|y=375.0|color=255|size=18|text=�������󿪷�ȫ������<"����ϵͳ"/FCOLOR=250>�淨��ӱ��Ȥζ��ǿ��ͨ����>
		<RText|x=188.0|y=400.0|color=255|size=18|text=���ͼ�ɼ���ɽȪˮ�ɽ���������ƣ����ƴ�ֹ����л�õ�>
		<RText|x=188.0|y=425.0|color=255|size=18|text=<"����������"/FCOLOR=250>���и߱�ֵ�ԣ�ǰ���в��ɼ���>

		]]
	end
	
	if biaoti_anniu[anniuid] == "ְҵ����" then
		msg = msg ..""
		msg = msg ..""
		msg = msg ..[[
		<ListView|children={1}|x=161.0|y=40.0|width=520|height=428|bounce=0>
		<Img|id=1|children={2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23}|x=161.0|y=39.0|width=520|height=588|img=public/0.png>

<RText|id=2|x=10.0|y=10.0|size=20|color=251|text=ְҵ����>
<RText|id=3|x=10.0|y=40.0|size=18|color=253|text=��ְҵƽ���Ǳ���������ɫ������ѡ��ʲôְҵ����ǰ;����>
<RText|id=4|x=10.0|y=70.0|size=18|color=254|text=սʿ��>
<RText|id=5|x=10.0|y=95.0|size=18|color=255|text=<������ǿ��/FCOLOR=250>��ɱ��Խ��������һ���Ĵ��ڣ��к��ڿɸ����Լ�>
<RText|id=6|x=10.0|y=120.0|size=18|color=255|text=����ͨ��װ������������κ��ż�����Ѫ���淨���������淨��>
<RText|id=7|x=10.0|y=145.0|size=18|color=255|text=�������淨��׼ȷ���淨���������淨������������淨 ����>
<RText|id=8|x=10.0|y=170.0|size=18|color=255|text=�������淨�ȵ�....>
<RText|id=9|x=10.0|y=200.0|size=18|color=254|text=��ʦ��>
<RText|id=10|x=10.0|y=225.0|size=18|color=255|text=<����Ⱥ�ִ�Ч�ʸߣ���ս��������/FCOLOR=250>���к��ڿɸ����Լ�����>
<RText|id=11|x=10.0|y=250.0|size=18|color=255|text=ͨ��װ������������κ��ż���Ѫ���������淨����ħ���淨��>
<RText|id=12|x=10.0|y=275.0|size=18|color=255|text=�������淨��������ϵ���淨���������淨���������淨��Ⱥ>
<RText|id=13|x=10.0|y=300.0|size=18|color=255|text=�����淨�ȵ�.....>
<RText|id=14|x=10.0|y=330.0|size=18|color=254|text=��ʿ��>
<RText|id=15|x=10.0|y=355.0|size=18|color=255|text=�ɵ���һ��BOSS���������ܣ�<50���ٻ�"����֮��"/FCOLOR=250>��<60����/FCOLOR=253>>
<RText|id=16|x=10.0|y=380.0|size=18|color=255|text=<��"����ţ��"/FCOLOR=253><���ļ��ٻ����޲����ʵı仯��/FCOLOR=254>���к��ڿɸ���>
<RText|id=17|x=10.0|y=405.0|size=18|color=255|text=�Լ�����ͨ��װ��������䣬���κ��ż���ħ��������淨��>
<RText|id=18|x=10.0|y=430.0|size=18|color=255|text=�����������淨�������������淨����ǿ�����淨��������>
<RText|id=23|x=10.0|y=455.0|size=18|color=255|text=��(�ű�����)���������淨�ȵ�......>
<RText|id=19|x=10.0|y=485.0|size=18|color=255|text=����Ϸ�κ�ְҵǰ���У����ڶ�<���������ɱ����/FCOLOR=154>��Ҳ�����>
<RText|id=20|x=10.0|y=510.0|size=18|color=255|text=�ּ���ְҵ���к���PK���������ƣ����ྫ���淨�������̽>
<RText|id=21|x=10.0|y=535.0|size=18|color=255|text=������Ϸ�淨�ḻ�����ǲ�����̬��һ����ƽ�⸴��Ϊ��ּ��>
<RText|id=22|x=10.0|y=560.0|size=18|color=255|text=ֻ��������Ϸ��Ȥ>


		]]
	end
	
	if biaoti_anniu[anniuid] == "��ͼ����" then
		msg = msg ..[[
		<RText|x=170.0|y=50.0|size=20|color=251|text=��ͼ����>
		<RText|x=170.0|y=85.0|size=18|color=255|text=��Ϸ�κε�ͼ��<�ɱ�������װ��/FCOLOR=250>���ܶ��ͼ������<���ص�ͼ/FCOLOR=250>����>
		<RText|x=170|y=110.0|size=18|color=255|text=��ˢ��ȫ������BOSS���߼���ͼ������ͨ���ɼ�Ȫˮ��ò�>
		<RText|x=170.0|y=135.0|size=18|color=255|text=�Ƶ����棬��֮�þ���δ֪�������ɽׯ���������ȶ������>
		<RText|x=170|y=160.0|size=18|color=255|text=����ӱ�淨������ͨ����Щ<��ͼ��NPC/FCOLOR=250>�˽����飬һ�н�Ϊɢ��>
		<RText|x=170.0|y=185.0|size=18|color=255|text=���Ƕ����>

		]]
	end
	
	if biaoti_anniu[anniuid] == "ƭ��˵��" then
		msg = msg ..[[
		<ListView|children={1}|x=159.0|y=39.0|width=520|height=420|bounce=0>
		<Img|id=1|children={2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29}|x=161.0|y=39.0|width=520|height=730|img=public/0.png>
		<RText|id=2|x=10.0|y=10.0|size=20|color=251|text=������ƭ�ӵĿ��ǣ�����̰С���ˣ���������ʺŵ���ʧ>
		<RText|id=3|x=10.0|y=40.0|size=18|color=255|text=<ƭ��һ. /FCOLOR=253>ƭ�Ӿ������ϰ������ղ���. Ȼ������Ѷ���ֱ����>
		<RText|id=4|x=10.0|y=65.0|size=18|color=255|text=���ϰ�.�㿴���ϰ岻���ܵ�.���԰Ѷ��������ϰ�.����ϰ��>
		<RText|id=5|x=10.0|y=90.0|size=18|color=255|text=��ֱ��ת����ƭ��.��Ϊƭ����ǰ��ϵ�����ϰ�.�����������>
		<RText|id=6|x=10.0|y=115.0|size=18|color=255|text=�ϰ屻ƭ.�����ϵ�Ҳ��ƭ.ƭ����ͷͨ�ԣ�<�ϰ彻��ʱ�������/FCOLOR=249>>
		<RText|id=7|x=10.0|y=140.0|size=18|color=249|text=���Լ���Ʒ�ı�����Ϸ��ȷ��.����������;������ϵ��ʽ��>
		<RText|id=8|x=10.0|y=165.0|size=18|color=254|text=��ƭ��ʾ�����λ��ҽ���ʱ��ͨ����Ϸ�������У������У�>
		<RText|id=9|x=10.0|y=190.0|size=18|color=254|text=���н��ף�������ƭ����ϵ��Ϊ0>
		<RText|id=10|x=10.0|y=220.0|size=18|color=255|text=<ƭ����. /FCOLOR=253>С���XXXһ��������CP���ɱ���Ŷ��Ȼ���л�Ⱥ�Ѹ�>
		<RText|id=11|x=10.0|y=245.0|size=18|color=255|text=�£����ӻ᳤XXX��Ⱥ�����Ӿ��ߣ��ϵ��˺ٺ٣�����ƭ��ȥXX>
		<RText|id=12|x=10.0|y=270.0|size=18|color=255|text=X��Ϸ��ֵ���ҵ�Ǯ�أ��ҵİ����أ��ҵ��ֵ��أ�>
		<RText|id=13|x=10.0|y=295.0|size=18|color=254|text=��ƭ��ʾ����������Ҳ���������ȡ����Ҫ��������ϵ��ʽ��>
		<RText|id=14|x=10.0|y=320.0|size=18|color=254|text=��Ҫ��λ��һ��۽��磬����һ��>
		<RText|id=15|x=10.0|y=350.0|size=18|color=255|text=<ƭ����. /FCOLOR=253>�ֵܣ���Ⱥһ���BOSS����ƭ�Ӹ���һ���Ϥ����>
		<RText|id=16|x=10.0|y=375.0|size=18|color=255|text=Ҫ����ʺź󣬵�������Ϸ����װ����ϴ�װ��ˣ���ʱ���>
		<RText|id=17|x=10.0|y=395.0|size=18|color=255|text=���ֱ�ƭ��..>
		<RText|id=18|x=10.0|y=420.0|size=18|color=254|text=��ƭ��ʾ������ǲ�Ҫ����������ϷȺ��ͬʱҲ��Ҫ������>
		<RText|id=19|x=10.0|y=445.0|size=18|color=254|text=�Ÿ��κ���>
		<RText|id=20|x=10.0|y=475.0|size=18|color=255|text=<ƭ����. /FCOLOR=253>�ֵ����������ֵ�������ٷ����ۣ�һ�����Ҳ�����>
		<RText|id=21|x=10.0|y=500.0|size=18|color=255|text=����������ô���㣬�ǳ�ֵ1000�������ֵ�󣬷���Ԫ��û��>
		<RText|id=22|x=10.0|y=525.0|size=18|color=255|text=�ʣ���ʱ�ŷ��ֱ�ƭ�ˣ����Ѿ�����..>
		<RText|id=23|x=10.0|y=550.0|size=18|color=254|text=��ƭ��ʾ���ٷ���Ա����ͨ���κ������յ���ҳ�ֵ�������>
		<RText|id=24|x=10.0|y=575.0|size=18|color=254|text=����̰С����>
		<RText|id=25|x=10.0|y=605.0|size=18|color=255|text=<ƭ����. /FCOLOR=253>�����Ϸ�����棬����������̼��ģ��������ֲ�����>
		<RText|id=26|x=10.0|y=630.0|size=18|color=255|text=������һ����Ȼ��ƭ�Ӹ��㷢����ַ������Ϊ���ȥ�Ϳ����棬>
		<RText|id=27|x=10.0|y=655.0|size=18|color=255|text=��һ����յ�����XXX��������β��XXX�����п�ʣ����0Ԫ...>
		<RText|id=28|x=10.0|y=680.0|size=18|color=254|text=��ƭ��ʾ��������ǲ�Ҫ���״�İ����ͨ��΢�ţ�QQ����̳��>
		<RText|id=29|x=10.0|y=705.0|size=18|color=254|text=���ɵ�ƽ̨������İ����ַ����Ҫ��ƭ�ӿɳ�֮��>
		
		]]
	end
	
	say(actor,msg)
end
