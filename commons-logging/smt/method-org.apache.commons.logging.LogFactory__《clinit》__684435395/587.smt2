(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3873 0)
(declare-sort var2333 0)
(declare-sort var1335 0)
(declare-sort var1653 0)
(declare-sort var3798 0)
(declare-sort var454 0)
(declare-sort var2928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2333!class ClassObject)
(declare-fun var2333_getClassLoader/1794181642 (ClassObject) var3873)
(declare-fun var1335-init () var1335)
(declare-fun <init>/1544051104 (var1335 var1653) void)
(declare-fun cast-from-var3873-to-var1653 (var3873) var1653)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2333_initDiagnostics/351455467 () var454)
(declare-fun var2333_logClassLoaderEnvironment/-1123412948 (ClassObject) void)
(declare-fun var2333_createFactoryStore/465410863 () var2928)
(declare-fun var2333_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var3873 var3873)
(declare-const null-var3798 var3798)
(define-const var653 var3873 (var2333_getClassLoader/1794181642 var2333!class)) ; Statement: r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 
(define-const var3439 var1335 var1335-init) ; Statement: $r1 = new java.lang.ref.WeakReference 
(assert true)
;(assert (<init>/1544051104 var3439 (cast-from-var3873-to-var1653 var653))) ; Statement: specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0) 

(declare-const var3439!1 var1335)
(declare-const var653!1 var3873)
(define-const var2757 var1335 var3439!1) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1 
 ; Statement: if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert (not (not (= var653!1 null-var3873)))) ; Negate: Cond: r0 != null  
(declare-const var1229 var3798) ; Statement: $r9 := @caughtexception 
(assert (not (= var1229 null-var3798)))
(define-const var2334 String "UNKNOWN") ; Statement: r10 = "UNKNOWN" 
(assert true) ; Non Conditional
(define-const var3865 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3865)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3865!1 String)
(assert (= var3865!1 ""))
(assert true)
(define-const var184 String (append/672562846 var3865!1 "[LogFactory from ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ") 
(declare-const var3865!2 String)
(assert (= var3865!2 (str.++ var3865!1 "[LogFactory from ")))
(assert true)
(define-const var2174 String (append/672562846 var184 var2334)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var184!1 String)
(assert (= var184!1 (str.++ var184 var2334)))
(assert true)
(define-const var565 String (append/672562846 var2174 "] ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var2174!1 String)
(assert (= var2174!1 (str.++ var2174 "] ")))
(assert true)
(define-const var1094 String (toString/-2075883882 var565)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1018 String var1094) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6 
(define-const var1883 var454 var2333_initDiagnostics/351455467) ; Statement: $r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>() 
(define-const var2429 var454 var1883) ; Statement: <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7 
;(assert (var2333_logClassLoaderEnvironment/-1123412948 var2333!class)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 

(declare-const var1966 ClassObject)
(define-const var1871 var2928 var2333_createFactoryStore/465410863) ; Statement: $r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>() 
(define-const var2336 var2928 var1871) ; Statement: <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8 
(define-const var2568 Bool var2333_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2568 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2333_getClassLoader/1794181642=([java.lang.Class], java.lang.ClassLoader), var1335-init=([], java.lang.ref.WeakReference), <init>/1544051104=([java.lang.ref.WeakReference, java.lang.Object], void), cast-from-var3873-to-var1653=([java.lang.ClassLoader], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2333_initDiagnostics/351455467=([], java.io.PrintStream), var2333_logClassLoaderEnvironment/-1123412948=([java.lang.Class], void), var2333_createFactoryStore/465410863=([], java.util.Hashtable), var2333_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var3873=java.lang.ClassLoader, var2333=org.apache.commons.logging.LogFactory, var653=r0, var1335=java.lang.ref.WeakReference, var3439=$r1, var1653=java.lang.Object, var2757=<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>, var3798=java.lang.SecurityException, var1229=$r9, var2334=r10, var3865=$r2, var184=$r3, var2174=$r4, var565=$r5, var1094=$r6, var1018=<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>, var454=java.io.PrintStream, var1883=$r7, var2429=<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>, var1966=class "Lorg/apache/commons/logging/LogFactory;", var2928=java.util.Hashtable, var1871=$r8, var2336=<org.apache.commons.logging.LogFactory: java.util.Hashtable factories>, var2568=$z0}
; {java.lang.ClassLoader=var3873, org.apache.commons.logging.LogFactory=var2333, r0=var653, java.lang.ref.WeakReference=var1335, $r1=var3439, java.lang.Object=var1653, <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>=var2757, java.lang.SecurityException=var3798, $r9=var1229, r10=var2334, $r2=var3865, $r3=var184, $r4=var2174, $r5=var565, $r6=var1094, <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>=var1018, java.io.PrintStream=var454, $r7=var1883, <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>=var2429, class "Lorg/apache/commons/logging/LogFactory;"=var1966, java.util.Hashtable=var2928, $r8=var1871, <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>=var2336, $z0=var2568}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r1 = new java.lang.ref.WeakReference;	specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0);	<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1;	if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	$r9 := @caughtexception;	r10 = "UNKNOWN";	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6;	$r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>();	<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7;	staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>();	<org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return;	return
;block_num 4