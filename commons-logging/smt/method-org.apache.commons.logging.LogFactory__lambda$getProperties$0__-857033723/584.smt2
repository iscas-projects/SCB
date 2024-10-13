(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2334 0)
(declare-sort var2041 0)
(declare-sort var745 0)
(declare-sort var1127 0)
(declare-sort var1124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var2334) var2041)
(declare-fun setUseCaches/-1766285499 (var2041 Bool) void)
(declare-fun var1127_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1124) String)
(declare-fun cast-from-var2334-to-var1124 (var2334) var1124)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1127_logDiagnostic/1268238408 (String) void)
(declare-const null-var2334 var2334)
(declare-const null-var745 var745)
(declare-const var565 var2334) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var565 null-var2334)))
(assert true) ; Non Conditional
(assert true)
(define-const var2332 var2041 (openConnection/1646032697 var565)) ; Statement: r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (setUseCaches/-1766285499 var2332 (ite (= 1 0) true false))) ; Statement: virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0) 

(declare-const var2332!1 var2041)
(declare-const var3187 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1591 var745) ; Statement: $r7 := @caughtexception 
(assert (not (= var1591 null-var745)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var140 var745) ; Statement: $r2 := @caughtexception 
(assert (not (= var140 null-var745)))
(define-const var1533 Bool var1127_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var1533 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3937 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3937)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3937!1 String)
(assert (= var3937!1 ""))
(assert true)
(define-const var3639 String (append/672562846 var3937!1 "Unable to read URL ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read URL ") 
(declare-const var3937!2 String)
(assert (= var3937!2 (str.++ var3937!1 "Unable to read URL ")))
(assert true)
(define-const var536 String (append/-1031950772 var3639 (cast-from-var2334-to-var1124 var565))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3639!1 String)
(assert (str.prefixof var3639 var3639!1))
(assert true)
(define-const var793 String (toString/-2075883882 var536)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1127_logDiagnostic/1268238408 var793)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r6) 

(declare-const var793!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), setUseCaches/-1766285499=([java.net.URLConnection, boolean], void), var1127_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2334-to-var1124=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1127_logDiagnostic/1268238408=([java.lang.String], void)}
; {var2334=java.net.URL, var565=r0, var2041=java.net.URLConnection, var2332=r14, var3187=0, var745=java.io.IOException, var1591=$r7, var140=$r2, var1127=org.apache.commons.logging.LogFactory, var1533=$z0, var3937=$r3, var3639=$r4, var1124=java.lang.Object, var536=$r5, var793=$r6}
; {java.net.URL=var2334, r0=var565, java.net.URLConnection=var2041, r14=var2332, 0=var3187, java.io.IOException=var745, $r7=var1591, $r2=var140, org.apache.commons.logging.LogFactory=var1127, $z0=var1533, $r3=var3937, $r4=var3639, java.lang.Object=var1124, $r5=var536, $r6=var793}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URL;	r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0);	$r7 := @caughtexception;	$r2 := @caughtexception;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return null;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read URL ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r6);	return null
;block_num 7