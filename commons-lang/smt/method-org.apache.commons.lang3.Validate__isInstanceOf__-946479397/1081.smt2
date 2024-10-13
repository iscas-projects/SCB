(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isInstance/451912363 (ClassObject var2104) Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2104 var2104)
(declare-const var894 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var894 null-ClassObject)))
(declare-const var377 var2104) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var377 null-var2104)))
(assert true)
(define-const var2561 Bool (isInstance/451912363 var894 var377)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2561 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean)}
; {var894=r0, var2104=java.lang.Object, var377=r1, var2561=$z0}
; {r0=var894, java.lang.Object=var2104, r1=var377, $z0=var2561}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	if $z0 != 0 goto return;	return
;block_num 2