(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var170 0)
(declare-sort var2207 0)
(declare-sort var3614 0)
(declare-sort var2142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var170) var2207)
(declare-fun setUseCaches/-1766285499 (var2207 Bool) void)
(declare-fun var2142_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var170 var170)
(declare-const null-var3614 var3614)
(declare-const var3790 var170) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var3790 null-var170)))
(assert true) ; Non Conditional
(assert true)
(define-const var22 var2207 (openConnection/1646032697 var3790)) ; Statement: r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (setUseCaches/-1766285499 var22 (ite (= 1 0) true false))) ; Statement: virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0) 

(declare-const var22!1 var2207)
(declare-const var1948 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2752 var3614) ; Statement: $r7 := @caughtexception 
(assert (not (= var2752 null-var3614)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var805 var3614) ; Statement: $r2 := @caughtexception 
(assert (not (= var805 null-var3614)))
(define-const var325 Bool var2142_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var325 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), setUseCaches/-1766285499=([java.net.URLConnection, boolean], void), var2142_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var170=java.net.URL, var3790=r0, var2207=java.net.URLConnection, var22=r14, var1948=0, var3614=java.io.IOException, var2752=$r7, var805=$r2, var2142=org.apache.commons.logging.LogFactory, var325=$z0}
; {java.net.URL=var170, r0=var3790, java.net.URLConnection=var2207, r14=var22, 0=var1948, java.io.IOException=var3614, $r7=var2752, $r2=var805, org.apache.commons.logging.LogFactory=var2142, $z0=var325}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.net.URL;	r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0);	$r7 := @caughtexception;	$r2 := @caughtexception;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return null;	return null
;block_num 6