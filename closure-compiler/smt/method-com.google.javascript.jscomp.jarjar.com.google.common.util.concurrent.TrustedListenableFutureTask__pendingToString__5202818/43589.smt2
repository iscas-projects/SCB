(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2151 0)
(declare-sort var1967 0)
(declare-sort var2931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun task/1092818281 (var2151) var1967)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2931) String)
(declare-fun cast-from-var1967-to-var2931 (var1967) var2931)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2151 var2151)
(declare-const null-var1967 var1967)
(declare-const var191 var2151) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask 
(assert (not (= var191 null-var2151)))
(define-const var3647 var1967 (task/1092818281 var191)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask task> 
 ; Statement: if r1 == null goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>() 
(assert (not (= var3647 null-var1967))) ; Negate: Cond: r1 == null  
(define-const var101 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var101)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var101!1 String)
(assert (= var101!1 ""))
(assert true)
(define-const var2649 String (append/672562846 var101!1 "task=[")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("task=[") 
(declare-const var101!2 String)
(assert (= var101!2 (str.++ var101!1 "task=[")))
(assert true)
(define-const var2257 String (append/-1031950772 var2649 (cast-from-var1967-to-var2931 var3647))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2649!1 String)
(assert (str.prefixof var2649 var2649!1))
(assert true)
(define-const var2104 String (append/672562846 var2257 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2257!1 String)
(assert (= var2257!1 (str.++ var2257 "]")))
(assert true)
(define-const var938 String (toString/-2075883882 var2104)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {task/1092818281=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1967-to-var2931=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2151=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask, var191=r0, var1967=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask, var3647=r1, var101=$r3, var2649=$r4, var2931=java.lang.Object, var2257=$r5, var2104=$r6, var938=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask=var2151, r0=var191, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask=var1967, r1=var3647, $r3=var101, $r4=var2649, java.lang.Object=var2931, $r5=var2257, $r6=var2104, $r7=var938}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask task>;	if r1 == null goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("task=[");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2