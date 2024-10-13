(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2006 0)
(declare-sort var2318 0)
(declare-sort var1584 0)
(declare-sort var2105 0)
(declare-sort var3946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var2006) var2318)
(declare-fun setUseCaches/-1766285499 (var2318 Bool) void)
(declare-fun var2105_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3946) String)
(declare-fun cast-from-var2006-to-var3946 (var2006) var3946)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2105_logDiagnostic/1268238408 (String) void)
(declare-const null-var2006 var2006)
(declare-const null-var1584 var1584)
(declare-const var2987 var2006) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var2987 null-var2006)))
(assert true) ; Non Conditional
(assert true)
(define-const var2309 var2318 (openConnection/1646032697 var2987)) ; Statement: r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (setUseCaches/-1766285499 var2309 (ite (= 1 0) true false))) ; Statement: virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0) 

(declare-const var2309!1 var2318)
(declare-const var3319 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var143 var1584) ; Statement: $r2 := @caughtexception 
(assert (not (= var143 null-var1584)))
(define-const var2356 Bool var2105_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2356 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2992 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2992)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2992!1 String)
(assert (= var2992!1 ""))
(assert true)
(define-const var3865 String (append/672562846 var2992!1 "Unable to read URL ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read URL ") 
(declare-const var2992!2 String)
(assert (= var2992!2 (str.++ var2992!1 "Unable to read URL ")))
(assert true)
(define-const var101 String (append/-1031950772 var3865 (cast-from-var2006-to-var3946 var2987))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3865!1 String)
(assert (str.prefixof var3865 var3865!1))
(assert true)
(define-const var3381 String (toString/-2075883882 var101)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2105_logDiagnostic/1268238408 var3381)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r6) 

(declare-const var3381!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), setUseCaches/-1766285499=([java.net.URLConnection, boolean], void), var2105_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2006-to-var3946=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2105_logDiagnostic/1268238408=([java.lang.String], void)}
; {var2006=java.net.URL, var2987=r0, var2318=java.net.URLConnection, var2309=r14, var3319=0, var1584=java.io.IOException, var143=$r2, var2105=org.apache.commons.logging.LogFactory, var2356=$z0, var2992=$r3, var3865=$r4, var3946=java.lang.Object, var101=$r5, var3381=$r6}
; {java.net.URL=var2006, r0=var2987, java.net.URLConnection=var2318, r14=var2309, 0=var3319, java.io.IOException=var1584, $r2=var143, org.apache.commons.logging.LogFactory=var2105, $z0=var2356, $r3=var2992, $r4=var3865, java.lang.Object=var3946, $r5=var101, $r6=var3381}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URL;	r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0);	$r2 := @caughtexception;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return null;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read URL ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r6);	return null
;block_num 6