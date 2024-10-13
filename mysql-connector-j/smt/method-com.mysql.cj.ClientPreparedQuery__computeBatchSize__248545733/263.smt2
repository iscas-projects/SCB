(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var574 0)
(declare-sort var1336 0)
(declare-sort var1490 0)
(declare-sort var911 0)
(declare-sort var647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun computeMaxParameterSetSizeAndBatchSize/1713586805 (var574 Int) (Array Int Int))
(declare-fun maxAllowedPacket/-459319496 (var1490) var1336)
(declare-fun cast-from-var574-to-var1490 (var574) var1490)
(declare-fun var1336_getValue/1633538672 (var1336) var911)
(declare-fun cast-from-var911-to-Int (var911) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun originalSql/508865650 (var574) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var647_max/64066103 (Int Int) Int)
(declare-const null-var574 var574)
(declare-const null-Int Int)
(declare-const var3009 var574) ; Statement: r0 := @this: com.mysql.cj.ClientPreparedQuery 
(assert (not (= var3009 null-var574)))
(declare-const var3459 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3459 null-Int)))
(assert true)
(define-const var1800 (Array Int Int) (computeMaxParameterSetSizeAndBatchSize/1713586805 var3009 var3459)) ; Statement: r1 = virtualinvoke r0.<com.mysql.cj.ClientPreparedQuery: long[] computeMaxParameterSetSizeAndBatchSize(int)>(i0) 
(define-const var870 Int (select var1800 0)) ; Statement: l1 = r1[0] 
(define-const var2947 Int (select var1800 1)) ; Statement: l2 = r1[1] 
(define-const var1098 var1336 (maxAllowedPacket/-459319496 (cast-from-var574-to-var1490 var3009))) ; Statement: $r2 = r0.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.conf.RuntimeProperty maxAllowedPacket> 
(define-const var3839 var911 (var1336_getValue/1633538672 var1098)) ; Statement: $r3 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2754 Int (cast-from-var911-to-Int var3839)) ; Statement: $r4 = (java.lang.Integer) $r3 
(assert true)
(define-const var801 Int (intValue/-1815674922 var2754)) ; Statement: $i4 = virtualinvoke $r4.<java.lang.Integer: int intValue()>() 
(define-const var1110 String (originalSql/508865650 var3009)) ; Statement: $r5 = r0.<com.mysql.cj.ClientPreparedQuery: java.lang.String originalSql> 
(assert true)
(define-const var1123 Int (length/-134980193 var1110)) ; Statement: $i3 = virtualinvoke $r5.<java.lang.String: int length()>() 
(define-const var1263 Int (- var801 var1123)) ; Statement: $i5 = $i4 - $i3 
(define-const var3138 Int (cast-from-Int-to-Int var1263)) ; Statement: $l6 = (long) $i5 
(define-const var455 Int (ite (> var2947 var3138) 1 (ite (< var2947 var3138) (- 1) 0))) ; Statement: $b7 = l2 cmp $l6 
(define-const var1890 Int (cast-from-Int-to-Int var455)) ; Statement: $i15 = (int) $b7 
 ; Statement: if $i15 >= 0 goto $r6 = r0.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.conf.RuntimeProperty maxAllowedPacket> 
(assert (>= var1890 0)) ; Cond: $i15 >= 0 
(define-const var1242 var1336 (maxAllowedPacket/-459319496 (cast-from-var574-to-var1490 var3009))) ; Statement: $r6 = r0.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.conf.RuntimeProperty maxAllowedPacket> 
(define-const var982 var911 (var1336_getValue/1633538672 var1242)) ; Statement: $r7 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2114 Int (cast-from-var911-to-Int var982)) ; Statement: $r8 = (java.lang.Integer) $r7 
(assert true)
(define-const var3026 Int (intValue/-1815674922 var2114)) ; Statement: $i9 = virtualinvoke $r8.<java.lang.Integer: int intValue()>() 
(define-const var61 String (originalSql/508865650 var3009)) ; Statement: $r9 = r0.<com.mysql.cj.ClientPreparedQuery: java.lang.String originalSql> 
(assert true)
(define-const var2221 Int (length/-134980193 var61)) ; Statement: $i8 = virtualinvoke $r9.<java.lang.String: int length()>() 
(define-const var3606 Int (- var3026 var2221)) ; Statement: $i10 = $i9 - $i8 
(define-const var3153 Int (cast-from-Int-to-Int var3606)) ; Statement: $l11 = (long) $i10 
(define-const var2773 Int (div var3153 var870)) ; Statement: $l12 = $l11 / l1 
(define-const var2557 Int (var647_max/64066103 1 var2773)) ; Statement: $l13 = staticinvoke <java.lang.Math: long max(long,long)>(1L, $l12) 
(define-const var3664 Int (cast-from-Int-to-Int var2557)) ; Statement: $i14 = (int) $l13 
 ; Statement: return $i14 
(check-sat)
(get-model)
(get-unsat-core)
; {computeMaxParameterSetSizeAndBatchSize/1713586805=([com.mysql.cj.ClientPreparedQuery, int], long[]), maxAllowedPacket/-459319496=([com.mysql.cj.AbstractQuery], com.mysql.cj.conf.RuntimeProperty), cast-from-var574-to-var1490=([com.mysql.cj.ClientPreparedQuery], com.mysql.cj.AbstractQuery), var1336_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var911-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), originalSql/508865650=([com.mysql.cj.ClientPreparedQuery], java.lang.String), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long), var647_max/64066103=([long, long], long)}
; {var574=com.mysql.cj.ClientPreparedQuery, var3009=r0, var3459=i0, var1800=r1, var870=l1, var2947=l2, var1336=com.mysql.cj.conf.RuntimeProperty, var1490=com.mysql.cj.AbstractQuery, var1098=$r2, var911=java.lang.Object, var3839=$r3, var2754=$r4, var801=$i4, var1110=$r5, var1123=$i3, var1263=$i5, var3138=$l6, var455=$b7, var1890=$i15, var1242=$r6, var982=$r7, var2114=$r8, var3026=$i9, var61=$r9, var2221=$i8, var3606=$i10, var3153=$l11, var2773=$l12, var647=java.lang.Math, var2557=$l13, var3664=$i14}
; {com.mysql.cj.ClientPreparedQuery=var574, r0=var3009, i0=var3459, r1=var1800, l1=var870, l2=var2947, com.mysql.cj.conf.RuntimeProperty=var1336, com.mysql.cj.AbstractQuery=var1490, $r2=var1098, java.lang.Object=var911, $r3=var3839, $r4=var2754, $i4=var801, $r5=var1110, $i3=var1123, $i5=var1263, $l6=var3138, $b7=var455, $i15=var1890, $r6=var1242, $r7=var982, $r8=var2114, $i9=var3026, $r9=var61, $i8=var2221, $i10=var3606, $l11=var3153, $l12=var2773, java.lang.Math=var647, $l13=var2557, $i14=var3664}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: com.mysql.cj.ClientPreparedQuery;	i0 := @parameter0: int;	r1 = virtualinvoke r0.<com.mysql.cj.ClientPreparedQuery: long[] computeMaxParameterSetSizeAndBatchSize(int)>(i0);	l1 = r1[0];	l2 = r1[1];	$r2 = r0.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.conf.RuntimeProperty maxAllowedPacket>;	$r3 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r4 = (java.lang.Integer) $r3;	$i4 = virtualinvoke $r4.<java.lang.Integer: int intValue()>();	$r5 = r0.<com.mysql.cj.ClientPreparedQuery: java.lang.String originalSql>;	$i3 = virtualinvoke $r5.<java.lang.String: int length()>();	$i5 = $i4 - $i3;	$l6 = (long) $i5;	$b7 = l2 cmp $l6;	$i15 = (int) $b7;	if $i15 >= 0 goto $r6 = r0.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.conf.RuntimeProperty maxAllowedPacket>;	$r6 = r0.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.conf.RuntimeProperty maxAllowedPacket>;	$r7 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r8 = (java.lang.Integer) $r7;	$i9 = virtualinvoke $r8.<java.lang.Integer: int intValue()>();	$r9 = r0.<com.mysql.cj.ClientPreparedQuery: java.lang.String originalSql>;	$i8 = virtualinvoke $r9.<java.lang.String: int length()>();	$i10 = $i9 - $i8;	$l11 = (long) $i10;	$l12 = $l11 / l1;	$l13 = staticinvoke <java.lang.Math: long max(long,long)>(1L, $l12);	$i14 = (int) $l13;	return $i14
;block_num 2