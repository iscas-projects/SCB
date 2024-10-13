(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3304 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3304_isEmpty/1540305040 (String) Bool)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var1892 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1892 null-String)))
(define-const var595 Bool (var3304_isEmpty/1540305040 var1892)) ; Statement: $z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (= (ite var595 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3771 String (String_toString/-1426662429 var1892)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3304_isEmpty/1540305040=([java.lang.CharSequence], boolean), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var1892=r0, var3304=cn.hutool.core.text.CharSequenceUtil, var595=$z0, var3771=$r1}
; {r0=var1892, cn.hutool.core.text.CharSequenceUtil=var3304, $z0=var595, $r1=var3771}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r1
;block_num 3