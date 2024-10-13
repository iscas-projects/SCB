(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2351 0)
(declare-sort var3576 0)
(declare-sort var7 0)
(declare-sort var793 0)
(declare-sort var593 0)
(declare-sort var3352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isShutdown/-1417095861 (var7) Bool)
(declare-fun var593-init () var593)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3352) String)
(declare-fun cast-from-var3576-to-var3352 (var3576) var3352)
(declare-fun cast-from-var7-to-var3352 (var7) var3352)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-886329222 (var593 String) void)
(declare-const null-var2351 var2351)
(declare-const null-var3576 var3576)
(declare-const null-var7 var7)
(declare-const null-var793 var793)
(declare-const var191 var2351) ; Statement: r1 := @this: cn.hutool.core.thread.BlockPolicy 
(assert (not (= var191 null-var2351)))
(declare-const var2330 var3576) ; Statement: r3 := @parameter0: java.lang.Runnable 
(assert (not (= var2330 null-var3576)))
(declare-const var2089 var7) ; Statement: r0 := @parameter1: java.util.concurrent.ThreadPoolExecutor 
(assert (not (= var2089 null-var7)))
(assert true)
(define-const var2483 Bool (isShutdown/-1417095861 var2089)) ; Statement: $z0 = virtualinvoke r0.<java.util.concurrent.ThreadPoolExecutor: boolean isShutdown()>() 
 ; Statement: if 0 != $z0 goto $r2 = r1.<cn.hutool.core.thread.BlockPolicy: java.util.function.Consumer handlerwhenshutdown> 
(assert (not (not (= 0 (ite var2483 1 0))))) ; Negate: Cond: 0 != $z0  
(declare-const var1888 var793) ; Statement: $r6 := @caughtexception 
(assert (not (= var1888 null-var793)))
(define-const var2382 var593 var593-init) ; Statement: $r7 = new java.util.concurrent.RejectedExecutionException 
(define-const var2586 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2586)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2586!1 String)
(assert (= var2586!1 ""))
(assert true)
(define-const var1572 String (append/672562846 var2586!1 "Task ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Task ") 
(declare-const var2586!2 String)
(assert (= var2586!2 (str.++ var2586!1 "Task ")))
(assert true)
(define-const var2701 String (append/-1031950772 var1572 (cast-from-var3576-to-var3352 var2330))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var1572!1 String)
(assert (str.prefixof var1572 var1572!1))
(assert true)
(define-const var2282 String (append/672562846 var2701 " rejected from ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rejected from ") 
(declare-const var2701!1 String)
(assert (= var2701!1 (str.++ var2701 " rejected from ")))
(assert true)
(define-const var3223 String (append/-1031950772 var2282 (cast-from-var7-to-var3352 var2089))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2282!1 String)
(assert (str.prefixof var2282 var2282!1))
(assert true)
(define-const var599 String (toString/-2075883882 var3223)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-886329222 var2382 var599)) ; Statement: specialinvoke $r7.<java.util.concurrent.RejectedExecutionException: void <init>(java.lang.String)>($r13) 

(declare-const var2382!1 var593)
(declare-const var599!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {isShutdown/-1417095861=([java.util.concurrent.ThreadPoolExecutor], boolean), var593-init=([], java.util.concurrent.RejectedExecutionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3576-to-var3352=([java.lang.Runnable], java.lang.Object), cast-from-var7-to-var3352=([java.util.concurrent.ThreadPoolExecutor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-886329222=([java.util.concurrent.RejectedExecutionException, java.lang.String], void)}
; {var2351=cn.hutool.core.thread.BlockPolicy, var191=r1, var3576=java.lang.Runnable, var2330=r3, var7=java.util.concurrent.ThreadPoolExecutor, var2089=r0, var2483=$z0, var793=java.lang.InterruptedException, var1888=$r6, var593=java.util.concurrent.RejectedExecutionException, var2382=$r7, var2586=$r8, var1572=$r9, var3352=java.lang.Object, var2701=$r10, var2282=$r11, var3223=$r12, var599=$r13}
; {cn.hutool.core.thread.BlockPolicy=var2351, r1=var191, java.lang.Runnable=var3576, r3=var2330, java.util.concurrent.ThreadPoolExecutor=var7, r0=var2089, $z0=var2483, java.lang.InterruptedException=var793, $r6=var1888, java.util.concurrent.RejectedExecutionException=var593, $r7=var2382, $r8=var2586, $r9=var1572, java.lang.Object=var3352, $r10=var2701, $r11=var2282, $r12=var3223, $r13=var599}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.thread.BlockPolicy;	r3 := @parameter0: java.lang.Runnable;	r0 := @parameter1: java.util.concurrent.ThreadPoolExecutor;	$z0 = virtualinvoke r0.<java.util.concurrent.ThreadPoolExecutor: boolean isShutdown()>();	if 0 != $z0 goto $r2 = r1.<cn.hutool.core.thread.BlockPolicy: java.util.function.Consumer handlerwhenshutdown>;	$r6 := @caughtexception;	$r7 = new java.util.concurrent.RejectedExecutionException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Task ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rejected from ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.util.concurrent.RejectedExecutionException: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 2