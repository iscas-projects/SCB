(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1836 0)
(declare-sort var3085 0)
(declare-sort var2024 0)
(declare-sort var3587 0)
(declare-sort var1521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1836_getCallSiteDescriptor/-488476513 (var1836) var3085)
(declare-fun cast-from-var3085-to-var2024 (var3085) var2024)
(declare-fun getFirstOperator/-1683874211 (var2024) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1521_typeError/-1487832051 (String (Array Int String)) var3587)
(declare-const null-var1836 var1836)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2989 var1836) ; Statement: r0 := @parameter0: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var2989 null-var1836)))
(define-const var1096 var3085 (var1836_getCallSiteDescriptor/-488476513 var2989)) ; Statement: $r1 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: jdk.internal.dynalink.CallSiteDescriptor getCallSiteDescriptor()>() 
(define-const var794 var2024 (cast-from-var3085-to-var2024 var1096)) ; Statement: r2 = (jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor) $r1 
(assert true)
(define-const var1607 String (getFirstOperator/-1683874211 var794)) ; Statement: r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>() 
(define-const var329 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2047 Int (hashCode/-467973558 var1607)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; }; } 
(assert (and (not (= var2047 1984877285)) (and (not (= var2047 1984543505)) (and (not (= var2047 1402960095)) (and (not (= var2047 618460119)) (and (not (= var2047 3045982)) (and (not (= var2047 108960)) (and (not (= var2047 (- 75232295))) (and (not (= var2047 (- 75566075))) true))))))))) ; Intersect: Negate: Cond: $i0 == 1984877285   and Intersect: Negate: Cond: $i0 == 1984543505   and Intersect: Negate: Cond: $i0 == 1402960095   and Intersect: Negate: Cond: $i0 == 618460119   and Intersect: Negate: Cond: $i0 == 3045982   and Intersect: Negate: Cond: $i0 == 108960   and Intersect: Negate: Cond: $i0 == -75232295   and Intersect: Negate: Cond: $i0 == -75566075   and Non Conditional        
 ; Statement: tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; } 
(assert (and (= var329 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var816 (Array Int String) arr-String-init) ; Statement: $r13 = newarray (java.lang.String)[1] 
(declare-const var816!1 (Array Int String))
(assert (not (= var816!1 null-__Array__Int__String__)))
(assert (= (select var816!1 0) "null")) ; Statement: $r13[0] = "null" 
(define-const var314 var3587 (var1521_typeError/-1487832051 "not.a.function" var816!1)) ; Statement: $r14 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("not.a.function", $r13) 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1836_getCallSiteDescriptor/-488476513=([jdk.internal.dynalink.linker.LinkRequest], jdk.internal.dynalink.CallSiteDescriptor), cast-from-var3085-to-var2024=([jdk.internal.dynalink.CallSiteDescriptor], jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor), getFirstOperator/-1683874211=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], java.lang.String), hashCode/-467973558=([java.lang.String], int), arr-String-init=([], java.lang.String[]), var1521_typeError/-1487832051=([java.lang.String, java.lang.String[]], jdk.nashorn.internal.runtime.ECMAException)}
; {var1836=jdk.internal.dynalink.linker.LinkRequest, var2989=r0, var3085=jdk.internal.dynalink.CallSiteDescriptor, var1096=$r1, var2024=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var794=r2, var1607=r3, var329=b1, var2047=$i0, var816=$r13, var3587=jdk.nashorn.internal.runtime.ECMAException, var1521=jdk.nashorn.internal.runtime.ECMAErrors, var314=$r14}
; {jdk.internal.dynalink.linker.LinkRequest=var1836, r0=var2989, jdk.internal.dynalink.CallSiteDescriptor=var3085, $r1=var1096, jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var2024, r2=var794, r3=var1607, b1=var329, $i0=var2047, $r13=var816, jdk.nashorn.internal.runtime.ECMAException=var3587, jdk.nashorn.internal.runtime.ECMAErrors=var1521, $r14=var314}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.internal.dynalink.linker.LinkRequest;	$r1 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: jdk.internal.dynalink.CallSiteDescriptor getCallSiteDescriptor()>();	r2 = (jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor) $r1;	r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>();	b1 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; }; };	tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; };	$r13 = newarray (java.lang.String)[1];	$r13[0] = "null";	$r14 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("not.a.function", $r13);	throw $r14
;block_num 3