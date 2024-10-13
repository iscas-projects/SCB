(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3303 0)
(declare-sort var2209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/808295603 (var3303) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun type/-450029510 (var3303) var2209)
(declare-fun hashCode/1551968842 (var2209) Int)
(declare-const null-var3303 var3303)
(declare-const var3210 var3303) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo 
(assert (not (= var3210 null-var3303)))
(assert true)
(define-const var1937 String (getName/808295603 var3210)) ; Statement: $r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo: java.lang.String getName()>() 
(assert true)
(define-const var1220 Int (hashCode/-467973558 var1937)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var241 var2209 (type/-450029510 var3210)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo: java.lang.invoke.MethodType type> 
(assert true)
(define-const var3319 Int (hashCode/1551968842 var241)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.invoke.MethodType: int hashCode()>() 
(define-const var2364 Int (bv2nat (bvxor ((_ int2bv 64) var1220) ((_ int2bv 64) var3319)))) ; Statement: $i2 = $i1 ^ $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/808295603=([jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int), type/-450029510=([jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo], java.lang.invoke.MethodType), hashCode/1551968842=([java.lang.invoke.MethodType], int)}
; {var3303=jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo, var3210=r0, var1937=$r1, var1220=$i1, var2209=java.lang.invoke.MethodType, var241=$r2, var3319=$i0, var2364=$i2}
; {jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo=var3303, r0=var3210, $r1=var1937, $i1=var1220, java.lang.invoke.MethodType=var2209, $r2=var241, $i0=var3319, $i2=var2364}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo;	$r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo: java.lang.String getName()>();	$i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator$MethodInfo: java.lang.invoke.MethodType type>;	$i0 = virtualinvoke $r2.<java.lang.invoke.MethodType: int hashCode()>();	$i2 = $i1 ^ $i0;	return $i2
;block_num 1