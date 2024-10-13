(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3802 0)
(declare-sort var85 0)
(declare-sort var3658 0)
(declare-sort var3849 0)
(declare-sort var3012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun task/1037147924 (var3802) var85)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/1037147924 (var3802) var3658)
(declare-fun var3658_access$200/-1370675660 (var3658) var3849)
(declare-fun append/-1031950772 (String var3012) String)
(declare-fun cast-from-var3849-to-var3012 (var3849) var3012)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3802 var3802)
(declare-const null-var85 var85)
(declare-const var1879 var3802) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker 
(assert (not (= var1879 null-var3802)))
(define-const var306 var85 (task/1037147924 var1879)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker: java.lang.Runnable task> 
 ; Statement: if r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var306 null-var85)) ; Cond: r1 == null 
(define-const var1672 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1672)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1672!1 String)
(assert (= var1672!1 ""))
(assert true)
(define-const var3621 String (append/672562846 var1672!1 "SequentialExecutorWorker{state=")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SequentialExecutorWorker{state=") 
(declare-const var1672!2 String)
(assert (= var1672!2 (str.++ var1672!1 "SequentialExecutorWorker{state=")))
(define-const var131 var3658 (this$0/1037147924 var1879)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor this$0> 
(define-const var337 var3849 (var3658_access$200/-1370675660 var131)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState access$200(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor)>($r3) 
(assert true)
(define-const var1920 String (append/-1031950772 var3621 (cast-from-var3849-to-var3012 var337))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3621!1 String)
(assert (str.prefixof var3621 var3621!1))
(assert true)
(define-const var1346 String (append/672562846 var1920 "}")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1920!1 String)
(assert (= var1920!1 (str.++ var1920 "}")))
(assert true)
(define-const var3981 String (toString/-2075883882 var1346)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {task/1037147924=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker], java.lang.Runnable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/1037147924=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor), var3658_access$200/-1370675660=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3849-to-var3012=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3802=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker, var1879=r0, var85=java.lang.Runnable, var306=r1, var1672=$r2, var3621=$r5, var3658=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor, var131=$r3, var3849=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState, var337=$r4, var3012=java.lang.Object, var1920=$r6, var1346=$r7, var3981=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker=var3802, r0=var1879, java.lang.Runnable=var85, r1=var306, $r2=var1672, $r5=var3621, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor=var3658, $r3=var131, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState=var3849, $r4=var337, java.lang.Object=var3012, $r6=var1920, $r7=var1346, $r8=var3981}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker: java.lang.Runnable task>;	if r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SequentialExecutorWorker{state=");	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$QueueWorker: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor this$0>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState access$200(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.SequentialExecutor)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2