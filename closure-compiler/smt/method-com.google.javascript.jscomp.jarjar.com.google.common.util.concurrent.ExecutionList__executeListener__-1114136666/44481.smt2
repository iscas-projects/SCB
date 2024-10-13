(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1142 0)
(declare-sort var566 0)
(declare-sort var2368 0)
(declare-sort var1947 0)
(declare-sort var1266 0)
(declare-sort var702 0)
(declare-sort var2710 0)
(declare-sort var482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2710) String)
(declare-fun cast-from-var1142-to-var2710 (var1142) var2710)
(declare-fun cast-from-var566-to-var2710 (var566) var2710)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-65407072 (var1947 var702 String var482) void)
(declare-fun cast-from-var2368-to-var482 (var2368) var482)
(declare-const null-var1142 var1142)
(declare-const null-var566 var566)
(declare-const null-var2368 var2368)
(declare-const var1266-log var1947)
(declare-const var702-SEVERE var702)
(declare-const var3329 var1142) ; Statement: r1 := @parameter0: java.lang.Runnable 
(assert (not (= var3329 null-var1142)))
(declare-const var2757 var566) ; Statement: r0 := @parameter1: java.util.concurrent.Executor 
(assert (not (= var2757 null-var566)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2082 var2368) ; Statement: $r2 := @caughtexception 
(assert (not (= var2082 null-var2368)))
(define-const var1304 var1947 var1266-log) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ExecutionList: java.util.logging.Logger log> 
(define-const var3539 var702 var702-SEVERE) ; Statement: $r5 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var1840 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1840)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1840!1 String)
(assert (= var1840!1 ""))
(assert true)
(define-const var3259 String (append/672562846 var1840!1 "RuntimeException while executing runnable ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("RuntimeException while executing runnable ") 
(declare-const var1840!2 String)
(assert (= var1840!2 (str.++ var1840!1 "RuntimeException while executing runnable ")))
(assert true)
(define-const var554 String (append/-1031950772 var3259 (cast-from-var1142-to-var2710 var3329))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3259!1 String)
(assert (str.prefixof var3259 var3259!1))
(assert true)
(define-const var2957 String (append/672562846 var554 " with executor ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with executor ") 
(declare-const var554!1 String)
(assert (= var554!1 (str.++ var554 " with executor ")))
(assert true)
(define-const var224 String (append/-1031950772 var2957 (cast-from-var566-to-var2710 var2757))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2957!1 String)
(assert (str.prefixof var2957 var2957!1))
(assert true)
(define-const var974 String (toString/-2075883882 var224)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-65407072 var1304 var3539 var974 (cast-from-var2368-to-var482 var2082))) ; Statement: virtualinvoke $r4.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r5, $r10, $r2) 

(declare-const var1304!1 var1947)
(declare-const var3539!1 var702)
(declare-const var974!1 String)
(declare-const var2082!1 var2368)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1142-to-var2710=([java.lang.Runnable], java.lang.Object), cast-from-var566-to-var2710=([java.util.concurrent.Executor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-65407072=([java.util.logging.Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void), cast-from-var2368-to-var482=([java.lang.RuntimeException], java.lang.Throwable)}
; {var1142=java.lang.Runnable, var3329=r1, var566=java.util.concurrent.Executor, var2757=r0, var2368=java.lang.RuntimeException, var2082=$r2, var1947=java.util.logging.Logger, var1266=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ExecutionList, var1304=$r4, var702=java.util.logging.Level, var3539=$r5, var1840=$r3, var3259=$r6, var2710=java.lang.Object, var554=$r7, var2957=$r8, var224=$r9, var974=$r10, var482=java.lang.Throwable}
; {java.lang.Runnable=var1142, r1=var3329, java.util.concurrent.Executor=var566, r0=var2757, java.lang.RuntimeException=var2368, $r2=var2082, java.util.logging.Logger=var1947, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ExecutionList=var1266, $r4=var1304, java.util.logging.Level=var702, $r5=var3539, $r3=var1840, $r6=var3259, java.lang.Object=var2710, $r7=var554, $r8=var2957, $r9=var224, $r10=var974, java.lang.Throwable=var482}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Runnable;	r0 := @parameter1: java.util.concurrent.Executor;	$r2 := @caughtexception;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ExecutionList: java.util.logging.Logger log>;	$r5 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("RuntimeException while executing runnable ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with executor ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r4.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r5, $r10, $r2);	return
;block_num 3