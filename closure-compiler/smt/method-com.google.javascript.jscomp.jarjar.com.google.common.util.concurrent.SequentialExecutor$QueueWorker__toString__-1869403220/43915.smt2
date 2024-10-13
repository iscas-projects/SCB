(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3209 0)
(declare-sort var2733 0)
(declare-sort var2505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun task/1037147924 (var3209) var2733)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2505) String)
(declare-fun cast-from-var2733-to-var2505 (var2733) var2505)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3209 var3209)
(declare-const null-var2733 var2733)
(declare-const var1119 var3209) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker 
(assert (not (= var1119 null-var3209)))
(define-const var3056 var2733 (task/1037147924 var1119)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker: java.lang.Runnable task> 
 ; Statement: if r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3056 null-var2733))) ; Negate: Cond: r1 == null  
(define-const var3010 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3010)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3010!1 String)
(assert (= var3010!1 ""))
(assert true)
(define-const var1236 String (append/672562846 var3010!1 "SequentialExecutorWorker{running=")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SequentialExecutorWorker{running=") 
(declare-const var3010!2 String)
(assert (= var3010!2 (str.++ var3010!1 "SequentialExecutorWorker{running=")))
(assert true)
(define-const var1237 String (append/-1031950772 var1236 (cast-from-var2733-to-var2505 var3056))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1236!1 String)
(assert (str.prefixof var1236 var1236!1))
(assert true)
(define-const var2116 String (append/672562846 var1237 "}")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1237!1 String)
(assert (= var1237!1 (str.++ var1237 "}")))
(assert true)
(define-const var370 String (toString/-2075883882 var2116)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {task/1037147924=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker], java.lang.Runnable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2733-to-var2505=([java.lang.Runnable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3209=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker, var1119=r0, var2733=java.lang.Runnable, var3056=r1, var3010=$r9, var1236=$r10, var2505=java.lang.Object, var1237=$r11, var2116=$r12, var370=$r13}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker=var3209, r0=var1119, java.lang.Runnable=var2733, r1=var3056, $r9=var3010, $r10=var1236, java.lang.Object=var2505, $r11=var1237, $r12=var2116, $r13=var370}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker: java.lang.Runnable task>;	if r1 == null goto $r2 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SequentialExecutorWorker{running=");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2