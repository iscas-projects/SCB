(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3577 0)
(declare-sort var2004 0)
(declare-sort var1270 0)
(declare-sort var94 0)
(declare-sort var3066 0)
(declare-sort var2745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2004!class ClassObject)
(declare-fun var2004_getClassLoader/1794181642 (ClassObject) var3577)
(declare-fun var1270-init () var1270)
(declare-fun <init>/1544051104 (var1270 var94) void)
(declare-fun cast-from-var3577-to-var94 (var3577) var94)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2004_initDiagnostics/351455467 () var3066)
(declare-fun var2004_logClassLoaderEnvironment/-1123412948 (ClassObject) void)
(declare-fun var2004_createFactoryStore/465410863 () var2745)
(declare-fun var2004_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun var2004_logDiagnostic/1268238408 (String) void)
(declare-const null-var3577 var3577)
(define-const var1632 var3577 (var2004_getClassLoader/1794181642 var2004!class)) ; Statement: r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 
(define-const var1278 var1270 var1270-init) ; Statement: $r1 = new java.lang.ref.WeakReference 
(assert true)
;(assert (<init>/1544051104 var1278 (cast-from-var3577-to-var94 var1632))) ; Statement: specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0) 

(declare-const var1278!1 var1270)
(declare-const var1632!1 var3577)
(define-const var3797 var1270 var1278!1) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1 
 ; Statement: if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert (not (not (= var1632!1 null-var3577)))) ; Negate: Cond: r0 != null  
(define-const var1046 String "BOOTLOADER") ; Statement: r10 = "BOOTLOADER" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3945 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3945)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3945!1 String)
(assert (= var3945!1 ""))
(assert true)
(define-const var2664 String (append/672562846 var3945!1 "[LogFactory from ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ") 
(declare-const var3945!2 String)
(assert (= var3945!2 (str.++ var3945!1 "[LogFactory from ")))
(assert true)
(define-const var2613 String (append/672562846 var2664 var1046)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2664!1 String)
(assert (= var2664!1 (str.++ var2664 var1046)))
(assert true)
(define-const var2461 String (append/672562846 var2613 "] ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var2613!1 String)
(assert (= var2613!1 (str.++ var2613 "] ")))
(assert true)
(define-const var3606 String (toString/-2075883882 var2461)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3792 String var3606) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6 
(define-const var1650 var3066 var2004_initDiagnostics/351455467) ; Statement: $r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>() 
(define-const var2073 var3066 var1650) ; Statement: <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7 
;(assert (var2004_logClassLoaderEnvironment/-1123412948 var2004!class)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 

(declare-const var3016 ClassObject)
(define-const var2017 var2745 var2004_createFactoryStore/465410863) ; Statement: $r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>() 
(define-const var3219 var2745 var2017) ; Statement: <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8 
(define-const var2799 Bool var2004_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2799 1 0) 0))) ; Negate: Cond: $z0 == 0  
;(assert (var2004_logDiagnostic/1268238408 "BOOTSTRAP COMPLETED")) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("BOOTSTRAP COMPLETED") 

(declare-const var3870 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2004_getClassLoader/1794181642=([java.lang.Class], java.lang.ClassLoader), var1270-init=([], java.lang.ref.WeakReference), <init>/1544051104=([java.lang.ref.WeakReference, java.lang.Object], void), cast-from-var3577-to-var94=([java.lang.ClassLoader], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2004_initDiagnostics/351455467=([], java.io.PrintStream), var2004_logClassLoaderEnvironment/-1123412948=([java.lang.Class], void), var2004_createFactoryStore/465410863=([], java.util.Hashtable), var2004_isDiagnosticsEnabled/-1004161365=([], boolean), var2004_logDiagnostic/1268238408=([java.lang.String], void)}
; {var3577=java.lang.ClassLoader, var2004=org.apache.commons.logging.LogFactory, var1632=r0, var1270=java.lang.ref.WeakReference, var1278=$r1, var94=java.lang.Object, var3797=<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>, var1046=r10, var3945=$r2, var2664=$r3, var2613=$r4, var2461=$r5, var3606=$r6, var3792=<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>, var3066=java.io.PrintStream, var1650=$r7, var2073=<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>, var3016=class "Lorg/apache/commons/logging/LogFactory;", var2745=java.util.Hashtable, var2017=$r8, var3219=<org.apache.commons.logging.LogFactory: java.util.Hashtable factories>, var2799=$z0, var3870="BOOTSTRAP COMPLETED"}
; {java.lang.ClassLoader=var3577, org.apache.commons.logging.LogFactory=var2004, r0=var1632, java.lang.ref.WeakReference=var1270, $r1=var1278, java.lang.Object=var94, <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>=var3797, r10=var1046, $r2=var3945, $r3=var2664, $r4=var2613, $r5=var2461, $r6=var3606, <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>=var3792, java.io.PrintStream=var3066, $r7=var1650, <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>=var2073, class "Lorg/apache/commons/logging/LogFactory;"=var3016, java.util.Hashtable=var2745, $r8=var2017, <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>=var3219, $z0=var2799, "BOOTSTRAP COMPLETED"=var3870}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r1 = new java.lang.ref.WeakReference;	specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0);	<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1;	if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	r10 = "BOOTLOADER";	goto [?= (branch)];	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6;	$r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>();	<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7;	staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>();	<org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return;	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("BOOTSTRAP COMPLETED");	return
;block_num 6