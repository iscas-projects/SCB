(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var442 0)
(declare-sort var636 0)
(declare-sort var2614 0)
(declare-sort var3159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var442) var636)
(declare-fun setUseCaches/-1766285499 (var636 Bool) void)
(declare-fun getInputStream/1664976517 (var636) var2614)
(declare-const null-var442 var442)
(declare-const null-var3159 var3159)
(declare-const null-var2614 var2614)
(declare-const var3567 var442) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var3567 null-var442)))
(assert true) ; Non Conditional
(assert true)
(define-const var1957 var636 (openConnection/1646032697 var3567)) ; Statement: r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (setUseCaches/-1766285499 var1957 (ite (= 1 0) true false))) ; Statement: virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0) 

(declare-const var1957!1 var636)
(declare-const var1786 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var3459 var2614 (getInputStream/1664976517 var1957!1)) ; Statement: r15 = virtualinvoke r14.<java.net.URLConnection: java.io.InputStream getInputStream()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var185 var3159) ; Statement: $r13 := @caughtexception 
(assert (not (= var185 null-var3159)))
 ; Statement: if r15 == null goto throw $r13 
(assert (= var3459 null-var2614)) ; Cond: r15 == null 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), setUseCaches/-1766285499=([java.net.URLConnection, boolean], void), getInputStream/1664976517=([java.net.URLConnection], java.io.InputStream)}
; {var442=java.net.URL, var3567=r0, var636=java.net.URLConnection, var1957=r14, var1786=0, var2614=java.io.InputStream, var3459=r15, var3159=java.lang.Throwable, var185=$r13}
; {java.net.URL=var442, r0=var3567, java.net.URLConnection=var636, r14=var1957, 0=var1786, java.io.InputStream=var2614, r15=var3459, java.lang.Throwable=var3159, $r13=var185}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.net.URL;	r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	virtualinvoke r14.<java.net.URLConnection: void setUseCaches(boolean)>(0);	r15 = virtualinvoke r14.<java.net.URLConnection: java.io.InputStream getInputStream()>();	$r13 := @caughtexception;	if r15 == null goto throw $r13;	throw $r13
;block_num 6