(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2236 0)
(declare-sort var179 0)
(declare-sort var1176 0)
(declare-sort var1614 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCause/-638798464 (var1176) var1176)
(declare-fun cast-from-var179-to-var1176 (var179) var1176)
(declare-fun append/-1031950772 (String var1614) String)
(declare-fun cast-from-var1176-to-var1614 (var1176) var1614)
(declare-const null-var2236 var2236)
(declare-const null-String String)
(declare-const null-var179 var179)
(declare-const var3671 var2236) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture 
(assert (not (= var3671 null-var2236)))
(declare-const var822 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var822 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1705 var179) ; Statement: $r7 := @caughtexception 
(assert (not (= var1705 null-var179)))
(assert true)
(define-const var946 String (append/672562846 var822 "FAILURE, cause=[")) ; Statement: $r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FAILURE, cause=[") 
(declare-const var822!1 String)
(assert (= var822!1 (str.++ var822 "FAILURE, cause=[")))
(assert true)
(define-const var2899 var1176 (getCause/-638798464 (cast-from-var179-to-var1176 var1705))) ; Statement: $r8 = virtualinvoke $r7.<java.util.concurrent.ExecutionException: java.lang.Throwable getCause()>() 
(assert true)
(define-const var1632 String (append/-1031950772 var946 (cast-from-var1176-to-var1614 var2899))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var946!1 String)
(assert (str.prefixof var946 var946!1))
(assert true)
;(assert (append/672562846 var1632 "]")) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1632!1 String)
(assert (= var1632!1 (str.++ var1632 "]")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var179-to-var1176=([java.util.concurrent.ExecutionException], java.lang.Throwable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1176-to-var1614=([java.lang.Throwable], java.lang.Object)}
; {var2236=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var3671=r0, var822=r1, var179=java.util.concurrent.ExecutionException, var1705=$r7, var946=$r9, var1176=java.lang.Throwable, var2899=$r8, var1614=java.lang.Object, var1632=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var2236, r0=var3671, r1=var822, java.util.concurrent.ExecutionException=var179, $r7=var1705, $r9=var946, java.lang.Throwable=var1176, $r8=var2899, java.lang.Object=var1614, $r10=var1632}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture;	r1 := @parameter0: java.lang.StringBuilder;	$r7 := @caughtexception;	$r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FAILURE, cause=[");	$r8 = virtualinvoke $r7.<java.util.concurrent.ExecutionException: java.lang.Throwable getCause()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	goto [?= return];	return
;block_num 3