(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3632 0)
(declare-sort var2882 0)
(declare-sort var2379 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3632 var3632)
(declare-const null-var2882 var2882)
(declare-const null-String String)
(declare-const var1879 var3632) ; Statement: r4 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var1879 null-var3632)))
(declare-const var3124 var2882) ; Statement: r1 := @parameter0: jdk.jfr.consumer.RecordedEvent 
(assert (not (= var3124 null-var2882)))
(declare-const var1098 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1098 null-String)))
(assert true)
(define-const var2041 Bool (= var1098 "duration")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("duration") 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var2041 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2947 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3632=jdk.jfr.internal.tool.PrettyWriter, var1879=r4, var2882=jdk.jfr.consumer.RecordedEvent, var3124=r1, var1098=r0, var2379=null_type, var2041=$z0, var2947=$z2}
; {jdk.jfr.internal.tool.PrettyWriter=var3632, r4=var1879, jdk.jfr.consumer.RecordedEvent=var2882, r1=var3124, r0=var1098, null_type=var2379, $z0=var2041, $z2=var2947}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: jdk.jfr.internal.tool.PrettyWriter;	r1 := @parameter0: jdk.jfr.consumer.RecordedEvent;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("duration");	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3