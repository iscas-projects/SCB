(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1020053180 (ClassObject) String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const var1800 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1800 null-ClassObject)))
(declare-const var3852 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3852 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String toString()>() 
(assert (= (ite var3852 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2972 String (toString/-1020053180 var1800)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1020053180=([java.lang.Class], java.lang.String)}
; {var1800=r0, var3852=z0, var2972=$r1}
; {r0=var1800, z0=var3852, $r1=var2972}
;seq <java.lang.Class: java.lang.String toString()>
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	z0 := @parameter1: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String toString()>();	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String toString()>();	return $r1
;block_num 2