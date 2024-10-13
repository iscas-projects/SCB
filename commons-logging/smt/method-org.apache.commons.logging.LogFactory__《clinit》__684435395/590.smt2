(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var85 0)
(declare-sort var1292 0)
(declare-sort var3797 0)
(declare-sort var397 0)
(declare-sort var469 0)
(declare-sort var175 0)
(declare-sort var3785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1292!class ClassObject)
(declare-fun var1292_getClassLoader/1794181642 (ClassObject) var85)
(declare-fun var3797-init () var3797)
(declare-fun <init>/1544051104 (var3797 var397) void)
(declare-fun cast-from-var85-to-var397 (var85) var397)
(declare-fun var1292_objectId/1952731062 (var397) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1292_initDiagnostics/351455467 () var175)
(declare-fun var1292_logClassLoaderEnvironment/-1123412948 (ClassObject) void)
(declare-fun var1292_createFactoryStore/465410863 () var3785)
(declare-fun var1292_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var85 var85)
(declare-const null-var469 var469)
(define-const var103 var85 (var1292_getClassLoader/1794181642 var1292!class)) ; Statement: r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 
(define-const var1064 var3797 var3797-init) ; Statement: $r1 = new java.lang.ref.WeakReference 
(assert true)
;(assert (<init>/1544051104 var1064 (cast-from-var85-to-var397 var103))) ; Statement: specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0) 

(declare-const var1064!1 var3797)
(declare-const var103!1 var85)
(define-const var1112 var3797 var1064!1) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1 
 ; Statement: if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert (not (= var103!1 null-var85))) ; Cond: r0 != null 
(define-const var2256 String (var1292_objectId/1952731062 (cast-from-var85-to-var397 var103!1))) ; Statement: r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1501 var469) ; Statement: $r9 := @caughtexception 
(assert (not (= var1501 null-var469)))
(define-const var2256!1 String "UNKNOWN") ; Statement: r10 = "UNKNOWN" 
(assert true) ; Non Conditional
(define-const var3486 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3486)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3486!1 String)
(assert (= var3486!1 ""))
(assert true)
(define-const var3937 String (append/672562846 var3486!1 "[LogFactory from ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ") 
(declare-const var3486!2 String)
(assert (= var3486!2 (str.++ var3486!1 "[LogFactory from ")))
(assert true)
(define-const var1021 String (append/672562846 var3937 var2256!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3937!1 String)
(assert (= var3937!1 (str.++ var3937 var2256!1)))
(assert true)
(define-const var2931 String (append/672562846 var1021 "] ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var1021!1 String)
(assert (= var1021!1 (str.++ var1021 "] ")))
(assert true)
(define-const var424 String (toString/-2075883882 var2931)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3289 String var424) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6 
(define-const var1748 var175 var1292_initDiagnostics/351455467) ; Statement: $r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>() 
(define-const var1076 var175 var1748) ; Statement: <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7 
;(assert (var1292_logClassLoaderEnvironment/-1123412948 var1292!class)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 

(declare-const var2991 ClassObject)
(define-const var792 var3785 var1292_createFactoryStore/465410863) ; Statement: $r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>() 
(define-const var1800 var3785 var792) ; Statement: <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8 
(define-const var2127 Bool var1292_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2127 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1292_getClassLoader/1794181642=([java.lang.Class], java.lang.ClassLoader), var3797-init=([], java.lang.ref.WeakReference), <init>/1544051104=([java.lang.ref.WeakReference, java.lang.Object], void), cast-from-var85-to-var397=([java.lang.ClassLoader], java.lang.Object), var1292_objectId/1952731062=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1292_initDiagnostics/351455467=([], java.io.PrintStream), var1292_logClassLoaderEnvironment/-1123412948=([java.lang.Class], void), var1292_createFactoryStore/465410863=([], java.util.Hashtable), var1292_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var85=java.lang.ClassLoader, var1292=org.apache.commons.logging.LogFactory, var103=r0, var3797=java.lang.ref.WeakReference, var1064=$r1, var397=java.lang.Object, var1112=<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>, var2256=r10, var469=java.lang.SecurityException, var1501=$r9, var3486=$r2, var3937=$r3, var1021=$r4, var2931=$r5, var424=$r6, var3289=<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>, var175=java.io.PrintStream, var1748=$r7, var1076=<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>, var2991=class "Lorg/apache/commons/logging/LogFactory;", var3785=java.util.Hashtable, var792=$r8, var1800=<org.apache.commons.logging.LogFactory: java.util.Hashtable factories>, var2127=$z0}
; {java.lang.ClassLoader=var85, org.apache.commons.logging.LogFactory=var1292, r0=var103, java.lang.ref.WeakReference=var3797, $r1=var1064, java.lang.Object=var397, <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>=var1112, r10=var2256, java.lang.SecurityException=var469, $r9=var1501, $r2=var3486, $r3=var3937, $r4=var1021, $r5=var2931, $r6=var424, <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>=var3289, java.io.PrintStream=var175, $r7=var1748, <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>=var1076, class "Lorg/apache/commons/logging/LogFactory;"=var2991, java.util.Hashtable=var3785, $r8=var792, <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>=var1800, $z0=var2127}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r1 = new java.lang.ref.WeakReference;	specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0);	<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1;	if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	$r9 := @caughtexception;	r10 = "UNKNOWN";	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6;	$r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>();	<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7;	staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>();	<org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return;	return
;block_num 5