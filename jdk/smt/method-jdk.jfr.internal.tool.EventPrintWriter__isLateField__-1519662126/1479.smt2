(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3012 0)
(declare-sort var996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3012 var3012)
(declare-const null-String String)
(declare-const var1721 var3012) ; Statement: r1 := @this: jdk.jfr.internal.tool.EventPrintWriter 
(assert (not (= var1721 null-var3012)))
(declare-const var3787 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3787 null-String)))
(assert true)
(define-const var3952 Bool (= var3787 "eventThread")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("eventThread") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var3952 1 0) 0))) ; Cond: $z0 != 0 
(define-const var551 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3012=jdk.jfr.internal.tool.EventPrintWriter, var1721=r1, var3787=r0, var996=null_type, var3952=$z0, var551=$z2}
; {jdk.jfr.internal.tool.EventPrintWriter=var3012, r1=var1721, r0=var3787, null_type=var996, $z0=var3952, $z2=var551}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.jfr.internal.tool.EventPrintWriter;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("eventThread");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3