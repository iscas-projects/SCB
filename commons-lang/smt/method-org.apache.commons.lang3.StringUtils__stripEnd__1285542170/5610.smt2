(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var486 0)
(declare-sort var3534 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3534_length/1752045268 (String) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var2740 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2740 null-String)))
(declare-const var1850 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1850 null-String)))
(define-const var674 Int (var3534_length/1752045268 (cast-from-String-to-String var2740))) ; Statement: i5 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0) 
 ; Statement: if i5 != 0 goto (branch) 
(assert (not (= var674 0))) ; Cond: i5 != 0 
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
(assert (not (= var1850 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var3776 Bool (isEmpty/-1285796103 var1850)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var3776 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3534_length/1752045268=([java.lang.CharSequence], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2740=r0, var486=null_type, var1850=r1, var3534=org.apache.commons.lang3.StringUtils, var674=i5, var3776=$z0}
; {r0=var2740, null_type=var486, r1=var1850, org.apache.commons.lang3.StringUtils=var3534, i5=var674, $z0=var3776}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i5 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0);	if i5 != 0 goto (branch);	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto (branch);	return r0
;block_num 4