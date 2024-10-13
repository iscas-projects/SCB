(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3301 0)
(declare-sort var586 0)
(declare-sort var421 0)
(declare-sort var2136 0)
(declare-sort var18 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var421-to-var586 (var421) var586)
(declare-fun var2136_safeToString/1863739852 (var586) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3301 var3301)
(declare-const var2136-UNDEFINED var421)
(declare-const null-var18 var18)
(declare-const var750 var3301) ; Statement: r0 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var750 null-var3301)))
(define-const var1563 var586 (cast-from-var421-to-var586 var2136-UNDEFINED)) ; Statement: r14 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2120 var18) ; Statement: $r13 := @caughtexception 
(assert (not (= var2120 null-var18)))
(assert true) ; Non Conditional
(define-const var2214 var421 var2136-UNDEFINED) ; Statement: $r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r14 != $r1 goto r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14) 
(assert (not (not (= var1563 (cast-from-var421-to-var586 var2214))))) ; Negate: Cond: r14 != $r1  
(define-const var3031 String "Error") ; Statement: r15 = "Error" 
 ; Statement: goto [?= r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>] 
(assert true) ; Non Conditional
(define-const var2051 var586 (cast-from-var421-to-var586 var2136-UNDEFINED)) ; Statement: r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1690 var18) ; Statement: $r12 := @caughtexception 
(assert (not (= var1690 null-var18)))
(assert true) ; Non Conditional
(define-const var734 var421 var2136-UNDEFINED) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r16 != $r2 goto r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16) 
(assert (not (= var2051 (cast-from-var421-to-var586 var734)))) ; Cond: r16 != $r2 
(define-const var2483 String (var2136_safeToString/1863739852 var2051)) ; Statement: r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16) 
(assert true) ; Non Conditional
(define-const var2322 String (cast-from-String-to-String var3031)) ; Statement: $r3 = (java.lang.String) r15 
(assert true)
(define-const var2546 Bool (isEmpty/-1285796103 var2322)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = (java.lang.String) r17 
(assert (not (= (ite var2546 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var969 String (cast-from-String-to-String var2483)) ; Statement: $r11 = (java.lang.String) r17 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var421-to-var586=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var2136_safeToString/1863739852=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3301=jdk.nashorn.internal.runtime.ScriptObject, var750=r0, var586=java.lang.Object, var421=jdk.nashorn.internal.runtime.Undefined, var2136=jdk.nashorn.internal.runtime.ScriptRuntime, var1563=r14, var18=java.lang.Exception, var2120=$r13, var2214=$r1, var3031=r15, var2051=r16, var1690=$r12, var734=$r2, var2483=r17, var2322=$r3, var2546=$z0, var969=$r11}
; {jdk.nashorn.internal.runtime.ScriptObject=var3301, r0=var750, java.lang.Object=var586, jdk.nashorn.internal.runtime.Undefined=var421, jdk.nashorn.internal.runtime.ScriptRuntime=var2136, r14=var1563, java.lang.Exception=var18, $r13=var2120, $r1=var2214, r15=var3031, r16=var2051, $r12=var1690, $r2=var734, r17=var2483, $r3=var2322, $z0=var2546, $r11=var969}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject;	r14 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r13 := @caughtexception;	$r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r14 != $r1 goto r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14);	r15 = "Error";	goto [?= r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>];	r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r12 := @caughtexception;	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r16 != $r2 goto r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16);	r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16);	$r3 = (java.lang.String) r15;	$z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = (java.lang.String) r17;	$r11 = (java.lang.String) r17;	return $r11
;block_num 10