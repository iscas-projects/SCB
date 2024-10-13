(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var357 0)
(declare-sort var3696 0)
(declare-sort var2697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2697) ClassObject)
(declare-fun cast-from-var3696-to-var2697 (var3696) var2697)
(declare-fun append/-1031950772 (String var2697) String)
(declare-fun cast-from-ClassObject-to-var2697 (ClassObject) var2697)
(declare-const null-var357 var357)
(declare-const null-String String)
(declare-const null-var3696 var3696)
(declare-const var3932 var357) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture 
(assert (not (= var3932 null-var357)))
(declare-const var2885 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2885 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2682 var3696) ; Statement: $r2 := @caughtexception 
(assert (not (= var2682 null-var3696)))
(assert true)
(define-const var539 String (append/672562846 var2885 "UNKNOWN, cause=[")) ; Statement: $r4 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNKNOWN, cause=[") 
(declare-const var2885!1 String)
(assert (= var2885!1 (str.++ var2885 "UNKNOWN, cause=[")))
(assert true)
(define-const var1078 ClassObject (getClass/1258963082 (cast-from-var3696-to-var2697 var2682))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2577 String (append/-1031950772 var539 (cast-from-ClassObject-to-var2697 var1078))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var539!1 String)
(assert (str.prefixof var539 var539!1))
(assert true)
;(assert (append/672562846 var2577 " thrown from get()]")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" thrown from get()]") 
(declare-const var2577!1 String)
(assert (= var2577!1 (str.++ var2577 " thrown from get()]")))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3696-to-var2697=([java.lang.RuntimeException], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2697=([java.lang.Class], java.lang.Object)}
; {var357=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var3932=r0, var2885=r1, var3696=java.lang.RuntimeException, var2682=$r2, var539=$r4, var2697=java.lang.Object, var1078=$r3, var2577=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var357, r0=var3932, r1=var2885, java.lang.RuntimeException=var3696, $r2=var2682, $r4=var539, java.lang.Object=var2697, $r3=var1078, $r5=var2577}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture;	r1 := @parameter0: java.lang.StringBuilder;	$r2 := @caughtexception;	$r4 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNKNOWN, cause=[");	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" thrown from get()]");	return
;block_num 3