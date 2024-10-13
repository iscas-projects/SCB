(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3620 0)
(declare-sort var2050 0)
(declare-sort var1584 0)
(declare-sort var3054 0)
(declare-sort var781 0)
(declare-sort var966 0)
(declare-sort var372 0)
(declare-sort var1335 0)
(declare-sort var535 0)
(declare-sort var2015 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3054_checkNotNullParameter/-2060636419 (var781 String) void)
(declare-fun cast-from-var2050-to-var781 (var2050) var781)
(declare-fun cast-from-var1584-to-var781 (var1584) var781)
(declare-fun <init>/-279557996 (var781) void)
(declare-fun cast-from-var3620-to-var781 (var3620) var781)
(declare-fun maxIdleConnections/1326632342 (var3620) Int)
(declare-fun toNanos/-1234729849 (var1584 Int) Int)
(declare-fun keepAliveDurationNs/1326632342 (var3620) Int)
(declare-fun newQueue/-1490586697 (var2050) var966)
(declare-fun cleanupQueue/1326632342 (var3620) var966)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1335-init () var1335)
(declare-fun <init>/1369269212 (var1335 var3620 String) void)
(declare-fun cleanupTask/1326632342 (var3620) var1335)
(declare-fun var535-init () var535)
(declare-fun <init>/-287915317 (var535) void)
(declare-fun connections/1326632342 (var3620) var535)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2015-init () var2015)
(declare-fun toString/-522406933 (var781) String)
(declare-fun cast-from-String-to-var781 (String) var781)
(declare-fun <init>/875830710 (var2015 String) void)
(declare-const null-var3620 var3620)
(declare-const null-var2050 var2050)
(declare-const null-Int Int)
(declare-const null-var1584 var1584)
(declare-const var372-okHttpName String)
(declare-const var599 var3620) ; Statement: r2 := @this: okhttp3.internal.connection.RealConnectionPool 
(assert (not (= var599 null-var3620)))
(declare-const var576 var2050) ; Statement: r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var576 null-var2050)))
(declare-const var1598 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1598 null-Int)))
(declare-const var2840 Int) ; Statement: l1 := @parameter2: long 
(assert (not (= var2840 null-Int)))
(declare-const var1095 var1584) ; Statement: r1 := @parameter3: java.util.concurrent.TimeUnit 
(assert (not (= var1095 null-var1584)))
;(assert (var3054_checkNotNullParameter/-2060636419 (cast-from-var2050-to-var781 var576) "taskRunner")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner") 

(declare-const var576!1 var2050)
(declare-const var2850 String)
;(assert (var3054_checkNotNullParameter/-2060636419 (cast-from-var1584-to-var781 var1095) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "timeUnit") 

(declare-const var1095!1 var1584)
(declare-const var1701 String)
(assert true)
;(assert (<init>/-279557996 (cast-from-var3620-to-var781 var599))) ; Statement: specialinvoke r2.<java.lang.Object: void <init>()>() 

(declare-const var599!1 var3620)
(declare-const var599!2 var3620)
(assert (not (= var599!2 null-var3620)))
(assert (= (maxIdleConnections/1326632342 var599!2) var1598)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: int maxIdleConnections> = i0 
(assert true)
(define-const var3139 Int (toNanos/-1234729849 var1095!1 var2840)) ; Statement: $l2 = virtualinvoke r1.<java.util.concurrent.TimeUnit: long toNanos(long)>(l1) 
(declare-const var599!3 var3620)
(assert (not (= var599!3 null-var3620)))
(assert (= (keepAliveDurationNs/1326632342 var599!3) var3139)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: long keepAliveDurationNs> = $l2 
(assert true)
(define-const var3566 var966 (newQueue/-1490586697 var576!1)) ; Statement: $r3 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>() 
(declare-const var599!4 var3620)
(assert (not (= var599!4 null-var3620)))
(assert (= (cleanupQueue/1326632342 var599!4) var3566)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r3 
(define-const var2290 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2290)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2290!1 String)
(assert (= var2290!1 ""))
(define-const var1683 String var372-okHttpName) ; Statement: $r5 = <okhttp3.internal.Util: java.lang.String okHttpName> 
(assert true)
(define-const var2253 String (append/672562846 var2290!1 var1683)) ; Statement: $r6 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2290!2 String)
(assert (= var2290!2 (str.++ var2290!1 var1683)))
(assert true)
(define-const var472 String (append/672562846 var2253 " ConnectionPool")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ConnectionPool") 
(declare-const var2253!1 String)
(assert (= var2253!1 (str.++ var2253 " ConnectionPool")))
(assert true)
(define-const var1367 String (toString/-2075883882 var472)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3389 var1335 var1335-init) ; Statement: $r18 = new okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 
(assert true)
;(assert (<init>/1369269212 var3389 var599!4 var1367)) ; Statement: specialinvoke $r18.<okhttp3.internal.connection.RealConnectionPool$cleanupTask$1: void <init>(okhttp3.internal.connection.RealConnectionPool,java.lang.String)>(r2, r8) 

(declare-const var3389!1 var1335)
(declare-const var599!5 var3620)
(declare-const var1367!1 String)
(declare-const var599!6 var3620)
(assert (not (= var599!6 null-var3620)))
(assert (= (cleanupTask/1326632342 var599!6) var3389!1)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 cleanupTask> = $r18 
(define-const var912 var535 var535-init) ; Statement: $r19 = new java.util.concurrent.ConcurrentLinkedQueue 
(assert true)
;(assert (<init>/-287915317 var912)) ; Statement: specialinvoke $r19.<java.util.concurrent.ConcurrentLinkedQueue: void <init>()>() 

(declare-const var912!1 var535)
(declare-const var599!7 var3620)
(assert (not (= var599!7 null-var3620)))
(assert (= (connections/1326632342 var599!7) var912!1)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: java.util.concurrent.ConcurrentLinkedQueue connections> = $r19 
(define-const var2953 Int (ite (> var2840 0) 1 (ite (< var2840 0) (- 1) 0))) ; Statement: $b3 = l1 cmp 0L 
(define-const var2873 Int (cast-from-Int-to-Int var2953)) ; Statement: $i4 = (int) $b3 
 ; Statement: if $i4 <= 0 goto $z0 = 0 
(assert (<= var2873 0)) ; Cond: $i4 <= 0 
(define-const var531 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var531 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var712 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var712)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var712!1 String)
(assert (= var712!1 ""))
(assert true)
(define-const var2884 String (append/672562846 var712!1 "keepAliveDuration <= 0: ")) ; Statement: $r12 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("keepAliveDuration <= 0: ") 
(declare-const var712!2 String)
(assert (= var712!2 (str.++ var712!1 "keepAliveDuration <= 0: ")))
(assert true)
(define-const var3433 String (append/-901862667 var2884 var2840)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1) 
(declare-const var2884!1 String)
(assert (str.prefixof var2884 var2884!1))
(assert true)
(define-const var1801 String (toString/-2075883882 var3433)) ; Statement: $r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var767 var2015 var2015-init) ; Statement: $r21 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3630 String (toString/-522406933 (cast-from-String-to-var781 var1801))) ; Statement: $r15 = virtualinvoke $r16.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var767 var3630)) ; Statement: specialinvoke $r21.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var767!1 var2015)
(declare-const var3630!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var3054_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2050-to-var781=([okhttp3.internal.concurrent.TaskRunner], java.lang.Object), cast-from-var1584-to-var781=([java.util.concurrent.TimeUnit], java.lang.Object), <init>/-279557996=([java.lang.Object], void), cast-from-var3620-to-var781=([okhttp3.internal.connection.RealConnectionPool], java.lang.Object), maxIdleConnections/1326632342=([okhttp3.internal.connection.RealConnectionPool], int), toNanos/-1234729849=([java.util.concurrent.TimeUnit, long], long), keepAliveDurationNs/1326632342=([okhttp3.internal.connection.RealConnectionPool], long), newQueue/-1490586697=([okhttp3.internal.concurrent.TaskRunner], okhttp3.internal.concurrent.TaskQueue), cleanupQueue/1326632342=([okhttp3.internal.connection.RealConnectionPool], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1335-init=([], okhttp3.internal.connection.RealConnectionPool$cleanupTask$1), <init>/1369269212=([okhttp3.internal.connection.RealConnectionPool$cleanupTask$1, okhttp3.internal.connection.RealConnectionPool, java.lang.String], void), cleanupTask/1326632342=([okhttp3.internal.connection.RealConnectionPool], okhttp3.internal.connection.RealConnectionPool$cleanupTask$1), var535-init=([], java.util.concurrent.ConcurrentLinkedQueue), <init>/-287915317=([java.util.concurrent.ConcurrentLinkedQueue], void), connections/1326632342=([okhttp3.internal.connection.RealConnectionPool], java.util.concurrent.ConcurrentLinkedQueue), cast-from-Int-to-Int=([byte], int), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2015-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var781=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3620=okhttp3.internal.connection.RealConnectionPool, var599=r2, var2050=okhttp3.internal.concurrent.TaskRunner, var576=r0, var1598=i0, var2840=l1, var1584=java.util.concurrent.TimeUnit, var1095=r1, var3054=kotlin.jvm.internal.Intrinsics, var781=java.lang.Object, var2850="taskRunner", var1701="timeUnit", var3139=$l2, var966=okhttp3.internal.concurrent.TaskQueue, var3566=$r3, var2290=$r17, var372=okhttp3.internal.Util, var1683=$r5, var2253=$r6, var472=$r7, var1367=r8, var1335=okhttp3.internal.connection.RealConnectionPool$cleanupTask$1, var3389=$r18, var535=java.util.concurrent.ConcurrentLinkedQueue, var912=$r19, var2953=$b3, var2873=$i4, var531=$z0, var712=$r20, var2884=$r12, var3433=$r13, var1801=$r16, var2015=java.lang.IllegalArgumentException, var767=$r21, var3630=$r15}
; {okhttp3.internal.connection.RealConnectionPool=var3620, r2=var599, okhttp3.internal.concurrent.TaskRunner=var2050, r0=var576, i0=var1598, l1=var2840, java.util.concurrent.TimeUnit=var1584, r1=var1095, kotlin.jvm.internal.Intrinsics=var3054, java.lang.Object=var781, "taskRunner"=var2850, "timeUnit"=var1701, $l2=var3139, okhttp3.internal.concurrent.TaskQueue=var966, $r3=var3566, $r17=var2290, okhttp3.internal.Util=var372, $r5=var1683, $r6=var2253, $r7=var472, r8=var1367, okhttp3.internal.connection.RealConnectionPool$cleanupTask$1=var1335, $r18=var3389, java.util.concurrent.ConcurrentLinkedQueue=var535, $r19=var912, $b3=var2953, $i4=var2873, $z0=var531, $r20=var712, $r12=var2884, $r13=var3433, $r16=var1801, java.lang.IllegalArgumentException=var2015, $r21=var767, $r15=var3630}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r2 := @this: okhttp3.internal.connection.RealConnectionPool;	r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner;	i0 := @parameter1: int;	l1 := @parameter2: long;	r1 := @parameter3: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "timeUnit");	specialinvoke r2.<java.lang.Object: void <init>()>();	r2.<okhttp3.internal.connection.RealConnectionPool: int maxIdleConnections> = i0;	$l2 = virtualinvoke r1.<java.util.concurrent.TimeUnit: long toNanos(long)>(l1);	r2.<okhttp3.internal.connection.RealConnectionPool: long keepAliveDurationNs> = $l2;	$r3 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>();	r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r3;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r5 = <okhttp3.internal.Util: java.lang.String okHttpName>;	$r6 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ConnectionPool");	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = new okhttp3.internal.connection.RealConnectionPool$cleanupTask$1;	specialinvoke $r18.<okhttp3.internal.connection.RealConnectionPool$cleanupTask$1: void <init>(okhttp3.internal.connection.RealConnectionPool,java.lang.String)>(r2, r8);	r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 cleanupTask> = $r18;	$r19 = new java.util.concurrent.ConcurrentLinkedQueue;	specialinvoke $r19.<java.util.concurrent.ConcurrentLinkedQueue: void <init>()>();	r2.<okhttp3.internal.connection.RealConnectionPool: java.util.concurrent.ConcurrentLinkedQueue connections> = $r19;	$b3 = l1 cmp 0L;	$i4 = (int) $b3;	if $i4 <= 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto return;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("keepAliveDuration <= 0: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1);	$r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = new java.lang.IllegalArgumentException;	$r15 = virtualinvoke $r16.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r21.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r21
;block_num 4