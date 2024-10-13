(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var841 0)
(declare-sort var29 0)
(declare-sort var1397 0)
(declare-sort var2068 0)
(declare-sort var62 0)
(declare-sort var829 0)
(declare-sort var3242 0)
(declare-sort var1845 0)
(declare-sort var3424 0)
(declare-sort var593 0)
(declare-sort var2583 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1890819208 (var2068 var29 Bool Bool) void)
(declare-fun cast-from-var841-to-var2068 (var841) var2068)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun cacheIndex/-403530942 (var841) Int)
(declare-fun var62_currentThread/-1037784612 () var62)
(declare-fun var829_identityHashCode/1096208673 (var3242) Int)
(declare-fun cast-from-var62-to-var3242 (var62) var3242)
(declare-fun getLength-Arr-var1845-1 ((Array Int var1845)) Int)
(declare-fun getAndSet/-2096274246 (var593 var3242 var3242) var3242)
(declare-fun cast-from-var1845-to-var3242 (var1845) var3242)
(declare-fun cast-from-var3242-to-__Array__Int__Int__ (var3242) (Array Int Int))
(declare-fun var2583_max/1360571700 (Int Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun str/-403530942 (var841) String)
(declare-fun chars/-403530942 (var841) (Array Int Int))
(declare-fun offset/1287024874 (var2068) Int)
(declare-fun length/-403530942 (var841) Int)
(declare-fun start/-403530942 (var841) Int)
(declare-fun end/-403530942 (var841) Int)
(declare-fun ch/1287024874 (var2068) Int)
(declare-const null-var841 var841)
(declare-const null-var29 var29)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3424-CACHE_ITEMS (Array Int var1845))
(declare-const var3424-CHARS_UPDATER var593)
(declare-const null-NullType var1397)
(declare-const null-var3242 var3242)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var71 var841) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var71 null-var841)))
(declare-const var2442 var29) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONReader$Context 
(assert (not (= var2442 null-var29)))
(declare-const var2900 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2900 null-String)))
(declare-const var3306 Int) ; Statement: i7 := @parameter2: int 
(assert (not (= var3306 null-Int)))
(declare-const var2553 Int) ; Statement: i5 := @parameter3: int 
(assert (not (= var2553 null-Int)))
(assert true)
;(assert (<init>/-1890819208 (cast-from-var841-to-var2068 var71) var2442 (ite (= 1 0) true false) (ite (= 1 0) true false))) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.JSONReader: void <init>(com.alibaba.fastjson2.JSONReader$Context,boolean,boolean)>(r1, 0, 0) 

(declare-const var71!1 var841)
(declare-const var2442!1 var29)
(declare-const var2392 Int)
(declare-const var2392!1 Int)
(define-const var1883 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i32 = (int) -1 
(declare-const var71!2 var841)
(assert (not (= var71!2 null-var841)))
(assert (= (cacheIndex/-403530942 var71!2) var1883)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i32 
(define-const var2798 var62 var62_currentThread/-1037784612) ; Statement: $r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(define-const var1225 Int (var829_identityHashCode/1096208673 (cast-from-var62-to-var3242 var2798))) ; Statement: $i2 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>($r2) 
(define-const var2115 (Array Int var1845) var3424-CACHE_ITEMS) ; Statement: $r3 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS> 
(define-const var378 Int (getLength-Arr-var1845-1 var2115)) ; Statement: $i0 = lengthof $r3 
(define-const var1802 Int (- var378 1)) ; Statement: $i1 = $i0 - 1 
(define-const var1650 Int (bv2nat (bvand ((_ int2bv 64) var1225) ((_ int2bv 64) var1802)))) ; Statement: $i3 = $i2 & $i1 
(declare-const var71!3 var841)
(assert (not (= var71!3 null-var841)))
(assert (= (cacheIndex/-403530942 var71!3) var1650)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i3 
(define-const var3003 (Array Int var1845) var3424-CACHE_ITEMS) ; Statement: $r4 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS> 
(define-const var2013 Int (cacheIndex/-403530942 var71!3)) ; Statement: $i4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> 
(define-const var3178 var1845 (select var3003 var2013)) ; Statement: r5 = $r4[$i4] 
(define-const var3827 var593 var3424-CHARS_UPDATER) ; Statement: $r6 = <com.alibaba.fastjson2.JSONFactory: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(assert true)
(define-const var1219 var3242 (getAndSet/-2096274246 var3827 (cast-from-var1845-to-var3242 var3178) null-var3242)) ; Statement: $r7 = virtualinvoke $r6.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>(r5, null) 
(define-const var1306 (Array Int Int) (cast-from-var3242-to-__Array__Int__Int__ var1219)) ; Statement: r9 = (char[]) $r7 
 ; Statement: if r9 == null goto $i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192) 
(assert (= var1306 null-__Array__Int__Int__)) ; Cond: r9 == null 
(define-const var2753 Int (var2583_max/1360571700 var2553 8192)) ; Statement: $i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192) 
(define-const var1306!1 (Array Int Int) arr-Int-init) ; Statement: r9 = newarray (char)[$i6] 
(assert true) ; Non Conditional
(define-const var1544 Int (+ var3306 var2553)) ; Statement: $i29 = i7 + i5 
(assert true)
;(assert (getChars/1306883398 var2900 var3306 var1544 var1306!1 0)) ; Statement: virtualinvoke r8.<java.lang.String: void getChars(int,int,char[],int)>(i7, $i29, r9, 0) 

(declare-const var2900!1 String)
(declare-const var3306!1 Int)
(declare-const var1544!1 Int)
(declare-const var1306!2 (Array Int Int))
(declare-const var2392!2 Int)
 ; Statement: if i7 != 0 goto $r10 = null 
(assert (not (not (= var3306!1 0)))) ; Negate: Cond: i7 != 0  
(define-const var1159 String var2900!1) ; Statement: $r10 = r8 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10] 
(assert true) ; Non Conditional
(declare-const var71!4 var841)
(assert (not (= var71!4 null-var841)))
(assert (= (str/-403530942 var71!4) var1159)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10 
(declare-const var71!5 var841)
(assert (not (= var71!5 null-var841)))
(assert (= (chars/-403530942 var71!5) var1306!2)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> = r9 
(declare-const var71!6 var841)
(assert (not (= var71!6 null-var841)))
(assert (= (offset/1287024874 (cast-from-var841-to-var2068 var71!6)) 0)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> = 0 
(declare-const var71!7 var841)
(assert (not (= var71!7 null-var841)))
(assert (= (length/-403530942 var71!7) var2553)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> = i5 
(declare-const var71!8 var841)
(assert (not (= var71!8 null-var841)))
(assert (= (start/-403530942 var71!8) 0)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> = 0 
(define-const var2510 Int (length/-403530942 var71!8)) ; Statement: $i8 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> 
(declare-const var71!9 var841)
(assert (not (= var71!9 null-var841)))
(assert (= (end/-403530942 var71!9) var2510)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> = $i8 
(define-const var2050 Int (offset/1287024874 (cast-from-var841-to-var2068 var71!9))) ; Statement: $i10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(define-const var1016 Int (end/-403530942 var71!9)) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if $i10 < $i9 goto $i11 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(assert (not (< var2050 var1016))) ; Negate: Cond: $i10 < $i9  
(declare-const var71!10 var841)
(assert (not (= var71!10 null-var841)))
(assert (= (ch/1287024874 (cast-from-var841-to-var2068 var71!10)) 26)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> = 26 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1890819208=([com.alibaba.fastjson2.JSONReader, com.alibaba.fastjson2.JSONReader$Context, boolean, boolean], void), cast-from-var841-to-var2068=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), cast-from-Int-to-Int=([int], int), cacheIndex/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), var62_currentThread/-1037784612=([], java.lang.Thread), var829_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var62-to-var3242=([java.lang.Thread], java.lang.Object), getLength-Arr-var1845-1=([com.alibaba.fastjson2.JSONFactory$CacheItem[]], int), getAndSet/-2096274246=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1845-to-var3242=([com.alibaba.fastjson2.JSONFactory$CacheItem], java.lang.Object), cast-from-var3242-to-__Array__Int__Int__=([java.lang.Object], char[]), var2583_max/1360571700=([int, int], int), arr-Int-init=([], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void), str/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], java.lang.String), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), length/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), start/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char)}
; {var841=com.alibaba.fastjson2.JSONReaderUTF16, var71=r0, var29=com.alibaba.fastjson2.JSONReader$Context, var2442=r1, var2900=r8, var1397=null_type, var3306=i7, var2553=i5, var2068=com.alibaba.fastjson2.JSONReader, var2392=0, var1883=$i32, var62=java.lang.Thread, var2798=$r2, var829=java.lang.System, var3242=java.lang.Object, var1225=$i2, var1845=com.alibaba.fastjson2.JSONFactory$CacheItem, var3424=com.alibaba.fastjson2.JSONFactory, var2115=$r3, var378=$i0, var1802=$i1, var1650=$i3, var3003=$r4, var2013=$i4, var3178=r5, var593=java.util.concurrent.atomic.AtomicReferenceFieldUpdater, var3827=$r6, var1219=$r7, var1306=r9, var2583=java.lang.Math, var2753=$i6, var1544=$i29, var1159=$r10, var2510=$i8, var2050=$i10, var1016=$i9}
; {com.alibaba.fastjson2.JSONReaderUTF16=var841, r0=var71, com.alibaba.fastjson2.JSONReader$Context=var29, r1=var2442, r8=var2900, null_type=var1397, i7=var3306, i5=var2553, com.alibaba.fastjson2.JSONReader=var2068, 0=var2392, $i32=var1883, java.lang.Thread=var62, $r2=var2798, java.lang.System=var829, java.lang.Object=var3242, $i2=var1225, com.alibaba.fastjson2.JSONFactory$CacheItem=var1845, com.alibaba.fastjson2.JSONFactory=var3424, $r3=var2115, $i0=var378, $i1=var1802, $i3=var1650, $r4=var3003, $i4=var2013, r5=var3178, java.util.concurrent.atomic.AtomicReferenceFieldUpdater=var593, $r6=var3827, $r7=var1219, r9=var1306, java.lang.Math=var2583, $i6=var2753, $i29=var1544, $r10=var1159, $i8=var2510, $i10=var2050, $i9=var1016}
;seq <java.lang.String: void getChars(int,int,char[],int)>
;cnt {"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r1 := @parameter0: com.alibaba.fastjson2.JSONReader$Context;	r8 := @parameter1: java.lang.String;	i7 := @parameter2: int;	i5 := @parameter3: int;	specialinvoke r0.<com.alibaba.fastjson2.JSONReader: void <init>(com.alibaba.fastjson2.JSONReader$Context,boolean,boolean)>(r1, 0, 0);	$i32 = (int) -1;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i32;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$i2 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>($r2);	$r3 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS>;	$i0 = lengthof $r3;	$i1 = $i0 - 1;	$i3 = $i2 & $i1;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i3;	$r4 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS>;	$i4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex>;	r5 = $r4[$i4];	$r6 = <com.alibaba.fastjson2.JSONFactory: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r7 = virtualinvoke $r6.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>(r5, null);	r9 = (char[]) $r7;	if r9 == null goto $i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192);	$i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192);	r9 = newarray (char)[$i6];	$i29 = i7 + i5;	virtualinvoke r8.<java.lang.String: void getChars(int,int,char[],int)>(i7, $i29, r9, 0);	if i7 != 0 goto $r10 = null;	$r10 = r8;	goto [?= r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10];	r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> = r9;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> = 0;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> = i5;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> = 0;	$i8 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length>;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> = $i8;	$i10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if $i10 < $i9 goto $i11 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> = 26;	return
;block_num 6