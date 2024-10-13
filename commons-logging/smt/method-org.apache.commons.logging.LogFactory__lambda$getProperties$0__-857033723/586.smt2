(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1394 0)
(declare-sort var2475 0)
(declare-sort var1094 0)
(declare-sort var3045 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var1394) var2475)
(declare-fun setUseCaches/-1766285499 (var2475 Bool) void)
(declare-fun getInputStream/1664976517 (var2475) var1094)
(declare-const null-var1394 var1394)
(declare-const null-var1094 var1094)
(declare-const null-var3045 var3045)
(declare-const var717 var1394) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var717 null-var1394)))
(assert true) ; Non Conditional
(assert true)
(define-const var3404 var2475 (openConnection/1646032697 var717)) ; Statement: r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (setUseCaches/-1766285499 var3404 (ite (= 1 0) true false))) ; Statement: virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0) 

(declare-const var3404!1 var2475)
(declare-const var374 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var107 var1094 (getInputStream/1664976517 var3404!1)) ; Statement: r15 = virtualinvoke r14.<java.net.URLConnection: java.io.InputStream getInputStream()>() 
(assert true) ; Non Conditional
 ; Statement: if r15 == null goto (branch) 
(assert (not (= var107 null-var1094))) ; Negate: Cond: r15 == null  
(declare-const var3228 var3045) ; Statement: $r13 := @caughtexception 
(assert (not (= var3228 null-var3045)))
 ; Statement: if r15 == null goto throw $r13 
(assert (= var107 null-var1094)) ; Cond: r15 == null 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), setUseCaches/-1766285499=([java.net.URLConnection, boolean], void), getInputStream/1664976517=([java.net.URLConnection], java.io.InputStream)}
; {var1394=java.net.URL, var717=r0, var2475=java.net.URLConnection, var3404=r14, var374=0, var1094=java.io.InputStream, var107=r15, var3045=java.lang.Throwable, var3228=$r13}
; {java.net.URL=var1394, r0=var717, java.net.URLConnection=var2475, r14=var3404, 0=var374, java.io.InputStream=var1094, r15=var107, java.lang.Throwable=var3045, $r13=var3228}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.net.URL;	r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0);	r15 = virtualinvoke r14.<java.net.URLConnection: java.io.InputStream getInputStream()>();	if r15 == null goto (branch);	$r13 := @caughtexception;	if r15 == null goto throw $r13;	throw $r13
;block_num 7