(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/808295603 (var285) String)
(declare-const null-var285 var285)
(declare-const var3665 var285) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo 
(assert (not (= var3665 null-var285)))
(declare-const var3226 var285) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo 
(assert (not (= var3226 null-var285)))
(assert true)
(define-const var3959 String (getName/808295603 var3665)) ; Statement: $r3 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo: java.lang.String getName()>() 
(assert true)
(define-const var1608 String (getName/808295603 var3226)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo: java.lang.String getName()>() 
(assert true)
(define-const var347 Bool (= var3959 var1608)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var347 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1076 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/808295603=([jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo], java.lang.String)}
; {var285=jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo, var3665=r0, var3226=r1, var3959=$r3, var1608=$r2, var347=$z0, var1076=$z2}
; {jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo=var285, r0=var3665, r1=var3226, $r3=var3959, $r2=var1608, $z0=var347, $z2=var1076}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo;	r1 := @parameter0: jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo;	$r3 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo: java.lang.String getName()>();	$r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo: java.lang.String getName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3