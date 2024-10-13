(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2568 0)
(declare-sort var496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2568 var2568)
(declare-const null-String String)
(declare-const null-var496 var496)
(declare-const var2908 var2568) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture 
(assert (not (= var2908 null-var2568)))
(declare-const var3101 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3101 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1415 var496) ; Statement: $r6 := @caughtexception 
(assert (not (= var1415 null-var496)))
(assert true)
;(assert (append/672562846 var3101 "CANCELLED")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CANCELLED") 
(declare-const var3101!1 String)
(assert (= var3101!1 (str.++ var3101 "CANCELLED")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2568=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var2908=r0, var3101=r1, var496=java.util.concurrent.CancellationException, var1415=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var2568, r0=var2908, r1=var3101, java.util.concurrent.CancellationException=var496, $r6=var1415}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture;	r1 := @parameter0: java.lang.StringBuilder;	$r6 := @caughtexception;	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CANCELLED");	goto [?= return];	return
;block_num 3