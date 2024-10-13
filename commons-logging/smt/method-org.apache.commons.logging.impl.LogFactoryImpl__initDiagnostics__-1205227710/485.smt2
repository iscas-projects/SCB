(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1327 0)
(declare-sort var3079 0)
(declare-sort var345 0)
(declare-sort var736 0)
(declare-sort var2221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3079) ClassObject)
(declare-fun cast-from-var1327-to-var3079 (var1327) var3079)
(declare-fun var1327_getClassLoader/1612937626 (ClassObject) var345)
(declare-fun var736_objectId/1952731062 (var3079) String)
(declare-fun cast-from-var345-to-var3079 (var345) var3079)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2221_identityHashCode/1096208673 (var3079) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun diagnosticPrefix/1199358121 (var1327) String)
(declare-const null-var1327 var1327)
(declare-const null-var345 var345)
(declare-const var1274 var1327) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var1274 null-var1327)))
(assert true)
(define-const var2598 ClassObject (getClass/1258963082 (cast-from-var1327-to-var3079 var1274))) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2120 var345 (var1327_getClassLoader/1612937626 var2598)) ; Statement: r2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r1) 
 ; Statement: if r2 != null goto r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2) 
(assert (not (= var2120 null-var345))) ; Cond: r2 != null 
(define-const var1183 String (var736_objectId/1952731062 (cast-from-var345-to-var3079 var2120))) ; Statement: r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2) 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r3 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2306 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2306)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2306!1 String)
(assert (= var2306!1 ""))
(assert true)
(define-const var1645 String (append/672562846 var2306!1 "[LogFactoryImpl@")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactoryImpl@") 
(declare-const var2306!2 String)
(assert (= var2306!2 (str.++ var2306!1 "[LogFactoryImpl@")))
(define-const var3742 Int (var2221_identityHashCode/1096208673 (cast-from-var1327-to-var3079 var1274))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0) 
(assert true)
(define-const var369 String (append/-1001720160 var1645 var3742)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1645!1 String)
(assert (str.prefixof var1645 var1645!1))
(assert true)
(define-const var1634 String (append/672562846 var369 " from ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var369!1 String)
(assert (= var369!1 (str.++ var369 " from ")))
(assert true)
(define-const var3823 String (append/672562846 var1634 var1183)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var1634!1 String)
(assert (= var1634!1 (str.++ var1634 var1183)))
(assert true)
(define-const var418 String (append/672562846 var3823 "] ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var3823!1 String)
(assert (= var3823!1 (str.++ var3823 "] ")))
(assert true)
(define-const var1268 String (toString/-2075883882 var418)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1274!1 var1327)
(assert (not (= var1274!1 null-var1327)))
(assert (= (diagnosticPrefix/1199358121 var1274!1) var1268)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String diagnosticPrefix> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1327-to-var3079=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.Object), var1327_getClassLoader/1612937626=([java.lang.Class], java.lang.ClassLoader), var736_objectId/1952731062=([java.lang.Object], java.lang.String), cast-from-var345-to-var3079=([java.lang.ClassLoader], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2221_identityHashCode/1096208673=([java.lang.Object], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), diagnosticPrefix/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.String)}
; {var1327=org.apache.commons.logging.impl.LogFactoryImpl, var1274=r0, var3079=java.lang.Object, var2598=r1, var345=java.lang.ClassLoader, var2120=r2, var736=org.apache.commons.logging.LogFactory, var1183=r11, var2306=$r3, var1645=$r4, var2221=java.lang.System, var3742=$i0, var369=$r5, var1634=$r6, var3823=$r7, var418=$r8, var1268=$r9}
; {org.apache.commons.logging.impl.LogFactoryImpl=var1327, r0=var1274, java.lang.Object=var3079, r1=var2598, java.lang.ClassLoader=var345, r2=var2120, org.apache.commons.logging.LogFactory=var736, r11=var1183, $r3=var2306, $r4=var1645, java.lang.System=var2221, $i0=var3742, $r5=var369, $r6=var1634, $r7=var3823, $r8=var418, $r9=var1268}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r1);	if r2 != null goto r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2);	r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2);	goto [?= $r3 = new java.lang.StringBuilder];	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactoryImpl@");	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String diagnosticPrefix> = $r9;	return
;block_num 4