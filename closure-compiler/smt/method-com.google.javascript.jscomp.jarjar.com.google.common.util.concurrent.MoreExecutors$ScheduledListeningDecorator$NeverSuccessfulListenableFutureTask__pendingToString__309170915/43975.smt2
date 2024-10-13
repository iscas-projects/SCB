(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1650 0)
(declare-sort var3 0)
(declare-sort var3734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun delegate/-1719491992 (var1650) var3)
(declare-fun append/-1031950772 (String var3734) String)
(declare-fun cast-from-var3-to-var3734 (var3) var3734)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1650 var1650)
(declare-const var3726 var1650) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask 
(assert (not (= var3726 null-var1650)))
(define-const var722 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var722)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var722!1 String)
(assert (= var722!1 ""))
(assert true)
(define-const var319 String (append/672562846 var722!1 "task=[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("task=[") 
(declare-const var722!2 String)
(assert (= var722!2 (str.++ var722!1 "task=[")))
(define-const var802 var3 (delegate/-1719491992 var3726)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask: java.lang.Runnable delegate> 
(assert true)
(define-const var2276 String (append/-1031950772 var319 (cast-from-var3-to-var3734 var802))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var319!1 String)
(assert (str.prefixof var319 var319!1))
(assert true)
(define-const var1603 String (append/672562846 var2276 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2276!1 String)
(assert (= var2276!1 (str.++ var2276 "]")))
(assert true)
(define-const var408 String (toString/-2075883882 var1603)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), delegate/-1719491992=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask], java.lang.Runnable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3-to-var3734=([java.lang.Runnable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1650=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask, var3726=r1, var722=$r0, var319=$r3, var3=java.lang.Runnable, var802=$r2, var3734=java.lang.Object, var2276=$r4, var1603=$r5, var408=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask=var1650, r1=var3726, $r0=var722, $r3=var319, java.lang.Runnable=var3, $r2=var802, java.lang.Object=var3734, $r4=var2276, $r5=var1603, $r6=var408}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("task=[");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask: java.lang.Runnable delegate>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1