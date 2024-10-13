(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1371 0)
(declare-sort var100 0)
(declare-sort var771 0)
(declare-sort var1019 0)
(declare-sort var629 0)
(declare-sort var1154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getResources/-300194759 (var1371 String) var771)
(declare-fun var629_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1154) String)
(declare-fun cast-from-var1019-to-var1154 (var1019) var1154)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var629_logDiagnostic/1268238408 (String) void)
(declare-const null-var1371 var1371)
(declare-const null-String String)
(declare-const null-var1019 var1019)
(declare-const var2057 var1371) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2057 null-var1371)))
(declare-const var1791 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1791 null-String)))
 ; Statement: if r0 == null goto $r2 = staticinvoke <java.lang.ClassLoader: java.util.Enumeration getSystemResources(java.lang.String)>(r1) 
(assert (not (= var2057 null-var1371))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var2353 var771 (getResources/-300194759 var2057 var1791)) ; Statement: $r3 = virtualinvoke r0.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r1) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var277 var1019) ; Statement: $r5 := @caughtexception 
(assert (not (= var277 null-var1019)))
(define-const var2847 Bool var629_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2847 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var651 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var651)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var651!1 String)
(assert (= var651!1 ""))
(assert true)
(define-const var3767 String (append/672562846 var651!1 "Exception while trying to find configuration file ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while trying to find configuration file ") 
(declare-const var651!2 String)
(assert (= var651!2 (str.++ var651!1 "Exception while trying to find configuration file ")))
(assert true)
(define-const var2106 String (append/672562846 var3767 var1791)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3767!1 String)
(assert (= var3767!1 (str.++ var3767 var1791)))
(assert true)
(define-const var6 String (append/672562846 var2106 ":")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2106!1 String)
(assert (= var2106!1 (str.++ var2106 ":")))
(assert true)
(define-const var3076 String (getMessage/849299655 (cast-from-var1019-to-var1154 var277))) ; Statement: $r9 = virtualinvoke $r5.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var1184 String (append/672562846 var6 var3076)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var6!1 String)
(assert (= var6!1 (str.++ var6 var3076)))
(assert true)
(define-const var3606 String (toString/-2075883882 var1184)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var629_logDiagnostic/1268238408 var3606)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r12) 

(declare-const var3606!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getResources/-300194759=([java.lang.ClassLoader, java.lang.String], java.util.Enumeration), var629_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1019-to-var1154=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var629_logDiagnostic/1268238408=([java.lang.String], void)}
; {var1371=java.lang.ClassLoader, var2057=r0, var1791=r1, var100=null_type, var771=java.util.Enumeration, var2353=$r3, var1019=java.io.IOException, var277=$r5, var629=org.apache.commons.logging.LogFactory, var2847=$z0, var651=$r6, var3767=$r7, var2106=$r8, var6=$r10, var1154=java.lang.Throwable, var3076=$r9, var1184=$r11, var3606=$r12}
; {java.lang.ClassLoader=var1371, r0=var2057, r1=var1791, null_type=var100, java.util.Enumeration=var771, $r3=var2353, java.io.IOException=var1019, $r5=var277, org.apache.commons.logging.LogFactory=var629, $z0=var2847, $r6=var651, $r7=var3767, $r8=var2106, $r10=var6, java.lang.Throwable=var1154, $r9=var3076, $r11=var1184, $r12=var3606}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.ClassLoader;	r1 := @parameter1: java.lang.String;	if r0 == null goto $r2 = staticinvoke <java.lang.ClassLoader: java.util.Enumeration getSystemResources(java.lang.String)>(r1);	$r3 = virtualinvoke r0.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r1);	$r5 := @caughtexception;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return null;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while trying to find configuration file ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r9 = virtualinvoke $r5.<java.io.IOException: java.lang.String getMessage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r12);	return null
;block_num 5