(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2245 0)
(declare-sort var3653 0)
(declare-sort var1252 0)
(declare-sort var3479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-434220628 (var1252 String Bool) void)
(declare-fun cast-from-var2245-to-var1252 (var2245) var1252)
(declare-fun var3479-init () var3479)
(declare-fun <init>/1742009542 (var3479 Int) void)
(declare-fun latch/968885522 (var2245) var3479)
(declare-const null-var2245 var2245)
(declare-const var3653-okHttpName String)
(declare-const var3276 var2245) ; Statement: r0 := @this: okhttp3.internal.concurrent.TaskQueue$AwaitIdleTask 
(assert (not (= var3276 null-var2245)))
(define-const var2537 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2537)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2537!1 String)
(assert (= var2537!1 ""))
(define-const var3375 String var3653-okHttpName) ; Statement: $r2 = <okhttp3.internal.Util: java.lang.String okHttpName> 
(assert true)
(define-const var1333 String (append/672562846 var2537!1 var3375)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2537!2 String)
(assert (= var2537!2 (str.++ var2537!1 var3375)))
(assert true)
(define-const var2030 String (append/672562846 var1333 " awaitIdle")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" awaitIdle") 
(declare-const var1333!1 String)
(assert (= var1333!1 (str.++ var1333 " awaitIdle")))
(assert true)
(define-const var3457 String (toString/-2075883882 var2030)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-434220628 (cast-from-var2245-to-var1252 var3276) var3457 (ite (= 1 0) true false))) ; Statement: specialinvoke r0.<okhttp3.internal.concurrent.Task: void <init>(java.lang.String,boolean)>($r5, 0) 

(declare-const var3276!1 var2245)
(declare-const var3457!1 String)
(declare-const var2317 Int)
(define-const var3288 var3479 var3479-init) ; Statement: $r6 = new java.util.concurrent.CountDownLatch 
(assert true)
;(assert (<init>/1742009542 var3288 1)) ; Statement: specialinvoke $r6.<java.util.concurrent.CountDownLatch: void <init>(int)>(1) 

(declare-const var3288!1 var3479)
(declare-const var2904 Int)
(declare-const var3276!2 var2245)
(assert (not (= var3276!2 null-var2245)))
(assert (= (latch/968885522 var3276!2) var3288!1)) ; Statement: r0.<okhttp3.internal.concurrent.TaskQueue$AwaitIdleTask: java.util.concurrent.CountDownLatch latch> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-434220628=([okhttp3.internal.concurrent.Task, java.lang.String, boolean], void), cast-from-var2245-to-var1252=([okhttp3.internal.concurrent.TaskQueue$AwaitIdleTask], okhttp3.internal.concurrent.Task), var3479-init=([], java.util.concurrent.CountDownLatch), <init>/1742009542=([java.util.concurrent.CountDownLatch, int], void), latch/968885522=([okhttp3.internal.concurrent.TaskQueue$AwaitIdleTask], java.util.concurrent.CountDownLatch)}
; {var2245=okhttp3.internal.concurrent.TaskQueue$AwaitIdleTask, var3276=r0, var2537=$r1, var3653=okhttp3.internal.Util, var3375=$r2, var1333=$r3, var2030=$r4, var3457=$r5, var1252=okhttp3.internal.concurrent.Task, var2317=0, var3479=java.util.concurrent.CountDownLatch, var3288=$r6, var2904=1}
; {okhttp3.internal.concurrent.TaskQueue$AwaitIdleTask=var2245, r0=var3276, $r1=var2537, okhttp3.internal.Util=var3653, $r2=var3375, $r3=var1333, $r4=var2030, $r5=var3457, okhttp3.internal.concurrent.Task=var1252, 0=var2317, java.util.concurrent.CountDownLatch=var3479, $r6=var3288, 1=var2904}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.concurrent.TaskQueue$AwaitIdleTask;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = <okhttp3.internal.Util: java.lang.String okHttpName>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" awaitIdle");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<okhttp3.internal.concurrent.Task: void <init>(java.lang.String,boolean)>($r5, 0);	$r6 = new java.util.concurrent.CountDownLatch;	specialinvoke $r6.<java.util.concurrent.CountDownLatch: void <init>(int)>(1);	r0.<okhttp3.internal.concurrent.TaskQueue$AwaitIdleTask: java.util.concurrent.CountDownLatch latch> = $r6;	return
;block_num 1