(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3801 0)
(declare-sort var1886 0)
(declare-sort var1089 0)
(declare-sort var470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3801!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var3801_createAstSerializerExecutorService/547455955 () var1886)
(declare-fun var470_lookup/-2058945393 () var1089)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-const var2701 ClassObject var3801!class) ; Statement: $r0 = class "Ljdk/nashorn/internal/runtime/RecompilableScriptFunctionData;" 
(assert true)
(define-const var1953 Bool (desiredAssertionStatus/-1561484483 var2701)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1953 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2042 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: boolean $assertionsDisabled> = $z1] 
(assert true) ; Non Conditional
(define-const var3636 Bool var2042) ; Statement: <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: boolean $assertionsDisabled> = $z1 
(define-const var3596 var1886 var3801_createAstSerializerExecutorService/547455955) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService createAstSerializerExecutorService()>() 
(define-const var1230 var1886 var3596) ; Statement: <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService astSerializerExecutorService> = $r1 
(define-const var2325 var1089 var470_lookup/-2058945393) ; Statement: $r2 = staticinvoke <java.lang.invoke.MethodHandles: java.lang.invoke.MethodHandles$Lookup lookup()>() 
(define-const var2569 var1089 var2325) ; Statement: <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.lang.invoke.MethodHandles$Lookup LOOKUP> = $r2 
(define-const var2899 String "*et ") ; Statement: $r3 = "*et " 
(assert true)
(define-const var2296 Int (length/-134980193 var2899)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var2989 Int var2296) ; Statement: <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int GET_SET_PREFIX_LENGTH> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var3801_createAstSerializerExecutorService/547455955=([], java.util.concurrent.ExecutorService), var470_lookup/-2058945393=([], java.lang.invoke.MethodHandles$Lookup), length/-134980193=([java.lang.String], int)}
; {var3801=jdk.nashorn.internal.runtime.RecompilableScriptFunctionData, var2701=$r0, var1953=$z0, var2042=$z1, var3636=<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: boolean $assertionsDisabled>, var1886=java.util.concurrent.ExecutorService, var3596=$r1, var1230=<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService astSerializerExecutorService>, var1089=java.lang.invoke.MethodHandles$Lookup, var470=java.lang.invoke.MethodHandles, var2325=$r2, var2569=<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.lang.invoke.MethodHandles$Lookup LOOKUP>, var2899=$r3, var2296=$i0, var2989=<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int GET_SET_PREFIX_LENGTH>}
; {jdk.nashorn.internal.runtime.RecompilableScriptFunctionData=var3801, $r0=var2701, $z0=var1953, $z1=var2042, <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: boolean $assertionsDisabled>=var3636, java.util.concurrent.ExecutorService=var1886, $r1=var3596, <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService astSerializerExecutorService>=var1230, java.lang.invoke.MethodHandles$Lookup=var1089, java.lang.invoke.MethodHandles=var470, $r2=var2325, <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.lang.invoke.MethodHandles$Lookup LOOKUP>=var2569, $r3=var2899, $i0=var2296, <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int GET_SET_PREFIX_LENGTH>=var2989}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = class "Ljdk/nashorn/internal/runtime/RecompilableScriptFunctionData;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: boolean $assertionsDisabled> = $z1];	<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: boolean $assertionsDisabled> = $z1;	$r1 = staticinvoke <jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService createAstSerializerExecutorService()>();	<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.util.concurrent.ExecutorService astSerializerExecutorService> = $r1;	$r2 = staticinvoke <java.lang.invoke.MethodHandles: java.lang.invoke.MethodHandles$Lookup lookup()>();	<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: java.lang.invoke.MethodHandles$Lookup LOOKUP> = $r2;	$r3 = "*et ";	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int GET_SET_PREFIX_LENGTH> = $i0;	return
;block_num 3