(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var937 0)
(declare-sort var1174 0)
(declare-sort var3339 0)
(declare-sort var949 0)
(declare-sort var1834 0)
(declare-sort var1209 0)
(declare-sort var2997 0)
(declare-sort var2184 0)
(declare-sort var1600 0)
(declare-sort var909 0)
(declare-sort var1188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1834_requireNonNull/1378936425 (var949 String) var949)
(declare-fun cast-from-var1174-to-var949 (var1174) var949)
(declare-fun cast-from-var949-to-var1174 (var949) var1174)
(declare-fun <init>/105507897 (var1209 var1174) void)
(declare-fun cast-from-var937-to-var1209 (var937) var1209)
(declare-fun var2997-init () var2997)
(declare-fun <init>/-377021476 (var2997) void)
(declare-fun stateChangeLock/989710671 (var937) var2997)
(declare-fun var2184-init () var2184)
(declare-fun <init>/612893978 (var2184) void)
(declare-fun isWaiting/989710671 (var937) var2184)
(declare-fun newCondition/-1476914531 (var2997) var1600)
(declare-fun asyncReadComplete/989710671 (var937) var1600)
(declare-fun cast-from-var3339-to-var949 (var3339) var949)
(declare-fun cast-from-var949-to-var3339 (var949) var3339)
(declare-fun executorService/989710671 (var937) var3339)
(declare-fun shutdownExecutorService/989710671 (var937) Bool)
(declare-fun var909_allocate/-517473021 (Int) var909)
(declare-fun activeBuffer/989710671 (var937) var909)
(declare-fun readAheadBuffer/989710671 (var937) var909)
(declare-fun flip/1038502598 (var1188) var1188)
(declare-fun cast-from-var909-to-var1188 (var909) var1188)
(declare-const null-var937 var937)
(declare-const null-var1174 var1174)
(declare-const null-Int Int)
(declare-const null-var3339 var3339)
(declare-const null-Bool Bool)
(declare-const var996 var937) ; Statement: r0 := @this: org.apache.commons.io.input.ReadAheadInputStream 
(assert (not (= var996 null-var937)))
(declare-const var2754 var1174) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var2754 null-var1174)))
(declare-const var1123 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1123 null-Int)))
(declare-const var3638 var3339) ; Statement: r8 := @parameter2: java.util.concurrent.ExecutorService 
(assert (not (= var3638 null-var3339)))
(declare-const var2812 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var2812 null-Bool)))
(define-const var57 var949 (var1834_requireNonNull/1378936425 (cast-from-var1174-to-var949 var2754) "inputStream")) ; Statement: $r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "inputStream") 
(define-const var2620 var1174 (cast-from-var949-to-var1174 var57)) ; Statement: $r3 = (java.io.InputStream) $r2 
(assert true)
;(assert (<init>/105507897 (cast-from-var937-to-var1209 var996) var2620)) ; Statement: specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>($r3) 

(declare-const var996!1 var937)
(declare-const var2620!1 var1174)
(define-const var2016 var2997 var2997-init) ; Statement: $r4 = new java.util.concurrent.locks.ReentrantLock 
(assert true)
;(assert (<init>/-377021476 var2016)) ; Statement: specialinvoke $r4.<java.util.concurrent.locks.ReentrantLock: void <init>()>() 

(declare-const var2016!1 var2997)
(declare-const var996!2 var937)
(assert (not (= var996!2 null-var937)))
(assert (= (stateChangeLock/989710671 var996!2) var2016!1)) ; Statement: r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.ReentrantLock stateChangeLock> = $r4 
(define-const var511 var2184 var2184-init) ; Statement: $r5 = new java.util.concurrent.atomic.AtomicBoolean 
(assert true)
;(assert (<init>/612893978 var511)) ; Statement: specialinvoke $r5.<java.util.concurrent.atomic.AtomicBoolean: void <init>()>() 

(declare-const var511!1 var2184)
(declare-const var996!3 var937)
(assert (not (= var996!3 null-var937)))
(assert (= (isWaiting/989710671 var996!3) var511!1)) ; Statement: r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.atomic.AtomicBoolean isWaiting> = $r5 
(define-const var422 var2997 (stateChangeLock/989710671 var996!3)) ; Statement: $r6 = r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.ReentrantLock stateChangeLock> 
(assert true)
(define-const var1524 var1600 (newCondition/-1476914531 var422)) ; Statement: $r7 = virtualinvoke $r6.<java.util.concurrent.locks.ReentrantLock: java.util.concurrent.locks.Condition newCondition()>() 
(declare-const var996!4 var937)
(assert (not (= var996!4 null-var937)))
(assert (= (asyncReadComplete/989710671 var996!4) var1524)) ; Statement: r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.Condition asyncReadComplete> = $r7 
 ; Statement: if i0 > 0 goto $r9 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r8, "executorService") 
(assert (> var1123 0)) ; Cond: i0 > 0 
(define-const var1039 var949 (var1834_requireNonNull/1378936425 (cast-from-var3339-to-var949 var3638) "executorService")) ; Statement: $r9 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r8, "executorService") 
(define-const var3629 var3339 (cast-from-var949-to-var3339 var1039)) ; Statement: $r10 = (java.util.concurrent.ExecutorService) $r9 
(declare-const var996!5 var937)
(assert (not (= var996!5 null-var937)))
(assert (= (executorService/989710671 var996!5) var3629)) ; Statement: r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.ExecutorService executorService> = $r10 
(declare-const var996!6 var937)
(assert (not (= var996!6 null-var937)))
(assert (= (shutdownExecutorService/989710671 var996!6) var2812)) ; Statement: r0.<org.apache.commons.io.input.ReadAheadInputStream: boolean shutdownExecutorService> = z0 
(define-const var458 var909 (var909_allocate/-517473021 var1123)) ; Statement: $r11 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>(i0) 
(declare-const var996!7 var937)
(assert (not (= var996!7 null-var937)))
(assert (= (activeBuffer/989710671 var996!7) var458)) ; Statement: r0.<org.apache.commons.io.input.ReadAheadInputStream: java.nio.ByteBuffer activeBuffer> = $r11 
(define-const var574 var909 (var909_allocate/-517473021 var1123)) ; Statement: $r12 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>(i0) 
(declare-const var996!8 var937)
(assert (not (= var996!8 null-var937)))
(assert (= (readAheadBuffer/989710671 var996!8) var574)) ; Statement: r0.<org.apache.commons.io.input.ReadAheadInputStream: java.nio.ByteBuffer readAheadBuffer> = $r12 
(define-const var275 var909 (activeBuffer/989710671 var996!8)) ; Statement: $r13 = r0.<org.apache.commons.io.input.ReadAheadInputStream: java.nio.ByteBuffer activeBuffer> 
(assert true)
;(assert (flip/1038502598 (cast-from-var909-to-var1188 var275))) ; Statement: virtualinvoke $r13.<java.nio.ByteBuffer: java.nio.Buffer flip()>() 

(declare-const var275!1 var909)
(define-const var1155 var909 (readAheadBuffer/989710671 var996!8)) ; Statement: $r14 = r0.<org.apache.commons.io.input.ReadAheadInputStream: java.nio.ByteBuffer readAheadBuffer> 
(assert true)
;(assert (flip/1038502598 (cast-from-var909-to-var1188 var1155))) ; Statement: virtualinvoke $r14.<java.nio.ByteBuffer: java.nio.Buffer flip()>() 

(declare-const var1155!1 var909)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1834_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var1174-to-var949=([java.io.InputStream], java.lang.Object), cast-from-var949-to-var1174=([java.lang.Object], java.io.InputStream), <init>/105507897=([java.io.FilterInputStream, java.io.InputStream], void), cast-from-var937-to-var1209=([org.apache.commons.io.input.ReadAheadInputStream], java.io.FilterInputStream), var2997-init=([], java.util.concurrent.locks.ReentrantLock), <init>/-377021476=([java.util.concurrent.locks.ReentrantLock], void), stateChangeLock/989710671=([org.apache.commons.io.input.ReadAheadInputStream], java.util.concurrent.locks.ReentrantLock), var2184-init=([], java.util.concurrent.atomic.AtomicBoolean), <init>/612893978=([java.util.concurrent.atomic.AtomicBoolean], void), isWaiting/989710671=([org.apache.commons.io.input.ReadAheadInputStream], java.util.concurrent.atomic.AtomicBoolean), newCondition/-1476914531=([java.util.concurrent.locks.ReentrantLock], java.util.concurrent.locks.Condition), asyncReadComplete/989710671=([org.apache.commons.io.input.ReadAheadInputStream], java.util.concurrent.locks.Condition), cast-from-var3339-to-var949=([java.util.concurrent.ExecutorService], java.lang.Object), cast-from-var949-to-var3339=([java.lang.Object], java.util.concurrent.ExecutorService), executorService/989710671=([org.apache.commons.io.input.ReadAheadInputStream], java.util.concurrent.ExecutorService), shutdownExecutorService/989710671=([org.apache.commons.io.input.ReadAheadInputStream], boolean), var909_allocate/-517473021=([int], java.nio.ByteBuffer), activeBuffer/989710671=([org.apache.commons.io.input.ReadAheadInputStream], java.nio.ByteBuffer), readAheadBuffer/989710671=([org.apache.commons.io.input.ReadAheadInputStream], java.nio.ByteBuffer), flip/1038502598=([java.nio.Buffer], java.nio.Buffer), cast-from-var909-to-var1188=([java.nio.ByteBuffer], java.nio.Buffer)}
; {var937=org.apache.commons.io.input.ReadAheadInputStream, var996=r0, var1174=java.io.InputStream, var2754=r1, var1123=i0, var3339=java.util.concurrent.ExecutorService, var3638=r8, var2812=z0, var949=java.lang.Object, var1834=java.util.Objects, var57=$r2, var2620=$r3, var1209=java.io.FilterInputStream, var2997=java.util.concurrent.locks.ReentrantLock, var2016=$r4, var2184=java.util.concurrent.atomic.AtomicBoolean, var511=$r5, var422=$r6, var1600=java.util.concurrent.locks.Condition, var1524=$r7, var1039=$r9, var3629=$r10, var909=java.nio.ByteBuffer, var458=$r11, var574=$r12, var275=$r13, var1188=java.nio.Buffer, var1155=$r14}
; {org.apache.commons.io.input.ReadAheadInputStream=var937, r0=var996, java.io.InputStream=var1174, r1=var2754, i0=var1123, java.util.concurrent.ExecutorService=var3339, r8=var3638, z0=var2812, java.lang.Object=var949, java.util.Objects=var1834, $r2=var57, $r3=var2620, java.io.FilterInputStream=var1209, java.util.concurrent.locks.ReentrantLock=var2997, $r4=var2016, java.util.concurrent.atomic.AtomicBoolean=var2184, $r5=var511, $r6=var422, java.util.concurrent.locks.Condition=var1600, $r7=var1524, $r9=var1039, $r10=var3629, java.nio.ByteBuffer=var909, $r11=var458, $r12=var574, $r13=var275, java.nio.Buffer=var1188, $r14=var1155}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.io.input.ReadAheadInputStream;	r1 := @parameter0: java.io.InputStream;	i0 := @parameter1: int;	r8 := @parameter2: java.util.concurrent.ExecutorService;	z0 := @parameter3: boolean;	$r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "inputStream");	$r3 = (java.io.InputStream) $r2;	specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>($r3);	$r4 = new java.util.concurrent.locks.ReentrantLock;	specialinvoke $r4.<java.util.concurrent.locks.ReentrantLock: void <init>()>();	r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.ReentrantLock stateChangeLock> = $r4;	$r5 = new java.util.concurrent.atomic.AtomicBoolean;	specialinvoke $r5.<java.util.concurrent.atomic.AtomicBoolean: void <init>()>();	r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.atomic.AtomicBoolean isWaiting> = $r5;	$r6 = r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.ReentrantLock stateChangeLock>;	$r7 = virtualinvoke $r6.<java.util.concurrent.locks.ReentrantLock: java.util.concurrent.locks.Condition newCondition()>();	r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.Condition asyncReadComplete> = $r7;	if i0 > 0 goto $r9 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r8, "executorService");	$r9 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r8, "executorService");	$r10 = (java.util.concurrent.ExecutorService) $r9;	r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.ExecutorService executorService> = $r10;	r0.<org.apache.commons.io.input.ReadAheadInputStream: boolean shutdownExecutorService> = z0;	$r11 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>(i0);	r0.<org.apache.commons.io.input.ReadAheadInputStream: java.nio.ByteBuffer activeBuffer> = $r11;	$r12 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>(i0);	r0.<org.apache.commons.io.input.ReadAheadInputStream: java.nio.ByteBuffer readAheadBuffer> = $r12;	$r13 = r0.<org.apache.commons.io.input.ReadAheadInputStream: java.nio.ByteBuffer activeBuffer>;	virtualinvoke $r13.<java.nio.ByteBuffer: java.nio.Buffer flip()>();	$r14 = r0.<org.apache.commons.io.input.ReadAheadInputStream: java.nio.ByteBuffer readAheadBuffer>;	virtualinvoke $r14.<java.nio.ByteBuffer: java.nio.Buffer flip()>();	return
;block_num 2