(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2828 0)
(declare-sort var909 0)
(declare-sort var3657 0)
(declare-sort var134 0)
(declare-sort var2788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var909) ClassObject)
(declare-fun cast-from-var2828-to-var909 (var2828) var909)
(declare-fun var2828_getClassLoader/1612937626 (ClassObject) var3657)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2788_identityHashCode/1096208673 (var909) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun diagnosticPrefix/1199358121 (var2828) String)
(declare-const null-var2828 var2828)
(declare-const null-var3657 var3657)
(declare-const null-var134 var134)
(declare-const var2284 var2828) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2284 null-var2828)))
(assert true)
(define-const var3914 ClassObject (getClass/1258963082 (cast-from-var2828-to-var909 var2284))) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var1189 var3657 (var2828_getClassLoader/1612937626 var3914)) ; Statement: r2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r1) 
 ; Statement: if r2 != null goto r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2) 
(assert (not (not (= var1189 null-var3657)))) ; Negate: Cond: r2 != null  
(declare-const var3753 var134) ; Statement: $r10 := @caughtexception 
(assert (not (= var3753 null-var134)))
(define-const var1920 String "UNKNOWN") ; Statement: r11 = "UNKNOWN" 
(assert true) ; Non Conditional
(define-const var1337 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1337)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1337!1 String)
(assert (= var1337!1 ""))
(assert true)
(define-const var1243 String (append/672562846 var1337!1 "[LogFactoryImpl@")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactoryImpl@") 
(declare-const var1337!2 String)
(assert (= var1337!2 (str.++ var1337!1 "[LogFactoryImpl@")))
(define-const var1588 Int (var2788_identityHashCode/1096208673 (cast-from-var2828-to-var909 var2284))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0) 
(assert true)
(define-const var2379 String (append/-1001720160 var1243 var1588)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1243!1 String)
(assert (str.prefixof var1243 var1243!1))
(assert true)
(define-const var2954 String (append/672562846 var2379 " from ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var2379!1 String)
(assert (= var2379!1 (str.++ var2379 " from ")))
(assert true)
(define-const var2462 String (append/672562846 var2954 var1920)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var2954!1 String)
(assert (= var2954!1 (str.++ var2954 var1920)))
(assert true)
(define-const var3517 String (append/672562846 var2462 "] ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var2462!1 String)
(assert (= var2462!1 (str.++ var2462 "] ")))
(assert true)
(define-const var3555 String (toString/-2075883882 var3517)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2284!1 var2828)
(assert (not (= var2284!1 null-var2828)))
(assert (= (diagnosticPrefix/1199358121 var2284!1) var3555)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String diagnosticPrefix> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2828-to-var909=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.Object), var2828_getClassLoader/1612937626=([java.lang.Class], java.lang.ClassLoader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2788_identityHashCode/1096208673=([java.lang.Object], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), diagnosticPrefix/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.String)}
; {var2828=org.apache.commons.logging.impl.LogFactoryImpl, var2284=r0, var909=java.lang.Object, var3914=r1, var3657=java.lang.ClassLoader, var1189=r2, var134=java.lang.SecurityException, var3753=$r10, var1920=r11, var1337=$r3, var1243=$r4, var2788=java.lang.System, var1588=$i0, var2379=$r5, var2954=$r6, var2462=$r7, var3517=$r8, var3555=$r9}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2828, r0=var2284, java.lang.Object=var909, r1=var3914, java.lang.ClassLoader=var3657, r2=var1189, java.lang.SecurityException=var134, $r10=var3753, r11=var1920, $r3=var1337, $r4=var1243, java.lang.System=var2788, $i0=var1588, $r5=var2379, $r6=var2954, $r7=var2462, $r8=var3517, $r9=var3555}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r1);	if r2 != null goto r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2);	$r10 := @caughtexception;	r11 = "UNKNOWN";	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactoryImpl@");	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String diagnosticPrefix> = $r9;	return
;block_num 3