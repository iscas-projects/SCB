(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var981 0)
(declare-sort var163 0)
(declare-sort var3036 0)
(declare-sort var1449 0)
(declare-sort var365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var163_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var163_objectId/1952731062 (var3036) String)
(declare-fun cast-from-var981-to-var3036 (var981) var3036)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var163_logDiagnostic/1268238408 (String) void)
(declare-const null-var981 var981)
(declare-const var163-factories var1449)
(declare-const null-var365 var365)
(declare-const var505 var981) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var505 null-var981)))
(define-const var1434 Bool var163_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
(assert (not (= (ite var1434 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var343 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var343)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var343!1 String)
(assert (= var343!1 ""))
(assert true)
(define-const var2576 String (append/672562846 var343!1 "Releasing factory for class loader ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Releasing factory for class loader ") 
(declare-const var343!2 String)
(assert (= var343!2 (str.++ var343!1 "Releasing factory for class loader ")))
(define-const var1590 String (var163_objectId/1952731062 (cast-from-var981-to-var3036 var505))) ; Statement: $r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert true)
(define-const var1513 String (append/672562846 var2576 var1590)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2576!1 String)
(assert (= var2576!1 (str.++ var2576 var1590)))
(assert true)
(define-const var3191 String (toString/-2075883882 var1513)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var163_logDiagnostic/1268238408 var3191)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r9) 

(declare-const var3191!1 String)
(assert true) ; Non Conditional
(define-const var1830 var1449 var163-factories) ; Statement: $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
 ; Statement: entermonitor $r10 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1327 var365) ; Statement: $r11 := @caughtexception 
(assert (not (= var1327 null-var365)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r10 
(assert true) ; Non Conditional
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var163_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var163_objectId/1952731062=([java.lang.Object], java.lang.String), cast-from-var981-to-var3036=([java.lang.ClassLoader], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var163_logDiagnostic/1268238408=([java.lang.String], void)}
; {var981=java.lang.ClassLoader, var505=r0, var163=org.apache.commons.logging.LogFactory, var1434=$z0, var343=$r5, var2576=$r7, var3036=java.lang.Object, var1590=$r6, var1513=$r8, var3191=$r9, var1449=java.util.Hashtable, var1830=$r10, var365=java.lang.Throwable, var1327=$r11}
; {java.lang.ClassLoader=var981, r0=var505, org.apache.commons.logging.LogFactory=var163, $z0=var1434, $r5=var343, $r7=var2576, java.lang.Object=var3036, $r6=var1590, $r8=var1513, $r9=var3191, java.util.Hashtable=var1449, $r10=var1830, java.lang.Throwable=var365, $r11=var1327}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Releasing factory for class loader ");	$r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r9);	$r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	entermonitor $r10;	$r11 := @caughtexception;	exitmonitor $r10;	throw $r11
;block_num 6