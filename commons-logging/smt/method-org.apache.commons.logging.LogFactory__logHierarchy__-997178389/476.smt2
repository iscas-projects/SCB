(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3859 0)
(declare-sort var62 0)
(declare-sort var2778 0)
(declare-sort var3168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2778_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun var62_getSystemClassLoader/-483392723 () var62)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2778_logDiagnostic/1268238408 (String) void)
(declare-const null-String String)
(declare-const null-var62 var62)
(declare-const null-var3168 var3168)
(declare-const var12 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var12 null-String)))
(declare-const var3713 var62) ; Statement: r24 := @parameter1: java.lang.ClassLoader 
(assert (not (= var3713 null-var62)))
(define-const var242 Bool var2778_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var242 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert (= var3713 null-var62)) ; Cond: r24 == null 
(define-const var3300 var62 var62_getSystemClassLoader/-483392723) ; Statement: $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3308 var3168) ; Statement: $r19 := @caughtexception 
(assert (not (= var3308 null-var3168)))
(define-const var3943 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3943)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3943!1 String)
(assert (= var3943!1 ""))
(assert true)
(define-const var3635 String (append/672562846 var3943!1 var12)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3943!2 String)
(assert (= var3943!2 (str.++ var3943!1 var12)))
(assert true)
(define-const var2130 String (append/672562846 var3635 "Security forbids determining the system class loader.")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security forbids determining the system class loader.") 
(declare-const var3635!1 String)
(assert (= var3635!1 (str.++ var3635 "Security forbids determining the system class loader.")))
(assert true)
(define-const var3828 String (toString/-2075883882 var2130)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2778_logDiagnostic/1268238408 var3828)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r23) 

(declare-const var3828!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2778_isDiagnosticsEnabled/-1004161365=([], boolean), var62_getSystemClassLoader/-483392723=([], java.lang.ClassLoader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2778_logDiagnostic/1268238408=([java.lang.String], void)}
; {var12=r2, var3859=null_type, var62=java.lang.ClassLoader, var3713=r24, var2778=org.apache.commons.logging.LogFactory, var242=$z0, var3300=$r17, var3168=java.lang.SecurityException, var3308=$r19, var3943=$r20, var3635=$r21, var2130=$r22, var3828=$r23}
; {r2=var12, null_type=var3859, java.lang.ClassLoader=var62, r24=var3713, org.apache.commons.logging.LogFactory=var2778, $z0=var242, $r17=var3300, java.lang.SecurityException=var3168, $r19=var3308, $r20=var3943, $r21=var3635, $r22=var2130, $r23=var3828}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r24 := @parameter1: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 != 0 goto (branch);	if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	$r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	$r19 := @caughtexception;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security forbids determining the system class loader.");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r23);	return
;block_num 4