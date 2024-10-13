(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3803 0)
(declare-sort var1693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3803 var3803)
(declare-const null-String String)
(declare-const var78 var3803) ; Statement: r5 := @this: jdk.internal.org.objectweb.asm.commons.Remapper 
(assert (not (= var78 null-var3803)))
(declare-const var2021 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2021 null-String)))
(define-const var2397 String "()V") ; Statement: $r1 = "()V" 
(assert true)
(define-const var3083 Bool (= var2397 var2021)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto r2 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type[] getArgumentTypes(java.lang.String)>(r0) 
(assert (not (= (ite var3083 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3803=jdk.internal.org.objectweb.asm.commons.Remapper, var78=r5, var2021=r0, var1693=null_type, var2397=$r1, var3083=$z0}
; {jdk.internal.org.objectweb.asm.commons.Remapper=var3803, r5=var78, r0=var2021, null_type=var1693, $r1=var2397, $z0=var3083}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: jdk.internal.org.objectweb.asm.commons.Remapper;	r0 := @parameter0: java.lang.String;	$r1 = "()V";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto r2 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type[] getArgumentTypes(java.lang.String)>(r0);	return r0
;block_num 2