(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var299 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3748 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3748 null-String)))
(declare-const var1309 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1309 null-Bool)))
(assert true)
(define-const var2740 Bool (startsWith/-1785782452 var3748 "/")) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var2740 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if z1 == 0 goto return r6 
(assert (= (ite var1309 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3748=r6, var299=null_type, var1309=z1, var2740=$z0}
; {r6=var3748, null_type=var299, z1=var1309, $z0=var2740}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r6 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	$z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 != 0 goto (branch);	if z1 == 0 goto return r6;	return r6
;block_num 3