(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2033 0)
(declare-sort var3081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2033 var2033)
(declare-const null-String String)
(declare-const var418 var2033) ; Statement: r3 := @this: jdk.jfr.consumer.RecordedObject 
(assert (not (= var418 null-var2033)))
(declare-const var3715 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3715 null-String)))
(define-const var1854 String "com.oracle.jfr.types.StackFrame") ; Statement: $r1 = "com.oracle.jfr.types.StackFrame" 
(assert true)
(define-const var1558 Bool (= var1854 var3715)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "jdk.types.StackFrame" 
(assert (not (= (ite var1558 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2033=jdk.jfr.consumer.RecordedObject, var418=r3, var3715=r0, var3081=null_type, var1854=$r1, var1558=$z0}
; {jdk.jfr.consumer.RecordedObject=var2033, r3=var418, r0=var3715, null_type=var3081, $r1=var1854, $z0=var1558}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: jdk.jfr.consumer.RecordedObject;	r0 := @parameter0: java.lang.String;	$r1 = "com.oracle.jfr.types.StackFrame";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "jdk.types.StackFrame";	return 1
;block_num 2