(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var531 0)
(declare-sort var431 0)
(declare-sort var2294 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var531-1 ((Array Int var531)) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var431-to-var531 (var431) var531)
(declare-fun var2294_newObj/1261237573 (String) var431)
(declare-const null-Bool Bool)
(declare-const null-var531 var531)
(declare-const null-__Array__Int__var531__ (Array Int var531))
(declare-const var3789 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3789 null-Bool)))
(declare-const var411 var531) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var411 null-var531)))
(declare-const var3030 (Array Int var531)) ; Statement: r0 := @parameter2: java.lang.Object[] 
(assert (not (= var3030 null-__Array__Int__var531__)))
(define-const var846 Int (getLength-Arr-var531-1 var3030)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 0 goto $r3 = "" 
(assert (<= var846 0)) ; Cond: $i0 <= 0 
(define-const var2258 String (cast-from-String-to-String "")) ; Statement: $r3 = "" 
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $r4 = interfaceinvoke $r3.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= (ite var3789 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var393 var531 (cast-from-var431-to-var531 (var2294_newObj/1261237573 var2258))) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.objects.NativeString: jdk.nashorn.internal.runtime.ScriptObject newObj(java.lang.CharSequence)>($r3) 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var531-1=([java.lang.Object[]], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var431-to-var531=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object), var2294_newObj/1261237573=([java.lang.CharSequence], jdk.nashorn.internal.runtime.ScriptObject)}
; {var3789=z0, var531=java.lang.Object, var411=r2, var3030=r0, var846=$i0, var2258=$r3, var431=jdk.nashorn.internal.runtime.ScriptObject, var2294=jdk.nashorn.internal.objects.NativeString, var393=$r4}
; {z0=var3789, java.lang.Object=var531, r2=var411, r0=var3030, $i0=var846, $r3=var2258, jdk.nashorn.internal.runtime.ScriptObject=var431, jdk.nashorn.internal.objects.NativeString=var2294, $r4=var393}
;seq 
;cnt {}
;stmts z0 := @parameter0: boolean;	r2 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Object[];	$i0 = lengthof r0;	if $i0 <= 0 goto $r3 = "";	$r3 = "";	if z0 == 0 goto $r4 = interfaceinvoke $r3.<java.lang.CharSequence: java.lang.String toString()>();	$r4 = staticinvoke <jdk.nashorn.internal.objects.NativeString: jdk.nashorn.internal.runtime.ScriptObject newObj(java.lang.CharSequence)>($r3);	goto [?= return $r4];	return $r4
;block_num 5