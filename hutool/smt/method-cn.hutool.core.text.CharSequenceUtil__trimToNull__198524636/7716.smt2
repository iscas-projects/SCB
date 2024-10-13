(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1082 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1082_trim/104521694 (String) String)
(declare-const null-String String)
(declare-const var593 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var593 null-String)))
(define-const var424 String (var1082_trim/104521694 var593)) ; Statement: r1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String trim(java.lang.CharSequence)>(r0) 
(define-const var2941 String "") ; Statement: $r2 = "" 
(assert true)
(define-const var1089 Bool (= var2941 var424)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = r1 
(assert (= (ite var1089 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1159 String var424) ; Statement: $r3 = r1 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1082_trim/104521694=([java.lang.CharSequence], java.lang.String)}
; {var593=r0, var1082=cn.hutool.core.text.CharSequenceUtil, var424=r1, var2941=$r2, var1089=$z0, var1159=$r3}
; {r0=var593, cn.hutool.core.text.CharSequenceUtil=var1082, r1=var424, $r2=var2941, $z0=var1089, $r3=var1159}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String trim(java.lang.CharSequence)>(r0);	$r2 = "";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = r1;	$r3 = r1;	return $r3
;block_num 3