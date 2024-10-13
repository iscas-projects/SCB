(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3981 0)
(declare-sort var3431 0)
(declare-sort var2846 0)
(declare-sort var3146 0)
(declare-sort var2184 0)
(declare-sort var1610 0)
(declare-sort var1376 0)
(declare-sort var1966 0)
(declare-sort var1717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3146_checkNotNull/909222700 (var2184 var2184) var2184)
(declare-fun cast-from-var3431-to-var2184 (var3431) var2184)
(declare-fun cast-from-String-to-var2184 (String) var2184)
(declare-fun cast-from-var2846-to-var2184 (var2846) var2184)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2184) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-65407072 (var1376 var1966 String var1717) void)
(declare-fun cast-from-var1610-to-var1717 (var1610) var1717)
(declare-const null-var3981 var3981)
(declare-const null-var3431 var3431)
(declare-const null-var2846 var2846)
(declare-const null-var1610 var1610)
(declare-const var3981-log var1376)
(declare-const var1966-SEVERE var1966)
(declare-const var3335 var3981) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture 
(assert (not (= var3335 null-var3981)))
(declare-const var1276 var3431) ; Statement: r0 := @parameter0: java.lang.Runnable 
(assert (not (= var1276 null-var3431)))
(declare-const var1566 var2846) ; Statement: r1 := @parameter1: java.util.concurrent.Executor 
(assert (not (= var1566 null-var2846)))
;(assert (var3146_checkNotNull/909222700 (cast-from-var3431-to-var2184 var1276) (cast-from-String-to-var2184 "Runnable was null."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r0, "Runnable was null.") 

(declare-const var1276!1 var3431)
(declare-const var2821 String)
;(assert (var3146_checkNotNull/909222700 (cast-from-var2846-to-var2184 var1566) (cast-from-String-to-var2184 "Executor was null."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r1, "Executor was null.") 

(declare-const var1566!1 var2846)
(declare-const var2270 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3448 var1610) ; Statement: $r2 := @caughtexception 
(assert (not (= var3448 null-var1610)))
(define-const var1910 var1376 var3981-log) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture: java.util.logging.Logger log> 
(define-const var2868 var1966 var1966-SEVERE) ; Statement: $r5 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var990 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var990)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var990!1 String)
(assert (= var990!1 ""))
(assert true)
(define-const var1641 String (append/672562846 var990!1 "RuntimeException while executing runnable ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("RuntimeException while executing runnable ") 
(declare-const var990!2 String)
(assert (= var990!2 (str.++ var990!1 "RuntimeException while executing runnable ")))
(assert true)
(define-const var2862 String (append/-1031950772 var1641 (cast-from-var3431-to-var2184 var1276!1))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1641!1 String)
(assert (str.prefixof var1641 var1641!1))
(assert true)
(define-const var1724 String (append/672562846 var2862 " with executor ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with executor ") 
(declare-const var2862!1 String)
(assert (= var2862!1 (str.++ var2862 " with executor ")))
(assert true)
(define-const var1772 String (append/-1031950772 var1724 (cast-from-var2846-to-var2184 var1566!1))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1724!1 String)
(assert (str.prefixof var1724 var1724!1))
(assert true)
(define-const var760 String (toString/-2075883882 var1772)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-65407072 var1910 var2868 var760 (cast-from-var1610-to-var1717 var3448))) ; Statement: virtualinvoke $r4.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r5, $r10, $r2) 

(declare-const var1910!1 var1376)
(declare-const var2868!1 var1966)
(declare-const var760!1 String)
(declare-const var3448!1 var1610)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3146_checkNotNull/909222700=([java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3431-to-var2184=([java.lang.Runnable], java.lang.Object), cast-from-String-to-var2184=([java.lang.String], java.lang.Object), cast-from-var2846-to-var2184=([java.util.concurrent.Executor], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-65407072=([java.util.logging.Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void), cast-from-var1610-to-var1717=([java.lang.RuntimeException], java.lang.Throwable)}
; {var3981=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture, var3335=r11, var3431=java.lang.Runnable, var1276=r0, var2846=java.util.concurrent.Executor, var1566=r1, var3146=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2184=java.lang.Object, var2821="Runnable was null.", var2270="Executor was null.", var1610=java.lang.RuntimeException, var3448=$r2, var1376=java.util.logging.Logger, var1910=$r4, var1966=java.util.logging.Level, var2868=$r5, var990=$r3, var1641=$r6, var2862=$r7, var1724=$r8, var1772=$r9, var760=$r10, var1717=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture=var3981, r11=var3335, java.lang.Runnable=var3431, r0=var1276, java.util.concurrent.Executor=var2846, r1=var1566, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3146, java.lang.Object=var2184, "Runnable was null."=var2821, "Executor was null."=var2270, java.lang.RuntimeException=var1610, $r2=var3448, java.util.logging.Logger=var1376, $r4=var1910, java.util.logging.Level=var1966, $r5=var2868, $r3=var990, $r6=var1641, $r7=var2862, $r8=var1724, $r9=var1772, $r10=var760, java.lang.Throwable=var1717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture;	r0 := @parameter0: java.lang.Runnable;	r1 := @parameter1: java.util.concurrent.Executor;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r0, "Runnable was null.");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r1, "Executor was null.");	$r2 := @caughtexception;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ImmediateFuture: java.util.logging.Logger log>;	$r5 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("RuntimeException while executing runnable ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with executor ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r4.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r5, $r10, $r2);	return
;block_num 3