(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1124 0)
(declare-sort var201 0)
(declare-sort var3711 0)
(declare-sort var91 0)
(declare-sort var1214 0)
(declare-sort var1037 0)
(declare-sort var2724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var201_get/-1216255739 (var201 Int) var3711)
(declare-fun cast-from-var3711-to-var91 (var3711) var91)
(declare-fun isVarargsCollector/-610413635 (var91) Bool)
(declare-fun var1214-init () var1214)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1124_getSignatureList/91443967 (var201) String)
(declare-fun parent/1566026269 (var1124) var1037)
(declare-fun getName/191485936 (var2724) String)
(declare-fun cast-from-var1037-to-var2724 (var1037) var2724)
(declare-fun var1124_argTypesString/1562103107 ((Array Int ClassObject)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var1214 String) void)
(declare-const null-var1124 var1124)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var201 var201)
(declare-const var3460 var1124) ; Statement: r10 := @this: jdk.internal.dynalink.beans.OverloadedMethod 
(assert (not (= var3460 null-var1124)))
(declare-const var2406 (Array Int ClassObject)) ; Statement: r15 := @parameter0: java.lang.Class[] 
(assert (not (= var2406 null-__Array__Int__ClassObject__)))
(declare-const var2686 var201) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var2686 null-var201)))
(define-const var2601 var3711 (var201_get/-1216255739 var2686 0)) ; Statement: $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2611 var91 (cast-from-var3711-to-var91 var2601)) ; Statement: $r2 = (java.lang.invoke.MethodHandle) $r1 
(assert true)
(define-const var1630 Bool (isVarargsCollector/-610413635 var2611)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.invoke.MethodHandle: boolean isVarargsCollector()>() 
 ; Statement: if $z0 == 0 goto $r20 = "fixed" 
(assert (= (ite var1630 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2663 String "fixed") ; Statement: $r20 = "fixed" 
(assert true) ; Non Conditional
(define-const var1892 var1214 var1214-init) ; Statement: $r3 = new java.lang.NoSuchMethodException 
(define-const var3709 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3709)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3709!1 String)
(assert (= var3709!1 ""))
(assert true)
(define-const var1489 String (append/672562846 var3709!1 "Can\u0027t unambiguously select between ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t unambiguously select between ") 
(declare-const var3709!2 String)
(assert (= var3709!2 (str.++ var3709!1 "Can\u0027t unambiguously select between ")))
(assert true)
(define-const var2692 String (append/672562846 var1489 var2663)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1489!1 String)
(assert (= var1489!1 (str.++ var1489 var2663)))
(assert true)
(define-const var3942 String (append/672562846 var2692 " arity signatures ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" arity signatures ") 
(declare-const var2692!1 String)
(assert (= var2692!1 (str.++ var2692 " arity signatures ")))
(define-const var10 String (var1124_getSignatureList/91443967 var2686)) ; Statement: $r7 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String getSignatureList(java.util.List)>(r0) 
(assert true)
(define-const var3967 String (append/672562846 var3942 var10)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3942!1 String)
(assert (= var3942!1 (str.++ var3942 var10)))
(assert true)
(define-const var2972 String (append/672562846 var3967 " of the method ")) ; Statement: $r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of the method ") 
(declare-const var3967!1 String)
(assert (= var3967!1 (str.++ var3967 " of the method ")))
(define-const var1777 var1037 (parent/1566026269 var3460)) ; Statement: $r11 = r10.<jdk.internal.dynalink.beans.OverloadedMethod: jdk.internal.dynalink.beans.OverloadedDynamicMethod parent> 
(assert true)
(define-const var301 String (getName/191485936 (cast-from-var1037-to-var2724 var1777))) ; Statement: $r12 = virtualinvoke $r11.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.lang.String getName()>() 
(assert true)
(define-const var609 String (append/672562846 var2972 var301)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2972!1 String)
(assert (= var2972!1 (str.++ var2972 var301)))
(assert true)
(define-const var1886 String (append/672562846 var609 " for argument types ")) ; Statement: $r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for argument types ") 
(declare-const var609!1 String)
(assert (= var609!1 (str.++ var609 " for argument types ")))
(define-const var603 String (var1124_argTypesString/1562103107 var2406)) ; Statement: $r16 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String argTypesString(java.lang.Class[])>(r15) 
(assert true)
(define-const var1749 String (append/672562846 var1886 var603)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1886!1 String)
(assert (= var1886!1 (str.++ var1886 var603)))
(assert true)
(define-const var1932 String (toString/-2075883882 var1749)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var1892 var1932)) ; Statement: specialinvoke $r3.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r19) 

(declare-const var1892!1 var1214)
(declare-const var1932!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var201_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3711-to-var91=([java.lang.Object], java.lang.invoke.MethodHandle), isVarargsCollector/-610413635=([java.lang.invoke.MethodHandle], boolean), var1214-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1124_getSignatureList/91443967=([java.util.List], java.lang.String), parent/1566026269=([jdk.internal.dynalink.beans.OverloadedMethod], jdk.internal.dynalink.beans.OverloadedDynamicMethod), getName/191485936=([jdk.internal.dynalink.beans.DynamicMethod], java.lang.String), cast-from-var1037-to-var2724=([jdk.internal.dynalink.beans.OverloadedDynamicMethod], jdk.internal.dynalink.beans.DynamicMethod), var1124_argTypesString/1562103107=([java.lang.Class[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var1124=jdk.internal.dynalink.beans.OverloadedMethod, var3460=r10, var2406=r15, var201=java.util.List, var2686=r0, var3711=java.lang.Object, var2601=$r1, var91=java.lang.invoke.MethodHandle, var2611=$r2, var1630=$z0, var2663=$r20, var1214=java.lang.NoSuchMethodException, var1892=$r3, var3709=$r4, var1489=$r5, var2692=$r6, var3942=$r8, var10=$r7, var3967=$r9, var2972=$r13, var1037=jdk.internal.dynalink.beans.OverloadedDynamicMethod, var1777=$r11, var2724=jdk.internal.dynalink.beans.DynamicMethod, var301=$r12, var609=$r14, var1886=$r17, var603=$r16, var1749=$r18, var1932=$r19}
; {jdk.internal.dynalink.beans.OverloadedMethod=var1124, r10=var3460, r15=var2406, java.util.List=var201, r0=var2686, java.lang.Object=var3711, $r1=var2601, java.lang.invoke.MethodHandle=var91, $r2=var2611, $z0=var1630, $r20=var2663, java.lang.NoSuchMethodException=var1214, $r3=var1892, $r4=var3709, $r5=var1489, $r6=var2692, $r8=var3942, $r7=var10, $r9=var3967, $r13=var2972, jdk.internal.dynalink.beans.OverloadedDynamicMethod=var1037, $r11=var1777, jdk.internal.dynalink.beans.DynamicMethod=var2724, $r12=var301, $r14=var609, $r17=var1886, $r16=var603, $r18=var1749, $r19=var1932}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: jdk.internal.dynalink.beans.OverloadedMethod;	r15 := @parameter0: java.lang.Class[];	r0 := @parameter1: java.util.List;	$r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r2 = (java.lang.invoke.MethodHandle) $r1;	$z0 = virtualinvoke $r2.<java.lang.invoke.MethodHandle: boolean isVarargsCollector()>();	if $z0 == 0 goto $r20 = "fixed";	$r20 = "fixed";	$r3 = new java.lang.NoSuchMethodException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t unambiguously select between ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" arity signatures ");	$r7 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String getSignatureList(java.util.List)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of the method ");	$r11 = r10.<jdk.internal.dynalink.beans.OverloadedMethod: jdk.internal.dynalink.beans.OverloadedDynamicMethod parent>;	$r12 = virtualinvoke $r11.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for argument types ");	$r16 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String argTypesString(java.lang.Class[])>(r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r19);	throw $r3
;block_num 3