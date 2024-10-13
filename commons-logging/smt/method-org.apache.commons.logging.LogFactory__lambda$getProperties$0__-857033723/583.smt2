(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2696 0)
(declare-sort var3644 0)
(declare-sort var1084 0)
(declare-sort var888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var2696) var3644)
(declare-fun setUseCaches/-1766285499 (var3644 Bool) void)
(declare-fun var888_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var2696 var2696)
(declare-const null-var1084 var1084)
(declare-const var3221 var2696) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var3221 null-var2696)))
(assert true) ; Non Conditional
(assert true)
(define-const var657 var3644 (openConnection/1646032697 var3221)) ; Statement: r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (setUseCaches/-1766285499 var657 (ite (= 1 0) true false))) ; Statement: virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0) 

(declare-const var657!1 var3644)
(declare-const var2050 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2873 var1084) ; Statement: $r7 := @caughtexception 
(assert (not (= var2873 null-var1084)))
(assert true) ; Non Conditional
(define-const var2753 Bool var888_isDiagnosticsEnabled/-1004161365) ; Statement: $z1 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3284 var1084) ; Statement: $r2 := @caughtexception 
(assert (not (= var3284 null-var1084)))
(define-const var171 Bool var888_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var171 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), setUseCaches/-1766285499=([java.net.URLConnection, boolean], void), var888_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var2696=java.net.URL, var3221=r0, var3644=java.net.URLConnection, var657=r14, var2050=0, var1084=java.io.IOException, var2873=$r7, var888=org.apache.commons.logging.LogFactory, var2753=$z1, var3284=$r2, var171=$z0}
; {java.net.URL=var2696, r0=var3221, java.net.URLConnection=var3644, r14=var657, 0=var2050, java.io.IOException=var1084, $r7=var2873, org.apache.commons.logging.LogFactory=var888, $z1=var2753, $r2=var3284, $z0=var171}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.net.URL;	r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0);	$r7 := @caughtexception;	$z1 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	$r2 := @caughtexception;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return null;	return null
;block_num 7