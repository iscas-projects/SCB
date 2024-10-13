(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1659 0)
(declare-sort var1516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1516_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var1066 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1066 null-String)))
(declare-const var2982 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2982 null-String)))
(define-const var1697 Bool (var1516_isEmpty/1595667738 (cast-from-String-to-String var1066))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var1697 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if r1 != null goto $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
(assert (not (= var2982 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var913 Bool (isEmpty/-1285796103 var2982)) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(assert (not (= (ite var913 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {var1516_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1066=r0, var1659=null_type, var2982=r1, var1516=org.apache.commons.lang3.StringUtils, var1697=$z0, var913=$z1}
; {r0=var1066, null_type=var1659, r1=var2982, org.apache.commons.lang3.StringUtils=var1516, $z0=var1697, $z1=var913}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	if r1 != null goto $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	$z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	return ""
;block_num 4