(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3426 0)
(declare-sort var3145 0)
(declare-sort var467 0)
(declare-sort var3778 0)
(declare-sort var2813 0)
(declare-sort var2165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3145!class ClassObject)
(declare-fun var3145_getClassLoader/1794181642 (ClassObject) var3426)
(declare-fun var467-init () var467)
(declare-fun <init>/1544051104 (var467 var3778) void)
(declare-fun cast-from-var3426-to-var3778 (var3426) var3778)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3145_initDiagnostics/351455467 () var2813)
(declare-fun var3145_logClassLoaderEnvironment/-1123412948 (ClassObject) void)
(declare-fun var3145_createFactoryStore/465410863 () var2165)
(declare-fun var3145_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var3426 var3426)
(define-const var3915 var3426 (var3145_getClassLoader/1794181642 var3145!class)) ; Statement: r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 
(define-const var40 var467 var467-init) ; Statement: $r1 = new java.lang.ref.WeakReference 
(assert true)
;(assert (<init>/1544051104 var40 (cast-from-var3426-to-var3778 var3915))) ; Statement: specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0) 

(declare-const var40!1 var467)
(declare-const var3915!1 var3426)
(define-const var251 var467 var40!1) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1 
 ; Statement: if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert (not (not (= var3915!1 null-var3426)))) ; Negate: Cond: r0 != null  
(define-const var1259 String "BOOTLOADER") ; Statement: r10 = "BOOTLOADER" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var700 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var700)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var700!1 String)
(assert (= var700!1 ""))
(assert true)
(define-const var1544 String (append/672562846 var700!1 "[LogFactory from ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ") 
(declare-const var700!2 String)
(assert (= var700!2 (str.++ var700!1 "[LogFactory from ")))
(assert true)
(define-const var1358 String (append/672562846 var1544 var1259)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1544!1 String)
(assert (= var1544!1 (str.++ var1544 var1259)))
(assert true)
(define-const var407 String (append/672562846 var1358 "] ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var1358!1 String)
(assert (= var1358!1 (str.++ var1358 "] ")))
(assert true)
(define-const var1504 String (toString/-2075883882 var407)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2764 String var1504) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6 
(define-const var3100 var2813 var3145_initDiagnostics/351455467) ; Statement: $r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>() 
(define-const var3620 var2813 var3100) ; Statement: <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7 
;(assert (var3145_logClassLoaderEnvironment/-1123412948 var3145!class)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 

(declare-const var36 ClassObject)
(define-const var2529 var2165 var3145_createFactoryStore/465410863) ; Statement: $r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>() 
(define-const var2081 var2165 var2529) ; Statement: <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8 
(define-const var1745 Bool var3145_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1745 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3145_getClassLoader/1794181642=([java.lang.Class], java.lang.ClassLoader), var467-init=([], java.lang.ref.WeakReference), <init>/1544051104=([java.lang.ref.WeakReference, java.lang.Object], void), cast-from-var3426-to-var3778=([java.lang.ClassLoader], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3145_initDiagnostics/351455467=([], java.io.PrintStream), var3145_logClassLoaderEnvironment/-1123412948=([java.lang.Class], void), var3145_createFactoryStore/465410863=([], java.util.Hashtable), var3145_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var3426=java.lang.ClassLoader, var3145=org.apache.commons.logging.LogFactory, var3915=r0, var467=java.lang.ref.WeakReference, var40=$r1, var3778=java.lang.Object, var251=<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>, var1259=r10, var700=$r2, var1544=$r3, var1358=$r4, var407=$r5, var1504=$r6, var2764=<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>, var2813=java.io.PrintStream, var3100=$r7, var3620=<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>, var36=class "Lorg/apache/commons/logging/LogFactory;", var2165=java.util.Hashtable, var2529=$r8, var2081=<org.apache.commons.logging.LogFactory: java.util.Hashtable factories>, var1745=$z0}
; {java.lang.ClassLoader=var3426, org.apache.commons.logging.LogFactory=var3145, r0=var3915, java.lang.ref.WeakReference=var467, $r1=var40, java.lang.Object=var3778, <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>=var251, r10=var1259, $r2=var700, $r3=var1544, $r4=var1358, $r5=var407, $r6=var1504, <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>=var2764, java.io.PrintStream=var2813, $r7=var3100, <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>=var3620, class "Lorg/apache/commons/logging/LogFactory;"=var36, java.util.Hashtable=var2165, $r8=var2529, <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>=var2081, $z0=var1745}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r1 = new java.lang.ref.WeakReference;	specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0);	<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1;	if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	r10 = "BOOTLOADER";	goto [?= (branch)];	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6;	$r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>();	<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7;	staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>();	<org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return;	return
;block_num 5