(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2158 0)
(declare-sort var3012 0)
(declare-sort var2826 0)
(declare-sort var311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2158!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var2158_createAstSerializerExecutorService/547455955 () var3012)
(declare-fun var311_lookup/-2058945393 () var2826)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-const var2127 ClassObject var2158!class) ; Statement: $r0 = class "Ljdk/nashorn/internal/runtime/RecompilableScriptFunctionData;" 
(assert true)
(define-const var977 Bool (desiredAssertionStatus/-1561484483 var2127)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var977 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2910 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var2524 Bool var2910) ; Statement: <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: boolean $assertionsDisabled> = $z1 
(define-const var3639 var3012 var2158_createAstSerializerExecutorService/547455955) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService createAstSerializerExecutorService()>() 
(define-const var1946 var3012 var3639) ; Statement: <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService astSerializerExecutorService> = $r1 
(define-const var3567 var2826 var311_lookup/-2058945393) ; Statement: $r2 = staticinvoke <java.lang.invoke.MethodHandles: java.lang.invoke.MethodHandles$Lookup lookup()>() 
(define-const var3145 var2826 var3567) ; Statement: <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.lang.invoke.MethodHandles$Lookup LOOKUP> = $r2 
(define-const var3369 String "*et ") ; Statement: $r3 = "*et " 
(assert true)
(define-const var1248 Int (length/-134980193 var3369)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var2862 Int var1248) ; Statement: <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int GET_SET_PREFIX_LENGTH> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var2158_createAstSerializerExecutorService/547455955=([], java.util.concurrent.ExecutorService), var311_lookup/-2058945393=([], java.lang.invoke.MethodHandles$Lookup), length/-134980193=([java.lang.String], int)}
; {var2158=jdk.nashorn.internal.runtime.RecompilableScriptFunctionData, var2127=$r0, var977=$z0, var2910=$z1, var2524=<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: boolean $assertionsDisabled>, var3012=java.util.concurrent.ExecutorService, var3639=$r1, var1946=<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService astSerializerExecutorService>, var2826=java.lang.invoke.MethodHandles$Lookup, var311=java.lang.invoke.MethodHandles, var3567=$r2, var3145=<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.lang.invoke.MethodHandles$Lookup LOOKUP>, var3369=$r3, var1248=$i0, var2862=<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int GET_SET_PREFIX_LENGTH>}
; {jdk.nashorn.internal.runtime.RecompilableScriptFunctionData=var2158, $r0=var2127, $z0=var977, $z1=var2910, <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: boolean $assertionsDisabled>=var2524, java.util.concurrent.ExecutorService=var3012, $r1=var3639, <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService astSerializerExecutorService>=var1946, java.lang.invoke.MethodHandles$Lookup=var2826, java.lang.invoke.MethodHandles=var311, $r2=var3567, <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.lang.invoke.MethodHandles$Lookup LOOKUP>=var3145, $r3=var3369, $i0=var1248, <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int GET_SET_PREFIX_LENGTH>=var2862}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = class "Ljdk/nashorn/internal/runtime/RecompilableScriptFunctionData;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: boolean $assertionsDisabled> = $z1;	$r1 = staticinvoke <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService createAstSerializerExecutorService()>();	<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService astSerializerExecutorService> = $r1;	$r2 = staticinvoke <java.lang.invoke.MethodHandles: java.lang.invoke.MethodHandles$Lookup lookup()>();	<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.lang.invoke.MethodHandles$Lookup LOOKUP> = $r2;	$r3 = "*et ";	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int GET_SET_PREFIX_LENGTH> = $i0;	return
;block_num 3