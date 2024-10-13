(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2436 0)
(declare-sort var1045 0)
(declare-sort var2068 0)
(declare-sort var1549 0)
(declare-sort var3625 0)
(declare-sort var2118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2436_systemDefault/1019915793 () var2436)
(declare-fun getId/167050217 (var2436) String)
(declare-fun var2436_of/-1073278971 (String) var2436)
(declare-fun getRules/-1735660424 (var2436) var2068)
(declare-fun var1549_of/-1847471261 (Int Int Int) var1549)
(declare-fun var3625_currentTimeMillis/630293680 () Int)
(declare-fun var2118_floorDiv/-977748924 (Int Int) Int)
(declare-fun var1045_getShanghaiZoneOffsetTotalSeconds/-15560409 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const var1045-DEFAULT_ZONE_ID var2436)
(declare-const var1045-SHANGHAI_ZONE_ID var2436)
(define-const var590 var2436 var2436_systemDefault/1019915793) ; Statement: $r0 = staticinvoke <java.time.ZoneId: java.time.ZoneId systemDefault()>() 
(define-const var3867 var2436 var590) ; Statement: <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID> = $r0 
(define-const var599 String "Asia/Shanghai") ; Statement: $r3 = "Asia/Shanghai" 
(define-const var1166 var2436 var1045-DEFAULT_ZONE_ID) ; Statement: $r1 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID> 
(assert true)
(define-const var2276 String (getId/167050217 var1166)) ; Statement: $r2 = virtualinvoke $r1.<java.time.ZoneId: java.lang.String getId()>() 
(assert true)
(define-const var2739 Bool (= var599 var2276)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r14 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("Asia/Shanghai") 
(assert (= (ite var2739 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3351 var2436 (var2436_of/-1073278971 "Asia/Shanghai")) ; Statement: $r14 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("Asia/Shanghai") 
(assert true) ; Non Conditional
(define-const var2433 var2436 var3351) ; Statement: <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> = $r14 
(define-const var3614 var2436 var1045-SHANGHAI_ZONE_ID) ; Statement: $r4 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> 
(assert true)
(define-const var2867 var2068 (getRules/-1735660424 var3614)) ; Statement: $r5 = virtualinvoke $r4.<java.time.ZoneId: java.time.zone.ZoneRules getRules()>() 
(define-const var3641 var2068 var2867) ; Statement: <com.alibaba.fastjson2.util.DateUtils: java.time.zone.ZoneRules SHANGHAI_ZONE_RULES> = $r5 
(define-const var2852 var2436 (var2436_of/-1073278971 "+08:00")) ; Statement: $r6 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("+08:00") 
(define-const var1504 var2436 var2852) ; Statement: <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId OFFSET_8_ZONE_ID> = $r6 
(define-const var685 var1549 (var1549_of/-1847471261 1970 1 1)) ; Statement: $r7 = staticinvoke <java.time.LocalDate: java.time.LocalDate of(int,int,int)>(1970, 1, 1) 
(define-const var2342 var1549 var685) ; Statement: <com.alibaba.fastjson2.util.DateUtils: java.time.LocalDate LOCAL_DATE_19700101> = $r7 
(define-const var3894 Int var3625_currentTimeMillis/630293680) ; Statement: $l4 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var2245 var2436 var1045-DEFAULT_ZONE_ID) ; Statement: $r13 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID> 
(define-const var3496 Int (var2118_floorDiv/-977748924 var3894 1000)) ; Statement: $l5 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l4, 1000L) 
(define-const var2949 var2436 var1045-SHANGHAI_ZONE_ID) ; Statement: $r8 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> 
 ; Statement: if $r13 == $r8 goto i6 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>($l5) 
(assert (= var2245 var2949)) ; Cond: $r13 == $r8 
(define-const var1585 Int (var1045_getShanghaiZoneOffsetTotalSeconds/-15560409 var3496)) ; Statement: i6 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>($l5) 
 ; Statement: goto [?= $l0 = (long) i6] 
(assert true) ; Non Conditional
(define-const var2490 Int (cast-from-Int-to-Int var1585)) ; Statement: $l0 = (long) i6 
(define-const var1815 Int (+ var3496 var2490)) ; Statement: $l3 = $l5 + $l0 
(define-const var2668 Int (var2118_floorDiv/-977748924 var1815 86400)) ; Statement: $l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l3, 86400L) 
(define-const var796 Int (cast-from-Int-to-Int var2668)) ; Statement: $i2 = (int) $l1 
(define-const var1749 Int var796) ; Statement: <com.alibaba.fastjson2.util.DateUtils: int LOCAL_EPOCH_DAY> = $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2436_systemDefault/1019915793=([], java.time.ZoneId), getId/167050217=([java.time.ZoneId], java.lang.String), var2436_of/-1073278971=([java.lang.String], java.time.ZoneId), getRules/-1735660424=([java.time.ZoneId], java.time.zone.ZoneRules), var1549_of/-1847471261=([int, int, int], java.time.LocalDate), var3625_currentTimeMillis/630293680=([], long), var2118_floorDiv/-977748924=([long, long], long), var1045_getShanghaiZoneOffsetTotalSeconds/-15560409=([long], int), cast-from-Int-to-Int=([int], long)}
; {var2436=java.time.ZoneId, var590=$r0, var3867=<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID>, var599=$r3, var1045=com.alibaba.fastjson2.util.DateUtils, var1166=$r1, var2276=$r2, var2739=$z0, var3351=$r14, var2433=<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>, var3614=$r4, var2068=java.time.zone.ZoneRules, var2867=$r5, var3641=<com.alibaba.fastjson2.util.DateUtils: java.time.zone.ZoneRules SHANGHAI_ZONE_RULES>, var2852=$r6, var1504=<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId OFFSET_8_ZONE_ID>, var1549=java.time.LocalDate, var685=$r7, var2342=<com.alibaba.fastjson2.util.DateUtils: java.time.LocalDate LOCAL_DATE_19700101>, var3625=java.lang.System, var3894=$l4, var2245=$r13, var2118=java.lang.Math, var3496=$l5, var2949=$r8, var1585=i6, var2490=$l0, var1815=$l3, var2668=$l1, var796=$i2, var1749=<com.alibaba.fastjson2.util.DateUtils: int LOCAL_EPOCH_DAY>}
; {java.time.ZoneId=var2436, $r0=var590, <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID>=var3867, $r3=var599, com.alibaba.fastjson2.util.DateUtils=var1045, $r1=var1166, $r2=var2276, $z0=var2739, $r14=var3351, <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>=var2433, $r4=var3614, java.time.zone.ZoneRules=var2068, $r5=var2867, <com.alibaba.fastjson2.util.DateUtils: java.time.zone.ZoneRules SHANGHAI_ZONE_RULES>=var3641, $r6=var2852, <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId OFFSET_8_ZONE_ID>=var1504, java.time.LocalDate=var1549, $r7=var685, <com.alibaba.fastjson2.util.DateUtils: java.time.LocalDate LOCAL_DATE_19700101>=var2342, java.lang.System=var3625, $l4=var3894, $r13=var2245, java.lang.Math=var2118, $l5=var3496, $r8=var2949, i6=var1585, $l0=var2490, $l3=var1815, $l1=var2668, $i2=var796, <com.alibaba.fastjson2.util.DateUtils: int LOCAL_EPOCH_DAY>=var1749}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = staticinvoke <java.time.ZoneId: java.time.ZoneId systemDefault()>();	<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID> = $r0;	$r3 = "Asia/Shanghai";	$r1 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID>;	$r2 = virtualinvoke $r1.<java.time.ZoneId: java.lang.String getId()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r14 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("Asia/Shanghai");	$r14 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("Asia/Shanghai");	<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> = $r14;	$r4 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>;	$r5 = virtualinvoke $r4.<java.time.ZoneId: java.time.zone.ZoneRules getRules()>();	<com.alibaba.fastjson2.util.DateUtils: java.time.zone.ZoneRules SHANGHAI_ZONE_RULES> = $r5;	$r6 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("+08:00");	<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId OFFSET_8_ZONE_ID> = $r6;	$r7 = staticinvoke <java.time.LocalDate: java.time.LocalDate of(int,int,int)>(1970, 1, 1);	<com.alibaba.fastjson2.util.DateUtils: java.time.LocalDate LOCAL_DATE_19700101> = $r7;	$l4 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r13 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID>;	$l5 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l4, 1000L);	$r8 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>;	if $r13 == $r8 goto i6 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>($l5);	i6 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>($l5);	goto [?= $l0 = (long) i6];	$l0 = (long) i6;	$l3 = $l5 + $l0;	$l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l3, 86400L);	$i2 = (int) $l1;	<com.alibaba.fastjson2.util.DateUtils: int LOCAL_EPOCH_DAY> = $i2;	return
;block_num 5