(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1267 0)
(declare-sort var1069 0)
(declare-sort var2326 0)
(declare-sort var1726 0)
(declare-sort var2005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1069_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1069_objectId/1952731062 (var2326) String)
(declare-fun cast-from-var1267-to-var2326 (var1267) var2326)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1069_logDiagnostic/1268238408 (String) void)
(declare-const null-var1267 var1267)
(declare-const var1069-factories var1726)
(declare-const null-var2005 var2005)
(declare-const var2729 var1267) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2729 null-var1267)))
(define-const var2791 Bool var1069_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
(assert (not (= (ite var2791 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1799 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1799)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1799!1 String)
(assert (= var1799!1 ""))
(assert true)
(define-const var366 String (append/672562846 var1799!1 "Releasing factory for class loader ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Releasing factory for class loader ") 
(declare-const var1799!2 String)
(assert (= var1799!2 (str.++ var1799!1 "Releasing factory for class loader ")))
(define-const var1246 String (var1069_objectId/1952731062 (cast-from-var1267-to-var2326 var2729))) ; Statement: $r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert true)
(define-const var1763 String (append/672562846 var366 var1246)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var366!1 String)
(assert (= var366!1 (str.++ var366 var1246)))
(assert true)
(define-const var795 String (toString/-2075883882 var1763)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1069_logDiagnostic/1268238408 var795)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r9) 

(declare-const var795!1 String)
(assert true) ; Non Conditional
(define-const var2264 var1726 var1069-factories) ; Statement: $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
 ; Statement: entermonitor $r10 
(assert true) ; Non Conditional
 ; Statement: if r0 != null goto $r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0) 
(assert (not (not (= var2729 null-var1267)))) ; Negate: Cond: r0 != null  
(declare-const var3400 var2005) ; Statement: $r11 := @caughtexception 
(assert (not (= var3400 null-var2005)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r10 
(assert true) ; Non Conditional
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1069_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1069_objectId/1952731062=([java.lang.Object], java.lang.String), cast-from-var1267-to-var2326=([java.lang.ClassLoader], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1069_logDiagnostic/1268238408=([java.lang.String], void)}
; {var1267=java.lang.ClassLoader, var2729=r0, var1069=org.apache.commons.logging.LogFactory, var2791=$z0, var1799=$r5, var366=$r7, var2326=java.lang.Object, var1246=$r6, var1763=$r8, var795=$r9, var1726=java.util.Hashtable, var2264=$r10, var2005=java.lang.Throwable, var3400=$r11}
; {java.lang.ClassLoader=var1267, r0=var2729, org.apache.commons.logging.LogFactory=var1069, $z0=var2791, $r5=var1799, $r7=var366, java.lang.Object=var2326, $r6=var1246, $r8=var1763, $r9=var795, java.util.Hashtable=var1726, $r10=var2264, java.lang.Throwable=var2005, $r11=var3400}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Releasing factory for class loader ");	$r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r9);	$r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	entermonitor $r10;	if r0 != null goto $r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0);	$r11 := @caughtexception;	exitmonitor $r10;	throw $r11
;block_num 7