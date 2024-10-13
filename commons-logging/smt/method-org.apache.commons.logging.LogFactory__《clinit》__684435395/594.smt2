(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2643 0)
(declare-sort var2228 0)
(declare-sort var2719 0)
(declare-sort var2520 0)
(declare-sort var2961 0)
(declare-sort var1503 0)
(declare-sort var1081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2228!class ClassObject)
(declare-fun var2228_getClassLoader/1794181642 (ClassObject) var2643)
(declare-fun var2719-init () var2719)
(declare-fun <init>/1544051104 (var2719 var2520) void)
(declare-fun cast-from-var2643-to-var2520 (var2643) var2520)
(declare-fun var2228_objectId/1952731062 (var2520) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2228_initDiagnostics/351455467 () var1503)
(declare-fun var2228_logClassLoaderEnvironment/-1123412948 (ClassObject) void)
(declare-fun var2228_createFactoryStore/465410863 () var1081)
(declare-fun var2228_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun var2228_logDiagnostic/1268238408 (String) void)
(declare-const null-var2643 var2643)
(declare-const null-var2961 var2961)
(define-const var436 var2643 (var2228_getClassLoader/1794181642 var2228!class)) ; Statement: r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 
(define-const var37 var2719 var2719-init) ; Statement: $r1 = new java.lang.ref.WeakReference 
(assert true)
;(assert (<init>/1544051104 var37 (cast-from-var2643-to-var2520 var436))) ; Statement: specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0) 

(declare-const var37!1 var2719)
(declare-const var436!1 var2643)
(define-const var151 var2719 var37!1) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1 
 ; Statement: if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert (not (= var436!1 null-var2643))) ; Cond: r0 != null 
(define-const var1383 String (var2228_objectId/1952731062 (cast-from-var2643-to-var2520 var436!1))) ; Statement: r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3421 var2961) ; Statement: $r9 := @caughtexception 
(assert (not (= var3421 null-var2961)))
(define-const var1383!1 String "UNKNOWN") ; Statement: r10 = "UNKNOWN" 
(assert true) ; Non Conditional
(define-const var1439 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1439)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1439!1 String)
(assert (= var1439!1 ""))
(assert true)
(define-const var1890 String (append/672562846 var1439!1 "[LogFactory from ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ") 
(declare-const var1439!2 String)
(assert (= var1439!2 (str.++ var1439!1 "[LogFactory from ")))
(assert true)
(define-const var3666 String (append/672562846 var1890 var1383!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1890!1 String)
(assert (= var1890!1 (str.++ var1890 var1383!1)))
(assert true)
(define-const var3914 String (append/672562846 var3666 "] ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var3666!1 String)
(assert (= var3666!1 (str.++ var3666 "] ")))
(assert true)
(define-const var1287 String (toString/-2075883882 var3914)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3943 String var1287) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6 
(define-const var820 var1503 var2228_initDiagnostics/351455467) ; Statement: $r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>() 
(define-const var2412 var1503 var820) ; Statement: <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7 
;(assert (var2228_logClassLoaderEnvironment/-1123412948 var2228!class)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 

(declare-const var3793 ClassObject)
(define-const var484 var1081 var2228_createFactoryStore/465410863) ; Statement: $r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>() 
(define-const var1421 var1081 var484) ; Statement: <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8 
(define-const var2029 Bool var2228_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2029 1 0) 0))) ; Negate: Cond: $z0 == 0  
;(assert (var2228_logDiagnostic/1268238408 "BOOTSTRAP COMPLETED")) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("BOOTSTRAP COMPLETED") 

(declare-const var829 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2228_getClassLoader/1794181642=([java.lang.Class], java.lang.ClassLoader), var2719-init=([], java.lang.ref.WeakReference), <init>/1544051104=([java.lang.ref.WeakReference, java.lang.Object], void), cast-from-var2643-to-var2520=([java.lang.ClassLoader], java.lang.Object), var2228_objectId/1952731062=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2228_initDiagnostics/351455467=([], java.io.PrintStream), var2228_logClassLoaderEnvironment/-1123412948=([java.lang.Class], void), var2228_createFactoryStore/465410863=([], java.util.Hashtable), var2228_isDiagnosticsEnabled/-1004161365=([], boolean), var2228_logDiagnostic/1268238408=([java.lang.String], void)}
; {var2643=java.lang.ClassLoader, var2228=org.apache.commons.logging.LogFactory, var436=r0, var2719=java.lang.ref.WeakReference, var37=$r1, var2520=java.lang.Object, var151=<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>, var1383=r10, var2961=java.lang.SecurityException, var3421=$r9, var1439=$r2, var1890=$r3, var3666=$r4, var3914=$r5, var1287=$r6, var3943=<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>, var1503=java.io.PrintStream, var820=$r7, var2412=<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>, var3793=class "Lorg/apache/commons/logging/LogFactory;", var1081=java.util.Hashtable, var484=$r8, var1421=<org.apache.commons.logging.LogFactory: java.util.Hashtable factories>, var2029=$z0, var829="BOOTSTRAP COMPLETED"}
; {java.lang.ClassLoader=var2643, org.apache.commons.logging.LogFactory=var2228, r0=var436, java.lang.ref.WeakReference=var2719, $r1=var37, java.lang.Object=var2520, <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>=var151, r10=var1383, java.lang.SecurityException=var2961, $r9=var3421, $r2=var1439, $r3=var1890, $r4=var3666, $r5=var3914, $r6=var1287, <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>=var3943, java.io.PrintStream=var1503, $r7=var820, <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>=var2412, class "Lorg/apache/commons/logging/LogFactory;"=var3793, java.util.Hashtable=var1081, $r8=var484, <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>=var1421, $z0=var2029, "BOOTSTRAP COMPLETED"=var829}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r1 = new java.lang.ref.WeakReference;	specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0);	<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1;	if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	$r9 := @caughtexception;	r10 = "UNKNOWN";	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6;	$r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>();	<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7;	staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>();	<org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return;	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("BOOTSTRAP COMPLETED");	return
;block_num 6