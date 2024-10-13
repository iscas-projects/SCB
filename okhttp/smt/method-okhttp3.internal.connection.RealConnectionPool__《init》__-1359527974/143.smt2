(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1102 0)
(declare-sort var862 0)
(declare-sort var3171 0)
(declare-sort var3664 0)
(declare-sort var2815 0)
(declare-sort var3922 0)
(declare-sort var3030 0)
(declare-sort var3755 0)
(declare-sort var155 0)
(declare-sort var2944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3664_checkNotNullParameter/-2060636419 (var2815 String) void)
(declare-fun cast-from-var862-to-var2815 (var862) var2815)
(declare-fun cast-from-var3171-to-var2815 (var3171) var2815)
(declare-fun <init>/-279557996 (var2815) void)
(declare-fun cast-from-var1102-to-var2815 (var1102) var2815)
(declare-fun maxIdleConnections/1326632342 (var1102) Int)
(declare-fun toNanos/-1234729849 (var3171 Int) Int)
(declare-fun keepAliveDurationNs/1326632342 (var1102) Int)
(declare-fun newQueue/-1490586697 (var862) var3922)
(declare-fun cleanupQueue/1326632342 (var1102) var3922)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3755-init () var3755)
(declare-fun <init>/1369269212 (var3755 var1102 String) void)
(declare-fun cleanupTask/1326632342 (var1102) var3755)
(declare-fun var155-init () var155)
(declare-fun <init>/-287915317 (var155) void)
(declare-fun connections/1326632342 (var1102) var155)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2944-init () var2944)
(declare-fun toString/-522406933 (var2815) String)
(declare-fun cast-from-String-to-var2815 (String) var2815)
(declare-fun <init>/875830710 (var2944 String) void)
(declare-const null-var1102 var1102)
(declare-const null-var862 var862)
(declare-const null-Int Int)
(declare-const null-var3171 var3171)
(declare-const var3030-okHttpName String)
(declare-const var293 var1102) ; Statement: r2 := @this: okhttp3.internal.connection.RealConnectionPool 
(assert (not (= var293 null-var1102)))
(declare-const var3814 var862) ; Statement: r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var3814 null-var862)))
(declare-const var3653 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3653 null-Int)))
(declare-const var2742 Int) ; Statement: l1 := @parameter2: long 
(assert (not (= var2742 null-Int)))
(declare-const var148 var3171) ; Statement: r1 := @parameter3: java.util.concurrent.TimeUnit 
(assert (not (= var148 null-var3171)))
;(assert (var3664_checkNotNullParameter/-2060636419 (cast-from-var862-to-var2815 var3814) "taskRunner")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner") 

(declare-const var3814!1 var862)
(declare-const var2258 String)
;(assert (var3664_checkNotNullParameter/-2060636419 (cast-from-var3171-to-var2815 var148) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "timeUnit") 

(declare-const var148!1 var3171)
(declare-const var743 String)
(assert true)
;(assert (<init>/-279557996 (cast-from-var1102-to-var2815 var293))) ; Statement: specialinvoke r2.<java.lang.Object: void <init>()>() 

(declare-const var293!1 var1102)
(declare-const var293!2 var1102)
(assert (not (= var293!2 null-var1102)))
(assert (= (maxIdleConnections/1326632342 var293!2) var3653)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: int maxIdleConnections> = i0 
(assert true)
(define-const var1731 Int (toNanos/-1234729849 var148!1 var2742)) ; Statement: $l2 = virtualinvoke r1.<java.util.concurrent.TimeUnit: long toNanos(long)>(l1) 
(declare-const var293!3 var1102)
(assert (not (= var293!3 null-var1102)))
(assert (= (keepAliveDurationNs/1326632342 var293!3) var1731)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: long keepAliveDurationNs> = $l2 
(assert true)
(define-const var2980 var3922 (newQueue/-1490586697 var3814!1)) ; Statement: $r3 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>() 
(declare-const var293!4 var1102)
(assert (not (= var293!4 null-var1102)))
(assert (= (cleanupQueue/1326632342 var293!4) var2980)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r3 
(define-const var3571 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3571)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3571!1 String)
(assert (= var3571!1 ""))
(define-const var409 String var3030-okHttpName) ; Statement: $r5 = <okhttp3.internal.Util: java.lang.String okHttpName> 
(assert true)
(define-const var2651 String (append/672562846 var3571!1 var409)) ; Statement: $r6 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3571!2 String)
(assert (= var3571!2 (str.++ var3571!1 var409)))
(assert true)
(define-const var3066 String (append/672562846 var2651 " ConnectionPool")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ConnectionPool") 
(declare-const var2651!1 String)
(assert (= var2651!1 (str.++ var2651 " ConnectionPool")))
(assert true)
(define-const var3071 String (toString/-2075883882 var3066)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1192 var3755 var3755-init) ; Statement: $r18 = new okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 
(assert true)
;(assert (<init>/1369269212 var1192 var293!4 var3071)) ; Statement: specialinvoke $r18.<okhttp3.internal.connection.RealConnectionPool$cleanupTask$1: void <init>(okhttp3.internal.connection.RealConnectionPool,java.lang.String)>(r2, r8) 

(declare-const var1192!1 var3755)
(declare-const var293!5 var1102)
(declare-const var3071!1 String)
(declare-const var293!6 var1102)
(assert (not (= var293!6 null-var1102)))
(assert (= (cleanupTask/1326632342 var293!6) var1192!1)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 cleanupTask> = $r18 
(define-const var817 var155 var155-init) ; Statement: $r19 = new java.util.concurrent.ConcurrentLinkedQueue 
(assert true)
;(assert (<init>/-287915317 var817)) ; Statement: specialinvoke $r19.<java.util.concurrent.ConcurrentLinkedQueue: void <init>()>() 

(declare-const var817!1 var155)
(declare-const var293!7 var1102)
(assert (not (= var293!7 null-var1102)))
(assert (= (connections/1326632342 var293!7) var817!1)) ; Statement: r2.<okhttp3.internal.connection.RealConnectionPool: java.util.concurrent.ConcurrentLinkedQueue connections> = $r19 
(define-const var3607 Int (ite (> var2742 0) 1 (ite (< var2742 0) (- 1) 0))) ; Statement: $b3 = l1 cmp 0L 
(define-const var3189 Int (cast-from-Int-to-Int var3607)) ; Statement: $i4 = (int) $b3 
 ; Statement: if $i4 <= 0 goto $z0 = 0 
(assert (not (<= var3189 0))) ; Negate: Cond: $i4 <= 0  
(define-const var3615 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3615 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3304 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3304)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3304!1 String)
(assert (= var3304!1 ""))
(assert true)
(define-const var3965 String (append/672562846 var3304!1 "keepAliveDuration <= 0: ")) ; Statement: $r12 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("keepAliveDuration <= 0: ") 
(declare-const var3304!2 String)
(assert (= var3304!2 (str.++ var3304!1 "keepAliveDuration <= 0: ")))
(assert true)
(define-const var746 String (append/-901862667 var3965 var2742)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1) 
(declare-const var3965!1 String)
(assert (str.prefixof var3965 var3965!1))
(assert true)
(define-const var2989 String (toString/-2075883882 var746)) ; Statement: $r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1480 var2944 var2944-init) ; Statement: $r21 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2632 String (toString/-522406933 (cast-from-String-to-var2815 var2989))) ; Statement: $r15 = virtualinvoke $r16.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1480 var2632)) ; Statement: specialinvoke $r21.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var1480!1 var2944)
(declare-const var2632!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var3664_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var862-to-var2815=([okhttp3.internal.concurrent.TaskRunner], java.lang.Object), cast-from-var3171-to-var2815=([java.util.concurrent.TimeUnit], java.lang.Object), <init>/-279557996=([java.lang.Object], void), cast-from-var1102-to-var2815=([okhttp3.internal.connection.RealConnectionPool], java.lang.Object), maxIdleConnections/1326632342=([okhttp3.internal.connection.RealConnectionPool], int), toNanos/-1234729849=([java.util.concurrent.TimeUnit, long], long), keepAliveDurationNs/1326632342=([okhttp3.internal.connection.RealConnectionPool], long), newQueue/-1490586697=([okhttp3.internal.concurrent.TaskRunner], okhttp3.internal.concurrent.TaskQueue), cleanupQueue/1326632342=([okhttp3.internal.connection.RealConnectionPool], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3755-init=([], okhttp3.internal.connection.RealConnectionPool$cleanupTask$1), <init>/1369269212=([okhttp3.internal.connection.RealConnectionPool$cleanupTask$1, okhttp3.internal.connection.RealConnectionPool, java.lang.String], void), cleanupTask/1326632342=([okhttp3.internal.connection.RealConnectionPool], okhttp3.internal.connection.RealConnectionPool$cleanupTask$1), var155-init=([], java.util.concurrent.ConcurrentLinkedQueue), <init>/-287915317=([java.util.concurrent.ConcurrentLinkedQueue], void), connections/1326632342=([okhttp3.internal.connection.RealConnectionPool], java.util.concurrent.ConcurrentLinkedQueue), cast-from-Int-to-Int=([byte], int), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2944-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2815=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1102=okhttp3.internal.connection.RealConnectionPool, var293=r2, var862=okhttp3.internal.concurrent.TaskRunner, var3814=r0, var3653=i0, var2742=l1, var3171=java.util.concurrent.TimeUnit, var148=r1, var3664=kotlin.jvm.internal.Intrinsics, var2815=java.lang.Object, var2258="taskRunner", var743="timeUnit", var1731=$l2, var3922=okhttp3.internal.concurrent.TaskQueue, var2980=$r3, var3571=$r17, var3030=okhttp3.internal.Util, var409=$r5, var2651=$r6, var3066=$r7, var3071=r8, var3755=okhttp3.internal.connection.RealConnectionPool$cleanupTask$1, var1192=$r18, var155=java.util.concurrent.ConcurrentLinkedQueue, var817=$r19, var3607=$b3, var3189=$i4, var3615=$z0, var3304=$r20, var3965=$r12, var746=$r13, var2989=$r16, var2944=java.lang.IllegalArgumentException, var1480=$r21, var2632=$r15}
; {okhttp3.internal.connection.RealConnectionPool=var1102, r2=var293, okhttp3.internal.concurrent.TaskRunner=var862, r0=var3814, i0=var3653, l1=var2742, java.util.concurrent.TimeUnit=var3171, r1=var148, kotlin.jvm.internal.Intrinsics=var3664, java.lang.Object=var2815, "taskRunner"=var2258, "timeUnit"=var743, $l2=var1731, okhttp3.internal.concurrent.TaskQueue=var3922, $r3=var2980, $r17=var3571, okhttp3.internal.Util=var3030, $r5=var409, $r6=var2651, $r7=var3066, r8=var3071, okhttp3.internal.connection.RealConnectionPool$cleanupTask$1=var3755, $r18=var1192, java.util.concurrent.ConcurrentLinkedQueue=var155, $r19=var817, $b3=var3607, $i4=var3189, $z0=var3615, $r20=var3304, $r12=var3965, $r13=var746, $r16=var2989, java.lang.IllegalArgumentException=var2944, $r21=var1480, $r15=var2632}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r2 := @this: okhttp3.internal.connection.RealConnectionPool;	r0 := @parameter0: okhttp3.internal.concurrent.TaskRunner;	i0 := @parameter1: int;	l1 := @parameter2: long;	r1 := @parameter3: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskRunner");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "timeUnit");	specialinvoke r2.<java.lang.Object: void <init>()>();	r2.<okhttp3.internal.connection.RealConnectionPool: int maxIdleConnections> = i0;	$l2 = virtualinvoke r1.<java.util.concurrent.TimeUnit: long toNanos(long)>(l1);	r2.<okhttp3.internal.connection.RealConnectionPool: long keepAliveDurationNs> = $l2;	$r3 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>();	r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r3;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r5 = <okhttp3.internal.Util: java.lang.String okHttpName>;	$r6 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ConnectionPool");	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = new okhttp3.internal.connection.RealConnectionPool$cleanupTask$1;	specialinvoke $r18.<okhttp3.internal.connection.RealConnectionPool$cleanupTask$1: void <init>(okhttp3.internal.connection.RealConnectionPool,java.lang.String)>(r2, r8);	r2.<okhttp3.internal.connection.RealConnectionPool: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1 cleanupTask> = $r18;	$r19 = new java.util.concurrent.ConcurrentLinkedQueue;	specialinvoke $r19.<java.util.concurrent.ConcurrentLinkedQueue: void <init>()>();	r2.<okhttp3.internal.connection.RealConnectionPool: java.util.concurrent.ConcurrentLinkedQueue connections> = $r19;	$b3 = l1 cmp 0L;	$i4 = (int) $b3;	if $i4 <= 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto return;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("keepAliveDuration <= 0: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1);	$r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = new java.lang.IllegalArgumentException;	$r15 = virtualinvoke $r16.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r21.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r21
;block_num 4