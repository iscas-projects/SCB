(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2539 0)
(declare-sort var3841 0)
(declare-sort var3238 0)
(declare-sort var754 0)
(declare-sort var3686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var2539) var3841)
(declare-fun setUseCaches/-1766285499 (var3841 Bool) void)
(declare-fun getInputStream/1664976517 (var3841) var3238)
(declare-fun var3686_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var2539 var2539)
(declare-const null-var754 var754)
(declare-const var1019 var2539) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var1019 null-var2539)))
(assert true) ; Non Conditional
(assert true)
(define-const var2232 var3841 (openConnection/1646032697 var1019)) ; Statement: r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (setUseCaches/-1766285499 var2232 (ite (= 1 0) true false))) ; Statement: virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0) 

(declare-const var2232!1 var3841)
(declare-const var3834 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var1479 var3238 (getInputStream/1664976517 var2232!1)) ; Statement: r15 = virtualinvoke r14.<java.net.URLConnection: java.io.InputStream getInputStream()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1543 var754) ; Statement: $r7 := @caughtexception 
(assert (not (= var1543 null-var754)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2685 var754) ; Statement: $r2 := @caughtexception 
(assert (not (= var2685 null-var754)))
(define-const var1696 Bool var3686_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1696 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), setUseCaches/-1766285499=([java.net.URLConnection, boolean], void), getInputStream/1664976517=([java.net.URLConnection], java.io.InputStream), var3686_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var2539=java.net.URL, var1019=r0, var3841=java.net.URLConnection, var2232=r14, var3834=0, var3238=java.io.InputStream, var1479=r15, var754=java.io.IOException, var1543=$r7, var2685=$r2, var3686=org.apache.commons.logging.LogFactory, var1696=$z0}
; {java.net.URL=var2539, r0=var1019, java.net.URLConnection=var3841, r14=var2232, 0=var3834, java.io.InputStream=var3238, r15=var1479, java.io.IOException=var754, $r7=var1543, $r2=var2685, org.apache.commons.logging.LogFactory=var3686, $z0=var1696}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.net.URL;	r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0);	r15 = virtualinvoke r14.<java.net.URLConnection: java.io.InputStream getInputStream()>();	$r7 := @caughtexception;	$r2 := @caughtexception;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return null;	return null
;block_num 7