(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2877 0)
(declare-sort var2163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2877 var2877)
(declare-const null-var2163 var2163)
(declare-const var2780 var2877) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage 
(assert (not (= var2780 null-var2877)))
(declare-const var252 var2163) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var252 null-var2163)))
(define-const var18 Bool false) ; Statement: $z0 = r0 instanceof jdk.nashorn.internal.runtime.NativeJavaPackage 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var18 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2877=jdk.nashorn.internal.runtime.NativeJavaPackage, var2780=r1, var2163=java.lang.Object, var252=r0, var18=$z0}
; {jdk.nashorn.internal.runtime.NativeJavaPackage=var2877, r1=var2780, java.lang.Object=var2163, r0=var252, $z0=var18}
;seq 
;cnt {}
;stmts r1 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof jdk.nashorn.internal.runtime.NativeJavaPackage;	if $z0 == 0 goto return 0;	return 0
;block_num 2