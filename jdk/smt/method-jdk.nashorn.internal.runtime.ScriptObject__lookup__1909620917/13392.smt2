(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3433 0)
(declare-sort var1385 0)
(declare-sort var409 0)
(declare-sort var3256 0)
(declare-sort var1604 0)
(declare-sort var1444 0)
(declare-sort var3994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1385_getNameTokenCount/-469135163 (var1385) Int)
(declare-fun var1604_tokenizeOperators/419415246 (var1385) var3256)
(declare-fun var3256_get/-1216255739 (var3256 Int) var1444)
(declare-fun cast-from-var1444-to-String (var1444) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun findCallMethod/1150569395 (var3433 var1385 var409) var3994)
(declare-const null-var3433 var3433)
(declare-const null-var1385 var1385)
(declare-const null-var409 var409)
(declare-const var1747 var3433) ; Statement: r4 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var1747 null-var3433)))
(declare-const var3399 var1385) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var3399 null-var1385)))
(declare-const var1346 var409) ; Statement: r5 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var1346 null-var409)))
(define-const var3125 Int (var1385_getNameTokenCount/-469135163 var3399)) ; Statement: i0 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: int getNameTokenCount()>() 
(define-const var2538 var3256 (var1604_tokenizeOperators/419415246 var3399)) ; Statement: $r1 = staticinvoke <jdk.internal.dynalink.support.CallSiteDescriptorFactory: java.util.List tokenizeOperators(jdk.internal.dynalink.CallSiteDescriptor)>(r0) 
(define-const var3092 var1444 (var3256_get/-1216255739 var2538 0)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var1847 String (cast-from-var1444-to-String var3092)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var2357 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var1717 Int (hashCode/-467973558 var1847)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i1) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; }; } 
(assert (and (= var1717 618460119) (and (not (= var1717 3045982)) (and (not (= var1717 108960)) (and (not (= var1717 (- 75232295))) (and (not (= var1717 (- 75566075))) true)))))) ; Intersect: Cond: $i1 == 618460119  and Intersect: Negate: Cond: $i1 == 3045982   and Intersect: Negate: Cond: $i1 == 108960   and Intersect: Negate: Cond: $i1 == -75232295   and Intersect: Negate: Cond: $i1 == -75566075   and Non Conditional     
(assert true)
(define-const var722 Bool (= var1847 "getMethod")) ; Statement: $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod") 
 ; Statement: if $z3 == 0 goto (branch) 
(assert (= (ite var722 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; } 
(assert (and (= var2357 5) (and (not (= var2357 4)) (and (not (= var2357 3)) (and (not (= var2357 2)) (and (not (= var2357 1)) (and (not (= var2357 0)) true))))))) ; Intersect: Cond: b2 == 5  and Intersect: Negate: Cond: b2 == 4   and Intersect: Negate: Cond: b2 == 3   and Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional      
(assert true)
(define-const var1257 var3994 (findCallMethod/1150569395 var1747 var3399 var1346)) ; Statement: $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1385_getNameTokenCount/-469135163=([jdk.internal.dynalink.CallSiteDescriptor], int), var1604_tokenizeOperators/419415246=([jdk.internal.dynalink.CallSiteDescriptor], java.util.List), var3256_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1444-to-String=([java.lang.Object], java.lang.String), hashCode/-467973558=([java.lang.String], int), findCallMethod/1150569395=([jdk.nashorn.internal.runtime.ScriptObject, jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], jdk.internal.dynalink.linker.GuardedInvocation)}
; {var3433=jdk.nashorn.internal.runtime.ScriptObject, var1747=r4, var1385=jdk.internal.dynalink.CallSiteDescriptor, var3399=r0, var409=jdk.internal.dynalink.linker.LinkRequest, var1346=r5, var3125=i0, var3256=java.util.List, var1604=jdk.internal.dynalink.support.CallSiteDescriptorFactory, var2538=$r1, var1444=java.lang.Object, var3092=$r2, var1847=r3, var2357=b2, var1717=$i1, var722=$z3, var3994=jdk.internal.dynalink.linker.GuardedInvocation, var1257=$r8}
; {jdk.nashorn.internal.runtime.ScriptObject=var3433, r4=var1747, jdk.internal.dynalink.CallSiteDescriptor=var1385, r0=var3399, jdk.internal.dynalink.linker.LinkRequest=var409, r5=var1346, i0=var3125, java.util.List=var3256, jdk.internal.dynalink.support.CallSiteDescriptorFactory=var1604, $r1=var2538, java.lang.Object=var1444, $r2=var3092, r3=var1847, b2=var2357, $i1=var1717, $z3=var722, jdk.internal.dynalink.linker.GuardedInvocation=var3994, $r8=var1257}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r5 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	i0 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: int getNameTokenCount()>();	$r1 = staticinvoke <jdk.internal.dynalink.support.CallSiteDescriptorFactory: java.util.List tokenizeOperators(jdk.internal.dynalink.CallSiteDescriptor)>(r0);	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0);	r3 = (java.lang.String) $r2;	b2 = -1;	$i1 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i1) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; }; };	$z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");	if $z3 == 0 goto (branch);	tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; };	$r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);	return $r8
;block_num 4