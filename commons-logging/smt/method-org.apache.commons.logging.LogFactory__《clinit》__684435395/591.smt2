(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3630 0)
(declare-sort var956 0)
(declare-sort var2062 0)
(declare-sort var148 0)
(declare-sort var529 0)
(declare-sort var972 0)
(declare-sort var166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var956!class ClassObject)
(declare-fun var956_getClassLoader/1794181642 (ClassObject) var3630)
(declare-fun var2062-init () var2062)
(declare-fun <init>/1544051104 (var2062 var148) void)
(declare-fun cast-from-var3630-to-var148 (var3630) var148)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var956_initDiagnostics/351455467 () var972)
(declare-fun var956_logClassLoaderEnvironment/-1123412948 (ClassObject) void)
(declare-fun var956_createFactoryStore/465410863 () var166)
(declare-fun var956_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun var956_logDiagnostic/1268238408 (String) void)
(declare-const null-var3630 var3630)
(declare-const null-var529 var529)
(define-const var2511 var3630 (var956_getClassLoader/1794181642 var956!class)) ; Statement: r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 
(define-const var2625 var2062 var2062-init) ; Statement: $r1 = new java.lang.ref.WeakReference 
(assert true)
;(assert (<init>/1544051104 var2625 (cast-from-var3630-to-var148 var2511))) ; Statement: specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0) 

(declare-const var2625!1 var2062)
(declare-const var2511!1 var3630)
(define-const var2036 var2062 var2625!1) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1 
 ; Statement: if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert (not (not (= var2511!1 null-var3630)))) ; Negate: Cond: r0 != null  
(declare-const var755 var529) ; Statement: $r9 := @caughtexception 
(assert (not (= var755 null-var529)))
(define-const var2784 String "UNKNOWN") ; Statement: r10 = "UNKNOWN" 
(assert true) ; Non Conditional
(define-const var2190 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2190)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2190!1 String)
(assert (= var2190!1 ""))
(assert true)
(define-const var3867 String (append/672562846 var2190!1 "[LogFactory from ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ") 
(declare-const var2190!2 String)
(assert (= var2190!2 (str.++ var2190!1 "[LogFactory from ")))
(assert true)
(define-const var2122 String (append/672562846 var3867 var2784)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3867!1 String)
(assert (= var3867!1 (str.++ var3867 var2784)))
(assert true)
(define-const var1136 String (append/672562846 var2122 "] ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var2122!1 String)
(assert (= var2122!1 (str.++ var2122 "] ")))
(assert true)
(define-const var2171 String (toString/-2075883882 var1136)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3933 String var2171) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6 
(define-const var2523 var972 var956_initDiagnostics/351455467) ; Statement: $r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>() 
(define-const var926 var972 var2523) ; Statement: <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7 
;(assert (var956_logClassLoaderEnvironment/-1123412948 var956!class)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 

(declare-const var3889 ClassObject)
(define-const var62 var166 var956_createFactoryStore/465410863) ; Statement: $r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>() 
(define-const var1290 var166 var62) ; Statement: <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8 
(define-const var3890 Bool var956_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var3890 1 0) 0))) ; Negate: Cond: $z0 == 0  
;(assert (var956_logDiagnostic/1268238408 "BOOTSTRAP COMPLETED")) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("BOOTSTRAP COMPLETED") 

(declare-const var1263 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var956_getClassLoader/1794181642=([java.lang.Class], java.lang.ClassLoader), var2062-init=([], java.lang.ref.WeakReference), <init>/1544051104=([java.lang.ref.WeakReference, java.lang.Object], void), cast-from-var3630-to-var148=([java.lang.ClassLoader], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var956_initDiagnostics/351455467=([], java.io.PrintStream), var956_logClassLoaderEnvironment/-1123412948=([java.lang.Class], void), var956_createFactoryStore/465410863=([], java.util.Hashtable), var956_isDiagnosticsEnabled/-1004161365=([], boolean), var956_logDiagnostic/1268238408=([java.lang.String], void)}
; {var3630=java.lang.ClassLoader, var956=org.apache.commons.logging.LogFactory, var2511=r0, var2062=java.lang.ref.WeakReference, var2625=$r1, var148=java.lang.Object, var2036=<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>, var529=java.lang.SecurityException, var755=$r9, var2784=r10, var2190=$r2, var3867=$r3, var2122=$r4, var1136=$r5, var2171=$r6, var3933=<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>, var972=java.io.PrintStream, var2523=$r7, var926=<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>, var3889=class "Lorg/apache/commons/logging/LogFactory;", var166=java.util.Hashtable, var62=$r8, var1290=<org.apache.commons.logging.LogFactory: java.util.Hashtable factories>, var3890=$z0, var1263="BOOTSTRAP COMPLETED"}
; {java.lang.ClassLoader=var3630, org.apache.commons.logging.LogFactory=var956, r0=var2511, java.lang.ref.WeakReference=var2062, $r1=var2625, java.lang.Object=var148, <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>=var2036, java.lang.SecurityException=var529, $r9=var755, r10=var2784, $r2=var2190, $r3=var3867, $r4=var2122, $r5=var1136, $r6=var2171, <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>=var3933, java.io.PrintStream=var972, $r7=var2523, <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>=var926, class "Lorg/apache/commons/logging/LogFactory;"=var3889, java.util.Hashtable=var166, $r8=var62, <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>=var1290, $z0=var3890, "BOOTSTRAP COMPLETED"=var1263}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r1 = new java.lang.ref.WeakReference;	specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0);	<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1;	if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	$r9 := @caughtexception;	r10 = "UNKNOWN";	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6;	$r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>();	<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7;	staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>();	<org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return;	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("BOOTSTRAP COMPLETED");	return
;block_num 5