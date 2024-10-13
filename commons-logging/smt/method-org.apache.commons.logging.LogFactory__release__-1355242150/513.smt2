(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var225 0)
(declare-sort var2559 0)
(declare-sort var3484 0)
(declare-sort var373 0)
(declare-sort var3714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2559_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2559_objectId/1952731062 (var3484) String)
(declare-fun cast-from-var225-to-var3484 (var225) var3484)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2559_logDiagnostic/1268238408 (String) void)
(declare-const null-var225 var225)
(declare-const var2559-factories var373)
(declare-const null-var3714 var3714)
(declare-const var1878 var225) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var1878 null-var225)))
(define-const var1364 Bool var2559_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
(assert (not (= (ite var1364 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2782 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2782)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2782!1 String)
(assert (= var2782!1 ""))
(assert true)
(define-const var3226 String (append/672562846 var2782!1 "Releasing factory for class loader ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Releasing factory for class loader ") 
(declare-const var2782!2 String)
(assert (= var2782!2 (str.++ var2782!1 "Releasing factory for class loader ")))
(define-const var1128 String (var2559_objectId/1952731062 (cast-from-var225-to-var3484 var1878))) ; Statement: $r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0) 
(assert true)
(define-const var3399 String (append/672562846 var3226 var1128)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3226!1 String)
(assert (= var3226!1 (str.++ var3226 var1128)))
(assert true)
(define-const var389 String (toString/-2075883882 var3399)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2559_logDiagnostic/1268238408 var389)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r9) 

(declare-const var389!1 String)
(assert true) ; Non Conditional
(define-const var569 var373 var2559-factories) ; Statement: $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
 ; Statement: entermonitor $r10 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2092 var3714) ; Statement: $r11 := @caughtexception 
(assert (not (= var2092 null-var3714)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2092!1 var3714) ; Statement: $r11 := @caughtexception 
(assert (not (= var2092!1 null-var3714)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r10 
(assert true) ; Non Conditional
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2559_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2559_objectId/1952731062=([java.lang.Object], java.lang.String), cast-from-var225-to-var3484=([java.lang.ClassLoader], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2559_logDiagnostic/1268238408=([java.lang.String], void)}
; {var225=java.lang.ClassLoader, var1878=r0, var2559=org.apache.commons.logging.LogFactory, var1364=$z0, var2782=$r5, var3226=$r7, var3484=java.lang.Object, var1128=$r6, var3399=$r8, var389=$r9, var373=java.util.Hashtable, var569=$r10, var3714=java.lang.Throwable, var2092=$r11}
; {java.lang.ClassLoader=var225, r0=var1878, org.apache.commons.logging.LogFactory=var2559, $z0=var1364, $r5=var2782, $r7=var3226, java.lang.Object=var3484, $r6=var1128, $r8=var3399, $r9=var389, java.util.Hashtable=var373, $r10=var569, java.lang.Throwable=var3714, $r11=var2092}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Releasing factory for class loader ");	$r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r9);	$r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	entermonitor $r10;	$r11 := @caughtexception;	$r11 := @caughtexception;	exitmonitor $r10;	throw $r11
;block_num 7