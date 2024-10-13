(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1044 0)
(declare-sort var270 0)
(declare-sort var738 0)
(declare-sort var2814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun computeMaxParameterSetSizeAndBatchSize/1713586805 (var1044 Int) (Array Int Int))
(declare-fun maxAllowedPacket/-459319496 (var738) var270)
(declare-fun cast-from-var1044-to-var738 (var1044) var738)
(declare-fun var270_getValue/1633538672 (var270) var2814)
(declare-fun cast-from-var2814-to-Int (var2814) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun originalSql/508865650 (var1044) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1044 var1044)
(declare-const null-Int Int)
(declare-const var1358 var1044) ; Statement: r0 := @this: com.mysql.cj.ClientPreparedQuery 
(assert (not (= var1358 null-var1044)))
(declare-const var3000 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3000 null-Int)))
(assert true)
(define-const var1315 (Array Int Int) (computeMaxParameterSetSizeAndBatchSize/1713586805 var1358 var3000)) ; Statement: r1 = virtualinvoke r0.<com.mysql.cj.ClientPreparedQuery: long[] computeMaxParameterSetSizeAndBatchSize(int)>(i0) 
(define-const var3337 Int (select var1315 0)) ; Statement: l1 = r1[0] 
(define-const var461 Int (select var1315 1)) ; Statement: l2 = r1[1] 
(define-const var3594 var270 (maxAllowedPacket/-459319496 (cast-from-var1044-to-var738 var1358))) ; Statement: $r2 = r0.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.conf.RuntimeProperty maxAllowedPacket> 
(define-const var469 var2814 (var270_getValue/1633538672 var3594)) ; Statement: $r3 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var539 Int (cast-from-var2814-to-Int var469)) ; Statement: $r4 = (java.lang.Integer) $r3 
(assert true)
(define-const var9 Int (intValue/-1815674922 var539)) ; Statement: $i4 = virtualinvoke $r4.<java.lang.Integer: int intValue()>() 
(define-const var1287 String (originalSql/508865650 var1358)) ; Statement: $r5 = r0.<com.mysql.cj.ClientPreparedQuery: java.lang.String originalSql> 
(assert true)
(define-const var756 Int (length/-134980193 var1287)) ; Statement: $i3 = virtualinvoke $r5.<java.lang.String: int length()>() 
(define-const var3873 Int (- var9 var756)) ; Statement: $i5 = $i4 - $i3 
(define-const var3133 Int (cast-from-Int-to-Int var3873)) ; Statement: $l6 = (long) $i5 
(define-const var1992 Int (ite (> var461 var3133) 1 (ite (< var461 var3133) (- 1) 0))) ; Statement: $b7 = l2 cmp $l6 
(define-const var2635 Int (cast-from-Int-to-Int var1992)) ; Statement: $i15 = (int) $b7 
 ; Statement: if $i15 >= 0 goto $r6 = r0.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.conf.RuntimeProperty maxAllowedPacket> 
(assert (not (>= var2635 0))) ; Negate: Cond: $i15 >= 0  
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {computeMaxParameterSetSizeAndBatchSize/1713586805=([com.mysql.cj.ClientPreparedQuery, int], long[]), maxAllowedPacket/-459319496=([com.mysql.cj.AbstractQuery], com.mysql.cj.conf.RuntimeProperty), cast-from-var1044-to-var738=([com.mysql.cj.ClientPreparedQuery], com.mysql.cj.AbstractQuery), var270_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2814-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), originalSql/508865650=([com.mysql.cj.ClientPreparedQuery], java.lang.String), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long)}
; {var1044=com.mysql.cj.ClientPreparedQuery, var1358=r0, var3000=i0, var1315=r1, var3337=l1, var461=l2, var270=com.mysql.cj.conf.RuntimeProperty, var738=com.mysql.cj.AbstractQuery, var3594=$r2, var2814=java.lang.Object, var469=$r3, var539=$r4, var9=$i4, var1287=$r5, var756=$i3, var3873=$i5, var3133=$l6, var1992=$b7, var2635=$i15}
; {com.mysql.cj.ClientPreparedQuery=var1044, r0=var1358, i0=var3000, r1=var1315, l1=var3337, l2=var461, com.mysql.cj.conf.RuntimeProperty=var270, com.mysql.cj.AbstractQuery=var738, $r2=var3594, java.lang.Object=var2814, $r3=var469, $r4=var539, $i4=var9, $r5=var1287, $i3=var756, $i5=var3873, $l6=var3133, $b7=var1992, $i15=var2635}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.mysql.cj.ClientPreparedQuery;	i0 := @parameter0: int;	r1 = virtualinvoke r0.<com.mysql.cj.ClientPreparedQuery: long[] computeMaxParameterSetSizeAndBatchSize(int)>(i0);	l1 = r1[0];	l2 = r1[1];	$r2 = r0.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.conf.RuntimeProperty maxAllowedPacket>;	$r3 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r4 = (java.lang.Integer) $r3;	$i4 = virtualinvoke $r4.<java.lang.Integer: int intValue()>();	$r5 = r0.<com.mysql.cj.ClientPreparedQuery: java.lang.String originalSql>;	$i3 = virtualinvoke $r5.<java.lang.String: int length()>();	$i5 = $i4 - $i3;	$l6 = (long) $i5;	$b7 = l2 cmp $l6;	$i15 = (int) $b7;	if $i15 >= 0 goto $r6 = r0.<com.mysql.cj.ClientPreparedQuery: com.mysql.cj.conf.RuntimeProperty maxAllowedPacket>;	return i0
;block_num 2