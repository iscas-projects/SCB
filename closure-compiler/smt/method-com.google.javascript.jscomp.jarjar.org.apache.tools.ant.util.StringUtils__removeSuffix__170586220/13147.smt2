(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2294 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var3615 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3615 null-String)))
(declare-const var2636 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2636 null-String)))
(assert true)
(define-const var2837 Bool (endsWith/985337093 var3615 var2636)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var2837 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3615=r0, var2294=null_type, var2636=r1, var2837=$z0}
; {r0=var3615, null_type=var2294, r1=var2636, $z0=var2837}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z0 == 0 goto return r0;	return r0
;block_num 2