(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-312303092 (var377) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var377 var377)
(declare-const var1815 var377) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData 
(assert (not (= var1815 null-var377)))
(define-const var212 String (name/-312303092 var1815)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert true)
(define-const var1347 Bool (isEmpty/-1285796103 var212)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert (not (= (ite var1347 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var546 String "<anonymous>") ; Statement: $r2 = "<anonymous>" 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-312303092=([jdk.nashorn.internal.runtime.ScriptFunctionData], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var377=jdk.nashorn.internal.runtime.ScriptFunctionData, var1815=r0, var212=$r1, var1347=$z0, var546=$r2}
; {jdk.nashorn.internal.runtime.ScriptFunctionData=var377, r0=var1815, $r1=var212, $z0=var1347, $r2=var546}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData;	$r1 = r0.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$r2 = "<anonymous>";	goto [?= return $r2];	return $r2
;block_num 3