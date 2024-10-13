(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1788 0)
(declare-sort var877 0)
(declare-sort var1570 0)
(declare-sort var809 0)
(declare-sort var2231 0)
(declare-sort var1387 0)
(declare-sort var3230 0)
(declare-sort var3973 0)
(declare-sort var3128 0)
(declare-sort var2191 0)
(declare-sort var3695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var877_getMethodType/-466914787 (var877) var809)
(declare-fun getApplicables/-1463421411 (var1788 var809 var2231) var1387)
(declare-fun findMaximallySpecificMethods/-1247006365 (var1387) var3230)
(declare-fun var3230_isEmpty/-153543822 (var3230) Bool)
(declare-fun methods/2014264644 (var1788) var3973)
(declare-fun clone/807451188 (var3973) var3128)
(declare-fun cast-from-var3128-to-var3230 (var3128) var3230)
(declare-fun getMethods/-607672032 (var1387) var3230)
(declare-fun var3230_removeAll/1163467862 (var3230 var2191) Bool)
(declare-fun cast-from-var3230-to-var2191 (var3230) var2191)
(declare-fun var3230_iterator/-912451715 (var3230) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3230_size/-959786421 (var3230) Int)
(declare-fun var3695-init () var3695)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3128) String)
(declare-fun cast-from-var3230-to-var3128 (var3230) var3128)
(declare-fun cast-from-var809-to-var3128 (var809) var3128)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1100755667 (var3695 String) void)
(declare-const null-var1788 var1788)
(declare-const null-var877 var877)
(declare-const null-var1570 var1570)
(declare-const var1387-APPLICABLE_BY_SUBTYPING var2231)
(declare-const var1387-APPLICABLE_BY_METHOD_INVOCATION_CONVERSION var2231)
(declare-const var1387-APPLICABLE_BY_VARIABLE_ARITY var2231)
(declare-const var2412 var1788) ; Statement: r2 := @this: jdk.internal.dynalink.beans.OverloadedDynamicMethod 
(assert (not (= var2412 null-var1788)))
(declare-const var1334 var877) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var1334 null-var877)))
(declare-const var1282 var1570) ; Statement: r11 := @parameter1: jdk.internal.dynalink.linker.LinkerServices 
(assert (not (= var1282 null-var1570)))
(define-const var1061 var809 (var877_getMethodType/-466914787 var1334)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(define-const var689 var2231 var1387-APPLICABLE_BY_SUBTYPING) ; Statement: $r3 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_SUBTYPING> 
(assert true)
(define-const var143 var1387 (getApplicables/-1463421411 var2412 var1061 var689)) ; Statement: r4 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r3) 
(define-const var892 var2231 var1387-APPLICABLE_BY_METHOD_INVOCATION_CONVERSION) ; Statement: $r5 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_METHOD_INVOCATION_CONVERSION> 
(assert true)
(define-const var2267 var1387 (getApplicables/-1463421411 var2412 var1061 var892)) ; Statement: r6 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r5) 
(define-const var1304 var2231 var1387-APPLICABLE_BY_VARIABLE_ARITY) ; Statement: $r7 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_VARIABLE_ARITY> 
(assert true)
(define-const var2265 var1387 (getApplicables/-1463421411 var2412 var1061 var1304)) ; Statement: r8 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r7) 
(assert true)
(define-const var3393 var3230 (findMaximallySpecificMethods/-1247006365 var143)) ; Statement: r29 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List findMaximallySpecificMethods()>() 
(define-const var1162 Bool (var3230_isEmpty/-153543822 var3393)) ; Statement: $z0 = interfaceinvoke r29.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods> 
(assert (= (ite var1162 1 0) 0)) ; Cond: $z0 == 0 
(define-const var833 var3973 (methods/2014264644 var2412)) ; Statement: $r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods> 
(assert true)
(define-const var1054 var3128 (clone/807451188 var833)) ; Statement: $r31 = virtualinvoke $r30.<java.util.LinkedList: java.lang.Object clone()>() 
(define-const var2681 var3230 (cast-from-var3128-to-var3230 var1054)) ; Statement: $r32 = (java.util.List) $r31 
(assert true)
(define-const var390 var3230 (getMethods/-607672032 var143)) ; Statement: $r33 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>() 
;(assert (var3230_removeAll/1163467862 var2681 (cast-from-var3230-to-var2191 var390))) ; Statement: interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r33) 

(declare-const var2681!1 var3230)
(declare-const var390!1 var3230)
(assert true)
(define-const var2128 var3230 (getMethods/-607672032 var2267)) ; Statement: $r34 = virtualinvoke r6.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>() 
;(assert (var3230_removeAll/1163467862 var2681!1 (cast-from-var3230-to-var2191 var2128))) ; Statement: interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r34) 

(declare-const var2681!2 var3230)
(declare-const var2128!1 var3230)
(assert true)
(define-const var3492 var3230 (getMethods/-607672032 var2265)) ; Statement: $r35 = virtualinvoke r8.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>() 
;(assert (var3230_removeAll/1163467862 var2681!2 (cast-from-var3230-to-var2191 var3492))) ; Statement: interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r35) 

(declare-const var2681!3 var3230)
(declare-const var3492!1 var3230)
(define-const var62 Iterator (var3230_iterator/-912451715 var2681!3)) ; Statement: $r36 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2860 Bool (Iterator_hasNext/-1669924200 var62)) ; Statement: $z5 = interfaceinvoke $r36.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z5 == 0 goto $z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>() 
(assert (= (ite var2860 1 0) 0)) ; Cond: $z5 == 0 
(define-const var579 Bool (var3230_isEmpty/-153543822 var2681!3)) ; Statement: $z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29) 
(assert (not (= (ite var579 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var671 Int (var3230_size/-959786421 var3393)) ; Statement: $i2 = interfaceinvoke r29.<java.util.List: int size()>() 
 ; Statement: if $i2 <= 1 goto interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29) 
(assert (not (<= var671 1))) ; Negate: Cond: $i2 <= 1  
(define-const var1349 var3695 var3695-init) ; Statement: $r21 = new java.lang.BootstrapMethodError 
(define-const var1462 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1462)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1462!1 String)
(assert (= var1462!1 ""))
(assert true)
(define-const var2348 String (append/672562846 var1462!1 "Can\u0027t choose among ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t choose among ") 
(declare-const var1462!2 String)
(assert (= var1462!2 (str.++ var1462!1 "Can\u0027t choose among ")))
(assert true)
(define-const var3988 String (append/-1031950772 var2348 (cast-from-var3230-to-var3128 var3393))) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r29) 
(declare-const var2348!1 String)
(assert (str.prefixof var2348 var2348!1))
(assert true)
(define-const var3173 String (append/672562846 var3988 " for argument types ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for argument types ") 
(declare-const var3988!1 String)
(assert (= var3988!1 (str.++ var3988 " for argument types ")))
(assert true)
(define-const var612 String (append/-1031950772 var3173 (cast-from-var809-to-var3128 var1061))) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3173!1 String)
(assert (str.prefixof var3173 var3173!1))
(assert true)
(define-const var9 String (toString/-2075883882 var612)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1100755667 var1349 var9)) ; Statement: specialinvoke $r21.<java.lang.BootstrapMethodError: void <init>(java.lang.String)>($r27) 

(declare-const var1349!1 var3695)
(declare-const var9!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var877_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), getApplicables/-1463421411=([jdk.internal.dynalink.beans.OverloadedDynamicMethod, java.lang.invoke.MethodType, jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest], jdk.internal.dynalink.beans.ApplicableOverloadedMethods), findMaximallySpecificMethods/-1247006365=([jdk.internal.dynalink.beans.ApplicableOverloadedMethods], java.util.List), var3230_isEmpty/-153543822=([java.util.List], boolean), methods/2014264644=([jdk.internal.dynalink.beans.OverloadedDynamicMethod], java.util.LinkedList), clone/807451188=([java.util.LinkedList], java.lang.Object), cast-from-var3128-to-var3230=([java.lang.Object], java.util.List), getMethods/-607672032=([jdk.internal.dynalink.beans.ApplicableOverloadedMethods], java.util.List), var3230_removeAll/1163467862=([java.util.List, java.util.Collection], boolean), cast-from-var3230-to-var2191=([java.util.List], java.util.Collection), var3230_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3230_size/-959786421=([java.util.List], int), var3695-init=([], java.lang.BootstrapMethodError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3230-to-var3128=([java.util.List], java.lang.Object), cast-from-var809-to-var3128=([java.lang.invoke.MethodType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1100755667=([java.lang.BootstrapMethodError, java.lang.String], void)}
; {var1788=jdk.internal.dynalink.beans.OverloadedDynamicMethod, var2412=r2, var877=jdk.internal.dynalink.CallSiteDescriptor, var1334=r0, var1570=jdk.internal.dynalink.linker.LinkerServices, var1282=r11, var809=java.lang.invoke.MethodType, var1061=r1, var2231=jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest, var1387=jdk.internal.dynalink.beans.ApplicableOverloadedMethods, var689=$r3, var143=r4, var892=$r5, var2267=r6, var1304=$r7, var2265=r8, var3230=java.util.List, var3393=r29, var1162=$z0, var3973=java.util.LinkedList, var833=$r30, var3128=java.lang.Object, var1054=$r31, var2681=$r32, var390=$r33, var2191=java.util.Collection, var2128=$r34, var3492=$r35, var62=$r36, var2860=$z5, var579=$z1, var671=$i2, var3695=java.lang.BootstrapMethodError, var1349=$r21, var1462=$r22, var2348=$r23, var3988=$r24, var3173=$r25, var612=$r26, var9=$r27}
; {jdk.internal.dynalink.beans.OverloadedDynamicMethod=var1788, r2=var2412, jdk.internal.dynalink.CallSiteDescriptor=var877, r0=var1334, jdk.internal.dynalink.linker.LinkerServices=var1570, r11=var1282, java.lang.invoke.MethodType=var809, r1=var1061, jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest=var2231, jdk.internal.dynalink.beans.ApplicableOverloadedMethods=var1387, $r3=var689, r4=var143, $r5=var892, r6=var2267, $r7=var1304, r8=var2265, java.util.List=var3230, r29=var3393, $z0=var1162, java.util.LinkedList=var3973, $r30=var833, java.lang.Object=var3128, $r31=var1054, $r32=var2681, $r33=var390, java.util.Collection=var2191, $r34=var2128, $r35=var3492, $r36=var62, $z5=var2860, $z1=var579, $i2=var671, java.lang.BootstrapMethodError=var3695, $r21=var1349, $r22=var1462, $r23=var2348, $r24=var3988, $r25=var3173, $r26=var612, $r27=var9}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: jdk.internal.dynalink.beans.OverloadedDynamicMethod;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r11 := @parameter1: jdk.internal.dynalink.linker.LinkerServices;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	$r3 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_SUBTYPING>;	r4 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r3);	$r5 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_METHOD_INVOCATION_CONVERSION>;	r6 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r5);	$r7 = <jdk.internal.dynalink.beans.ApplicableOverloadedMethods: jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest APPLICABLE_BY_VARIABLE_ARITY>;	r8 = specialinvoke r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: jdk.internal.dynalink.beans.ApplicableOverloadedMethods getApplicables(java.lang.invoke.MethodType,jdk.internal.dynalink.beans.ApplicableOverloadedMethods$ApplicabilityTest)>(r1, $r7);	r29 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List findMaximallySpecificMethods()>();	$z0 = interfaceinvoke r29.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods>;	$r30 = r2.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods>;	$r31 = virtualinvoke $r30.<java.util.LinkedList: java.lang.Object clone()>();	$r32 = (java.util.List) $r31;	$r33 = virtualinvoke r4.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>();	interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r33);	$r34 = virtualinvoke r6.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>();	interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r34);	$r35 = virtualinvoke r8.<jdk.internal.dynalink.beans.ApplicableOverloadedMethods: java.util.List getMethods()>();	interfaceinvoke $r32.<java.util.List: boolean removeAll(java.util.Collection)>($r35);	$r36 = interfaceinvoke $r32.<java.util.List: java.util.Iterator iterator()>();	$z5 = interfaceinvoke $r36.<java.util.Iterator: boolean hasNext()>();	if $z5 == 0 goto $z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>();	$z1 = interfaceinvoke $r32.<java.util.List: boolean isEmpty()>();	if $z1 == 0 goto interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29);	$i2 = interfaceinvoke r29.<java.util.List: int size()>();	if $i2 <= 1 goto interfaceinvoke $r32.<java.util.List: boolean addAll(java.util.Collection)>(r29);	$r21 = new java.lang.BootstrapMethodError;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t choose among ");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r29);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for argument types ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.lang.BootstrapMethodError: void <init>(java.lang.String)>($r27);	throw $r21
;block_num 6