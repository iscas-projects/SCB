(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2516 0)
(declare-sort var1202 0)
(declare-sort var3620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun message/33220049 (var2516) String)
(declare-fun var1202_toString/-749122252 (var3620 String) String)
(declare-fun cast-from-String-to-var3620 (String) var3620)
(declare-fun formatTime/309879225 (var2516) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2516 var2516)
(declare-const var926 var2516) ; Statement: r0 := @this: org.apache.commons.lang3.time.StopWatch 
(assert (not (= var926 null-var2516)))
(define-const var3715 String (message/33220049 var926)) ; Statement: $r1 = r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String message> 
(define-const var639 String (var1202_toString/-749122252 (cast-from-String-to-var3620 var3715) "")) ; Statement: r2 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r1, "") 
(assert true)
(define-const var3650 String (formatTime/309879225 var926)) ; Statement: r3 = virtualinvoke r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String formatTime()>() 
(assert true)
(define-const var3730 Bool (isEmpty/-1285796103 var639)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.StringBuilder 
(assert (not (= (ite var3730 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2430 String var3650) ; Statement: $r8 = r3 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {message/33220049=([org.apache.commons.lang3.time.StopWatch], java.lang.String), var1202_toString/-749122252=([java.lang.Object, java.lang.String], java.lang.String), cast-from-String-to-var3620=([java.lang.String], java.lang.Object), formatTime/309879225=([org.apache.commons.lang3.time.StopWatch], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2516=org.apache.commons.lang3.time.StopWatch, var926=r0, var3715=$r1, var1202=java.util.Objects, var3620=java.lang.Object, var639=r2, var3650=r3, var3730=$z0, var2430=$r8}
; {org.apache.commons.lang3.time.StopWatch=var2516, r0=var926, $r1=var3715, java.util.Objects=var1202, java.lang.Object=var3620, r2=var639, r3=var3650, $z0=var3730, $r8=var2430}
;seq <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.StopWatch;	$r1 = r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String message>;	r2 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r1, "");	r3 = virtualinvoke r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String formatTime()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = new java.lang.StringBuilder;	$r8 = r3;	goto [?= return $r8];	return $r8
;block_num 3