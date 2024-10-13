(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2995 0)
(declare-sort var191 0)
(declare-sort var562 0)
(declare-sort var1194 0)
(declare-sort var2450 0)
(declare-sort var153 0)
(declare-sort var1868 0)
(declare-sort var3846 0)
(declare-sort var2016 0)
(declare-sort var2398 0)
(declare-sort var1129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1890819208 (var1194 var191 Bool Bool) void)
(declare-fun cast-from-var2995-to-var1194 (var2995) var1194)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun cacheIndex/-403530942 (var2995) Int)
(declare-fun var2450_currentThread/-1037784612 () var2450)
(declare-fun var153_identityHashCode/1096208673 (var1868) Int)
(declare-fun cast-from-var2450-to-var1868 (var2450) var1868)
(declare-fun getLength-Arr-var3846-1 ((Array Int var3846)) Int)
(declare-fun getAndSet/-2096274246 (var2398 var1868 var1868) var1868)
(declare-fun cast-from-var3846-to-var1868 (var3846) var1868)
(declare-fun cast-from-var1868-to-__Array__Int__Int__ (var1868) (Array Int Int))
(declare-fun var1129_max/1360571700 (Int Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun str/-403530942 (var2995) String)
(declare-fun chars/-403530942 (var2995) (Array Int Int))
(declare-fun offset/1287024874 (var1194) Int)
(declare-fun length/-403530942 (var2995) Int)
(declare-fun start/-403530942 (var2995) Int)
(declare-fun end/-403530942 (var2995) Int)
(declare-fun ch/1287024874 (var1194) Int)
(declare-const null-var2995 var2995)
(declare-const null-var191 var191)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2016-CACHE_ITEMS (Array Int var3846))
(declare-const var2016-CHARS_UPDATER var2398)
(declare-const null-NullType var562)
(declare-const null-var1868 var1868)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1867 var2995) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var1867 null-var2995)))
(declare-const var938 var191) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONReader$Context 
(assert (not (= var938 null-var191)))
(declare-const var1028 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var1028 null-String)))
(declare-const var2114 Int) ; Statement: i7 := @parameter2: int 
(assert (not (= var2114 null-Int)))
(declare-const var118 Int) ; Statement: i5 := @parameter3: int 
(assert (not (= var118 null-Int)))
(assert true)
;(assert (<init>/-1890819208 (cast-from-var2995-to-var1194 var1867) var938 (ite (= 1 0) true false) (ite (= 1 0) true false))) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.JSONReader: void <init>(com.alibaba.fastjson2.JSONReader$Context,boolean,boolean)>(r1, 0, 0) 

(declare-const var1867!1 var2995)
(declare-const var938!1 var191)
(declare-const var49 Int)
(declare-const var49!1 Int)
(define-const var3073 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i32 = (int) -1 
(declare-const var1867!2 var2995)
(assert (not (= var1867!2 null-var2995)))
(assert (= (cacheIndex/-403530942 var1867!2) var3073)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i32 
(define-const var2280 var2450 var2450_currentThread/-1037784612) ; Statement: $r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(define-const var24 Int (var153_identityHashCode/1096208673 (cast-from-var2450-to-var1868 var2280))) ; Statement: $i2 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>($r2) 
(define-const var599 (Array Int var3846) var2016-CACHE_ITEMS) ; Statement: $r3 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS> 
(define-const var1768 Int (getLength-Arr-var3846-1 var599)) ; Statement: $i0 = lengthof $r3 
(define-const var3230 Int (- var1768 1)) ; Statement: $i1 = $i0 - 1 
(define-const var893 Int (bv2nat (bvand ((_ int2bv 64) var24) ((_ int2bv 64) var3230)))) ; Statement: $i3 = $i2 & $i1 
(declare-const var1867!3 var2995)
(assert (not (= var1867!3 null-var2995)))
(assert (= (cacheIndex/-403530942 var1867!3) var893)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i3 
(define-const var2441 (Array Int var3846) var2016-CACHE_ITEMS) ; Statement: $r4 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS> 
(define-const var3069 Int (cacheIndex/-403530942 var1867!3)) ; Statement: $i4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> 
(define-const var1535 var3846 (select var2441 var3069)) ; Statement: r5 = $r4[$i4] 
(define-const var3803 var2398 var2016-CHARS_UPDATER) ; Statement: $r6 = <com.alibaba.fastjson2.JSONFactory: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(assert true)
(define-const var3992 var1868 (getAndSet/-2096274246 var3803 (cast-from-var3846-to-var1868 var1535) null-var1868)) ; Statement: $r7 = virtualinvoke $r6.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>(r5, null) 
(define-const var1245 (Array Int Int) (cast-from-var1868-to-__Array__Int__Int__ var3992)) ; Statement: r9 = (char[]) $r7 
 ; Statement: if r9 == null goto $i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192) 
(assert (= var1245 null-__Array__Int__Int__)) ; Cond: r9 == null 
(define-const var2912 Int (var1129_max/1360571700 var118 8192)) ; Statement: $i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192) 
(define-const var1245!1 (Array Int Int) arr-Int-init) ; Statement: r9 = newarray (char)[$i6] 
(assert true) ; Non Conditional
(define-const var2555 Int (+ var2114 var118)) ; Statement: $i29 = i7 + i5 
(assert true)
;(assert (getChars/1306883398 var1028 var2114 var2555 var1245!1 0)) ; Statement: virtualinvoke r8.<java.lang.String: void getChars(int,int,char[],int)>(i7, $i29, r9, 0) 

(declare-const var1028!1 String)
(declare-const var2114!1 Int)
(declare-const var2555!1 Int)
(declare-const var1245!2 (Array Int Int))
(declare-const var49!2 Int)
 ; Statement: if i7 != 0 goto $r10 = null 
(assert (not (= var2114!1 0))) ; Cond: i7 != 0 
(define-const var2474 String null-String) ; Statement: $r10 = null 
(assert true) ; Non Conditional
(declare-const var1867!4 var2995)
(assert (not (= var1867!4 null-var2995)))
(assert (= (str/-403530942 var1867!4) var2474)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10 
(declare-const var1867!5 var2995)
(assert (not (= var1867!5 null-var2995)))
(assert (= (chars/-403530942 var1867!5) var1245!2)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> = r9 
(declare-const var1867!6 var2995)
(assert (not (= var1867!6 null-var2995)))
(assert (= (offset/1287024874 (cast-from-var2995-to-var1194 var1867!6)) 0)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> = 0 
(declare-const var1867!7 var2995)
(assert (not (= var1867!7 null-var2995)))
(assert (= (length/-403530942 var1867!7) var118)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> = i5 
(declare-const var1867!8 var2995)
(assert (not (= var1867!8 null-var2995)))
(assert (= (start/-403530942 var1867!8) 0)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> = 0 
(define-const var484 Int (length/-403530942 var1867!8)) ; Statement: $i8 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> 
(declare-const var1867!9 var2995)
(assert (not (= var1867!9 null-var2995)))
(assert (= (end/-403530942 var1867!9) var484)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> = $i8 
(define-const var2741 Int (offset/1287024874 (cast-from-var2995-to-var1194 var1867!9))) ; Statement: $i10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(define-const var3554 Int (end/-403530942 var1867!9)) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if $i10 < $i9 goto $i11 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(assert (not (< var2741 var3554))) ; Negate: Cond: $i10 < $i9  
(declare-const var1867!10 var2995)
(assert (not (= var1867!10 null-var2995)))
(assert (= (ch/1287024874 (cast-from-var2995-to-var1194 var1867!10)) 26)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> = 26 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1890819208=([com.alibaba.fastjson2.JSONReader, com.alibaba.fastjson2.JSONReader$Context, boolean, boolean], void), cast-from-var2995-to-var1194=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), cast-from-Int-to-Int=([int], int), cacheIndex/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), var2450_currentThread/-1037784612=([], java.lang.Thread), var153_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var2450-to-var1868=([java.lang.Thread], java.lang.Object), getLength-Arr-var3846-1=([com.alibaba.fastjson2.JSONFactory$CacheItem[]], int), getAndSet/-2096274246=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3846-to-var1868=([com.alibaba.fastjson2.JSONFactory$CacheItem], java.lang.Object), cast-from-var1868-to-__Array__Int__Int__=([java.lang.Object], char[]), var1129_max/1360571700=([int, int], int), arr-Int-init=([], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void), str/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], java.lang.String), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), length/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), start/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char)}
; {var2995=com.alibaba.fastjson2.JSONReaderUTF16, var1867=r0, var191=com.alibaba.fastjson2.JSONReader$Context, var938=r1, var1028=r8, var562=null_type, var2114=i7, var118=i5, var1194=com.alibaba.fastjson2.JSONReader, var49=0, var3073=$i32, var2450=java.lang.Thread, var2280=$r2, var153=java.lang.System, var1868=java.lang.Object, var24=$i2, var3846=com.alibaba.fastjson2.JSONFactory$CacheItem, var2016=com.alibaba.fastjson2.JSONFactory, var599=$r3, var1768=$i0, var3230=$i1, var893=$i3, var2441=$r4, var3069=$i4, var1535=r5, var2398=java.util.concurrent.atomic.AtomicReferenceFieldUpdater, var3803=$r6, var3992=$r7, var1245=r9, var1129=java.lang.Math, var2912=$i6, var2555=$i29, var2474=$r10, var484=$i8, var2741=$i10, var3554=$i9}
; {com.alibaba.fastjson2.JSONReaderUTF16=var2995, r0=var1867, com.alibaba.fastjson2.JSONReader$Context=var191, r1=var938, r8=var1028, null_type=var562, i7=var2114, i5=var118, com.alibaba.fastjson2.JSONReader=var1194, 0=var49, $i32=var3073, java.lang.Thread=var2450, $r2=var2280, java.lang.System=var153, java.lang.Object=var1868, $i2=var24, com.alibaba.fastjson2.JSONFactory$CacheItem=var3846, com.alibaba.fastjson2.JSONFactory=var2016, $r3=var599, $i0=var1768, $i1=var3230, $i3=var893, $r4=var2441, $i4=var3069, r5=var1535, java.util.concurrent.atomic.AtomicReferenceFieldUpdater=var2398, $r6=var3803, $r7=var3992, r9=var1245, java.lang.Math=var1129, $i6=var2912, $i29=var2555, $r10=var2474, $i8=var484, $i10=var2741, $i9=var3554}
;seq <java.lang.String: void getChars(int,int,char[],int)>
;cnt {"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r1 := @parameter0: com.alibaba.fastjson2.JSONReader$Context;	r8 := @parameter1: java.lang.String;	i7 := @parameter2: int;	i5 := @parameter3: int;	specialinvoke r0.<com.alibaba.fastjson2.JSONReader: void <init>(com.alibaba.fastjson2.JSONReader$Context,boolean,boolean)>(r1, 0, 0);	$i32 = (int) -1;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i32;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$i2 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>($r2);	$r3 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS>;	$i0 = lengthof $r3;	$i1 = $i0 - 1;	$i3 = $i2 & $i1;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i3;	$r4 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS>;	$i4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex>;	r5 = $r4[$i4];	$r6 = <com.alibaba.fastjson2.JSONFactory: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r7 = virtualinvoke $r6.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>(r5, null);	r9 = (char[]) $r7;	if r9 == null goto $i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192);	$i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192);	r9 = newarray (char)[$i6];	$i29 = i7 + i5;	virtualinvoke r8.<java.lang.String: void getChars(int,int,char[],int)>(i7, $i29, r9, 0);	if i7 != 0 goto $r10 = null;	$r10 = null;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> = r9;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> = 0;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> = i5;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> = 0;	$i8 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length>;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> = $i8;	$i10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if $i10 < $i9 goto $i11 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> = 26;	return
;block_num 6