(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1491_isEmpty/1540305040 (String) Bool)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1557 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1557 null-String)))
(declare-const var2026 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2026 null-String)))
(declare-const var1394 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var1394 null-Bool)))
(define-const var2615 Bool (var1491_isEmpty/1540305040 var1557)) ; Statement: $z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var2615 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if null != r0 goto $r5 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= null-String var1557))) ; Cond: null != r0 
(define-const var790 String (String_toString/-1426662429 var1557)) ; Statement: $r5 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1491_isEmpty/1540305040=([java.lang.CharSequence], boolean), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var1557=r0, var2026=r1, var1394=z2, var1491=cn.hutool.core.text.CharSequenceUtil, var2615=$z0, var790=$r5}
; {r0=var1557, r1=var2026, z2=var1394, cn.hutool.core.text.CharSequenceUtil=var1491, $z0=var2615, $r5=var790}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	z2 := @parameter2: boolean;	$z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto (branch);	if null != r0 goto $r5 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r5 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r5
;block_num 4