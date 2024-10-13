(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1291 0)
(declare-sort var2990 0)
(declare-sort var3759 0)
(declare-sort var3892 0)
(declare-sort var3855 0)
(declare-sort var2940 0)
(declare-sort var3669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2990_get/-1216255739 (var2990 Int) var3759)
(declare-fun cast-from-var3759-to-var3892 (var3759) var3892)
(declare-fun isVarargsCollector/-610413635 (var3892) Bool)
(declare-fun var3855-init () var3855)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1291_getSignatureList/91443967 (var2990) String)
(declare-fun parent/1566026269 (var1291) var2940)
(declare-fun getName/191485936 (var3669) String)
(declare-fun cast-from-var2940-to-var3669 (var2940) var3669)
(declare-fun var1291_argTypesString/1562103107 ((Array Int ClassObject)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var3855 String) void)
(declare-const null-var1291 var1291)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var2990 var2990)
(declare-const var3960 var1291) ; Statement: r10 := @this: jdk.internal.dynalink.beans.OverloadedMethod 
(assert (not (= var3960 null-var1291)))
(declare-const var1229 (Array Int ClassObject)) ; Statement: r15 := @parameter0: java.lang.Class[] 
(assert (not (= var1229 null-__Array__Int__ClassObject__)))
(declare-const var1616 var2990) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var1616 null-var2990)))
(define-const var1227 var3759 (var2990_get/-1216255739 var1616 0)) ; Statement: $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var3270 var3892 (cast-from-var3759-to-var3892 var1227)) ; Statement: $r2 = (java.lang.invoke.MethodHandle) $r1 
(assert true)
(define-const var2819 Bool (isVarargsCollector/-610413635 var3270)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.invoke.MethodHandle: boolean isVarargsCollector()>() 
 ; Statement: if $z0 == 0 goto $r20 = "fixed" 
(assert (not (= (ite var2819 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1369 String "variable") ; Statement: $r20 = "variable" 
 ; Statement: goto [?= $r3 = new java.lang.NoSuchMethodException] 
(assert true) ; Non Conditional
(define-const var3856 var3855 var3855-init) ; Statement: $r3 = new java.lang.NoSuchMethodException 
(define-const var1679 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1679)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1679!1 String)
(assert (= var1679!1 ""))
(assert true)
(define-const var1639 String (append/672562846 var1679!1 "Can\u0027t unambiguously select between ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t unambiguously select between ") 
(declare-const var1679!2 String)
(assert (= var1679!2 (str.++ var1679!1 "Can\u0027t unambiguously select between ")))
(assert true)
(define-const var908 String (append/672562846 var1639 var1369)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1639!1 String)
(assert (= var1639!1 (str.++ var1639 var1369)))
(assert true)
(define-const var2442 String (append/672562846 var908 " arity signatures ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" arity signatures ") 
(declare-const var908!1 String)
(assert (= var908!1 (str.++ var908 " arity signatures ")))
(define-const var2673 String (var1291_getSignatureList/91443967 var1616)) ; Statement: $r7 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String getSignatureList(java.util.List)>(r0) 
(assert true)
(define-const var2695 String (append/672562846 var2442 var2673)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2442!1 String)
(assert (= var2442!1 (str.++ var2442 var2673)))
(assert true)
(define-const var1832 String (append/672562846 var2695 " of the method ")) ; Statement: $r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of the method ") 
(declare-const var2695!1 String)
(assert (= var2695!1 (str.++ var2695 " of the method ")))
(define-const var1502 var2940 (parent/1566026269 var3960)) ; Statement: $r11 = r10.<jdk.internal.dynalink.beans.OverloadedMethod: jdk.internal.dynalink.beans.OverloadedDynamicMethod parent> 
(assert true)
(define-const var3006 String (getName/191485936 (cast-from-var2940-to-var3669 var1502))) ; Statement: $r12 = virtualinvoke $r11.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.lang.String getName()>() 
(assert true)
(define-const var447 String (append/672562846 var1832 var3006)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1832!1 String)
(assert (= var1832!1 (str.++ var1832 var3006)))
(assert true)
(define-const var56 String (append/672562846 var447 " for argument types ")) ; Statement: $r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for argument types ") 
(declare-const var447!1 String)
(assert (= var447!1 (str.++ var447 " for argument types ")))
(define-const var1341 String (var1291_argTypesString/1562103107 var1229)) ; Statement: $r16 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String argTypesString(java.lang.Class[])>(r15) 
(assert true)
(define-const var3300 String (append/672562846 var56 var1341)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var56!1 String)
(assert (= var56!1 (str.++ var56 var1341)))
(assert true)
(define-const var1673 String (toString/-2075883882 var3300)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var3856 var1673)) ; Statement: specialinvoke $r3.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r19) 

(declare-const var3856!1 var3855)
(declare-const var1673!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2990_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3759-to-var3892=([java.lang.Object], java.lang.invoke.MethodHandle), isVarargsCollector/-610413635=([java.lang.invoke.MethodHandle], boolean), var3855-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1291_getSignatureList/91443967=([java.util.List], java.lang.String), parent/1566026269=([jdk.internal.dynalink.beans.OverloadedMethod], jdk.internal.dynalink.beans.OverloadedDynamicMethod), getName/191485936=([jdk.internal.dynalink.beans.DynamicMethod], java.lang.String), cast-from-var2940-to-var3669=([jdk.internal.dynalink.beans.OverloadedDynamicMethod], jdk.internal.dynalink.beans.DynamicMethod), var1291_argTypesString/1562103107=([java.lang.Class[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var1291=jdk.internal.dynalink.beans.OverloadedMethod, var3960=r10, var1229=r15, var2990=java.util.List, var1616=r0, var3759=java.lang.Object, var1227=$r1, var3892=java.lang.invoke.MethodHandle, var3270=$r2, var2819=$z0, var1369=$r20, var3855=java.lang.NoSuchMethodException, var3856=$r3, var1679=$r4, var1639=$r5, var908=$r6, var2442=$r8, var2673=$r7, var2695=$r9, var1832=$r13, var2940=jdk.internal.dynalink.beans.OverloadedDynamicMethod, var1502=$r11, var3669=jdk.internal.dynalink.beans.DynamicMethod, var3006=$r12, var447=$r14, var56=$r17, var1341=$r16, var3300=$r18, var1673=$r19}
; {jdk.internal.dynalink.beans.OverloadedMethod=var1291, r10=var3960, r15=var1229, java.util.List=var2990, r0=var1616, java.lang.Object=var3759, $r1=var1227, java.lang.invoke.MethodHandle=var3892, $r2=var3270, $z0=var2819, $r20=var1369, java.lang.NoSuchMethodException=var3855, $r3=var3856, $r4=var1679, $r5=var1639, $r6=var908, $r8=var2442, $r7=var2673, $r9=var2695, $r13=var1832, jdk.internal.dynalink.beans.OverloadedDynamicMethod=var2940, $r11=var1502, jdk.internal.dynalink.beans.DynamicMethod=var3669, $r12=var3006, $r14=var447, $r17=var56, $r16=var1341, $r18=var3300, $r19=var1673}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: jdk.internal.dynalink.beans.OverloadedMethod;	r15 := @parameter0: java.lang.Class[];	r0 := @parameter1: java.util.List;	$r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r2 = (java.lang.invoke.MethodHandle) $r1;	$z0 = virtualinvoke $r2.<java.lang.invoke.MethodHandle: boolean isVarargsCollector()>();	if $z0 == 0 goto $r20 = "fixed";	$r20 = "variable";	goto [?= $r3 = new java.lang.NoSuchMethodException];	$r3 = new java.lang.NoSuchMethodException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t unambiguously select between ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" arity signatures ");	$r7 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String getSignatureList(java.util.List)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of the method ");	$r11 = r10.<jdk.internal.dynalink.beans.OverloadedMethod: jdk.internal.dynalink.beans.OverloadedDynamicMethod parent>;	$r12 = virtualinvoke $r11.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for argument types ");	$r16 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String argTypesString(java.lang.Class[])>(r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r19);	throw $r3
;block_num 3