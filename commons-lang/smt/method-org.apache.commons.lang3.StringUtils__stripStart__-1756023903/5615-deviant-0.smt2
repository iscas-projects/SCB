(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1646 0)
(declare-sort var3559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3559_length/1752045268 (String) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var765 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var765 null-String)))
(declare-const var2022 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2022 null-String)))
(define-const var2622 Int (var3559_length/1752045268 (cast-from-String-to-String var765))) ; Statement: i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0) 
 ; Statement: if i0 != 0 goto i4 = 0 
(assert (not (= var2622 0))) ; Cond: i0 != 0 
(define-const var2945 Int 0) ; Statement: i4 = 0 
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
(assert (not (not (= var2022 null-String)))) ; Negate: Cond: r1 != null  
 ; Statement: if i4 == i0 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i4) 
(assert (= var2945 var2622)) ; Cond: i4 == i0 
(assert (not (and true (and (>= var2945 0) (>= (str.len var765) var2945)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3559_length/1752045268=([java.lang.CharSequence], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var765=r0, var1646=null_type, var2022=r1, var3559=org.apache.commons.lang3.StringUtils, var2622=i0, var2945=i4, var2615=$r2}
; {r0=var765, null_type=var1646, r1=var2022, org.apache.commons.lang3.StringUtils=var3559, i0=var2622, i4=var2945, $r2=var2615}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0);	if i0 != 0 goto i4 = 0;	i4 = 0;	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if i4 == i0 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i4);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i4);	return $r2
;block_num 4