(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3328 0)
(declare-sort var2032 0)
(declare-sort var140 0)
(declare-sort var2784 0)
(declare-sort var2810 0)
(declare-sort var1692 0)
(declare-sort var666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2032_getNameTokenCount/-469135163 (var2032) Int)
(declare-fun var2810_tokenizeOperators/419415246 (var2032) var2784)
(declare-fun var2784_get/-1216255739 (var2784 Int) var1692)
(declare-fun cast-from-var1692-to-String (var1692) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun findCallMethodMethod/-511209932 (var3328 var2032 var140) var666)
(declare-const null-var3328 var3328)
(declare-const null-var2032 var2032)
(declare-const null-var140 var140)
(declare-const var3115 var3328) ; Statement: r4 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var3115 null-var3328)))
(declare-const var3103 var2032) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var3103 null-var2032)))
(declare-const var3226 var140) ; Statement: r5 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var3226 null-var140)))
(define-const var1588 Int (var2032_getNameTokenCount/-469135163 var3103)) ; Statement: i0 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: int getNameTokenCount()>() 
(define-const var298 var2784 (var2810_tokenizeOperators/419415246 var3103)) ; Statement: $r1 = staticinvoke <jdk.internal.dynalink.support.CallSiteDescriptorFactory: java.util.List tokenizeOperators(jdk.internal.dynalink.CallSiteDescriptor)>(r0) 
(define-const var3254 var1692 (var2784_get/-1216255739 var298 0)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2281 String (cast-from-var1692-to-String var3254)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var2026 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var3527 Int (hashCode/-467973558 var2281)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i1) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; }; } 
(assert (and (= var3527 618460119) (and (not (= var3527 3045982)) (and (not (= var3527 108960)) (and (not (= var3527 (- 75232295))) (and (not (= var3527 (- 75566075))) true)))))) ; Intersect: Cond: $i1 == 618460119  and Intersect: Negate: Cond: $i1 == 3045982   and Intersect: Negate: Cond: $i1 == 108960   and Intersect: Negate: Cond: $i1 == -75232295   and Intersect: Negate: Cond: $i1 == -75566075   and Non Conditional     
(assert true)
(define-const var3789 Bool (= var2281 "getMethod")) ; Statement: $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod") 
 ; Statement: if $z3 == 0 goto (branch) 
(assert (= (ite var3789 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; } 
(assert (and (= var2026 7) (and (not (= var2026 6)) (and (not (= var2026 5)) (and (not (= var2026 4)) (and (not (= var2026 3)) (and (not (= var2026 2)) (and (not (= var2026 1)) (and (not (= var2026 0)) true))))))))) ; Intersect: Cond: b2 == 7  and Intersect: Negate: Cond: b2 == 6   and Intersect: Negate: Cond: b2 == 5   and Intersect: Negate: Cond: b2 == 4   and Intersect: Negate: Cond: b2 == 3   and Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional        
(assert true)
(define-const var3309 var666 (findCallMethodMethod/-511209932 var3115 var3103 var3226)) ; Statement: $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2032_getNameTokenCount/-469135163=([jdk.internal.dynalink.CallSiteDescriptor], int), var2810_tokenizeOperators/419415246=([jdk.internal.dynalink.CallSiteDescriptor], java.util.List), var2784_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1692-to-String=([java.lang.Object], java.lang.String), hashCode/-467973558=([java.lang.String], int), findCallMethodMethod/-511209932=([jdk.nashorn.internal.runtime.ScriptObject, jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], jdk.internal.dynalink.linker.GuardedInvocation)}
; {var3328=jdk.nashorn.internal.runtime.ScriptObject, var3115=r4, var2032=jdk.internal.dynalink.CallSiteDescriptor, var3103=r0, var140=jdk.internal.dynalink.linker.LinkRequest, var3226=r5, var1588=i0, var2784=java.util.List, var2810=jdk.internal.dynalink.support.CallSiteDescriptorFactory, var298=$r1, var1692=java.lang.Object, var3254=$r2, var2281=r3, var2026=b2, var3527=$i1, var3789=$z3, var666=jdk.internal.dynalink.linker.GuardedInvocation, var3309=$r6}
; {jdk.nashorn.internal.runtime.ScriptObject=var3328, r4=var3115, jdk.internal.dynalink.CallSiteDescriptor=var2032, r0=var3103, jdk.internal.dynalink.linker.LinkRequest=var140, r5=var3226, i0=var1588, java.util.List=var2784, jdk.internal.dynalink.support.CallSiteDescriptorFactory=var2810, $r1=var298, java.lang.Object=var1692, $r2=var3254, r3=var2281, b2=var2026, $i1=var3527, $z3=var3789, jdk.internal.dynalink.linker.GuardedInvocation=var666, $r6=var3309}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r5 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	i0 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: int getNameTokenCount()>();	$r1 = staticinvoke <jdk.internal.dynalink.support.CallSiteDescriptorFactory: java.util.List tokenizeOperators(jdk.internal.dynalink.CallSiteDescriptor)>(r0);	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0);	r3 = (java.lang.String) $r2;	b2 = -1;	$i1 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i1) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; }; };	$z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");	if $z3 == 0 goto (branch);	tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; };	$r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);	return $r6
;block_num 4