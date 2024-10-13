(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var885 0)
(declare-sort var1270 0)
(declare-sort var3134 0)
(declare-sort var1095 0)
(declare-sort var1313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3134-to-var1270 (var3134) var1270)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var885 var885)
(declare-const var1095-UNDEFINED var3134)
(declare-const null-var1313 var1313)
(declare-const var2566 var885) ; Statement: r0 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var2566 null-var885)))
(define-const var3742 var1270 (cast-from-var3134-to-var1270 var1095-UNDEFINED)) ; Statement: r14 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2646 var1313) ; Statement: $r13 := @caughtexception 
(assert (not (= var2646 null-var1313)))
(assert true) ; Non Conditional
(define-const var3794 var3134 var1095-UNDEFINED) ; Statement: $r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r14 != $r1 goto r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14) 
(assert (not (not (= var3742 (cast-from-var3134-to-var1270 var3794))))) ; Negate: Cond: r14 != $r1  
(define-const var1481 String "Error") ; Statement: r15 = "Error" 
 ; Statement: goto [?= r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>] 
(assert true) ; Non Conditional
(define-const var2236 var1270 (cast-from-var3134-to-var1270 var1095-UNDEFINED)) ; Statement: r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var58 var1313) ; Statement: $r12 := @caughtexception 
(assert (not (= var58 null-var1313)))
(assert true) ; Non Conditional
(define-const var3913 var3134 var1095-UNDEFINED) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r16 != $r2 goto r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16) 
(assert (not (not (= var2236 (cast-from-var3134-to-var1270 var3913))))) ; Negate: Cond: r16 != $r2  
(define-const var1490 String "") ; Statement: r17 = "" 
 ; Statement: goto [?= $r3 = (java.lang.String) r15] 
(assert true) ; Non Conditional
(define-const var95 String (cast-from-String-to-String var1481)) ; Statement: $r3 = (java.lang.String) r15 
(assert true)
(define-const var1268 Bool (isEmpty/-1285796103 var95)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = (java.lang.String) r17 
(assert (not (= (ite var1268 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3239 String (cast-from-String-to-String var1490)) ; Statement: $r11 = (java.lang.String) r17 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3134-to-var1270=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), cast-from-String-to-String=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var885=jdk.nashorn.internal.runtime.ScriptObject, var2566=r0, var1270=java.lang.Object, var3134=jdk.nashorn.internal.runtime.Undefined, var1095=jdk.nashorn.internal.runtime.ScriptRuntime, var3742=r14, var1313=java.lang.Exception, var2646=$r13, var3794=$r1, var1481=r15, var2236=r16, var58=$r12, var3913=$r2, var1490=r17, var95=$r3, var1268=$z0, var3239=$r11}
; {jdk.nashorn.internal.runtime.ScriptObject=var885, r0=var2566, java.lang.Object=var1270, jdk.nashorn.internal.runtime.Undefined=var3134, jdk.nashorn.internal.runtime.ScriptRuntime=var1095, r14=var3742, java.lang.Exception=var1313, $r13=var2646, $r1=var3794, r15=var1481, r16=var2236, $r12=var58, $r2=var3913, r17=var1490, $r3=var95, $z0=var1268, $r11=var3239}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject;	r14 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r13 := @caughtexception;	$r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r14 != $r1 goto r15 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r14);	r15 = "Error";	goto [?= r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>];	r16 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r12 := @caughtexception;	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r16 != $r2 goto r17 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r16);	r17 = "";	goto [?= $r3 = (java.lang.String) r15];	$r3 = (java.lang.String) r15;	$z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = (java.lang.String) r17;	$r11 = (java.lang.String) r17;	return $r11
;block_num 10