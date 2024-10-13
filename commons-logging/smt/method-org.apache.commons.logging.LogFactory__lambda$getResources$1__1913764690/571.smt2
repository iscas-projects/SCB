(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1938 0)
(declare-sort var2367 0)
(declare-sort var3121 0)
(declare-sort var3170 0)
(declare-sort var863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3170_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var863) String)
(declare-fun cast-from-var3121-to-var863 (var3121) var863)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3170_logDiagnostic/1268238408 (String) void)
(declare-const null-var1938 var1938)
(declare-const null-String String)
(declare-const null-var3121 var3121)
(declare-const var1623 var1938) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var1623 null-var1938)))
(declare-const var3446 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3446 null-String)))
 ; Statement: if r0 == null goto $r2 = staticinvoke <java.lang.ClassLoader: java.util.Enumeration getSystemResources(java.lang.String)>(r1) 
(assert (not (= var1623 null-var1938))) ; Negate: Cond: r0 == null  
(declare-const var2736 var3121) ; Statement: $r5 := @caughtexception 
(assert (not (= var2736 null-var3121)))
(define-const var2373 Bool var3170_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2373 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2079 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2079)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2079!1 String)
(assert (= var2079!1 ""))
(assert true)
(define-const var2110 String (append/672562846 var2079!1 "Exception while trying to find configuration file ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while trying to find configuration file ") 
(declare-const var2079!2 String)
(assert (= var2079!2 (str.++ var2079!1 "Exception while trying to find configuration file ")))
(assert true)
(define-const var2293 String (append/672562846 var2110 var3446)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2110!1 String)
(assert (= var2110!1 (str.++ var2110 var3446)))
(assert true)
(define-const var352 String (append/672562846 var2293 ":")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2293!1 String)
(assert (= var2293!1 (str.++ var2293 ":")))
(assert true)
(define-const var20 String (getMessage/849299655 (cast-from-var3121-to-var863 var2736))) ; Statement: $r9 = virtualinvoke $r5.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var3504 String (append/672562846 var352 var20)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var352!1 String)
(assert (= var352!1 (str.++ var352 var20)))
(assert true)
(define-const var1087 String (toString/-2075883882 var3504)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3170_logDiagnostic/1268238408 var1087)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r12) 

(declare-const var1087!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3170_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3121-to-var863=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3170_logDiagnostic/1268238408=([java.lang.String], void)}
; {var1938=java.lang.ClassLoader, var1623=r0, var3446=r1, var2367=null_type, var3121=java.io.IOException, var2736=$r5, var3170=org.apache.commons.logging.LogFactory, var2373=$z0, var2079=$r6, var2110=$r7, var2293=$r8, var352=$r10, var863=java.lang.Throwable, var20=$r9, var3504=$r11, var1087=$r12}
; {java.lang.ClassLoader=var1938, r0=var1623, r1=var3446, null_type=var2367, java.io.IOException=var3121, $r5=var2736, org.apache.commons.logging.LogFactory=var3170, $z0=var2373, $r6=var2079, $r7=var2110, $r8=var2293, $r10=var352, java.lang.Throwable=var863, $r9=var20, $r11=var3504, $r12=var1087}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.ClassLoader;	r1 := @parameter1: java.lang.String;	if r0 == null goto $r2 = staticinvoke <java.lang.ClassLoader: java.util.Enumeration getSystemResources(java.lang.String)>(r1);	$r5 := @caughtexception;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return null;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while trying to find configuration file ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r9 = virtualinvoke $r5.<java.io.IOException: java.lang.String getMessage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r12);	return null
;block_num 4