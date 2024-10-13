(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3122 0)
(declare-sort var1560 0)
(declare-sort var899 0)
(declare-sort var2444 0)
(declare-sort var2182 0)
(declare-sort var2116 0)
(declare-sort var3779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1560_getNameTokenCount/-469135163 (var1560) Int)
(declare-fun var2182_tokenizeOperators/419415246 (var1560) var2444)
(declare-fun var2444_get/-1216255739 (var2444 Int) var2116)
(declare-fun cast-from-var2116-to-String (var2116) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun findCallMethod/1150569395 (var3122 var1560 var899) var3779)
(declare-const null-var3122 var3122)
(declare-const null-var1560 var1560)
(declare-const null-var899 var899)
(declare-const var2930 var3122) ; Statement: r4 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var2930 null-var3122)))
(declare-const var782 var1560) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var782 null-var1560)))
(declare-const var3363 var899) ; Statement: r5 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var3363 null-var899)))
(define-const var3636 Int (var1560_getNameTokenCount/-469135163 var782)) ; Statement: i0 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: int getNameTokenCount()>() 
(define-const var3529 var2444 (var2182_tokenizeOperators/419415246 var782)) ; Statement: $r1 = staticinvoke <jdk.internal.dynalink.support.CallSiteDescriptorFactory: java.util.List tokenizeOperators(jdk.internal.dynalink.CallSiteDescriptor)>(r0) 
(define-const var3368 var2116 (var2444_get/-1216255739 var3529 0)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2938 String (cast-from-var2116-to-String var3368)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var1835 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var1193 Int (hashCode/-467973558 var2938)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i1) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; }; } 
(assert (and (= var1193 (- 75566075)) true)) ; Intersect: Cond: $i1 == -75566075  and Non Conditional 
(assert true)
(define-const var524 Bool (= var2938 "getElem")) ; Statement: $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem") 
 ; Statement: if $z7 == 0 goto (branch) 
(assert (= (ite var524 1 0) 0)) ; Cond: $z7 == 0 
 ; Statement: tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; } 
(assert (and (= var1835 5) (and (not (= var1835 4)) (and (not (= var1835 3)) (and (not (= var1835 2)) (and (not (= var1835 1)) (and (not (= var1835 0)) true))))))) ; Intersect: Cond: b2 == 5  and Intersect: Negate: Cond: b2 == 4   and Intersect: Negate: Cond: b2 == 3   and Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional      
(assert true)
(define-const var3778 var3779 (findCallMethod/1150569395 var2930 var782 var3363)) ; Statement: $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1560_getNameTokenCount/-469135163=([jdk.internal.dynalink.CallSiteDescriptor], int), var2182_tokenizeOperators/419415246=([jdk.internal.dynalink.CallSiteDescriptor], java.util.List), var2444_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2116-to-String=([java.lang.Object], java.lang.String), hashCode/-467973558=([java.lang.String], int), findCallMethod/1150569395=([jdk.nashorn.internal.runtime.ScriptObject, jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], jdk.internal.dynalink.linker.GuardedInvocation)}
; {var3122=jdk.nashorn.internal.runtime.ScriptObject, var2930=r4, var1560=jdk.internal.dynalink.CallSiteDescriptor, var782=r0, var899=jdk.internal.dynalink.linker.LinkRequest, var3363=r5, var3636=i0, var2444=java.util.List, var2182=jdk.internal.dynalink.support.CallSiteDescriptorFactory, var3529=$r1, var2116=java.lang.Object, var3368=$r2, var2938=r3, var1835=b2, var1193=$i1, var524=$z7, var3779=jdk.internal.dynalink.linker.GuardedInvocation, var3778=$r8}
; {jdk.nashorn.internal.runtime.ScriptObject=var3122, r4=var2930, jdk.internal.dynalink.CallSiteDescriptor=var1560, r0=var782, jdk.internal.dynalink.linker.LinkRequest=var899, r5=var3363, i0=var3636, java.util.List=var2444, jdk.internal.dynalink.support.CallSiteDescriptorFactory=var2182, $r1=var3529, java.lang.Object=var2116, $r2=var3368, r3=var2938, b2=var1835, $i1=var1193, $z7=var524, jdk.internal.dynalink.linker.GuardedInvocation=var3779, $r8=var3778}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r5 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	i0 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: int getNameTokenCount()>();	$r1 = staticinvoke <jdk.internal.dynalink.support.CallSiteDescriptorFactory: java.util.List tokenizeOperators(jdk.internal.dynalink.CallSiteDescriptor)>(r0);	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0);	r3 = (java.lang.String) $r2;	b2 = -1;	$i1 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i1) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; }; };	$z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");	if $z7 == 0 goto (branch);	tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; };	$r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);	return $r8
;block_num 4