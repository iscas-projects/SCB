(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1183 0)
(declare-sort var3478 0)
(declare-sort var1155 0)
(declare-sort var2121 0)
(declare-sort var449 0)
(declare-sort var2009 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3478_getNameToken/-1004068127 (var3478 Int) String)
(declare-fun overrides/-1858346196 (var1183) Bool)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var449-init () var449)
(declare-fun <init>/582965326 (var449 var2009) void)
(declare-fun cast-from-String-to-var2009 (String) var2009)
(declare-const null-var1183 var1183)
(declare-const null-var3478 var3478)
(declare-const null-var1155 var1155)
(declare-const null-String String)
(declare-const var638 var1183) ; Statement: r2 := @this: jdk.nashorn.internal.objects.NativeJSAdapter 
(assert (not (= var638 null-var1183)))
(declare-const var2929 var3478) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var2929 null-var3478)))
(declare-const var3082 var1155) ; Statement: r27 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var3082 null-var1155)))
(declare-const var523 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var523 null-String)))
(define-const var3023 String (var3478_getNameToken/-1004068127 var2929 2)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2) 
(define-const var917 Bool (overrides/-1858346196 var638)) ; Statement: $z0 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: boolean overrides> 
 ; Statement: if $z0 == 0 goto b0 = -1 
(assert (= (ite var917 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1550 Int (- 1)) ; Statement: b0 = -1 
(assert true)
(define-const var1987 Int (hashCode/-467973558 var523)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i1) {     case -75566075: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 618460119: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     default: goto tableswitch(b0) {     case 0: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 1: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 2: goto $r4 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.nashorn.internal.runtime.ScriptObject adaptee>;     default: goto $r26 = new java.lang.AssertionError; }; } 
(assert (and (not (= var1987 618460119)) (and (not (= var1987 (- 75232295))) (and (not (= var1987 (- 75566075))) true)))) ; Intersect: Negate: Cond: $i1 == 618460119   and Intersect: Negate: Cond: $i1 == -75232295   and Intersect: Negate: Cond: $i1 == -75566075   and Non Conditional   
 ; Statement: tableswitch(b0) {     case 0: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 1: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 2: goto $r4 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.nashorn.internal.runtime.ScriptObject adaptee>;     default: goto $r26 = new java.lang.AssertionError; } 
(assert (and (not (= var1550 2)) (and (not (= var1550 1)) (and (not (= var1550 0)) true)))) ; Intersect: Negate: Cond: b0 == 2   and Intersect: Negate: Cond: b0 == 1   and Intersect: Negate: Cond: b0 == 0   and Non Conditional   
(define-const var2051 var449 var449-init) ; Statement: $r26 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/582965326 var2051 (cast-from-String-to-var2009 "should not reach here"))) ; Statement: specialinvoke $r26.<java.lang.AssertionError: void <init>(java.lang.Object)>("should not reach here") 

(declare-const var2051!1 var449)
(declare-const var2139 String)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var3478_getNameToken/-1004068127=([jdk.internal.dynalink.CallSiteDescriptor, int], java.lang.String), overrides/-1858346196=([jdk.nashorn.internal.objects.NativeJSAdapter], boolean), hashCode/-467973558=([java.lang.String], int), var449-init=([], java.lang.AssertionError), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2009=([java.lang.String], java.lang.Object)}
; {var1183=jdk.nashorn.internal.objects.NativeJSAdapter, var638=r2, var3478=jdk.internal.dynalink.CallSiteDescriptor, var2929=r0, var1155=jdk.internal.dynalink.linker.LinkRequest, var3082=r27, var523=r3, var2121=null_type, var3023=r1, var917=$z0, var1550=b0, var1987=$i1, var449=java.lang.AssertionError, var2051=$r26, var2009=java.lang.Object, var2139="should not reach here"}
; {jdk.nashorn.internal.objects.NativeJSAdapter=var1183, r2=var638, jdk.internal.dynalink.CallSiteDescriptor=var3478, r0=var2929, jdk.internal.dynalink.linker.LinkRequest=var1155, r27=var3082, r3=var523, null_type=var2121, r1=var3023, $z0=var917, b0=var1550, $i1=var1987, java.lang.AssertionError=var449, $r26=var2051, java.lang.Object=var2009, "should not reach here"=var2139}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: jdk.nashorn.internal.objects.NativeJSAdapter;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r27 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r3 := @parameter2: java.lang.String;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2);	$z0 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: boolean overrides>;	if $z0 == 0 goto b0 = -1;	b0 = -1;	$i1 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i1) {     case -75566075: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 618460119: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     default: goto tableswitch(b0) {     case 0: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 1: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 2: goto $r4 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.nashorn.internal.runtime.ScriptObject adaptee>;     default: goto $r26 = new java.lang.AssertionError; }; };	tableswitch(b0) {     case 0: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 1: goto $r25 = specialinvoke r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.internal.dynalink.linker.GuardedInvocation findHook(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String)>(r0, "__get__");     case 2: goto $r4 = r2.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.nashorn.internal.runtime.ScriptObject adaptee>;     default: goto $r26 = new java.lang.AssertionError; };	$r26 = new java.lang.AssertionError;	specialinvoke $r26.<java.lang.AssertionError: void <init>(java.lang.Object)>("should not reach here");	throw $r26
;block_num 4