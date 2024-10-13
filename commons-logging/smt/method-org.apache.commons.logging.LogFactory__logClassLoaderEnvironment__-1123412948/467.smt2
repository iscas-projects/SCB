(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2351 0)
(declare-sort var1673 0)
(declare-sort var2136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2351_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(declare-fun var2351_logDiagnostic/1268238408 (String) void)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2351_getClassLoader/1794181642 (ClassObject) var2136)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1673 var1673)
(declare-const var2943 ClassObject) ; Statement: r10 := @parameter0: java.lang.Class 
(assert (not (= var2943 null-ClassObject)))
(define-const var996 Bool var2351_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= (ite var996 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2451 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3128 var1673) ; Statement: $r28 := @caughtexception 
(assert (not (= var3128 null-var1673)))
;(assert (var2351_logDiagnostic/1268238408 "[ENV] Security setting prevent interrogation of system classpaths.")) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("[ENV] Security setting prevent interrogation of system classpaths.") 

(declare-const var3758 String)
(assert true) ; Non Conditional
(assert true)
(define-const var2360 String (getName/-1958580599 var2943)) ; Statement: $r29 = virtualinvoke r10.<java.lang.Class: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var1508 var2136 (var2351_getClassLoader/1794181642 var2943)) ; Statement: $r30 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r10) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2928 var1673) ; Statement: $r23 := @caughtexception 
(assert (not (= var2928 null-var1673)))
(define-const var1612 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1612)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1612!1 String)
(assert (= var1612!1 ""))
(assert true)
(define-const var2241 String (append/672562846 var1612!1 "[ENV] Security forbids determining the class loader for ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ENV] Security forbids determining the class loader for ") 
(declare-const var1612!2 String)
(assert (= var1612!2 (str.++ var1612!1 "[ENV] Security forbids determining the class loader for ")))
(assert true)
(define-const var1847 String (append/672562846 var2241 var2360)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2241!1 String)
(assert (= var2241!1 (str.++ var2241 var2360)))
(assert true)
(define-const var2848 String (toString/-2075883882 var1847)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2351_logDiagnostic/1268238408 var2848)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r27) 

(declare-const var2848!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2351_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), var2351_logDiagnostic/1268238408=([java.lang.String], void), getName/-1958580599=([java.lang.Class], java.lang.String), var2351_getClassLoader/1794181642=([java.lang.Class], java.lang.ClassLoader), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2943=r10, var2351=org.apache.commons.logging.LogFactory, var996=$z0, var2451=$r0, var1673=java.lang.SecurityException, var3128=$r28, var3758="[ENV] Security setting prevent interrogation of system classpaths.", var2360=$r29, var2136=java.lang.ClassLoader, var1508=$r30, var2928=$r23, var1612=$r24, var2241=$r25, var1847=$r26, var2848=$r27}
; {r10=var2943, org.apache.commons.logging.LogFactory=var2351, $z0=var996, $r0=var2451, java.lang.SecurityException=var1673, $r28=var3128, "[ENV] Security setting prevent interrogation of system classpaths."=var3758, $r29=var2360, java.lang.ClassLoader=var2136, $r30=var1508, $r23=var2928, $r24=var1612, $r25=var2241, $r26=var1847, $r27=var2848}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @parameter0: java.lang.Class;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 != 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	$r28 := @caughtexception;	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("[ENV] Security setting prevent interrogation of system classpaths.");	$r29 = virtualinvoke r10.<java.lang.Class: java.lang.String getName()>();	$r30 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r10);	$r23 := @caughtexception;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ENV] Security forbids determining the class loader for ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r27);	return
;block_num 6