(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3842 0)
(declare-sort var2130 0)
(declare-sort var1472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2130) ClassObject)
(declare-fun cast-from-var1472-to-var2130 (var1472) var2130)
(declare-fun append/-1031950772 (String var2130) String)
(declare-fun cast-from-ClassObject-to-var2130 (ClassObject) var2130)
(declare-const null-var3842 var3842)
(declare-const null-String String)
(declare-const null-var2130 var2130)
(declare-const null-var1472 var1472)
(declare-const var2223 var3842) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture 
(assert (not (= var2223 null-var3842)))
(declare-const var2616 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2616 null-String)))
(declare-const var2227 var2130) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2227 null-var2130)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3898 var1472) ; Statement: $r3 := @caughtexception 
(assert (not (= var3898 null-var1472)))
(assert true)
(define-const var1880 String (append/672562846 var2616 "Exception thrown from implementation: ")) ; Statement: $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception thrown from implementation: ") 
(declare-const var2616!1 String)
(assert (= var2616!1 (str.++ var2616 "Exception thrown from implementation: ")))
(assert true)
(define-const var498 ClassObject (getClass/1258963082 (cast-from-var1472-to-var2130 var3898))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
;(assert (append/-1031950772 var1880 (cast-from-ClassObject-to-var2130 var498))) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1880!1 String)
(assert (str.prefixof var1880 var1880!1))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1472-to-var2130=([java.lang.Throwable], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2130=([java.lang.Class], java.lang.Object)}
; {var3842=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var2223=r1, var2616=r2, var2130=java.lang.Object, var2227=r0, var1472=java.lang.Throwable, var3898=$r3, var1880=$r5, var498=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var3842, r1=var2223, r2=var2616, java.lang.Object=var2130, r0=var2227, java.lang.Throwable=var1472, $r3=var3898, $r5=var1880, $r4=var498}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture;	r2 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.Object;	$r3 := @caughtexception;	$r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception thrown from implementation: ");	$r4 = virtualinvoke $r3.<java.lang.Object: java.lang.Class getClass()>();	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	return
;block_num 3