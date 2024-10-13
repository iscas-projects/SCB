(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1934 0)
(declare-sort var2292 0)
(declare-sort var28 0)
(declare-sort var3925 0)
(declare-sort var2858 0)
(declare-sort var2334 0)
(declare-sort var1825 0)
(declare-sort var3930 0)
(declare-sort var2420 0)
(declare-sort var3038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2292_getMethodType/-466914787 (var2292) var3925)
(declare-fun getApplicables/-1463421411 (var1934 var3925 var2858) var2334)
(declare-fun findMaximallySpecificMethods/-1247006365 (var2334) var1825)
(declare-fun var1825_isEmpty/-153543822 (var1825) Bool)
(declare-fun methods/2014264644 (var1934) var3930)
(declare-fun clone/807451188 (var3930) var2420)
(declare-fun cast-from-var2420-to-var1825 (var2420) var1825)
(declare-fun getMethods/-607672032 (var2334) var1825)
(declare-fun var1825_removeAll/1163467862 (var1825 var3038) Bool)
(declare-fun cast-from-var1825-to-var3038 (var1825) var3038)
(declare-fun var1825_iterator/-912451715 (var1825) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1825_addAll/-525367613 (var1825 var3038) Bool)
(declare-fun var1825_size/-959786421 (var1825) Int)
(declare-const null-var1934 var1934)
(declare-const null-var2292 var2292)
(declare-const null-var28 var28)
(declare-const var2334-APPLICABLE_BY_SUBTYPING var2858)
(declare-const var2334-APPLICABLE_BY_METHOD_INVOCATION_CONVERSION var2858)
(declare-const var2334-APPLICABLE_BY_VARIABLE_ARITY var2858)
(declare-const var1345 var1934) ; Statement: r2 := @this: jdk.internal.dynalink.beans.OverloadedDynamicMethod 
(assert (not (= var1345 null-var1934)))
(declare-const var2873 var2292) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var2873 null-var2292)))
(declare-const var215 var28) ; Statement: r11 := @parameter1: jdk.internal.dynalink.linker.LinkerServices 
(assert (not (= var215 null-var28)))
(define-const var3839 var3925 (var2292_getMethodType/-466914787 var2873)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(define-const var1122 var2858 var2334-APPLICABLE_BY_SUBTYPING) ; Statement: $r3 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_SUBTYPING> 
(assert true)
(define-const var1034 var2334 (getApplicables/-1463421411 var1345 var3839 var1122)) ; Statement: r4 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r3) 
(define-const var3319 var2858 var2334-APPLICABLE_BY_METHOD_INVOCATION_CONVERSION) ; Statement: $r5 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_METHOD_INVOCATION_CONVERSION> 
(assert true)
(define-const var1254 var2334 (getApplicables/-1463421411 var1345 var3839 var3319)) ; Statement: r6 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r5) 
(define-const var1868 var2858 var2334-APPLICABLE_BY_VARIABLE_ARITY) ; Statement: $r7 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_VARIABLE_ARITY> 
(assert true)
(define-const var994 var2334 (getApplicables/-1463421411 var1345 var3839 var1868)) ; Statement: r8 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r7) 
(assert true)
(define-const var3209 var1825 (findMaximallySpecificMethods/-1247006365 var1034)) ; Statement: r29 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List findMaximallySpecificMethods()>() 
(define-const var3610 Bool (var1825_isEmpty/-153543822 var3209)) ; Statement: $z0 = interfaceinvoke r29.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods> 
(assert (= (ite var3610 1 0) 0)) ; Cond: $z0 == 0 
(define-const var681 var3930 (methods/2014264644 var1345)) ; Statement: $r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods> 
(assert true)
(define-const var2166 var2420 (clone/807451188 var681)) ; Statement: $r31 = virtualinvoke $r30.<java.util.LinkedList: java.lang.Object clone()>() 
(define-const var2891 var1825 (cast-from-var2420-to-var1825 var2166)) ; Statement: $r32 = (java.util.List) $r31 
(assert true)
(define-const var3212 var1825 (getMethods/-607672032 var1034)) ; Statement: $r33 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>() 
;(assert (var1825_removeAll/1163467862 var2891 (cast-from-var1825-to-var3038 var3212))) ; Statement: interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r33) 

(declare-const var2891!1 var1825)
(declare-const var3212!1 var1825)
(assert true)
(define-const var3618 var1825 (getMethods/-607672032 var1254)) ; Statement: $r34 = virtualinvoke r6.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>() 
;(assert (var1825_removeAll/1163467862 var2891!1 (cast-from-var1825-to-var3038 var3618))) ; Statement: interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r34) 

(declare-const var2891!2 var1825)
(declare-const var3618!1 var1825)
(assert true)
(define-const var2522 var1825 (getMethods/-607672032 var994)) ; Statement: $r35 = virtualinvoke r8.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>() 
;(assert (var1825_removeAll/1163467862 var2891!2 (cast-from-var1825-to-var3038 var2522))) ; Statement: interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r35) 

(declare-const var2891!3 var1825)
(declare-const var2522!1 var1825)
(define-const var2391 Iterator (var1825_iterator/-912451715 var2891!3)) ; Statement: $r36 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1745 Bool (Iterator_hasNext/-1669924200 var2391)) ; Statement: $z5 = interfaceinvoke $r36.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z5 == 0 goto $z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>() 
(assert (= (ite var1745 1 0) 0)) ; Cond: $z5 == 0 
(define-const var754 Bool (var1825_isEmpty/-153543822 var2891!3)) ; Statement: $z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29) 
(assert (= (ite var754 1 0) 0)) ; Cond: $z1 == 0 
;(assert (var1825_addAll/-525367613 var2891!3 (cast-from-var1825-to-var3038 var3209))) ; Statement: interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29) 

(declare-const var2891!4 var1825)
(declare-const var3209!1 var1825)
(define-const var3561 Int (var1825_size/-959786421 var2891!4)) ; Statement: $i0 = interfaceinvoke $r32.<java.util.List: int size()>() 
 ; Statement: lookupswitch($i0) {     case 0: goto return null;     case 1: goto $r9 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>();     default: goto $r14 = new java.util.ArrayList; } 
(assert (and (= var3561 0) true)) ; Intersect: Cond: $i0 == 0  and Non Conditional 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2292_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), getApplicables/-1463421411=([jdk.internal.dynalink.beans.OverloadedDynamicMethod, java.lang.invoke.MethodType, jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest], jdk.internal.dynalink.beans.ApplicableOverloadedMethods), findMaximallySpecificMethods/-1247006365=([jdk.internal.dynalink.beans.ApplicableOverloadedMethods], java.util.List), var1825_isEmpty/-153543822=([java.util.List], boolean), methods/2014264644=([jdk.internal.dynalink.beans.OverloadedDynamicMethod], java.util.LinkedList), clone/807451188=([java.util.LinkedList], java.lang.Object), cast-from-var2420-to-var1825=([java.lang.Object], java.util.List), getMethods/-607672032=([jdk.internal.dynalink.beans.ApplicableOverloadedMethods], java.util.List), var1825_removeAll/1163467862=([java.util.List, java.util.Collection], boolean), cast-from-var1825-to-var3038=([java.util.List], java.util.Collection), var1825_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1825_addAll/-525367613=([java.util.List, java.util.Collection], boolean), var1825_size/-959786421=([java.util.List], int)}
; {var1934=jdk.internal.dynalink.beans.OverloadedDynamicMethod, var1345=r2, var2292=jdk.internal.dynalink.CallSiteDescriptor, var2873=r0, var28=jdk.internal.dynalink.linker.LinkerServices, var215=r11, var3925=java.lang.invoke.MethodType, var3839=r1, var2858=jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest, var2334=jdk.internal.dynalink.beans.ApplicableOverloadedMethods, var1122=$r3, var1034=r4, var3319=$r5, var1254=r6, var1868=$r7, var994=r8, var1825=java.util.List, var3209=r29, var3610=$z0, var3930=java.util.LinkedList, var681=$r30, var2420=java.lang.Object, var2166=$r31, var2891=$r32, var3212=$r33, var3038=java.util.Collection, var3618=$r34, var2522=$r35, var2391=$r36, var1745=$z5, var754=$z1, var3561=$i0}
; {jdk.internal.dynalink.beans.OverloadedDynamicMethod=var1934, r2=var1345, jdk.internal.dynalink.CallSiteDescriptor=var2292, r0=var2873, jdk.internal.dynalink.linker.LinkerServices=var28, r11=var215, java.lang.invoke.MethodType=var3925, r1=var3839, jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest=var2858, jdk.internal.dynalink.beans.ApplicableOverloadedMethods=var2334, $r3=var1122, r4=var1034, $r5=var3319, r6=var1254, $r7=var1868, r8=var994, java.util.List=var1825, r29=var3209, $z0=var3610, java.util.LinkedList=var3930, $r30=var681, java.lang.Object=var2420, $r31=var2166, $r32=var2891, $r33=var3212, java.util.Collection=var3038, $r34=var3618, $r35=var2522, $r36=var2391, $z5=var1745, $z1=var754, $i0=var3561}
;seq 
;cnt {}
;stmts r2 := @this: jdk.internal.dynalink.beans.OverloadedDynamicMethod;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r11 := @parameter1: jdk.internal.dynalink.linker.LinkerServices;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	$r3 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_SUBTYPING>;	r4 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r3);	$r5 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_METHOD_INVOCATION_CONVERSION>;	r6 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r5);	$r7 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_VARIABLE_ARITY>;	r8 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r7);	r29 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List findMaximallySpecificMethods()>();	$z0 = interfaceinvoke r29.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods>;	$r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods>;	$r31 = virtualinvoke $r30.<java.util.LinkedList: java.lang.Object clone()>();	$r32 = (java.util.List) $r31;	$r33 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>();	interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r33);	$r34 = virtualinvoke r6.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>();	interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r34);	$r35 = virtualinvoke r8.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>();	interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r35);	$r36 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>();	$z5 = interfaceinvoke $r36.<java.util.Iterator: boolean hasNext()>();	if $z5 == 0 goto $z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>();	$z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>();	if $z1 == 0 goto interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29);	interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29);	$i0 = interfaceinvoke $r32.<java.util.List: int size()>();	lookupswitch($i0) {     case 0: goto return null;     case 1: goto $r9 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>();     default: goto $r14 = new java.util.ArrayList; };	return null
;block_num 6