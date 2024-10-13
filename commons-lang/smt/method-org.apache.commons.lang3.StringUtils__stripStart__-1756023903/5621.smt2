(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var377 0)
(declare-sort var1894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1894_length/1752045268 (String) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var3341 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3341 null-String)))
(declare-const var1095 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1095 null-String)))
(define-const var2658 Int (var1894_length/1752045268 (cast-from-String-to-String var3341))) ; Statement: i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0) 
 ; Statement: if i0 != 0 goto i4 = 0 
(assert (not (= var2658 0))) ; Cond: i0 != 0 
(define-const var1512 Int 0) ; Statement: i4 = 0 
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
(assert (not (= var1095 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var1028 Bool (isEmpty/-1285796103 var1095)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var1028 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1894_length/1752045268=([java.lang.CharSequence], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3341=r0, var377=null_type, var1095=r1, var1894=org.apache.commons.lang3.StringUtils, var2658=i0, var1512=i4, var1028=$z0}
; {r0=var3341, null_type=var377, r1=var1095, org.apache.commons.lang3.StringUtils=var1894, i0=var2658, i4=var1512, $z0=var1028}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0);	if i0 != 0 goto i4 = 0;	i4 = 0;	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto (branch);	return r0
;block_num 4