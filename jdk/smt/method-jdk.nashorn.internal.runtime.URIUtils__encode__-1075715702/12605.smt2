(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2675 0)
(declare-sort var2762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2675 var2675)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3315 var2675) ; Statement: r11 := @parameter0: java.lang.Object 
(assert (not (= var3315 null-var2675)))
(declare-const var2082 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2082 null-String)))
(declare-const var3184 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3184 null-Bool)))
(assert true)
(define-const var760 Bool (isEmpty/-1285796103 var2082)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= (ite var760 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2675=java.lang.Object, var3315=r11, var2082=r0, var2762=null_type, var3184=z1, var760=$z0}
; {java.lang.Object=var2675, r11=var3315, r0=var2082, null_type=var2762, z1=var3184, $z0=var760}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r11 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	return r0
;block_num 2