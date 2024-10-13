(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1272 0)
(declare-sort var1732 0)
(declare-sort var1336 0)
(declare-sort var3710 0)
(declare-sort var2828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1336-to-var1732 (var1336) var1732)
(declare-fun var3710_safeToString/1863739852 (var1732) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1272 var1272)
(declare-const var3710-UNDEFINED var1336)
(declare-const null-var2828 var2828)
(declare-const var198 var1272) ; Statement: r0 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var198 null-var1272)))
(define-const var2715 var1732 (cast-from-var1336-to-var1732 var3710-UNDEFINED)) ; Statement: r14 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2547 var2828) ; Statement: $r13 := @caughtexception 
(assert (not (= var2547 null-var2828)))
(assert true) ; Non Conditional
(define-const var733 var1336 var3710-UNDEFINED) ; Statement: $r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r14 != $r1 goto r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14) 
(assert (not (= var2715 (cast-from-var1336-to-var1732 var733)))) ; Cond: r14 != $r1 
(define-const var1865 String (var3710_safeToString/1863739852 var2715)) ; Statement: r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14) 
(assert true) ; Non Conditional
(define-const var234 var1732 (cast-from-var1336-to-var1732 var3710-UNDEFINED)) ; Statement: r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3258 var2828) ; Statement: $r12 := @caughtexception 
(assert (not (= var3258 null-var2828)))
(assert true) ; Non Conditional
(define-const var289 var1336 var3710-UNDEFINED) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r16 != $r2 goto r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16) 
(assert (not (= var234 (cast-from-var1336-to-var1732 var289)))) ; Cond: r16 != $r2 
(define-const var3685 String (var3710_safeToString/1863739852 var234)) ; Statement: r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16) 
(assert true) ; Non Conditional
(define-const var363 String (cast-from-String-to-String var1865)) ; Statement: $r3 = (java.lang.String) r15 
(assert true)
(define-const var2353 Bool (isEmpty/-1285796103 var363)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = (java.lang.String) r17 
(assert (not (= (ite var2353 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1480 String (cast-from-String-to-String var3685)) ; Statement: $r11 = (java.lang.String) r17 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1336-to-var1732=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var3710_safeToString/1863739852=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1272=jdk.nashorn.internal.runtime.ScriptObject, var198=r0, var1732=java.lang.Object, var1336=jdk.nashorn.internal.runtime.Undefined, var3710=jdk.nashorn.internal.runtime.ScriptRuntime, var2715=r14, var2828=java.lang.Exception, var2547=$r13, var733=$r1, var1865=r15, var234=r16, var3258=$r12, var289=$r2, var3685=r17, var363=$r3, var2353=$z0, var1480=$r11}
; {jdk.nashorn.internal.runtime.ScriptObject=var1272, r0=var198, java.lang.Object=var1732, jdk.nashorn.internal.runtime.Undefined=var1336, jdk.nashorn.internal.runtime.ScriptRuntime=var3710, r14=var2715, java.lang.Exception=var2828, $r13=var2547, $r1=var733, r15=var1865, r16=var234, $r12=var3258, $r2=var289, r17=var3685, $r3=var363, $z0=var2353, $r11=var1480}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject;	r14 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r13 := @caughtexception;	$r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r14 != $r1 goto r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14);	r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14);	r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r12 := @caughtexception;	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r16 != $r2 goto r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16);	r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16);	$r3 = (java.lang.String) r15;	$z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = (java.lang.String) r17;	$r11 = (java.lang.String) r17;	return $r11
;block_num 10