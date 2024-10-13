(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3947 0)
(declare-sort var2834 0)
(declare-sort var525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun message/33220049 (var3947) String)
(declare-fun var2834_toString/-749122252 (var525 String) String)
(declare-fun cast-from-String-to-var525 (String) var525)
(declare-fun formatSplitTime/-357006771 (var3947) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3947 var3947)
(declare-const var2502 var3947) ; Statement: r0 := @this: org.apache.commons.lang3.time.StopWatch 
(assert (not (= var2502 null-var3947)))
(define-const var1562 String (message/33220049 var2502)) ; Statement: $r1 = r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String message> 
(define-const var2877 String (var2834_toString/-749122252 (cast-from-String-to-var525 var1562) "")) ; Statement: r2 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r1, "") 
(assert true)
(define-const var1101 String (formatSplitTime/-357006771 var2502)) ; Statement: r3 = virtualinvoke r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String formatSplitTime()>() 
(assert true)
(define-const var1958 Bool (isEmpty/-1285796103 var2877)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.StringBuilder 
(assert (not (= (ite var1958 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3541 String var1101) ; Statement: $r8 = r3 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {message/33220049=([org.apache.commons.lang3.time.StopWatch], java.lang.String), var2834_toString/-749122252=([java.lang.Object, java.lang.String], java.lang.String), cast-from-String-to-var525=([java.lang.String], java.lang.Object), formatSplitTime/-357006771=([org.apache.commons.lang3.time.StopWatch], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3947=org.apache.commons.lang3.time.StopWatch, var2502=r0, var1562=$r1, var2834=java.util.Objects, var525=java.lang.Object, var2877=r2, var1101=r3, var1958=$z0, var3541=$r8}
; {org.apache.commons.lang3.time.StopWatch=var3947, r0=var2502, $r1=var1562, java.util.Objects=var2834, java.lang.Object=var525, r2=var2877, r3=var1101, $z0=var1958, $r8=var3541}
;seq <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.StopWatch;	$r1 = r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String message>;	r2 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r1, "");	r3 = virtualinvoke r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String formatSplitTime()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = new java.lang.StringBuilder;	$r8 = r3;	goto [?= return $r8];	return $r8
;block_num 3