(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2953 0)
(declare-sort var450 0)
(declare-sort var1321 0)
(declare-sort var3370 0)
(declare-sort var382 0)
(declare-sort var561 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2953_getSystemResources/-63803128 (String) var1321)
(declare-fun var382_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var561) String)
(declare-fun cast-from-var3370-to-var561 (var3370) var561)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var382_logDiagnostic/1268238408 (String) void)
(declare-const null-var2953 var2953)
(declare-const null-String String)
(declare-const null-var3370 var3370)
(declare-const var2638 var2953) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2638 null-var2953)))
(declare-const var1661 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1661 null-String)))
 ; Statement: if r0 == null goto $r2 = staticinvoke <java.lang.ClassLoader: java.util.Enumeration getSystemResources(java.lang.String)>(r1) 
(assert (= var2638 null-var2953)) ; Cond: r0 == null 
(define-const var1349 var1321 (var2953_getSystemResources/-63803128 var1661)) ; Statement: $r2 = staticinvoke <java.lang.ClassLoader: java.util.Enumeration getSystemResources(java.lang.String)>(r1) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2432 var3370) ; Statement: $r5 := @caughtexception 
(assert (not (= var2432 null-var3370)))
(define-const var1201 Bool var382_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var1201 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3291 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3291)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3291!1 String)
(assert (= var3291!1 ""))
(assert true)
(define-const var3175 String (append/672562846 var3291!1 "Exception while trying to find configuration file ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while trying to find configuration file ") 
(declare-const var3291!2 String)
(assert (= var3291!2 (str.++ var3291!1 "Exception while trying to find configuration file ")))
(assert true)
(define-const var1503 String (append/672562846 var3175 var1661)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3175!1 String)
(assert (= var3175!1 (str.++ var3175 var1661)))
(assert true)
(define-const var2707 String (append/672562846 var1503 ":")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1503!1 String)
(assert (= var1503!1 (str.++ var1503 ":")))
(assert true)
(define-const var1263 String (getMessage/849299655 (cast-from-var3370-to-var561 var2432))) ; Statement: $r9 = virtualinvoke $r5.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var3148 String (append/672562846 var2707 var1263)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2707!1 String)
(assert (= var2707!1 (str.++ var2707 var1263)))
(assert true)
(define-const var3521 String (toString/-2075883882 var3148)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var382_logDiagnostic/1268238408 var3521)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r12) 

(declare-const var3521!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2953_getSystemResources/-63803128=([java.lang.String], java.util.Enumeration), var382_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3370-to-var561=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var382_logDiagnostic/1268238408=([java.lang.String], void)}
; {var2953=java.lang.ClassLoader, var2638=r0, var1661=r1, var450=null_type, var1321=java.util.Enumeration, var1349=$r2, var3370=java.io.IOException, var2432=$r5, var382=org.apache.commons.logging.LogFactory, var1201=$z0, var3291=$r6, var3175=$r7, var1503=$r8, var2707=$r10, var561=java.lang.Throwable, var1263=$r9, var3148=$r11, var3521=$r12}
; {java.lang.ClassLoader=var2953, r0=var2638, r1=var1661, null_type=var450, java.util.Enumeration=var1321, $r2=var1349, java.io.IOException=var3370, $r5=var2432, org.apache.commons.logging.LogFactory=var382, $z0=var1201, $r6=var3291, $r7=var3175, $r8=var1503, $r10=var2707, java.lang.Throwable=var561, $r9=var1263, $r11=var3148, $r12=var3521}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.ClassLoader;	r1 := @parameter1: java.lang.String;	if r0 == null goto $r2 = staticinvoke <java.lang.ClassLoader: java.util.Enumeration getSystemResources(java.lang.String)>(r1);	$r2 = staticinvoke <java.lang.ClassLoader: java.util.Enumeration getSystemResources(java.lang.String)>(r1);	$r5 := @caughtexception;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return null;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while trying to find configuration file ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r9 = virtualinvoke $r5.<java.io.IOException: java.lang.String getMessage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r12);	return null
;block_num 5