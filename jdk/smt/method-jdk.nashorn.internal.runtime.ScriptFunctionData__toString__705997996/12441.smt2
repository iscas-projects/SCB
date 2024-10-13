(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-312303092 (var3982) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3982 var3982)
(declare-const var3942 var3982) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData 
(assert (not (= var3942 null-var3982)))
(define-const var837 String (name/-312303092 var3942)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert true)
(define-const var518 Bool (isEmpty/-1285796103 var837)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert (= (ite var518 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1839 String (name/-312303092 var3942)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-312303092=([jdk.nashorn.internal.runtime.ScriptFunctionData], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3982=jdk.nashorn.internal.runtime.ScriptFunctionData, var3942=r0, var837=$r1, var518=$z0, var1839=$r2}
; {jdk.nashorn.internal.runtime.ScriptFunctionData=var3982, r0=var3942, $r1=var837, $z0=var518, $r2=var1839}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData;	$r1 = r0.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$r2 = r0.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	return $r2
;block_num 3