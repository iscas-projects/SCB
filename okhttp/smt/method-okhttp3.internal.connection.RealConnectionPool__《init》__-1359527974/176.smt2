(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3465 0)
(declare-sort var1080 0)
(declare-sort var3052 0)
(declare-sort var2629 0)
(declare-sort var535 0)
(declare-sort var365 0)
(declare-sort var1934 0)
(declare-sort var361 0)
(declare-sort var2177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2629_checkNotNullParameter/-2060636419 (var535 String) void)
(declare-fun cast-from-var1080-to-var535 (var1080) var535)
(declare-fun cast-from-var3052-to-var535 (var3052) var535)
(declare-fun <init>/-279557996 (var535) void)
(declare-fun cast-from-var3465-to-var535 (var3465) var535)
(declare-fun maxIdleConnections/1326632342 (var3465) Int)
(declare-fun toNanos/-1234729849 (var3052 Int) Int)
(declare-fun keepAliveDurationNs/1326632342 (var3465) Int)
(declare-fun newQueue/-1490586697 (var1080) var365)
(declare-fun cleanupQueue/1326632342 (var3465) var365)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var361-init () var361)
(declare-fun <init>/1369269212 (var361 var3465 String) void)
(declare-fun cleanupTask/1326632342 (var3465) var361)
(declare-fun var2177-init () var2177)
(declare-fun <init>/-287915317 (var2177) void)
(declare-fun connections/1326632342 (var3465) var2177)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3465 var3465)
(declare-const null-var1080 var1080)
(declare-const null-Int Int)
(declare-const null-var3052 var3052)
(declare-const var1934-okHttpName String)
(declare-const var3401 var3465) ; Statement: r2 := @this: okhttp3.internal.connection.RealConnectionPool 
(assert (not (= var3401 null-var3465)))
(declare-const var2086 var1080) ; Statement: r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var2086 null-var1080)))
(declare-const var162 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var162 null-Int)))
(declare-const var3195 Int) ; Statement: l1 := @parameter2: long 
(assert (not (= var3195 null-Int)))
(declare-const var19 var3052) ; Statement: r1 := @parameter3: java.util.concurrent.TimeUnit 
(assert (not (= var19 null-var3052)))
;(assert (var2629_checkNotNullParameter/-2060636419 (cast-from-var1080-to-var535 var2086) "taskRunner")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner") 

(declare-const var2086!1 var1080)
(declare-const var370 String)
;(assert (var2629_checkNotNullParameter/-2060636419 (cast-from-var3052-to-var535 var19) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "timeUnit") 

(declare-const var19!1 var3052)
(declare-const var1084 String)
(assert true)
;(assert (<init>/-279557996 (cast-from-var3465-to-var535 var3401))) ; Statement: specialinvoke r2.<java.lang.Object: void <init>()>() 

(declare-const var3401!1 var3465)
(declare-const var3401!2 var3465)
(assert (not (= var3401!2 null-var3465)))
(assert (= (maxIdleConnections/1326632342 var3401!2) var162)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: int maxIdleConnections> = i0 
(assert true)
(define-const var373 Int (toNanos/-1234729849 var19!1 var3195)) ; Statement: $l2 = virtualinvoke r1.<java.util.concurrent.TimeUnit: long toNanos(long)>(l1) 
(declare-const var3401!3 var3465)
(assert (not (= var3401!3 null-var3465)))
(assert (= (keepAliveDurationNs/1326632342 var3401!3) var373)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: long keepAliveDurationNs> = $l2 
(assert true)
(define-const var3865 var365 (newQueue/-1490586697 var2086!1)) ; Statement: $r3 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>() 
(declare-const var3401!4 var3465)
(assert (not (= var3401!4 null-var3465)))
(assert (= (cleanupQueue/1326632342 var3401!4) var3865)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r3 
(define-const var2276 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2276)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2276!1 String)
(assert (= var2276!1 ""))
(define-const var1730 String var1934-okHttpName) ; Statement: $r5 = <okhttp3.internal.Util: java.lang.String okHttpName> 
(assert true)
(define-const var609 String (append/672562846 var2276!1 var1730)) ; Statement: $r6 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2276!2 String)
(assert (= var2276!2 (str.++ var2276!1 var1730)))
(assert true)
(define-const var603 String (append/672562846 var609 " ConnectionPool")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ConnectionPool") 
(declare-const var609!1 String)
(assert (= var609!1 (str.++ var609 " ConnectionPool")))
(assert true)
(define-const var3922 String (toString/-2075883882 var603)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3642 var361 var361-init) ; Statement: $r18 = new okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 
(assert true)
;(assert (<init>/1369269212 var3642 var3401!4 var3922)) ; Statement: specialinvoke $r18.<okhttp3.internal.connection.RealConnectionPool$cleanupTask$1: void <init>(okhttp3.internal.connection.RealConnectionPool,java.lang.String)>(r2, r8) 

(declare-const var3642!1 var361)
(declare-const var3401!5 var3465)
(declare-const var3922!1 String)
(declare-const var3401!6 var3465)
(assert (not (= var3401!6 null-var3465)))
(assert (= (cleanupTask/1326632342 var3401!6) var3642!1)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 cleanupTask> = $r18 
(define-const var2460 var2177 var2177-init) ; Statement: $r19 = new java.util.concurrent.ConcurrentLinkedQueue 
(assert true)
;(assert (<init>/-287915317 var2460)) ; Statement: specialinvoke $r19.<java.util.concurrent.ConcurrentLinkedQueue: void <init>()>() 

(declare-const var2460!1 var2177)
(declare-const var3401!7 var3465)
(assert (not (= var3401!7 null-var3465)))
(assert (= (connections/1326632342 var3401!7) var2460!1)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: java.util.concurrent.ConcurrentLinkedQueue connections> = $r19 
(define-const var735 Int (ite (> var3195 0) 1 (ite (< var3195 0) (- 1) 0))) ; Statement: $b3 = l1 cmp 0L 
(define-const var3377 Int (cast-from-Int-to-Int var735)) ; Statement: $i4 = (int) $b3 
 ; Statement: if $i4 <= 0 goto $z0 = 0 
(assert (not (<= var3377 0))) ; Negate: Cond: $i4 <= 0  
(define-const var3147 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3147 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2629_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1080-to-var535=([okhttp3.internal.concurrent.TaskRunner], java.lang.Object), cast-from-var3052-to-var535=([java.util.concurrent.TimeUnit], java.lang.Object), <init>/-279557996=([java.lang.Object], void), cast-from-var3465-to-var535=([okhttp3.internal.connection.RealConnectionPool], java.lang.Object), maxIdleConnections/1326632342=([okhttp3.internal.connection.RealConnectionPool], int), toNanos/-1234729849=([java.util.concurrent.TimeUnit, long], long), keepAliveDurationNs/1326632342=([okhttp3.internal.connection.RealConnectionPool], long), newQueue/-1490586697=([okhttp3.internal.concurrent.TaskRunner], okhttp3.internal.concurrent.TaskQueue), cleanupQueue/1326632342=([okhttp3.internal.connection.RealConnectionPool], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var361-init=([], okhttp3.internal.connection.RealConnectionPool$cleanupTask$1), <init>/1369269212=([okhttp3.internal.connection.RealConnectionPool$cleanupTask$1, okhttp3.internal.connection.RealConnectionPool, java.lang.String], void), cleanupTask/1326632342=([okhttp3.internal.connection.RealConnectionPool], okhttp3.internal.connection.RealConnectionPool$cleanupTask$1), var2177-init=([], java.util.concurrent.ConcurrentLinkedQueue), <init>/-287915317=([java.util.concurrent.ConcurrentLinkedQueue], void), connections/1326632342=([okhttp3.internal.connection.RealConnectionPool], java.util.concurrent.ConcurrentLinkedQueue), cast-from-Int-to-Int=([byte], int)}
; {var3465=okhttp3.internal.connection.RealConnectionPool, var3401=r2, var1080=okhttp3.internal.concurrent.TaskRunner, var2086=r0, var162=i0, var3195=l1, var3052=java.util.concurrent.TimeUnit, var19=r1, var2629=kotlin.jvm.internal.Intrinsics, var535=java.lang.Object, var370="taskRunner", var1084="timeUnit", var373=$l2, var365=okhttp3.internal.concurrent.TaskQueue, var3865=$r3, var2276=$r17, var1934=okhttp3.internal.Util, var1730=$r5, var609=$r6, var603=$r7, var3922=r8, var361=okhttp3.internal.connection.RealConnectionPool$cleanupTask$1, var3642=$r18, var2177=java.util.concurrent.ConcurrentLinkedQueue, var2460=$r19, var735=$b3, var3377=$i4, var3147=$z0}
; {okhttp3.internal.connection.RealConnectionPool=var3465, r2=var3401, okhttp3.internal.concurrent.TaskRunner=var1080, r0=var2086, i0=var162, l1=var3195, java.util.concurrent.TimeUnit=var3052, r1=var19, kotlin.jvm.internal.Intrinsics=var2629, java.lang.Object=var535, "taskRunner"=var370, "timeUnit"=var1084, $l2=var373, okhttp3.internal.concurrent.TaskQueue=var365, $r3=var3865, $r17=var2276, okhttp3.internal.Util=var1934, $r5=var1730, $r6=var609, $r7=var603, r8=var3922, okhttp3.internal.connection.RealConnectionPool$cleanupTask$1=var361, $r18=var3642, java.util.concurrent.ConcurrentLinkedQueue=var2177, $r19=var2460, $b3=var735, $i4=var3377, $z0=var3147}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.internal.connection.RealConnectionPool;	r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner;	i0 := @parameter1: int;	l1 := @parameter2: long;	r1 := @parameter3: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "timeUnit");	specialinvoke r2.<java.lang.Object: void <init>()>();	r2.<okhttp3.internal.connection.RealConnectionPool: int maxIdleConnections> = i0;	$l2 = virtualinvoke r1.<java.util.concurrent.TimeUnit: long toNanos(long)>(l1);	r2.<okhttp3.internal.connection.RealConnectionPool: long keepAliveDurationNs> = $l2;	$r3 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>();	r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r3;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r5 = <okhttp3.internal.Util: java.lang.String okHttpName>;	$r6 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ConnectionPool");	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = new okhttp3.internal.connection.RealConnectionPool$cleanupTask$1;	specialinvoke $r18.<okhttp3.internal.connection.RealConnectionPool$cleanupTask$1: void <init>(okhttp3.internal.connection.RealConnectionPool,java.lang.String)>(r2, r8);	r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 cleanupTask> = $r18;	$r19 = new java.util.concurrent.ConcurrentLinkedQueue;	specialinvoke $r19.<java.util.concurrent.ConcurrentLinkedQueue: void <init>()>();	r2.<okhttp3.internal.connection.RealConnectionPool: java.util.concurrent.ConcurrentLinkedQueue connections> = $r19;	$b3 = l1 cmp 0L;	$i4 = (int) $b3;	if $i4 <= 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto return;	return
;block_num 4