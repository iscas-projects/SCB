(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2419 0)
(declare-sort var1112 0)
(declare-sort var1866 0)
(declare-sort var3875 0)
(declare-sort var1845 0)
(declare-sort var2018 0)
(declare-sort var3524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1112_getNameTokenCount/-469135163 (var1112) Int)
(declare-fun var1845_tokenizeOperators/419415246 (var1112) var3875)
(declare-fun var3875_get/-1216255739 (var3875 Int) var2018)
(declare-fun cast-from-var2018-to-String (var2018) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun findNewMethod/-550584493 (var2419 var1112 var1866) var3524)
(declare-const null-var2419 var2419)
(declare-const null-var1112 var1112)
(declare-const null-var1866 var1866)
(declare-const var1063 var2419) ; Statement: r4 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var1063 null-var2419)))
(declare-const var1602 var1112) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var1602 null-var1112)))
(declare-const var3596 var1866) ; Statement: r5 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var3596 null-var1866)))
(define-const var3163 Int (var1112_getNameTokenCount/-469135163 var1602)) ; Statement: i0 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: int getNameTokenCount()>() 
(define-const var1185 var3875 (var1845_tokenizeOperators/419415246 var1602)) ; Statement: $r1 = staticinvoke <jdk.internal.dynalink.support.CallSiteDescriptorFactory: java.util.List tokenizeOperators(jdk.internal.dynalink.CallSiteDescriptor)>(r0) 
(define-const var3256 var2018 (var3875_get/-1216255739 var1185 0)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var92 String (cast-from-var2018-to-String var3256)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var3466 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var1342 Int (hashCode/-467973558 var92)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i1) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; }; } 
(assert (and (= var1342 1402960095) (and (not (= var1342 618460119)) (and (not (= var1342 3045982)) (and (not (= var1342 108960)) (and (not (= var1342 (- 75232295))) (and (not (= var1342 (- 75566075))) true))))))) ; Intersect: Cond: $i1 == 1402960095  and Intersect: Negate: Cond: $i1 == 618460119   and Intersect: Negate: Cond: $i1 == 3045982   and Intersect: Negate: Cond: $i1 == 108960   and Intersect: Negate: Cond: $i1 == -75232295   and Intersect: Negate: Cond: $i1 == -75566075   and Non Conditional      
(assert true)
(define-const var394 Bool (= var92 "callMethod")) ; Statement: $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod") 
 ; Statement: if $z2 == 0 goto (branch) 
(assert (= (ite var394 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; } 
(assert (and (= var3466 6) (and (not (= var3466 5)) (and (not (= var3466 4)) (and (not (= var3466 3)) (and (not (= var3466 2)) (and (not (= var3466 1)) (and (not (= var3466 0)) true)))))))) ; Intersect: Cond: b2 == 6  and Intersect: Negate: Cond: b2 == 5   and Intersect: Negate: Cond: b2 == 4   and Intersect: Negate: Cond: b2 == 3   and Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional       
(assert true)
(define-const var1078 var3524 (findNewMethod/-550584493 var1063 var1602 var3596)) ; Statement: $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1112_getNameTokenCount/-469135163=([jdk.internal.dynalink.CallSiteDescriptor], int), var1845_tokenizeOperators/419415246=([jdk.internal.dynalink.CallSiteDescriptor], java.util.List), var3875_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2018-to-String=([java.lang.Object], java.lang.String), hashCode/-467973558=([java.lang.String], int), findNewMethod/-550584493=([jdk.nashorn.internal.runtime.ScriptObject, jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], jdk.internal.dynalink.linker.GuardedInvocation)}
; {var2419=jdk.nashorn.internal.runtime.ScriptObject, var1063=r4, var1112=jdk.internal.dynalink.CallSiteDescriptor, var1602=r0, var1866=jdk.internal.dynalink.linker.LinkRequest, var3596=r5, var3163=i0, var3875=java.util.List, var1845=jdk.internal.dynalink.support.CallSiteDescriptorFactory, var1185=$r1, var2018=java.lang.Object, var3256=$r2, var92=r3, var3466=b2, var1342=$i1, var394=$z2, var3524=jdk.internal.dynalink.linker.GuardedInvocation, var1078=$r7}
; {jdk.nashorn.internal.runtime.ScriptObject=var2419, r4=var1063, jdk.internal.dynalink.CallSiteDescriptor=var1112, r0=var1602, jdk.internal.dynalink.linker.LinkRequest=var1866, r5=var3596, i0=var3163, java.util.List=var3875, jdk.internal.dynalink.support.CallSiteDescriptorFactory=var1845, $r1=var1185, java.lang.Object=var2018, $r2=var3256, r3=var92, b2=var3466, $i1=var1342, $z2=var394, jdk.internal.dynalink.linker.GuardedInvocation=var3524, $r7=var1078}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r5 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	i0 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: int getNameTokenCount()>();	$r1 = staticinvoke <jdk.internal.dynalink.support.CallSiteDescriptorFactory: java.util.List tokenizeOperators(jdk.internal.dynalink.CallSiteDescriptor)>(r0);	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0);	r3 = (java.lang.String) $r2;	b2 = -1;	$i1 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i1) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; }; };	$z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");	if $z2 == 0 goto (branch);	tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; };	$r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);	return $r7
;block_num 4