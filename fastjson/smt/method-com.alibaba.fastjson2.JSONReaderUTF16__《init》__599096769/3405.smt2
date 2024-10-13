(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2060 0)
(declare-sort var3750 0)
(declare-sort var246 0)
(declare-sort var1530 0)
(declare-sort var2501 0)
(declare-sort var559 0)
(declare-sort var3398 0)
(declare-sort var2670 0)
(declare-sort var585 0)
(declare-sort var3501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1890819208 (var1530 var3750 Bool Bool) void)
(declare-fun cast-from-var2060-to-var1530 (var2060) var1530)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun cacheIndex/-403530942 (var2060) Int)
(declare-fun var2501_currentThread/-1037784612 () var2501)
(declare-fun var559_identityHashCode/1096208673 (var3398) Int)
(declare-fun cast-from-var2501-to-var3398 (var2501) var3398)
(declare-fun getLength-Arr-var2670-1 ((Array Int var2670)) Int)
(declare-fun getAndSet/-2096274246 (var3501 var3398 var3398) var3398)
(declare-fun cast-from-var2670-to-var3398 (var2670) var3398)
(declare-fun cast-from-var3398-to-__Array__Int__Int__ (var3398) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun str/-403530942 (var2060) String)
(declare-fun chars/-403530942 (var2060) (Array Int Int))
(declare-fun offset/1287024874 (var1530) Int)
(declare-fun length/-403530942 (var2060) Int)
(declare-fun start/-403530942 (var2060) Int)
(declare-fun end/-403530942 (var2060) Int)
(declare-fun ch/1287024874 (var1530) Int)
(declare-const null-var2060 var2060)
(declare-const null-var3750 var3750)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var585-CACHE_ITEMS (Array Int var2670))
(declare-const var585-CHARS_UPDATER var3501)
(declare-const null-NullType var246)
(declare-const null-var3398 var3398)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3794 var2060) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var3794 null-var2060)))
(declare-const var656 var3750) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONReader$Context 
(assert (not (= var656 null-var3750)))
(declare-const var687 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var687 null-String)))
(declare-const var450 Int) ; Statement: i7 := @parameter2: int 
(assert (not (= var450 null-Int)))
(declare-const var1845 Int) ; Statement: i5 := @parameter3: int 
(assert (not (= var1845 null-Int)))
(assert true)
;(assert (<init>/-1890819208 (cast-from-var2060-to-var1530 var3794) var656 (ite (= 1 0) true false) (ite (= 1 0) true false))) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.JSONReader: void <init>(com.alibaba.fastjson2.JSONReader$Context,boolean,boolean)>(r1, 0, 0) 

(declare-const var3794!1 var2060)
(declare-const var656!1 var3750)
(declare-const var1043 Int)
(declare-const var1043!1 Int)
(define-const var1995 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i32 = (int) -1 
(declare-const var3794!2 var2060)
(assert (not (= var3794!2 null-var2060)))
(assert (= (cacheIndex/-403530942 var3794!2) var1995)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i32 
(define-const var384 var2501 var2501_currentThread/-1037784612) ; Statement: $r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(define-const var3202 Int (var559_identityHashCode/1096208673 (cast-from-var2501-to-var3398 var384))) ; Statement: $i2 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>($r2) 
(define-const var1275 (Array Int var2670) var585-CACHE_ITEMS) ; Statement: $r3 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS> 
(define-const var35 Int (getLength-Arr-var2670-1 var1275)) ; Statement: $i0 = lengthof $r3 
(define-const var23 Int (- var35 1)) ; Statement: $i1 = $i0 - 1 
(define-const var2393 Int (bv2nat (bvand ((_ int2bv 64) var3202) ((_ int2bv 64) var23)))) ; Statement: $i3 = $i2 & $i1 
(declare-const var3794!3 var2060)
(assert (not (= var3794!3 null-var2060)))
(assert (= (cacheIndex/-403530942 var3794!3) var2393)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i3 
(define-const var3978 (Array Int var2670) var585-CACHE_ITEMS) ; Statement: $r4 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS> 
(define-const var652 Int (cacheIndex/-403530942 var3794!3)) ; Statement: $i4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> 
(define-const var1595 var2670 (select var3978 var652)) ; Statement: r5 = $r4[$i4] 
(define-const var2435 var3501 var585-CHARS_UPDATER) ; Statement: $r6 = <com.alibaba.fastjson2.JSONFactory: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(assert true)
(define-const var3688 var3398 (getAndSet/-2096274246 var2435 (cast-from-var2670-to-var3398 var1595) null-var3398)) ; Statement: $r7 = virtualinvoke $r6.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>(r5, null) 
(define-const var3300 (Array Int Int) (cast-from-var3398-to-__Array__Int__Int__ var3688)) ; Statement: r9 = (char[]) $r7 
 ; Statement: if r9 == null goto $i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192) 
(assert (not (= var3300 null-__Array__Int__Int__))) ; Negate: Cond: r9 == null  
(define-const var3471 Int (getLength-Arr-Int-1 var3300)) ; Statement: $i28 = lengthof r9 
 ; Statement: if $i28 >= i5 goto $i29 = i7 + i5 
(assert (>= var3471 var1845)) ; Cond: $i28 >= i5 
(define-const var1047 Int (+ var450 var1845)) ; Statement: $i29 = i7 + i5 
(assert true)
;(assert (getChars/1306883398 var687 var450 var1047 var3300 0)) ; Statement: virtualinvoke r8.<java.lang.String: void getChars(int,int,char[],int)>(i7, $i29, r9, 0) 

(declare-const var687!1 String)
(declare-const var450!1 Int)
(declare-const var1047!1 Int)
(declare-const var3300!1 (Array Int Int))
(declare-const var1043!2 Int)
 ; Statement: if i7 != 0 goto $r10 = null 
(assert (not (= var450!1 0))) ; Cond: i7 != 0 
(define-const var177 String null-String) ; Statement: $r10 = null 
(assert true) ; Non Conditional
(declare-const var3794!4 var2060)
(assert (not (= var3794!4 null-var2060)))
(assert (= (str/-403530942 var3794!4) var177)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10 
(declare-const var3794!5 var2060)
(assert (not (= var3794!5 null-var2060)))
(assert (= (chars/-403530942 var3794!5) var3300!1)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> = r9 
(declare-const var3794!6 var2060)
(assert (not (= var3794!6 null-var2060)))
(assert (= (offset/1287024874 (cast-from-var2060-to-var1530 var3794!6)) 0)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> = 0 
(declare-const var3794!7 var2060)
(assert (not (= var3794!7 null-var2060)))
(assert (= (length/-403530942 var3794!7) var1845)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> = i5 
(declare-const var3794!8 var2060)
(assert (not (= var3794!8 null-var2060)))
(assert (= (start/-403530942 var3794!8) 0)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> = 0 
(define-const var11 Int (length/-403530942 var3794!8)) ; Statement: $i8 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> 
(declare-const var3794!9 var2060)
(assert (not (= var3794!9 null-var2060)))
(assert (= (end/-403530942 var3794!9) var11)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> = $i8 
(define-const var500 Int (offset/1287024874 (cast-from-var2060-to-var1530 var3794!9))) ; Statement: $i10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(define-const var1364 Int (end/-403530942 var3794!9)) ; Statement: $i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if $i10 < $i9 goto $i11 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(assert (not (< var500 var1364))) ; Negate: Cond: $i10 < $i9  
(declare-const var3794!10 var2060)
(assert (not (= var3794!10 null-var2060)))
(assert (= (ch/1287024874 (cast-from-var2060-to-var1530 var3794!10)) 26)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> = 26 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1890819208=([com.alibaba.fastjson2.JSONReader, com.alibaba.fastjson2.JSONReader$Context, boolean, boolean], void), cast-from-var2060-to-var1530=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), cast-from-Int-to-Int=([int], int), cacheIndex/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), var2501_currentThread/-1037784612=([], java.lang.Thread), var559_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var2501-to-var3398=([java.lang.Thread], java.lang.Object), getLength-Arr-var2670-1=([com.alibaba.fastjson2.JSONFactory$CacheItem[]], int), getAndSet/-2096274246=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var2670-to-var3398=([com.alibaba.fastjson2.JSONFactory$CacheItem], java.lang.Object), cast-from-var3398-to-__Array__Int__Int__=([java.lang.Object], char[]), getLength-Arr-Int-1=([char[]], int), getChars/1306883398=([java.lang.String, int, int, char[], int], void), str/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], java.lang.String), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), length/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), start/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char)}
; {var2060=com.alibaba.fastjson2.JSONReaderUTF16, var3794=r0, var3750=com.alibaba.fastjson2.JSONReader$Context, var656=r1, var687=r8, var246=null_type, var450=i7, var1845=i5, var1530=com.alibaba.fastjson2.JSONReader, var1043=0, var1995=$i32, var2501=java.lang.Thread, var384=$r2, var559=java.lang.System, var3398=java.lang.Object, var3202=$i2, var2670=com.alibaba.fastjson2.JSONFactory$CacheItem, var585=com.alibaba.fastjson2.JSONFactory, var1275=$r3, var35=$i0, var23=$i1, var2393=$i3, var3978=$r4, var652=$i4, var1595=r5, var3501=java.util.concurrent.atomic.AtomicReferenceFieldUpdater, var2435=$r6, var3688=$r7, var3300=r9, var3471=$i28, var1047=$i29, var177=$r10, var11=$i8, var500=$i10, var1364=$i9}
; {com.alibaba.fastjson2.JSONReaderUTF16=var2060, r0=var3794, com.alibaba.fastjson2.JSONReader$Context=var3750, r1=var656, r8=var687, null_type=var246, i7=var450, i5=var1845, com.alibaba.fastjson2.JSONReader=var1530, 0=var1043, $i32=var1995, java.lang.Thread=var2501, $r2=var384, java.lang.System=var559, java.lang.Object=var3398, $i2=var3202, com.alibaba.fastjson2.JSONFactory$CacheItem=var2670, com.alibaba.fastjson2.JSONFactory=var585, $r3=var1275, $i0=var35, $i1=var23, $i3=var2393, $r4=var3978, $i4=var652, r5=var1595, java.util.concurrent.atomic.AtomicReferenceFieldUpdater=var3501, $r6=var2435, $r7=var3688, r9=var3300, $i28=var3471, $i29=var1047, $r10=var177, $i8=var11, $i10=var500, $i9=var1364}
;seq <java.lang.String: void getChars(int,int,char[],int)>
;cnt {"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r1 := @parameter0: com.alibaba.fastjson2.JSONReader$Context;	r8 := @parameter1: java.lang.String;	i7 := @parameter2: int;	i5 := @parameter3: int;	specialinvoke r0.<com.alibaba.fastjson2.JSONReader: void <init>(com.alibaba.fastjson2.JSONReader$Context,boolean,boolean)>(r1, 0, 0);	$i32 = (int) -1;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i32;	$r2 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$i2 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>($r2);	$r3 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS>;	$i0 = lengthof $r3;	$i1 = $i0 - 1;	$i3 = $i2 & $i1;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex> = $i3;	$r4 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONFactory$CacheItem[] CACHE_ITEMS>;	$i4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int cacheIndex>;	r5 = $r4[$i4];	$r6 = <com.alibaba.fastjson2.JSONFactory: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r7 = virtualinvoke $r6.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>(r5, null);	r9 = (char[]) $r7;	if r9 == null goto $i6 = staticinvoke <java.lang.Math: int max(int,int)>(i5, 8192);	$i28 = lengthof r9;	if $i28 >= i5 goto $i29 = i7 + i5;	$i29 = i7 + i5;	virtualinvoke r8.<java.lang.String: void getChars(int,int,char[],int)>(i7, $i29, r9, 0);	if i7 != 0 goto $r10 = null;	$r10 = null;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> = $r10;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> = r9;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> = 0;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length> = i5;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int start> = 0;	$i8 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int length>;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> = $i8;	$i10 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$i9 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if $i10 < $i9 goto $i11 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	r0.<com.alibaba.fastjson2.JSONReaderUTF16: char ch> = 26;	return
;block_num 6