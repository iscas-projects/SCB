(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3938 0)
(declare-sort var1444 0)
(declare-sort var1724 0)
(declare-sort var75 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1724_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1724_logDiagnostic/1268238408 (String) void)
(declare-const null-String String)
(declare-const null-var1444 var1444)
(declare-const null-var75 var75)
(declare-const var1234 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1234 null-String)))
(declare-const var2273 var1444) ; Statement: r24 := @parameter1: java.lang.ClassLoader 
(assert (not (= var2273 null-var1444)))
(define-const var3234 Bool var1724_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var3234 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert (not (= var2273 null-var1444))) ; Negate: Cond: r24 == null  
(declare-const var1863 var75) ; Statement: $r19 := @caughtexception 
(assert (not (= var1863 null-var75)))
(define-const var1620 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1620)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1620!1 String)
(assert (= var1620!1 ""))
(assert true)
(define-const var2549 String (append/672562846 var1620!1 var1234)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1620!2 String)
(assert (= var1620!2 (str.++ var1620!1 var1234)))
(assert true)
(define-const var1437 String (append/672562846 var2549 "Security forbids determining the system class loader.")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security forbids determining the system class loader.") 
(declare-const var2549!1 String)
(assert (= var2549!1 (str.++ var2549 "Security forbids determining the system class loader.")))
(assert true)
(define-const var2372 String (toString/-2075883882 var1437)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1724_logDiagnostic/1268238408 var2372)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r23) 

(declare-const var2372!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1724_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1724_logDiagnostic/1268238408=([java.lang.String], void)}
; {var1234=r2, var3938=null_type, var1444=java.lang.ClassLoader, var2273=r24, var1724=org.apache.commons.logging.LogFactory, var3234=$z0, var75=java.lang.SecurityException, var1863=$r19, var1620=$r20, var2549=$r21, var1437=$r22, var2372=$r23}
; {r2=var1234, null_type=var3938, java.lang.ClassLoader=var1444, r24=var2273, org.apache.commons.logging.LogFactory=var1724, $z0=var3234, java.lang.SecurityException=var75, $r19=var1863, $r20=var1620, $r21=var2549, $r22=var1437, $r23=var2372}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r24 := @parameter1: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 != 0 goto (branch);	if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	$r19 := @caughtexception;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security forbids determining the system class loader.");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r23);	return
;block_num 3