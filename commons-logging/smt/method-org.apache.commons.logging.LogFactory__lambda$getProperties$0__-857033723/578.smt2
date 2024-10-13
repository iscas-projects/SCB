(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3590 0)
(declare-sort var3877 0)
(declare-sort var1507 0)
(declare-sort var1215 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var3590) var3877)
(declare-fun setUseCaches/-1766285499 (var3877 Bool) void)
(declare-fun var1215_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var3590 var3590)
(declare-const null-var1507 var1507)
(declare-const var2598 var3590) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var2598 null-var3590)))
(assert true) ; Non Conditional
(assert true)
(define-const var410 var3877 (openConnection/1646032697 var2598)) ; Statement: r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (setUseCaches/-1766285499 var410 (ite (= 1 0) true false))) ; Statement: virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0) 

(declare-const var410!1 var3877)
(declare-const var1592 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var462 var1507) ; Statement: $r2 := @caughtexception 
(assert (not (= var462 null-var1507)))
(define-const var2720 Bool var1215_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var2720 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), setUseCaches/-1766285499=([java.net.URLConnection, boolean], void), var1215_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var3590=java.net.URL, var2598=r0, var3877=java.net.URLConnection, var410=r14, var1592=0, var1507=java.io.IOException, var462=$r2, var1215=org.apache.commons.logging.LogFactory, var2720=$z0}
; {java.net.URL=var3590, r0=var2598, java.net.URLConnection=var3877, r14=var410, 0=var1592, java.io.IOException=var1507, $r2=var462, org.apache.commons.logging.LogFactory=var1215, $z0=var2720}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.net.URL;	r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0);	$r2 := @caughtexception;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return null;	return null
;block_num 5