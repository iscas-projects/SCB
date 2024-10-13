(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2481 0)
(declare-sort var3435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3435!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var2481) Bool)
(declare-const null-var2481 var2481)
(declare-const var1032 var2481) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1032 null-var2481)))
(define-const var3382 ClassObject var3435!class) ; Statement: $r1 = class "Ljavax/validation/ValidatorFactory;" 
(assert true)
(define-const var1994 Bool (isInstance/451912363 var3382 var1032)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1994 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean)}
; {var2481=java.lang.Object, var1032=r0, var3435=javax.validation.ValidatorFactory, var3382=$r1, var1994=$z0}
; {java.lang.Object=var2481, r0=var1032, javax.validation.ValidatorFactory=var3435, $r1=var3382, $z0=var1994}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	$r1 = class "Ljavax/validation/ValidatorFactory;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 != 0 goto return;	return
;block_num 2