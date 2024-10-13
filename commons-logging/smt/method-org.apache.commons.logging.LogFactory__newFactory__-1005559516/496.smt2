(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2510 0)
(declare-sort var1997 0)
(declare-sort var741 0)
(declare-sort var919 0)
(declare-sort var684 0)
(declare-sort var1938 0)
(declare-sort var128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var919_bootstrap$/-1963771018 (String var1997) var741)
(declare-fun var1938_doPrivileged/1828555841 (var741) var684)
(declare-fun var128_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var128_objectId/1952731062 (var684) String)
(declare-fun cast-from-var1997-to-var684 (var1997) var684)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var128_logDiagnostic/1268238408 (String) void)
(declare-fun cast-from-var684-to-var128 (var684) var128)
(declare-const null-String String)
(declare-const null-var1997 var1997)
(declare-const var1456 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1456 null-String)))
(declare-const var1936 var1997) ; Statement: r1 := @parameter1: java.lang.ClassLoader 
(assert (not (= var1936 null-var1997)))
(declare-const var908 var1997) ; Statement: r9 := @parameter2: java.lang.ClassLoader 
(assert (not (= var908 null-var1997)))
(define-const var3789 var741 (var919_bootstrap$/-1963771018 var1456 var1936)) ; Statement: $r2 = staticinvoke <org.apache.commons.logging.LogFactory$lambda_newFactory_3__5: java.security.PrivilegedAction bootstrap$(java.lang.String,java.lang.ClassLoader)>(r0, r1) 
(define-const var90 var684 (var1938_doPrivileged/1828555841 var3789)) ; Statement: r3 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction)>($r2) 
(define-const var3791 Bool false) ; Statement: $z0 = r3 instanceof org.apache.commons.logging.LogConfigurationException 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
(assert (= (ite var3791 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3103 Bool var128_isDiagnosticsEnabled/-1004161365) ; Statement: $z1 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z1 == 0 goto $r4 = (org.apache.commons.logging.LogFactory) r3 
(assert (not (= (ite var3103 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2558 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2558)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2558!1 String)
(assert (= var2558!1 ""))
(assert true)
(define-const var1492 String (append/672562846 var2558!1 "Created object ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Created object ") 
(declare-const var2558!2 String)
(assert (= var2558!2 (str.++ var2558!1 "Created object ")))
(define-const var3217 String (var128_objectId/1952731062 var90)) ; Statement: $r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r3) 
(assert true)
(define-const var1709 String (append/672562846 var1492 var3217)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1492!1 String)
(assert (= var1492!1 (str.++ var1492 var3217)))
(assert true)
(define-const var562 String (append/672562846 var1709 " to manage class loader ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to manage class loader ") 
(declare-const var1709!1 String)
(assert (= var1709!1 (str.++ var1709 " to manage class loader ")))
(define-const var1166 String (var128_objectId/1952731062 (cast-from-var1997-to-var684 var908))) ; Statement: $r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r9) 
(assert true)
(define-const var2601 String (append/672562846 var562 var1166)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var562!1 String)
(assert (= var562!1 (str.++ var562 var1166)))
(assert true)
(define-const var2075 String (toString/-2075883882 var2601)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var128_logDiagnostic/1268238408 var2075)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r13) 

(declare-const var2075!1 String)
(assert true) ; Non Conditional
(define-const var3087 var128 (cast-from-var684-to-var128 var90)) ; Statement: $r4 = (org.apache.commons.logging.LogFactory) r3 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var919_bootstrap$/-1963771018=([java.lang.String, java.lang.ClassLoader], java.security.PrivilegedAction), var1938_doPrivileged/1828555841=([java.security.PrivilegedAction], java.lang.Object), var128_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var128_objectId/1952731062=([java.lang.Object], java.lang.String), cast-from-var1997-to-var684=([java.lang.ClassLoader], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var128_logDiagnostic/1268238408=([java.lang.String], void), cast-from-var684-to-var128=([java.lang.Object], org.apache.commons.logging.LogFactory)}
; {var1456=r0, var2510=null_type, var1997=java.lang.ClassLoader, var1936=r1, var908=r9, var741=java.security.PrivilegedAction, var919=org.apache.commons.logging.LogFactory$lambda_newFactory_3__5, var3789=$r2, var684=java.lang.Object, var1938=java.security.AccessController, var90=r3, var3791=$z0, var128=org.apache.commons.logging.LogFactory, var3103=$z1, var2558=$r5, var1492=$r7, var3217=$r6, var1709=$r8, var562=$r11, var1166=$r10, var2601=$r12, var2075=$r13, var3087=$r4}
; {r0=var1456, null_type=var2510, java.lang.ClassLoader=var1997, r1=var1936, r9=var908, java.security.PrivilegedAction=var741, org.apache.commons.logging.LogFactory$lambda_newFactory_3__5=var919, $r2=var3789, java.lang.Object=var684, java.security.AccessController=var1938, r3=var90, $z0=var3791, org.apache.commons.logging.LogFactory=var128, $z1=var3103, $r5=var2558, $r7=var1492, $r6=var3217, $r8=var1709, $r11=var562, $r10=var1166, $r12=var2601, $r13=var2075, $r4=var3087}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.ClassLoader;	r9 := @parameter2: java.lang.ClassLoader;	$r2 = staticinvoke <org.apache.commons.logging.LogFactory$lambda_newFactory_3__5: java.security.PrivilegedAction bootstrap$(java.lang.String,java.lang.ClassLoader)>(r0, r1);	r3 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction)>($r2);	$z0 = r3 instanceof org.apache.commons.logging.LogConfigurationException;	if $z0 == 0 goto $z1 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	$z1 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z1 == 0 goto $r4 = (org.apache.commons.logging.LogFactory) r3;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Created object ");	$r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to manage class loader ");	$r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r13);	$r4 = (org.apache.commons.logging.LogFactory) r3;	return $r4
;block_num 4