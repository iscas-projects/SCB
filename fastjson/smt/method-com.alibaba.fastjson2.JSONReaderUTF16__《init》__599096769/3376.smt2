(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3391 0)
(declare-sort var1503 0)
(declare-sort var800 0)
(declare-sort var3825 0)
(declare-sort var3521 0)
(declare-sort var2705 0)
(declare-sort var2566 0)
(declare-sort var3449 0)
(declare-sort var3125 0)
(declare-sort var2323 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1890819208 (var3825 var1503 Bool Bool) void)
(declare-fun cast-from-var3391-to-var3825 (var3391) var3825)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun cacheIndex/-403530942 (var3391) Int)
(declare-fun var3521_currentThread/-1037784612 () var3521)
(declare-fun var2705_identityHashCode/1096208673 (var2566) Int)
(declare-fun cast-from-var3521-to-var2566 (var3521) var2566)
(declare-fun getLength-Arr-var3449-1 ((Array Int var3449)) Int)
(declare-fun getAndSet/-2096274246 (var2323 var2566 var2566) var2566)
(declare-fun cast-from-var3449-to-var2566 (var3449) var2566)
(declare-fun cast-from-var2566-to-__Array__Int__Int__ (var2566) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun str/-403530942 (var3391) String)
(declare-fun chars/-403530942 (var3391) (Array Int Int))
(declare-fun offset/1287024874 (var3825) Int)
(declare-fun length/-403530942 (var3391) Int)
(declare-fun start/-403530942 (var3391) Int)
(declare-fun end/-403530942 (var3391) Int)
(declare-fun ch/1287024874 (var3825) Int)
(declare-const null-var3391 var3391)
(declare-const null-var1503 var1503)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3125-CACHE_ITEMS (Array Int var3449))
(declare-const var3125-CHARS_UPDATER var2323)
(declare-const null-NullType var800)
(declare-const null-var2566 var2566)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var502 var3391) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var502 null-var3391)))
(declare-const var3357 var1503) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONReader$Context 
(assert (not (= var3357 null-var1503)))
(declare-const var476 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var476 null-String)))
(declare-const var3549 Int) ; Statement: i7 := @parameter2: int 
(assert (not (= var3549 null-Int)))
(declare-const var3290 Int) ; Statement: i5 := @parameter3: int 
(assert (not (= var3290 null-Int)))
(assert true)
;(assert (<init>/-1890819208 (cast-from-var3391-to-var3825 var502) var3357 (ite (= 1 0) true false) (ite (= 1 0) true false))) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.JSONReader: void <init>(com.alibaba.fastjson2.JSONReader$Context,boolean,boolean)>(r1, 0, 0) 

(declare-const var502!1 var3391)
(declare-const var3357!1 var1503)
(declare-const var890 Int)
(declare-const var890!1 Int)
(define-const var2577 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i32 = (int) -1 
(declare-const var502!2 var3391)
(assert (not (= var502!2 null-var3391)))
(assert (= (cacheIndex/-403530942 var502!2) var2577)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i32 
(define-const var3150 var3521 var3521_currentThread/-1037784612) ; Statement: $r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(define-const var3367 Int (var2705_identityHashCode/1096208673 (cast-from-var3521-to-var2566 var3150))) ; Statement: $i2 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>($r2) 
(define-const var3277 (Array Int var3449) var3125-CACHE_ITEMS) ; Statement: $r3 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS> 
(define-const var2228 Int (getLength-Arr-var3449-1 var3277)) ; Statement: $i0 = lengthof $r3 
(define-const var1463 Int (- var2228 1)) ; Statement: $i1 = $i0 - 1 
(define-const var1976 Int (bv2nat (bvand ((_ int2bv 64) var3367) ((_ int2bv 64) var1463)))) ; Statement: $i3 = $i2 & $i1 
(declare-const var502!3 var3391)
(assert (not (= var502!3 null-var3391)))
(assert (= (cacheIndex/-403530942 var502!3) var1976)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i3 
(define-const var301 (Array Int var3449) var3125-CACHE_ITEMS) ; Statement: $r4 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS> 
(define-const var3496 Int (cacheIndex/-403530942 var502!3)) ; Statement: $i4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> 
(define-const var3760 var3449 (select var301 var3496)) ; Statement: r5 = $r4[$i4] 
(define-const var602 var2323 var3125-CHARS_UPDATER) ; Statement: $r6 = <com.alibaba.fastjson2.JSONFactory: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(assert true)
(define-const var1972 var2566 (getAndSet/-2096274246 var602 (cast-from-var3449-to-var2566 var3760) null-var2566)) ; Statement: $r7 = virtualinvoke $r6.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>(r5, null) 
(define-const var703 (Array Int Int) (cast-from-var2566-to-__Array__Int__Int__ var1972)) ; Statement: r9 = (char[]) $r7 
 ; Statement: if r9 == null goto $i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192) 
(assert (not (= var703 null-__Array__Int__Int__))) ; Negate: Cond: r9 == null  
(define-const var1863 Int (getLength-Arr-Int-1 var703)) ; Statement: $i28 = lengthof r9 
 ; Statement: if $i28 >= i5 goto $i29 = i7 + i5 
(assert (>= var1863 var3290)) ; Cond: $i28 >= i5 
(define-const var1137 Int (+ var3549 var3290)) ; Statement: $i29 = i7 + i5 
(assert true)
;(assert (getChars/1306883398 var476 var3549 var1137 var703 0)) ; Statement: virtualinvoke r8.<java.lang.String: void getChars(int,int,char[],int)>(i7, $i29, r9, 0) 

(declare-const var476!1 String)
(declare-const var3549!1 Int)
(declare-const var1137!1 Int)
(declare-const var703!1 (Array Int Int))
(declare-const var890!2 Int)
 ; Statement: if i7 != 0 goto $r10 = null 
(assert (not (not (= var3549!1 0)))) ; Negate: Cond: i7 != 0  
(define-const var2227 String var476!1) ; Statement: $r10 = r8 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10] 
(assert true) ; Non Conditional
(declare-const var502!4 var3391)
(assert (not (= var502!4 null-var3391)))
(assert (= (str/-403530942 var502!4) var2227)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10 
(declare-const var502!5 var3391)
(assert (not (= var502!5 null-var3391)))
(assert (= (chars/-403530942 var502!5) var703!1)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> = r9 
(declare-const var502!6 var3391)
(assert (not (= var502!6 null-var3391)))
(assert (= (offset/1287024874 (cast-from-var3391-to-var3825 var502!6)) 0)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> = 0 
(declare-const var502!7 var3391)
(assert (not (= var502!7 null-var3391)))
(assert (= (length/-403530942 var502!7) var3290)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> = i5 
(declare-const var502!8 var3391)
(assert (not (= var502!8 null-var3391)))
(assert (= (start/-403530942 var502!8) 0)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> = 0 
(define-const var2010 Int (length/-403530942 var502!8)) ; Statement: $i8 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> 
(declare-const var502!9 var3391)
(assert (not (= var502!9 null-var3391)))
(assert (= (end/-403530942 var502!9) var2010)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> = $i8 
(define-const var1542 Int (offset/1287024874 (cast-from-var3391-to-var3825 var502!9))) ; Statement: $i10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(define-const var3645 Int (end/-403530942 var502!9)) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if $i10 < $i9 goto $i11 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(assert (not (< var1542 var3645))) ; Negate: Cond: $i10 < $i9  
(declare-const var502!10 var3391)
(assert (not (= var502!10 null-var3391)))
(assert (= (ch/1287024874 (cast-from-var3391-to-var3825 var502!10)) 26)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> = 26 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1890819208=([com.alibaba.fastjson2.JSONReader, com.alibaba.fastjson2.JSONReader$Context, boolean, boolean], void), cast-from-var3391-to-var3825=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), cast-from-Int-to-Int=([int], int), cacheIndex/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), var3521_currentThread/-1037784612=([], java.lang.Thread), var2705_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var3521-to-var2566=([java.lang.Thread], java.lang.Object), getLength-Arr-var3449-1=([com.alibaba.fastjson2.JSONFactory$CacheItem[]], int), getAndSet/-2096274246=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3449-to-var2566=([com.alibaba.fastjson2.JSONFactory$CacheItem], java.lang.Object), cast-from-var2566-to-__Array__Int__Int__=([java.lang.Object], char[]), getLength-Arr-Int-1=([char[]], int), getChars/1306883398=([java.lang.String, int, int, char[], int], void), str/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], java.lang.String), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), length/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), start/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char)}
; {var3391=com.alibaba.fastjson2.JSONReaderUTF16, var502=r0, var1503=com.alibaba.fastjson2.JSONReader$Context, var3357=r1, var476=r8, var800=null_type, var3549=i7, var3290=i5, var3825=com.alibaba.fastjson2.JSONReader, var890=0, var2577=$i32, var3521=java.lang.Thread, var3150=$r2, var2705=java.lang.System, var2566=java.lang.Object, var3367=$i2, var3449=com.alibaba.fastjson2.JSONFactory$CacheItem, var3125=com.alibaba.fastjson2.JSONFactory, var3277=$r3, var2228=$i0, var1463=$i1, var1976=$i3, var301=$r4, var3496=$i4, var3760=r5, var2323=java.util.concurrent.atomic.AtomicReferenceFieldUpdater, var602=$r6, var1972=$r7, var703=r9, var1863=$i28, var1137=$i29, var2227=$r10, var2010=$i8, var1542=$i10, var3645=$i9}
; {com.alibaba.fastjson2.JSONReaderUTF16=var3391, r0=var502, com.alibaba.fastjson2.JSONReader$Context=var1503, r1=var3357, r8=var476, null_type=var800, i7=var3549, i5=var3290, com.alibaba.fastjson2.JSONReader=var3825, 0=var890, $i32=var2577, java.lang.Thread=var3521, $r2=var3150, java.lang.System=var2705, java.lang.Object=var2566, $i2=var3367, com.alibaba.fastjson2.JSONFactory$CacheItem=var3449, com.alibaba.fastjson2.JSONFactory=var3125, $r3=var3277, $i0=var2228, $i1=var1463, $i3=var1976, $r4=var301, $i4=var3496, r5=var3760, java.util.concurrent.atomic.AtomicReferenceFieldUpdater=var2323, $r6=var602, $r7=var1972, r9=var703, $i28=var1863, $i29=var1137, $r10=var2227, $i8=var2010, $i10=var1542, $i9=var3645}
;seq <java.lang.String: void getChars(int,int,char[],int)>
;cnt {"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r1 := @parameter0: com.alibaba.fastjson2.JSONReader$Context;	r8 := @parameter1: java.lang.String;	i7 := @parameter2: int;	i5 := @parameter3: int;	specialinvoke r0.<com.alibaba.fastjson2.JSONReader: void <init>(com.alibaba.fastjson2.JSONReader$Context,boolean,boolean)>(r1, 0, 0);	$i32 = (int) -1;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i32;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$i2 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>($r2);	$r3 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS>;	$i0 = lengthof $r3;	$i1 = $i0 - 1;	$i3 = $i2 & $i1;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i3;	$r4 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS>;	$i4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex>;	r5 = $r4[$i4];	$r6 = <com.alibaba.fastjson2.JSONFactory: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r7 = virtualinvoke $r6.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>(r5, null);	r9 = (char[]) $r7;	if r9 == null goto $i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192);	$i28 = lengthof r9;	if $i28 >= i5 goto $i29 = i7 + i5;	$i29 = i7 + i5;	virtualinvoke r8.<java.lang.String: void getChars(int,int,char[],int)>(i7, $i29, r9, 0);	if i7 != 0 goto $r10 = null;	$r10 = r8;	goto [?= r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10];	r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> = r9;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> = 0;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> = i5;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> = 0;	$i8 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length>;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> = $i8;	$i10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if $i10 < $i9 goto $i11 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> = 26;	return
;block_num 6