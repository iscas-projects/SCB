(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1077 0)
(declare-sort var2563 0)
(declare-sort var299 0)
(declare-sort var2875 0)
(declare-sort var2265 0)
(declare-sort var3205 0)
(declare-sort var1026 0)
(declare-sort var1528 0)
(declare-sort var1802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2875_checkNotNullParameter/-2060636419 (var2265 String) void)
(declare-fun cast-from-var2563-to-var2265 (var2563) var2265)
(declare-fun cast-from-var299-to-var2265 (var299) var2265)
(declare-fun <init>/-279557996 (var2265) void)
(declare-fun cast-from-var1077-to-var2265 (var1077) var2265)
(declare-fun maxIdleConnections/1326632342 (var1077) Int)
(declare-fun toNanos/-1234729849 (var299 Int) Int)
(declare-fun keepAliveDurationNs/1326632342 (var1077) Int)
(declare-fun newQueue/-1490586697 (var2563) var3205)
(declare-fun cleanupQueue/1326632342 (var1077) var3205)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1528-init () var1528)
(declare-fun <init>/1369269212 (var1528 var1077 String) void)
(declare-fun cleanupTask/1326632342 (var1077) var1528)
(declare-fun var1802-init () var1802)
(declare-fun <init>/-287915317 (var1802) void)
(declare-fun connections/1326632342 (var1077) var1802)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1077 var1077)
(declare-const null-var2563 var2563)
(declare-const null-Int Int)
(declare-const null-var299 var299)
(declare-const var1026-okHttpName String)
(declare-const var2492 var1077) ; Statement: r2 := @this: okhttp3.internal.connection.RealConnectionPool 
(assert (not (= var2492 null-var1077)))
(declare-const var302 var2563) ; Statement: r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var302 null-var2563)))
(declare-const var2812 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2812 null-Int)))
(declare-const var823 Int) ; Statement: l1 := @parameter2: long 
(assert (not (= var823 null-Int)))
(declare-const var1872 var299) ; Statement: r1 := @parameter3: java.util.concurrent.TimeUnit 
(assert (not (= var1872 null-var299)))
;(assert (var2875_checkNotNullParameter/-2060636419 (cast-from-var2563-to-var2265 var302) "taskRunner")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner") 

(declare-const var302!1 var2563)
(declare-const var3682 String)
;(assert (var2875_checkNotNullParameter/-2060636419 (cast-from-var299-to-var2265 var1872) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "timeUnit") 

(declare-const var1872!1 var299)
(declare-const var946 String)
(assert true)
;(assert (<init>/-279557996 (cast-from-var1077-to-var2265 var2492))) ; Statement: specialinvoke r2.<java.lang.Object: void <init>()>() 

(declare-const var2492!1 var1077)
(declare-const var2492!2 var1077)
(assert (not (= var2492!2 null-var1077)))
(assert (= (maxIdleConnections/1326632342 var2492!2) var2812)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: int maxIdleConnections> = i0 
(assert true)
(define-const var2021 Int (toNanos/-1234729849 var1872!1 var823)) ; Statement: $l2 = virtualinvoke r1.<java.util.concurrent.TimeUnit: long toNanos(long)>(l1) 
(declare-const var2492!3 var1077)
(assert (not (= var2492!3 null-var1077)))
(assert (= (keepAliveDurationNs/1326632342 var2492!3) var2021)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: long keepAliveDurationNs> = $l2 
(assert true)
(define-const var3424 var3205 (newQueue/-1490586697 var302!1)) ; Statement: $r3 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>() 
(declare-const var2492!4 var1077)
(assert (not (= var2492!4 null-var1077)))
(assert (= (cleanupQueue/1326632342 var2492!4) var3424)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r3 
(define-const var3089 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3089)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3089!1 String)
(assert (= var3089!1 ""))
(define-const var1735 String var1026-okHttpName) ; Statement: $r5 = <okhttp3.internal.Util: java.lang.String okHttpName> 
(assert true)
(define-const var1051 String (append/672562846 var3089!1 var1735)) ; Statement: $r6 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3089!2 String)
(assert (= var3089!2 (str.++ var3089!1 var1735)))
(assert true)
(define-const var229 String (append/672562846 var1051 " ConnectionPool")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ConnectionPool") 
(declare-const var1051!1 String)
(assert (= var1051!1 (str.++ var1051 " ConnectionPool")))
(assert true)
(define-const var3385 String (toString/-2075883882 var229)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var637 var1528 var1528-init) ; Statement: $r18 = new okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 
(assert true)
;(assert (<init>/1369269212 var637 var2492!4 var3385)) ; Statement: specialinvoke $r18.<okhttp3.internal.connection.RealConnectionPool$cleanupTask$1: void <init>(okhttp3.internal.connection.RealConnectionPool,java.lang.String)>(r2, r8) 

(declare-const var637!1 var1528)
(declare-const var2492!5 var1077)
(declare-const var3385!1 String)
(declare-const var2492!6 var1077)
(assert (not (= var2492!6 null-var1077)))
(assert (= (cleanupTask/1326632342 var2492!6) var637!1)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 cleanupTask> = $r18 
(define-const var3548 var1802 var1802-init) ; Statement: $r19 = new java.util.concurrent.ConcurrentLinkedQueue 
(assert true)
;(assert (<init>/-287915317 var3548)) ; Statement: specialinvoke $r19.<java.util.concurrent.ConcurrentLinkedQueue: void <init>()>() 

(declare-const var3548!1 var1802)
(declare-const var2492!7 var1077)
(assert (not (= var2492!7 null-var1077)))
(assert (= (connections/1326632342 var2492!7) var3548!1)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: java.util.concurrent.ConcurrentLinkedQueue connections> = $r19 
(define-const var2390 Int (ite (> var823 0) 1 (ite (< var823 0) (- 1) 0))) ; Statement: $b3 = l1 cmp 0L 
(define-const var1060 Int (cast-from-Int-to-Int var2390)) ; Statement: $i4 = (int) $b3 
 ; Statement: if $i4 <= 0 goto $z0 = 0 
(assert (<= var1060 0)) ; Cond: $i4 <= 0 
(define-const var2296 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2296 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2875_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2563-to-var2265=([okhttp3.internal.concurrent.TaskRunner], java.lang.Object), cast-from-var299-to-var2265=([java.util.concurrent.TimeUnit], java.lang.Object), <init>/-279557996=([java.lang.Object], void), cast-from-var1077-to-var2265=([okhttp3.internal.connection.RealConnectionPool], java.lang.Object), maxIdleConnections/1326632342=([okhttp3.internal.connection.RealConnectionPool], int), toNanos/-1234729849=([java.util.concurrent.TimeUnit, long], long), keepAliveDurationNs/1326632342=([okhttp3.internal.connection.RealConnectionPool], long), newQueue/-1490586697=([okhttp3.internal.concurrent.TaskRunner], okhttp3.internal.concurrent.TaskQueue), cleanupQueue/1326632342=([okhttp3.internal.connection.RealConnectionPool], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1528-init=([], okhttp3.internal.connection.RealConnectionPool$cleanupTask$1), <init>/1369269212=([okhttp3.internal.connection.RealConnectionPool$cleanupTask$1, okhttp3.internal.connection.RealConnectionPool, java.lang.String], void), cleanupTask/1326632342=([okhttp3.internal.connection.RealConnectionPool], okhttp3.internal.connection.RealConnectionPool$cleanupTask$1), var1802-init=([], java.util.concurrent.ConcurrentLinkedQueue), <init>/-287915317=([java.util.concurrent.ConcurrentLinkedQueue], void), connections/1326632342=([okhttp3.internal.connection.RealConnectionPool], java.util.concurrent.ConcurrentLinkedQueue), cast-from-Int-to-Int=([byte], int)}
; {var1077=okhttp3.internal.connection.RealConnectionPool, var2492=r2, var2563=okhttp3.internal.concurrent.TaskRunner, var302=r0, var2812=i0, var823=l1, var299=java.util.concurrent.TimeUnit, var1872=r1, var2875=kotlin.jvm.internal.Intrinsics, var2265=java.lang.Object, var3682="taskRunner", var946="timeUnit", var2021=$l2, var3205=okhttp3.internal.concurrent.TaskQueue, var3424=$r3, var3089=$r17, var1026=okhttp3.internal.Util, var1735=$r5, var1051=$r6, var229=$r7, var3385=r8, var1528=okhttp3.internal.connection.RealConnectionPool$cleanupTask$1, var637=$r18, var1802=java.util.concurrent.ConcurrentLinkedQueue, var3548=$r19, var2390=$b3, var1060=$i4, var2296=$z0}
; {okhttp3.internal.connection.RealConnectionPool=var1077, r2=var2492, okhttp3.internal.concurrent.TaskRunner=var2563, r0=var302, i0=var2812, l1=var823, java.util.concurrent.TimeUnit=var299, r1=var1872, kotlin.jvm.internal.Intrinsics=var2875, java.lang.Object=var2265, "taskRunner"=var3682, "timeUnit"=var946, $l2=var2021, okhttp3.internal.concurrent.TaskQueue=var3205, $r3=var3424, $r17=var3089, okhttp3.internal.Util=var1026, $r5=var1735, $r6=var1051, $r7=var229, r8=var3385, okhttp3.internal.connection.RealConnectionPool$cleanupTask$1=var1528, $r18=var637, java.util.concurrent.ConcurrentLinkedQueue=var1802, $r19=var3548, $b3=var2390, $i4=var1060, $z0=var2296}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.internal.connection.RealConnectionPool;	r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner;	i0 := @parameter1: int;	l1 := @parameter2: long;	r1 := @parameter3: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "timeUnit");	specialinvoke r2.<java.lang.Object: void <init>()>();	r2.<okhttp3.internal.connection.RealConnectionPool: int maxIdleConnections> = i0;	$l2 = virtualinvoke r1.<java.util.concurrent.TimeUnit: long toNanos(long)>(l1);	r2.<okhttp3.internal.connection.RealConnectionPool: long keepAliveDurationNs> = $l2;	$r3 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>();	r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r3;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r5 = <okhttp3.internal.Util: java.lang.String okHttpName>;	$r6 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ConnectionPool");	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = new okhttp3.internal.connection.RealConnectionPool$cleanupTask$1;	specialinvoke $r18.<okhttp3.internal.connection.RealConnectionPool$cleanupTask$1: void <init>(okhttp3.internal.connection.RealConnectionPool,java.lang.String)>(r2, r8);	r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 cleanupTask> = $r18;	$r19 = new java.util.concurrent.ConcurrentLinkedQueue;	specialinvoke $r19.<java.util.concurrent.ConcurrentLinkedQueue: void <init>()>();	r2.<okhttp3.internal.connection.RealConnectionPool: java.util.concurrent.ConcurrentLinkedQueue connections> = $r19;	$b3 = l1 cmp 0L;	$i4 = (int) $b3;	if $i4 <= 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto return;	return
;block_num 4