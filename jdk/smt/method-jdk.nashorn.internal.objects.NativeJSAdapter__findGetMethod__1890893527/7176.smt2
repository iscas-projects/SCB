(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3806 0)
(declare-sort var1798 0)
(declare-sort var2512 0)
(declare-sort var386 0)
(declare-sort var1600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1798_getNameToken/-1004068127 (var1798 Int) String)
(declare-fun overrides/-1858346196 (var3806) Bool)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun findHook/-203319973 (var3806 var1798 String) var1600)
(declare-const null-var3806 var3806)
(declare-const null-var1798 var1798)
(declare-const null-var2512 var2512)
(declare-const null-String String)
(declare-const var2292 var3806) ; Statement: r2 := @this: jdk.nashorn.internal.objects.NativeJSAdapter 
(assert (not (= var2292 null-var3806)))
(declare-const var1909 var1798) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var1909 null-var1798)))
(declare-const var2897 var2512) ; Statement: r27 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var2897 null-var2512)))
(declare-const var2542 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2542 null-String)))
(define-const var963 String (var1798_getNameToken/-1004068127 var1909 2)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2) 
(define-const var1356 Bool (overrides/-1858346196 var2292)) ; Statement: $z0 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: boolean overrides> 
 ; Statement: if $z0 == 0 goto b0 = -1 
(assert (= (ite var1356 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2103 Int (- 1)) ; Statement: b0 = -1 
(assert true)
(define-const var954 Int (hashCode/-467973558 var2542)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i1) {     case -75566075: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 618460119: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     default: goto tableswitch(b0) {     case 0: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 1: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 2: goto $r4 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.nashorn.internal.runtime.ScriptObject adaptee>;     default: goto $r26 = new java.lang.AssertionError; }; } 
(assert (and (not (= var954 618460119)) (and (not (= var954 (- 75232295))) (and (not (= var954 (- 75566075))) true)))) ; Intersect: Negate: Cond: $i1 == 618460119   and Intersect: Negate: Cond: $i1 == -75232295   and Intersect: Negate: Cond: $i1 == -75566075   and Non Conditional   
 ; Statement: tableswitch(b0) {     case 0: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 1: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 2: goto $r4 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.nashorn.internal.runtime.ScriptObject adaptee>;     default: goto $r26 = new java.lang.AssertionError; } 
(assert (and (= var2103 0) true)) ; Intersect: Cond: b0 == 0  and Non Conditional 
(assert true)
(define-const var128 var1600 (findHook/-203319973 var2292 var1909 "__get__")) ; Statement: $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__") 
 ; Statement: return $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {var1798_getNameToken/-1004068127=([jdk.internal.dynalink.CallSiteDescriptor, int], java.lang.String), overrides/-1858346196=([jdk.nashorn.internal.objects.NativeJSAdapter], boolean), hashCode/-467973558=([java.lang.String], int), findHook/-203319973=([jdk.nashorn.internal.objects.NativeJSAdapter, jdk.internal.dynalink.CallSiteDescriptor, java.lang.String], jdk.internal.dynalink.linker.GuardedInvocation)}
; {var3806=jdk.nashorn.internal.objects.NativeJSAdapter, var2292=r2, var1798=jdk.internal.dynalink.CallSiteDescriptor, var1909=r0, var2512=jdk.internal.dynalink.linker.LinkRequest, var2897=r27, var2542=r3, var386=null_type, var963=r1, var1356=$z0, var2103=b0, var954=$i1, var1600=jdk.internal.dynalink.linker.GuardedInvocation, var128=$r25}
; {jdk.nashorn.internal.objects.NativeJSAdapter=var3806, r2=var2292, jdk.internal.dynalink.CallSiteDescriptor=var1798, r0=var1909, jdk.internal.dynalink.linker.LinkRequest=var2512, r27=var2897, r3=var2542, null_type=var386, r1=var963, $z0=var1356, b0=var2103, $i1=var954, jdk.internal.dynalink.linker.GuardedInvocation=var1600, $r25=var128}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: jdk.nashorn.internal.objects.NativeJSAdapter;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r27 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r3 := @parameter2: java.lang.String;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2);	$z0 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: boolean overrides>;	if $z0 == 0 goto b0 = -1;	b0 = -1;	$i1 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i1) {     case -75566075: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 618460119: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     default: goto tableswitch(b0) {     case 0: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 1: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 2: goto $r4 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.nashorn.internal.runtime.ScriptObject adaptee>;     default: goto $r26 = new java.lang.AssertionError; }; };	tableswitch(b0) {     case 0: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 1: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 2: goto $r4 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.nashorn.internal.runtime.ScriptObject adaptee>;     default: goto $r26 = new java.lang.AssertionError; };	$r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");	return $r25
;block_num 4