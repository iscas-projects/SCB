(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1973 0)
(declare-sort var1117 0)
(declare-sort var1062 0)
(declare-sort var611 0)
(declare-sort var1891 0)
(declare-sort var2127 0)
(declare-sort var2608 0)
(declare-sort var110 0)
(declare-sort var1385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1973_getCallSiteDescriptor/-488476513 (var1973) var1062)
(declare-fun cast-from-var1062-to-var611 (var1062) var611)
(declare-fun var1973_getReceiver/552178237 (var1973) var1891)
(declare-fun getFirstOperator/-1683874211 (var611) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var2127_getArgument/-145490988 (var1973) String)
(declare-fun var2608_safeToString/1863739852 (var1891) String)
(declare-fun var1385_typeError/-1487832051 (String (Array Int String)) var110)
(declare-const null-var1973 var1973)
(declare-const null-var1117 var1117)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var416 var1973) ; Statement: r0 := @parameter0: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var416 null-var1973)))
(declare-const var5 var1117) ; Statement: r6 := @parameter1: jdk.internal.dynalink.linker.LinkerServices 
(assert (not (= var5 null-var1117)))
(define-const var2098 var1062 (var1973_getCallSiteDescriptor/-488476513 var416)) ; Statement: $r1 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: jdk.internal.dynalink.CallSiteDescriptor getCallSiteDescriptor()>() 
(define-const var876 var611 (cast-from-var1062-to-var611 var2098)) ; Statement: r2 = (jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor) $r1 
(define-const var1188 var1891 (var1973_getReceiver/552178237 var416)) ; Statement: r3 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: java.lang.Object getReceiver()>() 
(assert true)
(define-const var873 String (getFirstOperator/-1683874211 var876)) ; Statement: r4 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>() 
(define-const var3704 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var1803 Int (hashCode/-467973558 var873)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -75566075: goto $z13 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z12 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z11 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z10 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z9 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z8 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z7 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto $z5 = staticinvoke <jdk.internal.dynalink.beans.BeansLinker: boolean isDynamicConstructor(java.lang.Object)>(r3);     case 1: goto $z3 = staticinvoke <jdk.internal.dynalink.beans.BeansLinker: boolean isDynamicConstructor(java.lang.Object)>(r3);     case 2: goto $r30 = newarray (java.lang.String)[2];     case 3: goto $r24 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;     case 4: goto $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isOptimistic(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 5: goto $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isOptimistic(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 6: goto z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isStrict(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 7: goto z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isStrict(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     default: goto $r52 = new java.lang.AssertionError; }; } 
(assert (and (not (= var1803 1984877285)) (and (not (= var1803 1984543505)) (and (not (= var1803 1402960095)) (and (not (= var1803 618460119)) (and (not (= var1803 3045982)) (and (not (= var1803 108960)) (and (not (= var1803 (- 75232295))) (and (not (= var1803 (- 75566075))) true))))))))) ; Intersect: Negate: Cond: $i0 == 1984877285   and Intersect: Negate: Cond: $i0 == 1984543505   and Intersect: Negate: Cond: $i0 == 1402960095   and Intersect: Negate: Cond: $i0 == 618460119   and Intersect: Negate: Cond: $i0 == 3045982   and Intersect: Negate: Cond: $i0 == 108960   and Intersect: Negate: Cond: $i0 == -75232295   and Intersect: Negate: Cond: $i0 == -75566075   and Non Conditional        
 ; Statement: tableswitch(b2) {     case 0: goto $z5 = staticinvoke <jdk.internal.dynalink.beans.BeansLinker: boolean isDynamicConstructor(java.lang.Object)>(r3);     case 1: goto $z3 = staticinvoke <jdk.internal.dynalink.beans.BeansLinker: boolean isDynamicConstructor(java.lang.Object)>(r3);     case 2: goto $r30 = newarray (java.lang.String)[2];     case 3: goto $r24 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;     case 4: goto $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isOptimistic(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 5: goto $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isOptimistic(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 6: goto z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isStrict(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 7: goto z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isStrict(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     default: goto $r52 = new java.lang.AssertionError; } 
(assert (and (= var3704 2) (and (not (= var3704 1)) (and (not (= var3704 0)) true)))) ; Intersect: Cond: b2 == 2  and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional   
(define-const var299 (Array Int String) arr-String-init) ; Statement: $r30 = newarray (java.lang.String)[2] 
(define-const var2654 String (var2127_getArgument/-145490988 var416)) ; Statement: $r31 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornBottomLinker: java.lang.String getArgument(jdk.internal.dynalink.linker.LinkRequest)>(r0) 
(declare-const var299!1 (Array Int String))
(assert (not (= var299!1 null-__Array__Int__String__)))
(assert (= (select var299!1 0) var2654)) ; Statement: $r30[0] = $r31 
(define-const var3065 String (var2608_safeToString/1863739852 var1188)) ; Statement: $r32 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r3) 
(declare-const var299!2 (Array Int String))
(assert (not (= var299!2 null-__Array__Int__String__)))
(assert (= (select var299!2 1) var3065)) ; Statement: $r30[1] = $r32 
(define-const var3606 var110 (var1385_typeError/-1487832051 "no.such.function" var299!2)) ; Statement: $r33 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("no.such.function", $r30) 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {var1973_getCallSiteDescriptor/-488476513=([jdk.internal.dynalink.linker.LinkRequest], jdk.internal.dynalink.CallSiteDescriptor), cast-from-var1062-to-var611=([jdk.internal.dynalink.CallSiteDescriptor], jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor), var1973_getReceiver/552178237=([jdk.internal.dynalink.linker.LinkRequest], java.lang.Object), getFirstOperator/-1683874211=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], java.lang.String), hashCode/-467973558=([java.lang.String], int), arr-String-init=([], java.lang.String[]), var2127_getArgument/-145490988=([jdk.internal.dynalink.linker.LinkRequest], java.lang.String), var2608_safeToString/1863739852=([java.lang.Object], java.lang.String), var1385_typeError/-1487832051=([java.lang.String, java.lang.String[]], jdk.nashorn.internal.runtime.ECMAException)}
; {var1973=jdk.internal.dynalink.linker.LinkRequest, var416=r0, var1117=jdk.internal.dynalink.linker.LinkerServices, var5=r6, var1062=jdk.internal.dynalink.CallSiteDescriptor, var2098=$r1, var611=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var876=r2, var1891=java.lang.Object, var1188=r3, var873=r4, var3704=b2, var1803=$i0, var299=$r30, var2127=jdk.nashorn.internal.runtime.linker.NashornBottomLinker, var2654=$r31, var2608=jdk.nashorn.internal.runtime.ScriptRuntime, var3065=$r32, var110=jdk.nashorn.internal.runtime.ECMAException, var1385=jdk.nashorn.internal.runtime.ECMAErrors, var3606=$r33}
; {jdk.internal.dynalink.linker.LinkRequest=var1973, r0=var416, jdk.internal.dynalink.linker.LinkerServices=var1117, r6=var5, jdk.internal.dynalink.CallSiteDescriptor=var1062, $r1=var2098, jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var611, r2=var876, java.lang.Object=var1891, r3=var1188, r4=var873, b2=var3704, $i0=var1803, $r30=var299, jdk.nashorn.internal.runtime.linker.NashornBottomLinker=var2127, $r31=var2654, jdk.nashorn.internal.runtime.ScriptRuntime=var2608, $r32=var3065, jdk.nashorn.internal.runtime.ECMAException=var110, jdk.nashorn.internal.runtime.ECMAErrors=var1385, $r33=var3606}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.internal.dynalink.linker.LinkRequest;	r6 := @parameter1: jdk.internal.dynalink.linker.LinkerServices;	$r1 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: jdk.internal.dynalink.CallSiteDescriptor getCallSiteDescriptor()>();	r2 = (jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor) $r1;	r3 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: java.lang.Object getReceiver()>();	r4 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>();	b2 = -1;	$i0 = virtualinvoke r4.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -75566075: goto $z13 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z12 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z11 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z10 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z9 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z8 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z7 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto $z5 = staticinvoke <jdk.internal.dynalink.beans.BeansLinker: boolean isDynamicConstructor(java.lang.Object)>(r3);     case 1: goto $z3 = staticinvoke <jdk.internal.dynalink.beans.BeansLinker: boolean isDynamicConstructor(java.lang.Object)>(r3);     case 2: goto $r30 = newarray (java.lang.String)[2];     case 3: goto $r24 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;     case 4: goto $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isOptimistic(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 5: goto $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isOptimistic(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 6: goto z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isStrict(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 7: goto z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isStrict(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     default: goto $r52 = new java.lang.AssertionError; }; };	tableswitch(b2) {     case 0: goto $z5 = staticinvoke <jdk.internal.dynalink.beans.BeansLinker: boolean isDynamicConstructor(java.lang.Object)>(r3);     case 1: goto $z3 = staticinvoke <jdk.internal.dynalink.beans.BeansLinker: boolean isDynamicConstructor(java.lang.Object)>(r3);     case 2: goto $r30 = newarray (java.lang.String)[2];     case 3: goto $r24 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;     case 4: goto $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isOptimistic(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 5: goto $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isOptimistic(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 6: goto z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isStrict(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     case 7: goto z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isStrict(jdk.internal.dynalink.CallSiteDescriptor)>(r2);     default: goto $r52 = new java.lang.AssertionError; };	$r30 = newarray (java.lang.String)[2];	$r31 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornBottomLinker: java.lang.String getArgument(jdk.internal.dynalink.linker.LinkRequest)>(r0);	$r30[0] = $r31;	$r32 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r3);	$r30[1] = $r32;	$r33 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("no.such.function", $r30);	throw $r33
;block_num 3