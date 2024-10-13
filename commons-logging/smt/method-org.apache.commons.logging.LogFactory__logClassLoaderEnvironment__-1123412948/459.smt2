(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3483 0)
(declare-sort var3178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3483_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(declare-fun var3483_logDiagnostic/1268238408 (String) void)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3178 var3178)
(declare-const var156 ClassObject) ; Statement: r10 := @parameter0: java.lang.Class 
(assert (not (= var156 null-ClassObject)))
(define-const var3262 Bool var3483_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= (ite var3262 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1582 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2013 var3178) ; Statement: $r28 := @caughtexception 
(assert (not (= var2013 null-var3178)))
;(assert (var3483_logDiagnostic/1268238408 "[ENV] Security setting prevent interrogation of system classpaths.")) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("[ENV] Security setting prevent interrogation of system classpaths.") 

(declare-const var2217 String)
(assert true) ; Non Conditional
(assert true)
(define-const var3740 String (getName/-1958580599 var156)) ; Statement: $r29 = virtualinvoke r10.<java.lang.Class: java.lang.String getName()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var625 var3178) ; Statement: $r23 := @caughtexception 
(assert (not (= var625 null-var3178)))
(define-const var3360 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3360)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3360!1 String)
(assert (= var3360!1 ""))
(assert true)
(define-const var178 String (append/672562846 var3360!1 "[ENV] Security forbids determining the class loader for ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ENV] Security forbids determining the class loader for ") 
(declare-const var3360!2 String)
(assert (= var3360!2 (str.++ var3360!1 "[ENV] Security forbids determining the class loader for ")))
(assert true)
(define-const var3467 String (append/672562846 var178 var3740)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var178!1 String)
(assert (= var178!1 (str.++ var178 var3740)))
(assert true)
(define-const var2859 String (toString/-2075883882 var3467)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3483_logDiagnostic/1268238408 var2859)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r27) 

(declare-const var2859!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3483_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), var3483_logDiagnostic/1268238408=([java.lang.String], void), getName/-1958580599=([java.lang.Class], java.lang.String), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var156=r10, var3483=org.apache.commons.logging.LogFactory, var3262=$z0, var1582=$r0, var3178=java.lang.SecurityException, var2013=$r28, var2217="[ENV] Security setting prevent interrogation of system classpaths.", var3740=$r29, var625=$r23, var3360=$r24, var178=$r25, var3467=$r26, var2859=$r27}
; {r10=var156, org.apache.commons.logging.LogFactory=var3483, $z0=var3262, $r0=var1582, java.lang.SecurityException=var3178, $r28=var2013, "[ENV] Security setting prevent interrogation of system classpaths."=var2217, $r29=var3740, $r23=var625, $r24=var3360, $r25=var178, $r26=var3467, $r27=var2859}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @parameter0: java.lang.Class;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 != 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	$r28 := @caughtexception;	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("[ENV] Security setting prevent interrogation of system classpaths.");	$r29 = virtualinvoke r10.<java.lang.Class: java.lang.String getName()>();	$r23 := @caughtexception;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ENV] Security forbids determining the class loader for ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r27);	return
;block_num 5