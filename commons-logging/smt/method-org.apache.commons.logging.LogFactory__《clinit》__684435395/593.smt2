(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1137 0)
(declare-sort var482 0)
(declare-sort var3735 0)
(declare-sort var3863 0)
(declare-sort var498 0)
(declare-sort var3352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var482!class ClassObject)
(declare-fun var482_getClassLoader/1794181642 (ClassObject) var1137)
(declare-fun var3735-init () var3735)
(declare-fun <init>/1544051104 (var3735 var3863) void)
(declare-fun cast-from-var1137-to-var3863 (var1137) var3863)
(declare-fun var482_objectId/1952731062 (var3863) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var482_initDiagnostics/351455467 () var498)
(declare-fun var482_logClassLoaderEnvironment/-1123412948 (ClassObject) void)
(declare-fun var482_createFactoryStore/465410863 () var3352)
(declare-fun var482_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun var482_logDiagnostic/1268238408 (String) void)
(declare-const null-var1137 var1137)
(define-const var3406 var1137 (var482_getClassLoader/1794181642 var482!class)) ; Statement: r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 
(define-const var2316 var3735 var3735-init) ; Statement: $r1 = new java.lang.ref.WeakReference 
(assert true)
;(assert (<init>/1544051104 var2316 (cast-from-var1137-to-var3863 var3406))) ; Statement: specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0) 

(declare-const var2316!1 var3735)
(declare-const var3406!1 var1137)
(define-const var2772 var3735 var2316!1) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1 
 ; Statement: if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert (not (= var3406!1 null-var1137))) ; Cond: r0 != null 
(define-const var1615 String (var482_objectId/1952731062 (cast-from-var1137-to-var3863 var3406!1))) ; Statement: r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var241 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var241)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var241!1 String)
(assert (= var241!1 ""))
(assert true)
(define-const var2549 String (append/672562846 var241!1 "[LogFactory from ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ") 
(declare-const var241!2 String)
(assert (= var241!2 (str.++ var241!1 "[LogFactory from ")))
(assert true)
(define-const var2250 String (append/672562846 var2549 var1615)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2549!1 String)
(assert (= var2549!1 (str.++ var2549 var1615)))
(assert true)
(define-const var1152 String (append/672562846 var2250 "] ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var2250!1 String)
(assert (= var2250!1 (str.++ var2250 "] ")))
(assert true)
(define-const var3066 String (toString/-2075883882 var1152)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2299 String var3066) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6 
(define-const var1258 var498 var482_initDiagnostics/351455467) ; Statement: $r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>() 
(define-const var199 var498 var1258) ; Statement: <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7 
;(assert (var482_logClassLoaderEnvironment/-1123412948 var482!class)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 

(declare-const var2851 ClassObject)
(define-const var3801 var3352 var482_createFactoryStore/465410863) ; Statement: $r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>() 
(define-const var2174 var3352 var3801) ; Statement: <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8 
(define-const var1886 Bool var482_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var1886 1 0) 0))) ; Negate: Cond: $z0 == 0  
;(assert (var482_logDiagnostic/1268238408 "BOOTSTRAP COMPLETED")) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("BOOTSTRAP COMPLETED") 

(declare-const var3141 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var482_getClassLoader/1794181642=([java.lang.Class], java.lang.ClassLoader), var3735-init=([], java.lang.ref.WeakReference), <init>/1544051104=([java.lang.ref.WeakReference, java.lang.Object], void), cast-from-var1137-to-var3863=([java.lang.ClassLoader], java.lang.Object), var482_objectId/1952731062=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var482_initDiagnostics/351455467=([], java.io.PrintStream), var482_logClassLoaderEnvironment/-1123412948=([java.lang.Class], void), var482_createFactoryStore/465410863=([], java.util.Hashtable), var482_isDiagnosticsEnabled/-1004161365=([], boolean), var482_logDiagnostic/1268238408=([java.lang.String], void)}
; {var1137=java.lang.ClassLoader, var482=org.apache.commons.logging.LogFactory, var3406=r0, var3735=java.lang.ref.WeakReference, var2316=$r1, var3863=java.lang.Object, var2772=<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>, var1615=r10, var241=$r2, var2549=$r3, var2250=$r4, var1152=$r5, var3066=$r6, var2299=<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>, var498=java.io.PrintStream, var1258=$r7, var199=<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>, var2851=class "Lorg/apache/commons/logging/LogFactory;", var3352=java.util.Hashtable, var3801=$r8, var2174=<org.apache.commons.logging.LogFactory: java.util.Hashtable factories>, var1886=$z0, var3141="BOOTSTRAP COMPLETED"}
; {java.lang.ClassLoader=var1137, org.apache.commons.logging.LogFactory=var482, r0=var3406, java.lang.ref.WeakReference=var3735, $r1=var2316, java.lang.Object=var3863, <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>=var2772, r10=var1615, $r2=var241, $r3=var2549, $r4=var2250, $r5=var1152, $r6=var3066, <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>=var2299, java.io.PrintStream=var498, $r7=var1258, <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>=var199, class "Lorg/apache/commons/logging/LogFactory;"=var2851, java.util.Hashtable=var3352, $r8=var3801, <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>=var2174, $z0=var1886, "BOOTSTRAP COMPLETED"=var3141}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r1 = new java.lang.ref.WeakReference;	specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0);	<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1;	if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6;	$r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>();	<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7;	staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>();	<org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return;	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("BOOTSTRAP COMPLETED");	return
;block_num 6