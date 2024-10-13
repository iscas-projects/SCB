(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2264 0)
(declare-sort var2068 0)
(declare-sort var3179 0)
(declare-sort var3139 0)
(declare-sort var3460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3179-to-var2068 (var3179) var2068)
(declare-fun var3139_safeToString/1863739852 (var2068) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2264 var2264)
(declare-const var3139-UNDEFINED var3179)
(declare-const null-var3460 var3460)
(declare-const var2010 var2264) ; Statement: r0 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var2010 null-var2264)))
(define-const var1660 var2068 (cast-from-var3179-to-var2068 var3139-UNDEFINED)) ; Statement: r14 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1550 var3460) ; Statement: $r13 := @caughtexception 
(assert (not (= var1550 null-var3460)))
(assert true) ; Non Conditional
(define-const var3484 var3179 var3139-UNDEFINED) ; Statement: $r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r14 != $r1 goto r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14) 
(assert (not (= var1660 (cast-from-var3179-to-var2068 var3484)))) ; Cond: r14 != $r1 
(define-const var1319 String (var3139_safeToString/1863739852 var1660)) ; Statement: r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14) 
(assert true) ; Non Conditional
(define-const var482 var2068 (cast-from-var3179-to-var2068 var3139-UNDEFINED)) ; Statement: r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3309 var3460) ; Statement: $r12 := @caughtexception 
(assert (not (= var3309 null-var3460)))
(assert true) ; Non Conditional
(define-const var2723 var3179 var3139-UNDEFINED) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r16 != $r2 goto r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16) 
(assert (not (not (= var482 (cast-from-var3179-to-var2068 var2723))))) ; Negate: Cond: r16 != $r2  
(define-const var339 String "") ; Statement: r17 = "" 
 ; Statement: goto [?= $r3 = (java.lang.String) r15] 
(assert true) ; Non Conditional
(define-const var1613 String (cast-from-String-to-String var1319)) ; Statement: $r3 = (java.lang.String) r15 
(assert true)
(define-const var1869 Bool (isEmpty/-1285796103 var1613)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = (java.lang.String) r17 
(assert (not (= (ite var1869 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1707 String (cast-from-String-to-String var339)) ; Statement: $r11 = (java.lang.String) r17 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3179-to-var2068=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var3139_safeToString/1863739852=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2264=jdk.nashorn.internal.runtime.ScriptObject, var2010=r0, var2068=java.lang.Object, var3179=jdk.nashorn.internal.runtime.Undefined, var3139=jdk.nashorn.internal.runtime.ScriptRuntime, var1660=r14, var3460=java.lang.Exception, var1550=$r13, var3484=$r1, var1319=r15, var482=r16, var3309=$r12, var2723=$r2, var339=r17, var1613=$r3, var1869=$z0, var1707=$r11}
; {jdk.nashorn.internal.runtime.ScriptObject=var2264, r0=var2010, java.lang.Object=var2068, jdk.nashorn.internal.runtime.Undefined=var3179, jdk.nashorn.internal.runtime.ScriptRuntime=var3139, r14=var1660, java.lang.Exception=var3460, $r13=var1550, $r1=var3484, r15=var1319, r16=var482, $r12=var3309, $r2=var2723, r17=var339, $r3=var1613, $z0=var1869, $r11=var1707}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject;	r14 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r13 := @caughtexception;	$r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r14 != $r1 goto r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14);	r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14);	r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r12 := @caughtexception;	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r16 != $r2 goto r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16);	r17 = "";	goto [?= $r3 = (java.lang.String) r15];	$r3 = (java.lang.String) r15;	$z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = (java.lang.String) r17;	$r11 = (java.lang.String) r17;	return $r11
;block_num 10