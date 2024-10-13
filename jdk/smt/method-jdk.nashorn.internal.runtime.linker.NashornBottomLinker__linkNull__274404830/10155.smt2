(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3194 0)
(declare-sort var1212 0)
(declare-sort var427 0)
(declare-sort var3559 0)
(declare-sort var526 0)
(declare-sort var603 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3194_getCallSiteDescriptor/-488476513 (var3194) var1212)
(declare-fun cast-from-var1212-to-var427 (var1212) var427)
(declare-fun getFirstOperator/-1683874211 (var427) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var3559_getArgument/-145490988 (var3194) String)
(declare-fun var603_typeError/-1487832051 (String (Array Int String)) var526)
(declare-const null-var3194 var3194)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var690 var3194) ; Statement: r0 := @parameter0: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var690 null-var3194)))
(define-const var3090 var1212 (var3194_getCallSiteDescriptor/-488476513 var690)) ; Statement: $r1 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: jdk.internal.dynalink.CallSiteDescriptor getCallSiteDescriptor()>() 
(define-const var1411 var427 (cast-from-var1212-to-var427 var3090)) ; Statement: r2 = (jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor) $r1 
(assert true)
(define-const var3293 String (getFirstOperator/-1683874211 var1411)) ; Statement: r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>() 
(define-const var219 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var487 Int (hashCode/-467973558 var3293)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; }; } 
(assert (and (not (= var487 1984877285)) (and (not (= var487 1984543505)) (and (not (= var487 1402960095)) (and (not (= var487 618460119)) (and (not (= var487 3045982)) (and (not (= var487 108960)) (and (not (= var487 (- 75232295))) (and (not (= var487 (- 75566075))) true))))))))) ; Intersect: Negate: Cond: $i0 == 1984877285   and Intersect: Negate: Cond: $i0 == 1984543505   and Intersect: Negate: Cond: $i0 == 1402960095   and Intersect: Negate: Cond: $i0 == 618460119   and Intersect: Negate: Cond: $i0 == 3045982   and Intersect: Negate: Cond: $i0 == 108960   and Intersect: Negate: Cond: $i0 == -75232295   and Intersect: Negate: Cond: $i0 == -75566075   and Non Conditional        
 ; Statement: tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; } 
(assert (and (= var219 4) (and (not (= var219 3)) (and (not (= var219 2)) (and (not (= var219 1)) (and (not (= var219 0)) true)))))) ; Intersect: Cond: b1 == 4  and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional     
(define-const var3829 (Array Int String) arr-String-init) ; Statement: $r7 = newarray (java.lang.String)[2] 
(define-const var3734 String (var3559_getArgument/-145490988 var690)) ; Statement: $r8 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornBottomLinker: java.lang.String getArgument(jdk.internal.dynalink.linker.LinkRequest)>(r0) 
(declare-const var3829!1 (Array Int String))
(assert (not (= var3829!1 null-__Array__Int__String__)))
(assert (= (select var3829!1 0) var3734)) ; Statement: $r7[0] = $r8 
(declare-const var3829!2 (Array Int String))
(assert (not (= var3829!2 null-__Array__Int__String__)))
(assert (= (select var3829!2 1) "null")) ; Statement: $r7[1] = "null" 
(define-const var3828 var526 (var603_typeError/-1487832051 "cant.get.property" var3829!2)) ; Statement: $r9 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("cant.get.property", $r7) 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3194_getCallSiteDescriptor/-488476513=([jdk.internal.dynalink.linker.LinkRequest], jdk.internal.dynalink.CallSiteDescriptor), cast-from-var1212-to-var427=([jdk.internal.dynalink.CallSiteDescriptor], jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor), getFirstOperator/-1683874211=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], java.lang.String), hashCode/-467973558=([java.lang.String], int), arr-String-init=([], java.lang.String[]), var3559_getArgument/-145490988=([jdk.internal.dynalink.linker.LinkRequest], java.lang.String), var603_typeError/-1487832051=([java.lang.String, java.lang.String[]], jdk.nashorn.internal.runtime.ECMAException)}
; {var3194=jdk.internal.dynalink.linker.LinkRequest, var690=r0, var1212=jdk.internal.dynalink.CallSiteDescriptor, var3090=$r1, var427=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var1411=r2, var3293=r3, var219=b1, var487=$i0, var3829=$r7, var3559=jdk.nashorn.internal.runtime.linker.NashornBottomLinker, var3734=$r8, var526=jdk.nashorn.internal.runtime.ECMAException, var603=jdk.nashorn.internal.runtime.ECMAErrors, var3828=$r9}
; {jdk.internal.dynalink.linker.LinkRequest=var3194, r0=var690, jdk.internal.dynalink.CallSiteDescriptor=var1212, $r1=var3090, jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var427, r2=var1411, r3=var3293, b1=var219, $i0=var487, $r7=var3829, jdk.nashorn.internal.runtime.linker.NashornBottomLinker=var3559, $r8=var3734, jdk.nashorn.internal.runtime.ECMAException=var526, jdk.nashorn.internal.runtime.ECMAErrors=var603, $r9=var3828}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.internal.dynalink.linker.LinkRequest;	$r1 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: jdk.internal.dynalink.CallSiteDescriptor getCallSiteDescriptor()>();	r2 = (jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor) $r1;	r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>();	b1 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; }; };	tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; };	$r7 = newarray (java.lang.String)[2];	$r8 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornBottomLinker: java.lang.String getArgument(jdk.internal.dynalink.linker.LinkRequest)>(r0);	$r7[0] = $r8;	$r7[1] = "null";	$r9 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("cant.get.property", $r7);	throw $r9
;block_num 3