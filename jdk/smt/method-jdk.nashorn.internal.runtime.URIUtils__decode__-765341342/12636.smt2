(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1847 0)
(declare-sort var1557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1847 var1847)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2477 var1847) ; Statement: r13 := @parameter0: java.lang.Object 
(assert (not (= var2477 null-var1847)))
(declare-const var3239 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3239 null-String)))
(declare-const var2152 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2152 null-Bool)))
(assert true)
(define-const var1310 Bool (isEmpty/-1285796103 var3239)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= (ite var1310 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1847=java.lang.Object, var2477=r13, var3239=r0, var1557=null_type, var2152=z1, var1310=$z0}
; {java.lang.Object=var1847, r13=var2477, r0=var3239, null_type=var1557, z1=var2152, $z0=var1310}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r13 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	return r0
;block_num 2