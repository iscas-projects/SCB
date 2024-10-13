(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3864 0)
(declare-sort var1520 0)
(declare-sort var361 0)
(declare-sort var535 0)
(declare-sort var2209 0)
(declare-sort var1369 0)
(declare-sort var3127 0)
(declare-sort var3458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3127) String)
(declare-fun cast-from-var3864-to-var3127 (var3864) var3127)
(declare-fun cast-from-var1520-to-var3127 (var1520) var3127)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-65407072 (var535 var1369 String var3458) void)
(declare-fun cast-from-var361-to-var3458 (var361) var3458)
(declare-const null-var3864 var3864)
(declare-const null-var1520 var1520)
(declare-const null-var361 var361)
(declare-const var2209-log var535)
(declare-const var1369-SEVERE var1369)
(declare-const var2124 var3864) ; Statement: r1 := @parameter0: java.lang.Runnable 
(assert (not (= var2124 null-var3864)))
(declare-const var1587 var1520) ; Statement: r0 := @parameter1: java.util.concurrent.Executor 
(assert (not (= var1587 null-var1520)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2948 var361) ; Statement: $r2 := @caughtexception 
(assert (not (= var2948 null-var361)))
(define-const var3955 var535 var2209-log) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: java.util.logging.Logger log> 
(define-const var3821 var1369 var1369-SEVERE) ; Statement: $r5 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var1191 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1191)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1191!1 String)
(assert (= var1191!1 ""))
(assert true)
(define-const var2791 String (append/672562846 var1191!1 "RuntimeException while executing runnable ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("RuntimeException while executing runnable ") 
(declare-const var1191!2 String)
(assert (= var1191!2 (str.++ var1191!1 "RuntimeException while executing runnable ")))
(assert true)
(define-const var1249 String (append/-1031950772 var2791 (cast-from-var3864-to-var3127 var2124))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2791!1 String)
(assert (str.prefixof var2791 var2791!1))
(assert true)
(define-const var2778 String (append/672562846 var1249 " with executor ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with executor ") 
(declare-const var1249!1 String)
(assert (= var1249!1 (str.++ var1249 " with executor ")))
(assert true)
(define-const var1661 String (append/-1031950772 var2778 (cast-from-var1520-to-var3127 var1587))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2778!1 String)
(assert (str.prefixof var2778 var2778!1))
(assert true)
(define-const var1951 String (toString/-2075883882 var1661)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-65407072 var3955 var3821 var1951 (cast-from-var361-to-var3458 var2948))) ; Statement: virtualinvoke $r4.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r5, $r10, $r2) 

(declare-const var3955!1 var535)
(declare-const var3821!1 var1369)
(declare-const var1951!1 String)
(declare-const var2948!1 var361)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3864-to-var3127=([java.lang.Runnable], java.lang.Object), cast-from-var1520-to-var3127=([java.util.concurrent.Executor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-65407072=([java.util.logging.Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void), cast-from-var361-to-var3458=([java.lang.RuntimeException], java.lang.Throwable)}
; {var3864=java.lang.Runnable, var2124=r1, var1520=java.util.concurrent.Executor, var1587=r0, var361=java.lang.RuntimeException, var2948=$r2, var535=java.util.logging.Logger, var2209=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var3955=$r4, var1369=java.util.logging.Level, var3821=$r5, var1191=$r3, var2791=$r6, var3127=java.lang.Object, var1249=$r7, var2778=$r8, var1661=$r9, var1951=$r10, var3458=java.lang.Throwable}
; {java.lang.Runnable=var3864, r1=var2124, java.util.concurrent.Executor=var1520, r0=var1587, java.lang.RuntimeException=var361, $r2=var2948, java.util.logging.Logger=var535, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var2209, $r4=var3955, java.util.logging.Level=var1369, $r5=var3821, $r3=var1191, $r6=var2791, java.lang.Object=var3127, $r7=var1249, $r8=var2778, $r9=var1661, $r10=var1951, java.lang.Throwable=var3458}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Runnable;	r0 := @parameter1: java.util.concurrent.Executor;	$r2 := @caughtexception;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: java.util.logging.Logger log>;	$r5 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("RuntimeException while executing runnable ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with executor ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r4.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r5, $r10, $r2);	return
;block_num 3