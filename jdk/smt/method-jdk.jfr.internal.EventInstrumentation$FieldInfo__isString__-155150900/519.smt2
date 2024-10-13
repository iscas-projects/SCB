(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2949 0)
(declare-sort var1384 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescriptor/42994021 (var1384) String)
(declare-fun fieldDescriptor/-174201932 (var2949) String)
(declare-const null-var2949 var2949)
(declare-const var2949-STRING var1384)
(declare-const var2433 var2949) ; Statement: r1 := @this: jdk.jfr.internal.EventInstrumentation$FieldInfo 
(assert (not (= var2433 null-var2949)))
(define-const var2982 var1384 var2949-STRING) ; Statement: $r0 = <jdk.jfr.internal.EventInstrumentation$FieldInfo: jdk.internal.org.objectweb.asm.Type STRING> 
(assert true)
(define-const var858 String (getDescriptor/42994021 var2982)) ; Statement: $r3 = virtualinvoke $r0.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>() 
(define-const var2283 String (fieldDescriptor/-174201932 var2433)) ; Statement: $r2 = r1.<jdk.jfr.internal.EventInstrumentation$FieldInfo: java.lang.String fieldDescriptor> 
(assert true)
(define-const var3423 Bool (= var858 var2283)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescriptor/42994021=([jdk.internal.org.objectweb.asm.Type], java.lang.String), fieldDescriptor/-174201932=([jdk.jfr.internal.EventInstrumentation$FieldInfo], java.lang.String)}
; {var2949=jdk.jfr.internal.EventInstrumentation$FieldInfo, var2433=r1, var1384=jdk.internal.org.objectweb.asm.Type, var2982=$r0, var858=$r3, var2283=$r2, var3423=$z0}
; {jdk.jfr.internal.EventInstrumentation$FieldInfo=var2949, r1=var2433, jdk.internal.org.objectweb.asm.Type=var1384, $r0=var2982, $r3=var858, $r2=var2283, $z0=var3423}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.jfr.internal.EventInstrumentation$FieldInfo;	$r0 = <jdk.jfr.internal.EventInstrumentation$FieldInfo: jdk.internal.org.objectweb.asm.Type STRING>;	$r3 = virtualinvoke $r0.<jdk.internal.org.objectweb.asm.Type: java.lang.String getDescriptor()>();	$r2 = r1.<jdk.jfr.internal.EventInstrumentation$FieldInfo: java.lang.String fieldDescriptor>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z0
;block_num 1