(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2124 0)
(declare-sort var2186 0)
(declare-sort var857 0)
(declare-sort var3446 0)
(declare-sort var294 0)
(declare-sort var2223 0)
(declare-sort var3884 0)
(declare-sort var3937 0)
(declare-sort var3325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3446_bootstrap$/-1963771018 (String var2186) var857)
(declare-fun var2223_doPrivileged/1828555841 (var857) var294)
(declare-fun cast-from-var294-to-var3884 (var294) var3884)
(declare-fun var3937_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3325) String)
(declare-fun cast-from-var3884-to-var3325 (var3884) var3325)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3937_logDiagnostic/1268238408 (String) void)
(declare-const null-String String)
(declare-const null-var2186 var2186)
(declare-const var3178 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3178 null-String)))
(declare-const var2431 var2186) ; Statement: r1 := @parameter1: java.lang.ClassLoader 
(assert (not (= var2431 null-var2186)))
(declare-const var1979 var2186) ; Statement: r9 := @parameter2: java.lang.ClassLoader 
(assert (not (= var1979 null-var2186)))
(define-const var1564 var857 (var3446_bootstrap$/-1963771018 var3178 var2431)) ; Statement: $r2 = staticinvoke <org.apache.commons.logging.LogFactory$lambda_newFactory_3__5: java.security.PrivilegedAction bootstrap$(java.lang.String,java.lang.ClassLoader)>(r0, r1) 
(define-const var3427 var294 (var2223_doPrivileged/1828555841 var1564)) ; Statement: r3 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction)>($r2) 
(define-const var242 Bool false) ; Statement: $z0 = r3 instanceof org.apache.commons.logging.LogConfigurationException 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
(assert (not (= (ite var242 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var243 var3884 (cast-from-var294-to-var3884 var3427)) ; Statement: r14 = (org.apache.commons.logging.LogConfigurationException) r3 
(define-const var1539 Bool var3937_isDiagnosticsEnabled/-1004161365) ; Statement: $z2 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z2 == 0 goto throw r14 
(assert (not (= (ite var1539 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2844 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2844)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2844!1 String)
(assert (= var2844!1 ""))
(assert true)
(define-const var3347 String (append/672562846 var2844!1 "An error occurred while loading the factory class:")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An error occurred while loading the factory class:") 
(declare-const var2844!2 String)
(assert (= var2844!2 (str.++ var2844!1 "An error occurred while loading the factory class:")))
(assert true)
(define-const var3378 String (getMessage/849299655 (cast-from-var3884-to-var3325 var243))) ; Statement: $r16 = virtualinvoke r14.<org.apache.commons.logging.LogConfigurationException: java.lang.String getMessage()>() 
(assert true)
(define-const var79 String (append/672562846 var3347 var3378)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3347!1 String)
(assert (= var3347!1 (str.++ var3347 var3378)))
(assert true)
(define-const var2957 String (toString/-2075883882 var79)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3937_logDiagnostic/1268238408 var2957)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r19) 

(declare-const var2957!1 String)
(assert true) ; Non Conditional
 ; Statement: throw r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3446_bootstrap$/-1963771018=([java.lang.String, java.lang.ClassLoader], java.security.PrivilegedAction), var2223_doPrivileged/1828555841=([java.security.PrivilegedAction], java.lang.Object), cast-from-var294-to-var3884=([java.lang.Object], org.apache.commons.logging.LogConfigurationException), var3937_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3884-to-var3325=([org.apache.commons.logging.LogConfigurationException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3937_logDiagnostic/1268238408=([java.lang.String], void)}
; {var3178=r0, var2124=null_type, var2186=java.lang.ClassLoader, var2431=r1, var1979=r9, var857=java.security.PrivilegedAction, var3446=org.apache.commons.logging.LogFactory$lambda_newFactory_3__5, var1564=$r2, var294=java.lang.Object, var2223=java.security.AccessController, var3427=r3, var242=$z0, var3884=org.apache.commons.logging.LogConfigurationException, var243=r14, var3937=org.apache.commons.logging.LogFactory, var1539=$z2, var2844=$r15, var3347=$r17, var3325=java.lang.Throwable, var3378=$r16, var79=$r18, var2957=$r19}
; {r0=var3178, null_type=var2124, java.lang.ClassLoader=var2186, r1=var2431, r9=var1979, java.security.PrivilegedAction=var857, org.apache.commons.logging.LogFactory$lambda_newFactory_3__5=var3446, $r2=var1564, java.lang.Object=var294, java.security.AccessController=var2223, r3=var3427, $z0=var242, org.apache.commons.logging.LogConfigurationException=var3884, r14=var243, org.apache.commons.logging.LogFactory=var3937, $z2=var1539, $r15=var2844, $r17=var3347, java.lang.Throwable=var3325, $r16=var3378, $r18=var79, $r19=var2957}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.ClassLoader;	r9 := @parameter2: java.lang.ClassLoader;	$r2 = staticinvoke <org.apache.commons.logging.LogFactory$lambda_newFactory_3__5: java.security.PrivilegedAction bootstrap$(java.lang.String,java.lang.ClassLoader)>(r0, r1);	r3 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction)>($r2);	$z0 = r3 instanceof org.apache.commons.logging.LogConfigurationException;	if $z0 == 0 goto $z1 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	r14 = (org.apache.commons.logging.LogConfigurationException) r3;	$z2 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z2 == 0 goto throw r14;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An error occurred while loading the factory class:");	$r16 = virtualinvoke r14.<org.apache.commons.logging.LogConfigurationException: java.lang.String getMessage()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r19);	throw r14
;block_num 4