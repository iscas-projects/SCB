(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2299 0)
(declare-sort var3624 0)
(declare-sort var2533 0)
(declare-sort var336 0)
(declare-sort var3058 0)
(declare-sort var3595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2299_systemDefault/1019915793 () var2299)
(declare-fun getId/167050217 (var2299) String)
(declare-fun getRules/-1735660424 (var2299) var2533)
(declare-fun var2299_of/-1073278971 (String) var2299)
(declare-fun var336_of/-1847471261 (Int Int Int) var336)
(declare-fun var3058_currentTimeMillis/630293680 () Int)
(declare-fun var3595_floorDiv/-977748924 (Int Int) Int)
(declare-fun var3624_getShanghaiZoneOffsetTotalSeconds/-15560409 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const var3624-DEFAULT_ZONE_ID var2299)
(declare-const var3624-SHANGHAI_ZONE_ID var2299)
(define-const var520 var2299 var2299_systemDefault/1019915793) ; Statement: $r0 = staticinvoke <java.time.ZoneId: java.time.ZoneId systemDefault()>() 
(define-const var2730 var2299 var520) ; Statement: <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID> = $r0 
(define-const var1822 String "Asia/Shanghai") ; Statement: $r3 = "Asia/Shanghai" 
(define-const var1913 var2299 var3624-DEFAULT_ZONE_ID) ; Statement: $r1 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID> 
(assert true)
(define-const var3676 String (getId/167050217 var1913)) ; Statement: $r2 = virtualinvoke $r1.<java.time.ZoneId: java.lang.String getId()>() 
(assert true)
(define-const var3482 Bool (= var1822 var3676)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r14 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("Asia/Shanghai") 
(assert (not (= (ite var3482 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3956 var2299 var3624-DEFAULT_ZONE_ID) ; Statement: $r14 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID> 
 ; Statement: goto [?= <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> = $r14] 
(assert true) ; Non Conditional
(define-const var2473 var2299 var3956) ; Statement: <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> = $r14 
(define-const var2591 var2299 var3624-SHANGHAI_ZONE_ID) ; Statement: $r4 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> 
(assert true)
(define-const var1267 var2533 (getRules/-1735660424 var2591)) ; Statement: $r5 = virtualinvoke $r4.<java.time.ZoneId: java.time.zone.ZoneRules getRules()>() 
(define-const var734 var2533 var1267) ; Statement: <com.alibaba.fastjson2.util.DateUtils: java.time.zone.ZoneRules SHANGHAI_ZONE_RULES> = $r5 
(define-const var1917 var2299 (var2299_of/-1073278971 "+08:00")) ; Statement: $r6 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("+08:00") 
(define-const var1632 var2299 var1917) ; Statement: <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId OFFSET_8_ZONE_ID> = $r6 
(define-const var417 var336 (var336_of/-1847471261 1970 1 1)) ; Statement: $r7 = staticinvoke <java.time.LocalDate: java.time.LocalDate of(int,int,int)>(1970, 1, 1) 
(define-const var186 var336 var417) ; Statement: <com.alibaba.fastjson2.util.DateUtils: java.time.LocalDate LOCAL_DATE_19700101> = $r7 
(define-const var1137 Int var3058_currentTimeMillis/630293680) ; Statement: $l4 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var2847 var2299 var3624-DEFAULT_ZONE_ID) ; Statement: $r13 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID> 
(define-const var3642 Int (var3595_floorDiv/-977748924 var1137 1000)) ; Statement: $l5 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l4, 1000L) 
(define-const var1061 var2299 var3624-SHANGHAI_ZONE_ID) ; Statement: $r8 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> 
 ; Statement: if $r13 == $r8 goto i6 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>($l5) 
(assert (= var2847 var1061)) ; Cond: $r13 == $r8 
(define-const var457 Int (var3624_getShanghaiZoneOffsetTotalSeconds/-15560409 var3642)) ; Statement: i6 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>($l5) 
 ; Statement: goto [?= $l0 = (long) i6] 
(assert true) ; Non Conditional
(define-const var2545 Int (cast-from-Int-to-Int var457)) ; Statement: $l0 = (long) i6 
(define-const var3981 Int (+ var3642 var2545)) ; Statement: $l3 = $l5 + $l0 
(define-const var3182 Int (var3595_floorDiv/-977748924 var3981 86400)) ; Statement: $l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l3, 86400L) 
(define-const var2274 Int (cast-from-Int-to-Int var3182)) ; Statement: $i2 = (int) $l1 
(define-const var2427 Int var2274) ; Statement: <com.alibaba.fastjson2.util.DateUtils: int LOCAL_EPOCH_DAY> = $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2299_systemDefault/1019915793=([], java.time.ZoneId), getId/167050217=([java.time.ZoneId], java.lang.String), getRules/-1735660424=([java.time.ZoneId], java.time.zone.ZoneRules), var2299_of/-1073278971=([java.lang.String], java.time.ZoneId), var336_of/-1847471261=([int, int, int], java.time.LocalDate), var3058_currentTimeMillis/630293680=([], long), var3595_floorDiv/-977748924=([long, long], long), var3624_getShanghaiZoneOffsetTotalSeconds/-15560409=([long], int), cast-from-Int-to-Int=([int], long)}
; {var2299=java.time.ZoneId, var520=$r0, var2730=<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID>, var1822=$r3, var3624=com.alibaba.fastjson2.util.DateUtils, var1913=$r1, var3676=$r2, var3482=$z0, var3956=$r14, var2473=<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>, var2591=$r4, var2533=java.time.zone.ZoneRules, var1267=$r5, var734=<com.alibaba.fastjson2.util.DateUtils: java.time.zone.ZoneRules SHANGHAI_ZONE_RULES>, var1917=$r6, var1632=<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId OFFSET_8_ZONE_ID>, var336=java.time.LocalDate, var417=$r7, var186=<com.alibaba.fastjson2.util.DateUtils: java.time.LocalDate LOCAL_DATE_19700101>, var3058=java.lang.System, var1137=$l4, var2847=$r13, var3595=java.lang.Math, var3642=$l5, var1061=$r8, var457=i6, var2545=$l0, var3981=$l3, var3182=$l1, var2274=$i2, var2427=<com.alibaba.fastjson2.util.DateUtils: int LOCAL_EPOCH_DAY>}
; {java.time.ZoneId=var2299, $r0=var520, <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID>=var2730, $r3=var1822, com.alibaba.fastjson2.util.DateUtils=var3624, $r1=var1913, $r2=var3676, $z0=var3482, $r14=var3956, <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>=var2473, $r4=var2591, java.time.zone.ZoneRules=var2533, $r5=var1267, <com.alibaba.fastjson2.util.DateUtils: java.time.zone.ZoneRules SHANGHAI_ZONE_RULES>=var734, $r6=var1917, <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId OFFSET_8_ZONE_ID>=var1632, java.time.LocalDate=var336, $r7=var417, <com.alibaba.fastjson2.util.DateUtils: java.time.LocalDate LOCAL_DATE_19700101>=var186, java.lang.System=var3058, $l4=var1137, $r13=var2847, java.lang.Math=var3595, $l5=var3642, $r8=var1061, i6=var457, $l0=var2545, $l3=var3981, $l1=var3182, $i2=var2274, <com.alibaba.fastjson2.util.DateUtils: int LOCAL_EPOCH_DAY>=var2427}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = staticinvoke <java.time.ZoneId: java.time.ZoneId systemDefault()>();	<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID> = $r0;	$r3 = "Asia/Shanghai";	$r1 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID>;	$r2 = virtualinvoke $r1.<java.time.ZoneId: java.lang.String getId()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r14 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("Asia/Shanghai");	$r14 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID>;	goto [?= <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> = $r14];	<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> = $r14;	$r4 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>;	$r5 = virtualinvoke $r4.<java.time.ZoneId: java.time.zone.ZoneRules getRules()>();	<com.alibaba.fastjson2.util.DateUtils: java.time.zone.ZoneRules SHANGHAI_ZONE_RULES> = $r5;	$r6 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("+08:00");	<com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId OFFSET_8_ZONE_ID> = $r6;	$r7 = staticinvoke <java.time.LocalDate: java.time.LocalDate of(int,int,int)>(1970, 1, 1);	<com.alibaba.fastjson2.util.DateUtils: java.time.LocalDate LOCAL_DATE_19700101> = $r7;	$l4 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r13 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID>;	$l5 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l4, 1000L);	$r8 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>;	if $r13 == $r8 goto i6 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>($l5);	i6 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>($l5);	goto [?= $l0 = (long) i6];	$l0 = (long) i6;	$l3 = $l5 + $l0;	$l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l3, 86400L);	$i2 = (int) $l1;	<com.alibaba.fastjson2.util.DateUtils: int LOCAL_EPOCH_DAY> = $i2;	return
;block_num 5