(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2731 0)
(declare-sort var3415 0)
(declare-sort var3374 0)
(declare-sort var855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3415) ClassObject)
(declare-fun cast-from-var2731-to-var3415 (var2731) var3415)
(declare-fun var2731_getClassLoader/1612937626 (ClassObject) var3374)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var855_identityHashCode/1096208673 (var3415) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun diagnosticPrefix/1199358121 (var2731) String)
(declare-const null-var2731 var2731)
(declare-const null-var3374 var3374)
(declare-const var2134 var2731) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2134 null-var2731)))
(assert true)
(define-const var2820 ClassObject (getClass/1258963082 (cast-from-var2731-to-var3415 var2134))) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var977 var3374 (var2731_getClassLoader/1612937626 var2820)) ; Statement: r2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r1) 
 ; Statement: if r2 != null goto r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2) 
(assert (not (not (= var977 null-var3374)))) ; Negate: Cond: r2 != null  
(define-const var517 String "BOOTLOADER") ; Statement: r11 = "BOOTLOADER" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r3 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var865 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var865)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var865!1 String)
(assert (= var865!1 ""))
(assert true)
(define-const var16 String (append/672562846 var865!1 "[LogFactoryImpl@")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactoryImpl@") 
(declare-const var865!2 String)
(assert (= var865!2 (str.++ var865!1 "[LogFactoryImpl@")))
(define-const var3596 Int (var855_identityHashCode/1096208673 (cast-from-var2731-to-var3415 var2134))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0) 
(assert true)
(define-const var1998 String (append/-1001720160 var16 var3596)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var16!1 String)
(assert (str.prefixof var16 var16!1))
(assert true)
(define-const var35 String (append/672562846 var1998 " from ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var1998!1 String)
(assert (= var1998!1 (str.++ var1998 " from ")))
(assert true)
(define-const var1789 String (append/672562846 var35 var517)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var35!1 String)
(assert (= var35!1 (str.++ var35 var517)))
(assert true)
(define-const var2917 String (append/672562846 var1789 "] ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var1789!1 String)
(assert (= var1789!1 (str.++ var1789 "] ")))
(assert true)
(define-const var2351 String (toString/-2075883882 var2917)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2134!1 var2731)
(assert (not (= var2134!1 null-var2731)))
(assert (= (diagnosticPrefix/1199358121 var2134!1) var2351)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String diagnosticPrefix> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2731-to-var3415=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.Object), var2731_getClassLoader/1612937626=([java.lang.Class], java.lang.ClassLoader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var855_identityHashCode/1096208673=([java.lang.Object], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), diagnosticPrefix/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.String)}
; {var2731=org.apache.commons.logging.impl.LogFactoryImpl, var2134=r0, var3415=java.lang.Object, var2820=r1, var3374=java.lang.ClassLoader, var977=r2, var517=r11, var865=$r3, var16=$r4, var855=java.lang.System, var3596=$i0, var1998=$r5, var35=$r6, var1789=$r7, var2917=$r8, var2351=$r9}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2731, r0=var2134, java.lang.Object=var3415, r1=var2820, java.lang.ClassLoader=var3374, r2=var977, r11=var517, $r3=var865, $r4=var16, java.lang.System=var855, $i0=var3596, $r5=var1998, $r6=var35, $r7=var1789, $r8=var2917, $r9=var2351}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r1);	if r2 != null goto r11 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r2);	r11 = "BOOTLOADER";	goto [?= (branch)];	goto [?= $r3 = new java.lang.StringBuilder];	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactoryImpl@");	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String diagnosticPrefix> = $r9;	return
;block_num 4