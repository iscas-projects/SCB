(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3794 0)
(declare-sort var2565 0)
(declare-sort var323 0)
(declare-sort var2117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2565_identityHashCode/1096208673 (var323) Int)
(declare-fun cast-from-var3794-to-var323 (var3794) var323)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun executor/-493747351 (var3794) var2117)
(declare-fun append/-1031950772 (String var323) String)
(declare-fun cast-from-var2117-to-var323 (var2117) var323)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3794 var3794)
(declare-const var2357 var3794) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor 
(assert (not (= var2357 null-var3794)))
(define-const var2218 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2218)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2218!1 String)
(assert (= var2218!1 ""))
(assert true)
(define-const var3280 String (append/672562846 var2218!1 "SequentialExecutor@")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SequentialExecutor@") 
(declare-const var2218!2 String)
(assert (= var2218!2 (str.++ var2218!1 "SequentialExecutor@")))
(define-const var2392 Int (var2565_identityHashCode/1096208673 (cast-from-var3794-to-var323 var2357))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1) 
(assert true)
(define-const var3876 String (append/-1001720160 var3280 var2392)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3280!1 String)
(assert (str.prefixof var3280 var3280!1))
(assert true)
(define-const var3494 String (append/672562846 var3876 "{")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var3876!1 String)
(assert (= var3876!1 (str.++ var3876 "{")))
(define-const var310 var2117 (executor/-493747351 var2357)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor: java.util.concurrent.Executor executor> 
(assert true)
(define-const var3581 String (append/-1031950772 var3494 (cast-from-var2117-to-var323 var310))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3494!1 String)
(assert (str.prefixof var3494 var3494!1))
(assert true)
(define-const var1736 String (append/672562846 var3581 "}")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3581!1 String)
(assert (= var3581!1 (str.++ var3581 "}")))
(assert true)
(define-const var601 String (toString/-2075883882 var1736)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2565_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var3794-to-var323=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), executor/-493747351=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor], java.util.concurrent.Executor), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2117-to-var323=([java.util.concurrent.Executor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3794=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor, var2357=r1, var2218=$r0, var3280=$r2, var2565=java.lang.System, var323=java.lang.Object, var2392=$i0, var3876=$r3, var3494=$r5, var2117=java.util.concurrent.Executor, var310=$r4, var3581=$r6, var1736=$r7, var601=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor=var3794, r1=var2357, $r0=var2218, $r2=var3280, java.lang.System=var2565, java.lang.Object=var323, $i0=var2392, $r3=var3876, $r5=var3494, java.util.concurrent.Executor=var2117, $r4=var310, $r6=var3581, $r7=var1736, $r8=var601}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SequentialExecutor@");	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor: java.util.concurrent.Executor executor>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1