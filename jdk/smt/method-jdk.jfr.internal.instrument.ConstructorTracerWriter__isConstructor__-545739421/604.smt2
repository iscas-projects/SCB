(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2656 0)
(declare-sort var1680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2656 var2656)
(declare-const null-String String)
(declare-const var782 var2656) ; Statement: r1 := @this: jdk.jfr.internal.instrument.ConstructorTracerWriter 
(assert (not (= var782 null-var2656)))
(declare-const var3855 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3855 null-String)))
(assert true)
(define-const var2744 Bool (= var3855 "<init>")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("<init>") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2656=jdk.jfr.internal.instrument.ConstructorTracerWriter, var782=r1, var3855=r0, var1680=null_type, var2744=$z0}
; {jdk.jfr.internal.instrument.ConstructorTracerWriter=var2656, r1=var782, r0=var3855, null_type=var1680, $z0=var2744}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.jfr.internal.instrument.ConstructorTracerWriter;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("<init>");	return $z0
;block_num 1