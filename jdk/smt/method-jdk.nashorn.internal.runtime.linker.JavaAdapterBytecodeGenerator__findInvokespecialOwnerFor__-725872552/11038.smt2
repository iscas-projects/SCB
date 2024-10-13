(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superClass/1749044889 (var2687) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-var2687 var2687)
(declare-const null-ClassObject ClassObject)
(declare-const var2687-$assertionsDisabled Bool)
(declare-const var2028 var2687) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator 
(assert (not (= var2028 null-var2687)))
(declare-const var512 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var512 null-ClassObject)))
(define-const var892 Bool var2687-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.lang.Class superClass> 
(assert (not (= (ite var892 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2733 ClassObject (superClass/1749044889 var2028)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.lang.Class superClass> 
(assert true)
(define-const var309 Bool (isAssignableFrom/-1028998700 var512 var2733)) ; Statement: $z1 = virtualinvoke r0.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r2) 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.util.List interfaces> 
(assert (not (= (ite var309 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3230 ClassObject (superClass/1749044889 var2028)) ; Statement: $r12 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.lang.Class superClass> 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {superClass/1749044889=([jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var2687=jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator, var2028=r1, var512=r0, var892=$z0, var2733=$r2, var309=$z1, var3230=$r12}
; {jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator=var2687, r1=var2028, r0=var512, $z0=var892, $r2=var2733, $z1=var309, $r12=var3230}
;seq 
;cnt {}
;stmts r1 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator;	r0 := @parameter0: java.lang.Class;	$z0 = <jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.lang.Class superClass>;	$r2 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.lang.Class superClass>;	$z1 = virtualinvoke r0.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r2);	if $z1 == 0 goto $r3 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.util.List interfaces>;	$r12 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.lang.Class superClass>;	return $r12
;block_num 3