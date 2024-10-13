(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2107 0)
(declare-sort var92 0)
(declare-sort var1839 0)
(declare-sort var1207 0)
(declare-sort var126 0)
(declare-sort var1332 0)
(declare-sort var3269 0)
(declare-sort var1252 0)
(declare-sort var1399 0)
(declare-sort var21 0)
(declare-sort var1129 0)
(declare-sort var2380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var92_getMethodType/-466914787 (var92) var1207)
(declare-fun getApplicables/-1463421411 (var2107 var1207 var126) var1332)
(declare-fun findMaximallySpecificMethods/-1247006365 (var1332) var3269)
(declare-fun var3269_isEmpty/-153543822 (var3269) Bool)
(declare-fun methods/2014264644 (var2107) var1252)
(declare-fun clone/807451188 (var1252) var1399)
(declare-fun cast-from-var1399-to-var3269 (var1399) var3269)
(declare-fun getMethods/-607672032 (var1332) var3269)
(declare-fun var3269_removeAll/1163467862 (var3269 var21) Bool)
(declare-fun cast-from-var3269-to-var21 (var3269) var21)
(declare-fun var3269_iterator/-912451715 (var3269) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3269_addAll/-525367613 (var3269 var21) Bool)
(declare-fun var3269_size/-959786421 (var3269) Int)
(declare-fun Iterator_next/-1124697587 (Iterator) var1399)
(declare-fun cast-from-var1399-to-var1129 (var1399) var1129)
(declare-fun getInvocation/1552467103 (var1129 var92 var1839) var2380)
(declare-const null-var2107 var2107)
(declare-const null-var92 var92)
(declare-const null-var1839 var1839)
(declare-const var1332-APPLICABLE_BY_SUBTYPING var126)
(declare-const var1332-APPLICABLE_BY_METHOD_INVOCATION_CONVERSION var126)
(declare-const var1332-APPLICABLE_BY_VARIABLE_ARITY var126)
(declare-const var3364 var2107) ; Statement: r2 := @this: jdk.internal.dynalink.beans.OverloadedDynamicMethod 
(assert (not (= var3364 null-var2107)))
(declare-const var2173 var92) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var2173 null-var92)))
(declare-const var2312 var1839) ; Statement: r11 := @parameter1: jdk.internal.dynalink.linker.LinkerServices 
(assert (not (= var2312 null-var1839)))
(define-const var228 var1207 (var92_getMethodType/-466914787 var2173)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(define-const var784 var126 var1332-APPLICABLE_BY_SUBTYPING) ; Statement: $r3 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_SUBTYPING> 
(assert true)
(define-const var1800 var1332 (getApplicables/-1463421411 var3364 var228 var784)) ; Statement: r4 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r3) 
(define-const var2103 var126 var1332-APPLICABLE_BY_METHOD_INVOCATION_CONVERSION) ; Statement: $r5 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_METHOD_INVOCATION_CONVERSION> 
(assert true)
(define-const var3650 var1332 (getApplicables/-1463421411 var3364 var228 var2103)) ; Statement: r6 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r5) 
(define-const var3714 var126 var1332-APPLICABLE_BY_VARIABLE_ARITY) ; Statement: $r7 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_VARIABLE_ARITY> 
(assert true)
(define-const var2449 var1332 (getApplicables/-1463421411 var3364 var228 var3714)) ; Statement: r8 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r7) 
(assert true)
(define-const var1558 var3269 (findMaximallySpecificMethods/-1247006365 var1800)) ; Statement: r29 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List findMaximallySpecificMethods()>() 
(define-const var585 Bool (var3269_isEmpty/-153543822 var1558)) ; Statement: $z0 = interfaceinvoke r29.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods> 
(assert (= (ite var585 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1742 var1252 (methods/2014264644 var3364)) ; Statement: $r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods> 
(assert true)
(define-const var2985 var1399 (clone/807451188 var1742)) ; Statement: $r31 = virtualinvoke $r30.<java.util.LinkedList: java.lang.Object clone()>() 
(define-const var1103 var3269 (cast-from-var1399-to-var3269 var2985)) ; Statement: $r32 = (java.util.List) $r31 
(assert true)
(define-const var447 var3269 (getMethods/-607672032 var1800)) ; Statement: $r33 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>() 
;(assert (var3269_removeAll/1163467862 var1103 (cast-from-var3269-to-var21 var447))) ; Statement: interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r33) 

(declare-const var1103!1 var3269)
(declare-const var447!1 var3269)
(assert true)
(define-const var3355 var3269 (getMethods/-607672032 var3650)) ; Statement: $r34 = virtualinvoke r6.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>() 
;(assert (var3269_removeAll/1163467862 var1103!1 (cast-from-var3269-to-var21 var3355))) ; Statement: interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r34) 

(declare-const var1103!2 var3269)
(declare-const var3355!1 var3269)
(assert true)
(define-const var2425 var3269 (getMethods/-607672032 var2449)) ; Statement: $r35 = virtualinvoke r8.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>() 
;(assert (var3269_removeAll/1163467862 var1103!2 (cast-from-var3269-to-var21 var2425))) ; Statement: interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r35) 

(declare-const var1103!3 var3269)
(declare-const var2425!1 var3269)
(define-const var2977 Iterator (var3269_iterator/-912451715 var1103!3)) ; Statement: $r36 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var995 Bool (Iterator_hasNext/-1669924200 var2977)) ; Statement: $z5 = interfaceinvoke $r36.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z5 == 0 goto $z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>() 
(assert (= (ite var995 1 0) 0)) ; Cond: $z5 == 0 
(define-const var469 Bool (var3269_isEmpty/-153543822 var1103!3)) ; Statement: $z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29) 
(assert (= (ite var469 1 0) 0)) ; Cond: $z1 == 0 
;(assert (var3269_addAll/-525367613 var1103!3 (cast-from-var3269-to-var21 var1558))) ; Statement: interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29) 

(declare-const var1103!4 var3269)
(declare-const var1558!1 var3269)
(define-const var3266 Int (var3269_size/-959786421 var1103!4)) ; Statement: $i0 = interfaceinvoke $r32.<java.util.List: int size()>() 
 ; Statement: lookupswitch($i0) {     case 0: goto return null;     case 1: goto $r9 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>();     default: goto $r14 = new java.util.ArrayList; } 
(assert (and (= var3266 1) (and (not (= var3266 0)) true))) ; Intersect: Cond: $i0 == 1  and Intersect: Negate: Cond: $i0 == 0   and Non Conditional  
(define-const var2345 Iterator (var3269_iterator/-912451715 var1103!4)) ; Statement: $r9 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>() 
(define-const var2238 var1399 (Iterator_next/-1124697587 var2345)) ; Statement: $r10 = interfaceinvoke $r9.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2345!1 Iterator)
(define-const var2633 var1129 (cast-from-var1399-to-var1129 var2238)) ; Statement: $r12 = (jdk.internal.dynalink.beans.SingleDynamicMethod) $r10 
(assert true)
(define-const var152 var2380 (getInvocation/1552467103 var2633 var2173 var2312)) ; Statement: $r13 = virtualinvoke $r12.<jdk.internal.dynalink.beans.SingleDynamicMethod: java.lang.invoke.MethodHandle getInvocation(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkerServices)>(r0, r11) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var92_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), getApplicables/-1463421411=([jdk.internal.dynalink.beans.OverloadedDynamicMethod, java.lang.invoke.MethodType, jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest], jdk.internal.dynalink.beans.ApplicableOverloadedMethods), findMaximallySpecificMethods/-1247006365=([jdk.internal.dynalink.beans.ApplicableOverloadedMethods], java.util.List), var3269_isEmpty/-153543822=([java.util.List], boolean), methods/2014264644=([jdk.internal.dynalink.beans.OverloadedDynamicMethod], java.util.LinkedList), clone/807451188=([java.util.LinkedList], java.lang.Object), cast-from-var1399-to-var3269=([java.lang.Object], java.util.List), getMethods/-607672032=([jdk.internal.dynalink.beans.ApplicableOverloadedMethods], java.util.List), var3269_removeAll/1163467862=([java.util.List, java.util.Collection], boolean), cast-from-var3269-to-var21=([java.util.List], java.util.Collection), var3269_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3269_addAll/-525367613=([java.util.List, java.util.Collection], boolean), var3269_size/-959786421=([java.util.List], int), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1399-to-var1129=([java.lang.Object], jdk.internal.dynalink.beans.SingleDynamicMethod), getInvocation/1552467103=([jdk.internal.dynalink.beans.SingleDynamicMethod, jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkerServices], java.lang.invoke.MethodHandle)}
; {var2107=jdk.internal.dynalink.beans.OverloadedDynamicMethod, var3364=r2, var92=jdk.internal.dynalink.CallSiteDescriptor, var2173=r0, var1839=jdk.internal.dynalink.linker.LinkerServices, var2312=r11, var1207=java.lang.invoke.MethodType, var228=r1, var126=jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest, var1332=jdk.internal.dynalink.beans.ApplicableOverloadedMethods, var784=$r3, var1800=r4, var2103=$r5, var3650=r6, var3714=$r7, var2449=r8, var3269=java.util.List, var1558=r29, var585=$z0, var1252=java.util.LinkedList, var1742=$r30, var1399=java.lang.Object, var2985=$r31, var1103=$r32, var447=$r33, var21=java.util.Collection, var3355=$r34, var2425=$r35, var2977=$r36, var995=$z5, var469=$z1, var3266=$i0, var2345=$r9, var2238=$r10, var1129=jdk.internal.dynalink.beans.SingleDynamicMethod, var2633=$r12, var2380=java.lang.invoke.MethodHandle, var152=$r13}
; {jdk.internal.dynalink.beans.OverloadedDynamicMethod=var2107, r2=var3364, jdk.internal.dynalink.CallSiteDescriptor=var92, r0=var2173, jdk.internal.dynalink.linker.LinkerServices=var1839, r11=var2312, java.lang.invoke.MethodType=var1207, r1=var228, jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest=var126, jdk.internal.dynalink.beans.ApplicableOverloadedMethods=var1332, $r3=var784, r4=var1800, $r5=var2103, r6=var3650, $r7=var3714, r8=var2449, java.util.List=var3269, r29=var1558, $z0=var585, java.util.LinkedList=var1252, $r30=var1742, java.lang.Object=var1399, $r31=var2985, $r32=var1103, $r33=var447, java.util.Collection=var21, $r34=var3355, $r35=var2425, $r36=var2977, $z5=var995, $z1=var469, $i0=var3266, $r9=var2345, $r10=var2238, jdk.internal.dynalink.beans.SingleDynamicMethod=var1129, $r12=var2633, java.lang.invoke.MethodHandle=var2380, $r13=var152}
;seq 
;cnt {}
;stmts r2 := @this: jdk.internal.dynalink.beans.OverloadedDynamicMethod;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r11 := @parameter1: jdk.internal.dynalink.linker.LinkerServices;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	$r3 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_SUBTYPING>;	r4 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r3);	$r5 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_METHOD_INVOCATION_CONVERSION>;	r6 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r5);	$r7 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_VARIABLE_ARITY>;	r8 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r7);	r29 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List findMaximallySpecificMethods()>();	$z0 = interfaceinvoke r29.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods>;	$r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods>;	$r31 = virtualinvoke $r30.<java.util.LinkedList: java.lang.Object clone()>();	$r32 = (java.util.List) $r31;	$r33 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>();	interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r33);	$r34 = virtualinvoke r6.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>();	interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r34);	$r35 = virtualinvoke r8.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>();	interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r35);	$r36 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>();	$z5 = interfaceinvoke $r36.<java.util.Iterator: boolean hasNext()>();	if $z5 == 0 goto $z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>();	$z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>();	if $z1 == 0 goto interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29);	interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29);	$i0 = interfaceinvoke $r32.<java.util.List: int size()>();	lookupswitch($i0) {     case 0: goto return null;     case 1: goto $r9 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>();     default: goto $r14 = new java.util.ArrayList; };	$r9 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>();	$r10 = interfaceinvoke $r9.<java.util.Iterator: java.lang.Object next()>();	$r12 = (jdk.internal.dynalink.beans.SingleDynamicMethod) $r10;	$r13 = virtualinvoke $r12.<jdk.internal.dynalink.beans.SingleDynamicMethod: java.lang.invoke.MethodHandle getInvocation(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkerServices)>(r0, r11);	return $r13
;block_num 6