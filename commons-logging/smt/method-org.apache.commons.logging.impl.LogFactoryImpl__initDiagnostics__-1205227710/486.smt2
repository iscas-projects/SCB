(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3030 0)
(declare-sort var3901 0)
(declare-sort var89 0)
(declare-sort var2307 0)
(declare-sort var1564 0)
(declare-sort var1441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3901) ClassObject)
(declare-fun cast-from-var3030-to-var3901 (var3030) var3901)
(declare-fun var3030_getClassLoader/1612937626 (ClassObject) var89)
(declare-fun var2307_objectId/1952731062 (var3901) String)
(declare-fun cast-from-var89-to-var3901 (var89) var3901)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1441_identityHashCode/1096208673 (var3901) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun diagnosticPrefix/1199358121 (var3030) String)
(declare-const null-var3030 var3030)
(declare-const null-var89 var89)
(declare-const null-var1564 var1564)
(declare-const var2210 var3030) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2210 null-var3030)))
(assert true)
(define-const var2704 ClassObject (getClass/1258963082 (cast-from-var3030-to-var3901 var2210))) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2392 var89 (var3030_getClassLoader/1612937626 var2704)) ; Statement: r2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r1) 
 ; Statement: if r2 != null goto r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2) 
(assert (not (= var2392 null-var89))) ; Cond: r2 != null 
(define-const var744 String (var2307_objectId/1952731062 (cast-from-var89-to-var3901 var2392))) ; Statement: r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1617 var1564) ; Statement: $r10 := @caughtexception 
(assert (not (= var1617 null-var1564)))
(define-const var744!1 String "UNKNOWN") ; Statement: r11 = "UNKNOWN" 
(assert true) ; Non Conditional
(define-const var2447 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2447)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2447!1 String)
(assert (= var2447!1 ""))
(assert true)
(define-const var3533 String (append/672562846 var2447!1 "[LogFactoryImpl@")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactoryImpl@") 
(declare-const var2447!2 String)
(assert (= var2447!2 (str.++ var2447!1 "[LogFactoryImpl@")))
(define-const var1700 Int (var1441_identityHashCode/1096208673 (cast-from-var3030-to-var3901 var2210))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0) 
(assert true)
(define-const var532 String (append/-1001720160 var3533 var1700)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3533!1 String)
(assert (str.prefixof var3533 var3533!1))
(assert true)
(define-const var2830 String (append/672562846 var532 " from ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var532!1 String)
(assert (= var532!1 (str.++ var532 " from ")))
(assert true)
(define-const var2867 String (append/672562846 var2830 var744!1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var2830!1 String)
(assert (= var2830!1 (str.++ var2830 var744!1)))
(assert true)
(define-const var3572 String (append/672562846 var2867 "] ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var2867!1 String)
(assert (= var2867!1 (str.++ var2867 "] ")))
(assert true)
(define-const var3068 String (toString/-2075883882 var3572)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2210!1 var3030)
(assert (not (= var2210!1 null-var3030)))
(assert (= (diagnosticPrefix/1199358121 var2210!1) var3068)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String diagnosticPrefix> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3030-to-var3901=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.Object), var3030_getClassLoader/1612937626=([java.lang.Class], java.lang.ClassLoader), var2307_objectId/1952731062=([java.lang.Object], java.lang.String), cast-from-var89-to-var3901=([java.lang.ClassLoader], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1441_identityHashCode/1096208673=([java.lang.Object], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), diagnosticPrefix/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.String)}
; {var3030=org.apache.commons.logging.impl.LogFactoryImpl, var2210=r0, var3901=java.lang.Object, var2704=r1, var89=java.lang.ClassLoader, var2392=r2, var2307=org.apache.commons.logging.LogFactory, var744=r11, var1564=java.lang.SecurityException, var1617=$r10, var2447=$r3, var3533=$r4, var1441=java.lang.System, var1700=$i0, var532=$r5, var2830=$r6, var2867=$r7, var3572=$r8, var3068=$r9}
; {org.apache.commons.logging.impl.LogFactoryImpl=var3030, r0=var2210, java.lang.Object=var3901, r1=var2704, java.lang.ClassLoader=var89, r2=var2392, org.apache.commons.logging.LogFactory=var2307, r11=var744, java.lang.SecurityException=var1564, $r10=var1617, $r3=var2447, $r4=var3533, java.lang.System=var1441, $i0=var1700, $r5=var532, $r6=var2830, $r7=var2867, $r8=var3572, $r9=var3068}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r1);	if r2 != null goto r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2);	r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2);	$r10 := @caughtexception;	r11 = "UNKNOWN";	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactoryImpl@");	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String diagnosticPrefix> = $r9;	return
;block_num 4