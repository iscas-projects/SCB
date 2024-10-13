(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var459 0)
(declare-sort var2442 0)
(declare-sort var3566 0)
(declare-sort var3067 0)
(declare-sort var1594 0)
(declare-sort var2313 0)
(declare-sort var3650 0)
(declare-sort var1441 0)
(declare-sort var3091 0)
(declare-sort var1625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1594_requireNonNull/1378936425 (var3067 String) var3067)
(declare-fun cast-from-var2442-to-var3067 (var2442) var3067)
(declare-fun cast-from-var3067-to-var2442 (var3067) var2442)
(declare-fun <init>/105507897 (var2313 var2442) void)
(declare-fun cast-from-var459-to-var2313 (var459) var2313)
(declare-fun var3650-init () var3650)
(declare-fun <init>/-377021476 (var3650) void)
(declare-fun stateChangeLock/989710671 (var459) var3650)
(declare-fun var1441-init () var1441)
(declare-fun <init>/612893978 (var1441) void)
(declare-fun isWaiting/989710671 (var459) var1441)
(declare-fun newCondition/-1476914531 (var3650) var3091)
(declare-fun asyncReadComplete/989710671 (var459) var3091)
(declare-fun var1625-init () var1625)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1625 String) void)
(declare-const null-var459 var459)
(declare-const null-var2442 var2442)
(declare-const null-Int Int)
(declare-const null-var3566 var3566)
(declare-const null-Bool Bool)
(declare-const var3936 var459) ; Statement: r0 := @this: org.apache.commons.io.input.ReadAheadInputStream 
(assert (not (= var3936 null-var459)))
(declare-const var2843 var2442) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var2843 null-var2442)))
(declare-const var656 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var656 null-Int)))
(declare-const var2285 var3566) ; Statement: r8 := @parameter2: java.util.concurrent.ExecutorService 
(assert (not (= var2285 null-var3566)))
(declare-const var2831 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var2831 null-Bool)))
(define-const var3911 var3067 (var1594_requireNonNull/1378936425 (cast-from-var2442-to-var3067 var2843) "inputStream")) ; Statement: $r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "inputStream") 
(define-const var3340 var2442 (cast-from-var3067-to-var2442 var3911)) ; Statement: $r3 = (java.io.InputStream) $r2 
(assert true)
;(assert (<init>/105507897 (cast-from-var459-to-var2313 var3936) var3340)) ; Statement: specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>($r3) 

(declare-const var3936!1 var459)
(declare-const var3340!1 var2442)
(define-const var2957 var3650 var3650-init) ; Statement: $r4 = new java.util.concurrent.locks.ReentrantLock 
(assert true)
;(assert (<init>/-377021476 var2957)) ; Statement: specialinvoke $r4.<java.util.concurrent.locks.ReentrantLock: void <init>()>() 

(declare-const var2957!1 var3650)
(declare-const var3936!2 var459)
(assert (not (= var3936!2 null-var459)))
(assert (= (stateChangeLock/989710671 var3936!2) var2957!1)) ; Statement: r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.ReentrantLock stateChangeLock> = $r4 
(define-const var2695 var1441 var1441-init) ; Statement: $r5 = new java.util.concurrent.atomic.AtomicBoolean 
(assert true)
;(assert (<init>/612893978 var2695)) ; Statement: specialinvoke $r5.<java.util.concurrent.atomic.AtomicBoolean: void <init>()>() 

(declare-const var2695!1 var1441)
(declare-const var3936!3 var459)
(assert (not (= var3936!3 null-var459)))
(assert (= (isWaiting/989710671 var3936!3) var2695!1)) ; Statement: r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.atomic.AtomicBoolean isWaiting> = $r5 
(define-const var18 var3650 (stateChangeLock/989710671 var3936!3)) ; Statement: $r6 = r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.ReentrantLock stateChangeLock> 
(assert true)
(define-const var1906 var3091 (newCondition/-1476914531 var18)) ; Statement: $r7 = virtualinvoke $r6.<java.util.concurrent.locks.ReentrantLock: java.util.concurrent.locks.Condition newCondition()>() 
(declare-const var3936!4 var459)
(assert (not (= var3936!4 null-var459)))
(assert (= (asyncReadComplete/989710671 var3936!4) var1906)) ; Statement: r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.Condition asyncReadComplete> = $r7 
 ; Statement: if i0 > 0 goto $r9 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r8, "executorService") 
(assert (not (> var656 0))) ; Negate: Cond: i0 > 0  
(define-const var1350 var1625 var1625-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(define-const var1822 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1822)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1822!1 String)
(assert (= var1822!1 ""))
(assert true)
(define-const var1324 String (append/672562846 var1822!1 "bufferSizeInBytes should be greater than 0, but the value is ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bufferSizeInBytes should be greater than 0, but the value is ") 
(declare-const var1822!2 String)
(assert (= var1822!2 (str.++ var1822!1 "bufferSizeInBytes should be greater than 0, but the value is ")))
(assert true)
(define-const var1738 String (append/-1001720160 var1324 var656)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1324!1 String)
(assert (str.prefixof var1324 var1324!1))
(assert true)
(define-const var792 String (toString/-2075883882 var1738)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1350 var792)) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19) 

(declare-const var1350!1 var1625)
(declare-const var792!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var1594_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var2442-to-var3067=([java.io.InputStream], java.lang.Object), cast-from-var3067-to-var2442=([java.lang.Object], java.io.InputStream), <init>/105507897=([java.io.FilterInputStream, java.io.InputStream], void), cast-from-var459-to-var2313=([org.apache.commons.io.input.ReadAheadInputStream], java.io.FilterInputStream), var3650-init=([], java.util.concurrent.locks.ReentrantLock), <init>/-377021476=([java.util.concurrent.locks.ReentrantLock], void), stateChangeLock/989710671=([org.apache.commons.io.input.ReadAheadInputStream], java.util.concurrent.locks.ReentrantLock), var1441-init=([], java.util.concurrent.atomic.AtomicBoolean), <init>/612893978=([java.util.concurrent.atomic.AtomicBoolean], void), isWaiting/989710671=([org.apache.commons.io.input.ReadAheadInputStream], java.util.concurrent.atomic.AtomicBoolean), newCondition/-1476914531=([java.util.concurrent.locks.ReentrantLock], java.util.concurrent.locks.Condition), asyncReadComplete/989710671=([org.apache.commons.io.input.ReadAheadInputStream], java.util.concurrent.locks.Condition), var1625-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var459=org.apache.commons.io.input.ReadAheadInputStream, var3936=r0, var2442=java.io.InputStream, var2843=r1, var656=i0, var3566=java.util.concurrent.ExecutorService, var2285=r8, var2831=z0, var3067=java.lang.Object, var1594=java.util.Objects, var3911=$r2, var3340=$r3, var2313=java.io.FilterInputStream, var3650=java.util.concurrent.locks.ReentrantLock, var2957=$r4, var1441=java.util.concurrent.atomic.AtomicBoolean, var2695=$r5, var18=$r6, var3091=java.util.concurrent.locks.Condition, var1906=$r7, var1625=java.lang.IllegalArgumentException, var1350=$r15, var1822=$r16, var1324=$r17, var1738=$r18, var792=$r19}
; {org.apache.commons.io.input.ReadAheadInputStream=var459, r0=var3936, java.io.InputStream=var2442, r1=var2843, i0=var656, java.util.concurrent.ExecutorService=var3566, r8=var2285, z0=var2831, java.lang.Object=var3067, java.util.Objects=var1594, $r2=var3911, $r3=var3340, java.io.FilterInputStream=var2313, java.util.concurrent.locks.ReentrantLock=var3650, $r4=var2957, java.util.concurrent.atomic.AtomicBoolean=var1441, $r5=var2695, $r6=var18, java.util.concurrent.locks.Condition=var3091, $r7=var1906, java.lang.IllegalArgumentException=var1625, $r15=var1350, $r16=var1822, $r17=var1324, $r18=var1738, $r19=var792}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.ReadAheadInputStream;	r1 := @parameter0: java.io.InputStream;	i0 := @parameter1: int;	r8 := @parameter2: java.util.concurrent.ExecutorService;	z0 := @parameter3: boolean;	$r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "inputStream");	$r3 = (java.io.InputStream) $r2;	specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>($r3);	$r4 = new java.util.concurrent.locks.ReentrantLock;	specialinvoke $r4.<java.util.concurrent.locks.ReentrantLock: void <init>()>();	r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.ReentrantLock stateChangeLock> = $r4;	$r5 = new java.util.concurrent.atomic.AtomicBoolean;	specialinvoke $r5.<java.util.concurrent.atomic.AtomicBoolean: void <init>()>();	r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.atomic.AtomicBoolean isWaiting> = $r5;	$r6 = r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.ReentrantLock stateChangeLock>;	$r7 = virtualinvoke $r6.<java.util.concurrent.locks.ReentrantLock: java.util.concurrent.locks.Condition newCondition()>();	r0.<org.apache.commons.io.input.ReadAheadInputStream: java.util.concurrent.locks.Condition asyncReadComplete> = $r7;	if i0 > 0 goto $r9 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r8, "executorService");	$r15 = new java.lang.IllegalArgumentException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bufferSizeInBytes should be greater than 0, but the value is ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19);	throw $r15
;block_num 2