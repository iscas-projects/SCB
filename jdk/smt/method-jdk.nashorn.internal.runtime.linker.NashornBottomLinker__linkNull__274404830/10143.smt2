(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1538 0)
(declare-sort var1189 0)
(declare-sort var1474 0)
(declare-sort var749 0)
(declare-sort var3240 0)
(declare-sort var2288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1538_getCallSiteDescriptor/-488476513 (var1538) var1189)
(declare-fun cast-from-var1189-to-var1474 (var1189) var1474)
(declare-fun getFirstOperator/-1683874211 (var1474) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var749_getArgument/-145490988 (var1538) String)
(declare-fun var2288_typeError/-1487832051 (String (Array Int String)) var3240)
(declare-const null-var1538 var1538)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1999 var1538) ; Statement: r0 := @parameter0: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var1999 null-var1538)))
(define-const var262 var1189 (var1538_getCallSiteDescriptor/-488476513 var1999)) ; Statement: $r1 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: jdk.internal.dynalink.CallSiteDescriptor getCallSiteDescriptor()>() 
(define-const var3733 var1474 (cast-from-var1189-to-var1474 var262)) ; Statement: r2 = (jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor) $r1 
(assert true)
(define-const var1898 String (getFirstOperator/-1683874211 var3733)) ; Statement: r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>() 
(define-const var1380 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2032 Int (hashCode/-467973558 var1898)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; }; } 
(assert (and (not (= var2032 1984877285)) (and (not (= var2032 1984543505)) (and (not (= var2032 1402960095)) (and (not (= var2032 618460119)) (and (not (= var2032 3045982)) (and (not (= var2032 108960)) (and (not (= var2032 (- 75232295))) (and (not (= var2032 (- 75566075))) true))))))))) ; Intersect: Negate: Cond: $i0 == 1984877285   and Intersect: Negate: Cond: $i0 == 1984543505   and Intersect: Negate: Cond: $i0 == 1402960095   and Intersect: Negate: Cond: $i0 == 618460119   and Intersect: Negate: Cond: $i0 == 3045982   and Intersect: Negate: Cond: $i0 == 108960   and Intersect: Negate: Cond: $i0 == -75232295   and Intersect: Negate: Cond: $i0 == -75566075   and Non Conditional        
 ; Statement: tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; } 
(assert (and (= var1380 2) (and (not (= var1380 1)) (and (not (= var1380 0)) true)))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var2969 (Array Int String) arr-String-init) ; Statement: $r10 = newarray (java.lang.String)[2] 
(define-const var863 String (var749_getArgument/-145490988 var1999)) ; Statement: $r11 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornBottomLinker: java.lang.String getArgument(jdk.internal.dynalink.linker.LinkRequest)>(r0) 
(declare-const var2969!1 (Array Int String))
(assert (not (= var2969!1 null-__Array__Int__String__)))
(assert (= (select var2969!1 0) var863)) ; Statement: $r10[0] = $r11 
(declare-const var2969!2 (Array Int String))
(assert (not (= var2969!2 null-__Array__Int__String__)))
(assert (= (select var2969!2 1) "null")) ; Statement: $r10[1] = "null" 
(define-const var2465 var3240 (var2288_typeError/-1487832051 "no.such.function" var2969!2)) ; Statement: $r12 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("no.such.function", $r10) 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1538_getCallSiteDescriptor/-488476513=([jdk.internal.dynalink.linker.LinkRequest], jdk.internal.dynalink.CallSiteDescriptor), cast-from-var1189-to-var1474=([jdk.internal.dynalink.CallSiteDescriptor], jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor), getFirstOperator/-1683874211=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], java.lang.String), hashCode/-467973558=([java.lang.String], int), arr-String-init=([], java.lang.String[]), var749_getArgument/-145490988=([jdk.internal.dynalink.linker.LinkRequest], java.lang.String), var2288_typeError/-1487832051=([java.lang.String, java.lang.String[]], jdk.nashorn.internal.runtime.ECMAException)}
; {var1538=jdk.internal.dynalink.linker.LinkRequest, var1999=r0, var1189=jdk.internal.dynalink.CallSiteDescriptor, var262=$r1, var1474=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var3733=r2, var1898=r3, var1380=b1, var2032=$i0, var2969=$r10, var749=jdk.nashorn.internal.runtime.linker.NashornBottomLinker, var863=$r11, var3240=jdk.nashorn.internal.runtime.ECMAException, var2288=jdk.nashorn.internal.runtime.ECMAErrors, var2465=$r12}
; {jdk.internal.dynalink.linker.LinkRequest=var1538, r0=var1999, jdk.internal.dynalink.CallSiteDescriptor=var1189, $r1=var262, jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var1474, r2=var3733, r3=var1898, b1=var1380, $i0=var2032, $r10=var2969, jdk.nashorn.internal.runtime.linker.NashornBottomLinker=var749, $r11=var863, jdk.nashorn.internal.runtime.ECMAException=var3240, jdk.nashorn.internal.runtime.ECMAErrors=var2288, $r12=var2465}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.internal.dynalink.linker.LinkRequest;	$r1 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: jdk.internal.dynalink.CallSiteDescriptor getCallSiteDescriptor()>();	r2 = (jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor) $r1;	r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>();	b1 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; }; };	tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; };	$r10 = newarray (java.lang.String)[2];	$r11 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornBottomLinker: java.lang.String getArgument(jdk.internal.dynalink.linker.LinkRequest)>(r0);	$r10[0] = $r11;	$r10[1] = "null";	$r12 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("no.such.function", $r10);	throw $r12
;block_num 3