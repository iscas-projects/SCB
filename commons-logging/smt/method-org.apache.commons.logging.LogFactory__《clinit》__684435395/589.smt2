(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3181 0)
(declare-sort var694 0)
(declare-sort var2026 0)
(declare-sort var724 0)
(declare-sort var387 0)
(declare-sort var3012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var694!class ClassObject)
(declare-fun var694_getClassLoader/1794181642 (ClassObject) var3181)
(declare-fun var2026-init () var2026)
(declare-fun <init>/1544051104 (var2026 var724) void)
(declare-fun cast-from-var3181-to-var724 (var3181) var724)
(declare-fun var694_objectId/1952731062 (var724) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var694_initDiagnostics/351455467 () var387)
(declare-fun var694_logClassLoaderEnvironment/-1123412948 (ClassObject) void)
(declare-fun var694_createFactoryStore/465410863 () var3012)
(declare-fun var694_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var3181 var3181)
(define-const var1360 var3181 (var694_getClassLoader/1794181642 var694!class)) ; Statement: r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 
(define-const var2176 var2026 var2026-init) ; Statement: $r1 = new java.lang.ref.WeakReference 
(assert true)
;(assert (<init>/1544051104 var2176 (cast-from-var3181-to-var724 var1360))) ; Statement: specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0) 

(declare-const var2176!1 var2026)
(declare-const var1360!1 var3181)
(define-const var338 var2026 var2176!1) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1 
 ; Statement: if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert (not (= var1360!1 null-var3181))) ; Cond: r0 != null 
(define-const var715 String (var694_objectId/1952731062 (cast-from-var3181-to-var724 var1360!1))) ; Statement: r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var966 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var966)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var966!1 String)
(assert (= var966!1 ""))
(assert true)
(define-const var1613 String (append/672562846 var966!1 "[LogFactory from ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ") 
(declare-const var966!2 String)
(assert (= var966!2 (str.++ var966!1 "[LogFactory from ")))
(assert true)
(define-const var3160 String (append/672562846 var1613 var715)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1613!1 String)
(assert (= var1613!1 (str.++ var1613 var715)))
(assert true)
(define-const var2829 String (append/672562846 var3160 "] ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var3160!1 String)
(assert (= var3160!1 (str.++ var3160 "] ")))
(assert true)
(define-const var1376 String (toString/-2075883882 var2829)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1316 String var1376) ; Statement: <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6 
(define-const var2255 var387 var694_initDiagnostics/351455467) ; Statement: $r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>() 
(define-const var2779 var387 var2255) ; Statement: <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7 
;(assert (var694_logClassLoaderEnvironment/-1123412948 var694!class)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;") 

(declare-const var2396 ClassObject)
(define-const var569 var3012 var694_createFactoryStore/465410863) ; Statement: $r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>() 
(define-const var2798 var3012 var569) ; Statement: <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8 
(define-const var3671 Bool var694_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3671 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var694_getClassLoader/1794181642=([java.lang.Class], java.lang.ClassLoader), var2026-init=([], java.lang.ref.WeakReference), <init>/1544051104=([java.lang.ref.WeakReference, java.lang.Object], void), cast-from-var3181-to-var724=([java.lang.ClassLoader], java.lang.Object), var694_objectId/1952731062=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var694_initDiagnostics/351455467=([], java.io.PrintStream), var694_logClassLoaderEnvironment/-1123412948=([java.lang.Class], void), var694_createFactoryStore/465410863=([], java.util.Hashtable), var694_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var3181=java.lang.ClassLoader, var694=org.apache.commons.logging.LogFactory, var1360=r0, var2026=java.lang.ref.WeakReference, var2176=$r1, var724=java.lang.Object, var338=<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>, var715=r10, var966=$r2, var1613=$r3, var3160=$r4, var2829=$r5, var1376=$r6, var1316=<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>, var387=java.io.PrintStream, var2255=$r7, var2779=<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>, var2396=class "Lorg/apache/commons/logging/LogFactory;", var3012=java.util.Hashtable, var569=$r8, var2798=<org.apache.commons.logging.LogFactory: java.util.Hashtable factories>, var3671=$z0}
; {java.lang.ClassLoader=var3181, org.apache.commons.logging.LogFactory=var694, r0=var1360, java.lang.ref.WeakReference=var2026, $r1=var2176, java.lang.Object=var724, <org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef>=var338, r10=var715, $r2=var966, $r3=var1613, $r4=var3160, $r5=var2829, $r6=var1376, <org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix>=var1316, java.io.PrintStream=var387, $r7=var2255, <org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM>=var2779, class "Lorg/apache/commons/logging/LogFactory;"=var2396, java.util.Hashtable=var3012, $r8=var569, <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>=var2798, $z0=var3671}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.ClassLoader getClassLoader(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r1 = new java.lang.ref.WeakReference;	specialinvoke $r1.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>(r0);	<org.apache.commons.logging.LogFactory: java.lang.ref.WeakReference thisClassLoaderRef> = $r1;	if r0 != null goto r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[LogFactory from ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	<org.apache.commons.logging.LogFactory: java.lang.String diagnosticPrefix> = $r6;	$r7 = staticinvoke <org.apache.commons.logging.LogFactory: java.io.PrintStream initDiagnostics()>();	<org.apache.commons.logging.LogFactory: java.io.PrintStream DIAGNOSTICS_STREAM> = $r7;	staticinvoke <org.apache.commons.logging.LogFactory: void logClassLoaderEnvironment(java.lang.Class)>(class "Lorg/apache/commons/logging/LogFactory;");	$r8 = staticinvoke <org.apache.commons.logging.LogFactory: java.util.Hashtable createFactoryStore()>();	<org.apache.commons.logging.LogFactory: java.util.Hashtable factories> = $r8;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return;	return
;block_num 5