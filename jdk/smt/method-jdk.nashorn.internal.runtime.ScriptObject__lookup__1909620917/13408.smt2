(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2964 0)
(declare-sort var2403 0)
(declare-sort var1463 0)
(declare-sort var3808 0)
(declare-sort var1545 0)
(declare-sort var3976 0)
(declare-sort var709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2403_getNameTokenCount/-469135163 (var2403) Int)
(declare-fun var1545_tokenizeOperators/419415246 (var2403) var3808)
(declare-fun var3808_get/-1216255739 (var3808 Int) var3976)
(declare-fun cast-from-var3976-to-String (var3976) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun findCallMethod/1150569395 (var2964 var2403 var1463) var709)
(declare-const null-var2964 var2964)
(declare-const null-var2403 var2403)
(declare-const null-var1463 var1463)
(declare-const var1877 var2964) ; Statement: r4 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var1877 null-var2964)))
(declare-const var39 var2403) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var39 null-var2403)))
(declare-const var797 var1463) ; Statement: r5 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var797 null-var1463)))
(define-const var3843 Int (var2403_getNameTokenCount/-469135163 var39)) ; Statement: i0 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: int getNameTokenCount()>() 
(define-const var2382 var3808 (var1545_tokenizeOperators/419415246 var39)) ; Statement: $r1 = staticinvoke <jdk.internal.dynalink.support.CallSiteDescriptorFactory: java.util.List tokenizeOperators(jdk.internal.dynalink.CallSiteDescriptor)>(r0) 
(define-const var3344 var3976 (var3808_get/-1216255739 var2382 0)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var1485 String (cast-from-var3976-to-String var3344)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var2877 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var56 Int (hashCode/-467973558 var1485)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i1) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; }; } 
(assert (and (= var56 1402960095) (and (not (= var56 618460119)) (and (not (= var56 3045982)) (and (not (= var56 108960)) (and (not (= var56 (- 75232295))) (and (not (= var56 (- 75566075))) true))))))) ; Intersect: Cond: $i1 == 1402960095  and Intersect: Negate: Cond: $i1 == 618460119   and Intersect: Negate: Cond: $i1 == 3045982   and Intersect: Negate: Cond: $i1 == 108960   and Intersect: Negate: Cond: $i1 == -75232295   and Intersect: Negate: Cond: $i1 == -75566075   and Non Conditional      
(assert true)
(define-const var1812 Bool (= var1485 "callMethod")) ; Statement: $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod") 
 ; Statement: if $z2 == 0 goto (branch) 
(assert (= (ite var1812 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; } 
(assert (and (= var2877 5) (and (not (= var2877 4)) (and (not (= var2877 3)) (and (not (= var2877 2)) (and (not (= var2877 1)) (and (not (= var2877 0)) true))))))) ; Intersect: Cond: b2 == 5  and Intersect: Negate: Cond: b2 == 4   and Intersect: Negate: Cond: b2 == 3   and Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional      
(assert true)
(define-const var554 var709 (findCallMethod/1150569395 var1877 var39 var797)) ; Statement: $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2403_getNameTokenCount/-469135163=([jdk.internal.dynalink.CallSiteDescriptor], int), var1545_tokenizeOperators/419415246=([jdk.internal.dynalink.CallSiteDescriptor], java.util.List), var3808_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3976-to-String=([java.lang.Object], java.lang.String), hashCode/-467973558=([java.lang.String], int), findCallMethod/1150569395=([jdk.nashorn.internal.runtime.ScriptObject, jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], jdk.internal.dynalink.linker.GuardedInvocation)}
; {var2964=jdk.nashorn.internal.runtime.ScriptObject, var1877=r4, var2403=jdk.internal.dynalink.CallSiteDescriptor, var39=r0, var1463=jdk.internal.dynalink.linker.LinkRequest, var797=r5, var3843=i0, var3808=java.util.List, var1545=jdk.internal.dynalink.support.CallSiteDescriptorFactory, var2382=$r1, var3976=java.lang.Object, var3344=$r2, var1485=r3, var2877=b2, var56=$i1, var1812=$z2, var709=jdk.internal.dynalink.linker.GuardedInvocation, var554=$r8}
; {jdk.nashorn.internal.runtime.ScriptObject=var2964, r4=var1877, jdk.internal.dynalink.CallSiteDescriptor=var2403, r0=var39, jdk.internal.dynalink.linker.LinkRequest=var1463, r5=var797, i0=var3843, java.util.List=var3808, jdk.internal.dynalink.support.CallSiteDescriptorFactory=var1545, $r1=var2382, java.lang.Object=var3976, $r2=var3344, r3=var1485, b2=var2877, $i1=var56, $z2=var1812, jdk.internal.dynalink.linker.GuardedInvocation=var709, $r8=var554}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r5 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	i0 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: int getNameTokenCount()>();	$r1 = staticinvoke <jdk.internal.dynalink.support.CallSiteDescriptorFactory: java.util.List tokenizeOperators(jdk.internal.dynalink.CallSiteDescriptor)>(r0);	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0);	r3 = (java.lang.String) $r2;	b2 = -1;	$i1 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i1) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; }; };	$z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");	if $z2 == 0 goto (branch);	tableswitch(b2) {     case 0: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 1: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 2: goto if i0 <= 2 goto $r9 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 3: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 4: goto if i0 <= 2 goto $r10 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findSetIndexMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 5: goto $r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 6: goto $r7 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findNewMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     case 7: goto $r6 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethodMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);     default: goto return null; };	$r8 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findCallMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r5);	return $r8
;block_num 4