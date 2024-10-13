(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3464 0)
(declare-sort var338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fieldName/-174201932 (var3464) String)
(declare-const null-var3464 var3464)
(declare-const var338-PUT_EVENT_THREAD var338)
(declare-const var3628 var3464) ; Statement: r0 := @parameter0: jdk.jfr.internal.EventInstrumentation$FieldInfo 
(assert (not (= var3628 null-var3464)))
(define-const var3960 String (fieldName/-174201932 var3628)) ; Statement: $r1 = r0.<jdk.jfr.internal.EventInstrumentation$FieldInfo: java.lang.String fieldName> 
(assert true)
(define-const var3404 Bool (= var3960 "eventThread")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("eventThread") 
 ; Statement: if $z0 == 0 goto r2 = staticinvoke <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod[] values()>() 
(assert (not (= (ite var3404 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1314 var338 var338-PUT_EVENT_THREAD) ; Statement: $r12 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_EVENT_THREAD> 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {fieldName/-174201932=([jdk.jfr.internal.EventInstrumentation$FieldInfo], java.lang.String)}
; {var3464=jdk.jfr.internal.EventInstrumentation$FieldInfo, var3628=r0, var3960=$r1, var3404=$z0, var338=jdk.jfr.internal.EventWriterMethod, var1314=$r12}
; {jdk.jfr.internal.EventInstrumentation$FieldInfo=var3464, r0=var3628, $r1=var3960, $z0=var3404, jdk.jfr.internal.EventWriterMethod=var338, $r12=var1314}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: jdk.jfr.internal.EventInstrumentation$FieldInfo;	$r1 = r0.<jdk.jfr.internal.EventInstrumentation$FieldInfo: java.lang.String fieldName>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("eventThread");	if $z0 == 0 goto r2 = staticinvoke <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod[] values()>();	$r12 = <jdk.jfr.internal.EventWriterMethod: jdk.jfr.internal.EventWriterMethod PUT_EVENT_THREAD>;	return $r12
;block_num 2