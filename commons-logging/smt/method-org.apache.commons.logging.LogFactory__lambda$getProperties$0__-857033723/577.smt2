(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var42 0)
(declare-sort var1853 0)
(declare-sort var894 0)
(declare-sort var2791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var894_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2791) String)
(declare-fun cast-from-var42-to-var2791 (var42) var2791)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var894_logDiagnostic/1268238408 (String) void)
(declare-const null-var42 var42)
(declare-const null-var1853 var1853)
(declare-const var347 var42) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var347 null-var42)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1205 var1853) ; Statement: $r2 := @caughtexception 
(assert (not (= var1205 null-var1853)))
(define-const var2462 Bool var894_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2462 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var124 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var124)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var124!1 String)
(assert (= var124!1 ""))
(assert true)
(define-const var849 String (append/672562846 var124!1 "Unable to read URL ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read URL ") 
(declare-const var124!2 String)
(assert (= var124!2 (str.++ var124!1 "Unable to read URL ")))
(assert true)
(define-const var2646 String (append/-1031950772 var849 (cast-from-var42-to-var2791 var347))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var849!1 String)
(assert (str.prefixof var849 var849!1))
(assert true)
(define-const var161 String (toString/-2075883882 var2646)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var894_logDiagnostic/1268238408 var161)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r6) 

(declare-const var161!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var894_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var42-to-var2791=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var894_logDiagnostic/1268238408=([java.lang.String], void)}
; {var42=java.net.URL, var347=r0, var1853=java.io.IOException, var1205=$r2, var894=org.apache.commons.logging.LogFactory, var2462=$z0, var124=$r3, var849=$r4, var2791=java.lang.Object, var2646=$r5, var161=$r6}
; {java.net.URL=var42, r0=var347, java.io.IOException=var1853, $r2=var1205, org.apache.commons.logging.LogFactory=var894, $z0=var2462, $r3=var124, $r4=var849, java.lang.Object=var2791, $r5=var2646, $r6=var161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URL;	$r2 := @caughtexception;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return null;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read URL ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r6);	return null
;block_num 4