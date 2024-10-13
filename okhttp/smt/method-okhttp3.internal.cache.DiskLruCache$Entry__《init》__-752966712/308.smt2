(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var161 0)
(declare-sort var1020 0)
(declare-sort var3300 0)
(declare-sort var3594 0)
(declare-sort var2632 0)
(declare-sort var2727 0)
(declare-sort var442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3594_checkNotNullParameter/-2060636419 (var2632 String) void)
(declare-fun cast-from-String-to-var2632 (String) var2632)
(declare-fun this$0/-1756266820 (var161) var1020)
(declare-fun <init>/-279557996 (var2632) void)
(declare-fun cast-from-var161-to-var2632 (var161) var2632)
(declare-fun key/-1756266820 (var161) String)
(declare-fun getValueCount$okhttp/-1962838464 (var1020) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun lengths/-1756266820 (var161) (Array Int Int))
(declare-fun var2727-init () var2727)
(declare-fun <init>/-325640736 (var2727) void)
(declare-fun cast-from-var2727-to-var442 (var2727) var442)
(declare-fun cleanFiles/-1756266820 (var161) var442)
(declare-fun dirtyFiles/-1756266820 (var161) var442)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun length/-171891354 (String) Int)
(declare-const null-var161 var161)
(declare-const null-var1020 var1020)
(declare-const null-String String)
(declare-const var787 var161) ; Statement: r1 := @this: okhttp3.internal.cache.DiskLruCache$Entry 
(assert (not (= var787 null-var161)))
(declare-const var1701 var1020) ; Statement: r2 := @parameter0: okhttp3.internal.cache.DiskLruCache 
(assert (not (= var1701 null-var1020)))
(declare-const var3522 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3522 null-String)))
;(assert (var3594_checkNotNullParameter/-2060636419 (cast-from-String-to-var2632 var3522) "key")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "key") 

(declare-const var3522!1 String)
(declare-const var2750 String)
(declare-const var787!1 var161)
(assert (not (= var787!1 null-var161)))
(assert (= (this$0/-1756266820 var787!1) var1701)) ; Statement: r1.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0> = r2 
(assert true)
;(assert (<init>/-279557996 (cast-from-var161-to-var2632 var787!1))) ; Statement: specialinvoke r1.<java.lang.Object: void <init>()>() 

(declare-const var787!2 var161)
(declare-const var787!3 var161)
(assert (not (= var787!3 null-var161)))
(assert (= (key/-1756266820 var787!3) var3522!1)) ; Statement: r1.<okhttp3.internal.cache.DiskLruCache$Entry: java.lang.String key> = r0 
(define-const var2881 var1020 (this$0/-1756266820 var787!3)) ; Statement: $r3 = r1.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0> 
(assert true)
(define-const var105 Int (getValueCount$okhttp/-1962838464 var2881)) ; Statement: $i0 = virtualinvoke $r3.<okhttp3.internal.cache.DiskLruCache: int getValueCount$okhttp()>() 
(define-const var3997 (Array Int Int) arr-Int-init) ; Statement: $r4 = newarray (long)[$i0] 
(declare-const var787!4 var161)
(assert (not (= var787!4 null-var161)))
(assert (= (lengths/-1756266820 var787!4) var3997)) ; Statement: r1.<okhttp3.internal.cache.DiskLruCache$Entry: long[] lengths> = $r4 
(define-const var2476 var2727 var2727-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2476)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var2476!1 var2727)
(define-const var1964 var442 (cast-from-var2727-to-var442 var2476!1)) ; Statement: $r6 = (java.util.List) $r5 
(declare-const var787!5 var161)
(assert (not (= var787!5 null-var161)))
(assert (= (cleanFiles/-1756266820 var787!5) var1964)) ; Statement: r1.<okhttp3.internal.cache.DiskLruCache$Entry: java.util.List cleanFiles> = $r6 
(define-const var1862 var2727 var2727-init) ; Statement: $r7 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1862)) ; Statement: specialinvoke $r7.<java.util.ArrayList: void <init>()>() 

(declare-const var1862!1 var2727)
(define-const var520 var442 (cast-from-var2727-to-var442 var1862!1)) ; Statement: $r8 = (java.util.List) $r7 
(declare-const var787!6 var161)
(assert (not (= var787!6 null-var161)))
(assert (= (dirtyFiles/-1756266820 var787!6) var520)) ; Statement: r1.<okhttp3.internal.cache.DiskLruCache$Entry: java.util.List dirtyFiles> = $r8 
(define-const var541 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(define-const var2319 String (key/-1756266820 var787!6)) ; Statement: $r10 = r1.<okhttp3.internal.cache.DiskLruCache$Entry: java.lang.String key> 
(assert true)
;(assert (<init>/-1061048412 var541 var2319)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>(java.lang.String)>($r10) 
(declare-const var541!1 String)
(assert (= var541!1 var2319))
(assert true)
(define-const var1700 String (append/-1166366385 var541!1 46)) ; Statement: r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var541!2 String)
(assert (str.prefixof var541!1 var541!2))
(assert true)
(define-const var3426 Int (length/-171891354 var1700)) ; Statement: i1 = virtualinvoke r11.<java.lang.StringBuilder: int length()>() 
(define-const var3287 Int 0) ; Statement: i3 = 0 
(define-const var3901 var1020 (this$0/-1756266820 var787!6)) ; Statement: $r12 = r1.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0> 
(assert true)
(define-const var209 Int (getValueCount$okhttp/-1962838464 var3901)) ; Statement: i2 = virtualinvoke $r12.<okhttp3.internal.cache.DiskLruCache: int getValueCount$okhttp()>() 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i2 goto return 
(assert (>= var3287 var209)) ; Cond: i3 >= i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3594_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2632=([java.lang.String], java.lang.Object), this$0/-1756266820=([okhttp3.internal.cache.DiskLruCache$Entry], okhttp3.internal.cache.DiskLruCache), <init>/-279557996=([java.lang.Object], void), cast-from-var161-to-var2632=([okhttp3.internal.cache.DiskLruCache$Entry], java.lang.Object), key/-1756266820=([okhttp3.internal.cache.DiskLruCache$Entry], java.lang.String), getValueCount$okhttp/-1962838464=([okhttp3.internal.cache.DiskLruCache], int), arr-Int-init=([], long[]), lengths/-1756266820=([okhttp3.internal.cache.DiskLruCache$Entry], long[]), var2727-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var2727-to-var442=([java.util.ArrayList], java.util.List), cleanFiles/-1756266820=([okhttp3.internal.cache.DiskLruCache$Entry], java.util.List), dirtyFiles/-1756266820=([okhttp3.internal.cache.DiskLruCache$Entry], java.util.List), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var161=okhttp3.internal.cache.DiskLruCache$Entry, var787=r1, var1020=okhttp3.internal.cache.DiskLruCache, var1701=r2, var3522=r0, var3300=null_type, var3594=kotlin.jvm.internal.Intrinsics, var2632=java.lang.Object, var2750="key", var2881=$r3, var105=$i0, var3997=$r4, var2727=java.util.ArrayList, var2476=$r5, var442=java.util.List, var1964=$r6, var1862=$r7, var520=$r8, var541=$r9, var2319=$r10, var1700=r11, var3426=i1, var3287=i3, var3901=$r12, var209=i2}
; {okhttp3.internal.cache.DiskLruCache$Entry=var161, r1=var787, okhttp3.internal.cache.DiskLruCache=var1020, r2=var1701, r0=var3522, null_type=var3300, kotlin.jvm.internal.Intrinsics=var3594, java.lang.Object=var2632, "key"=var2750, $r3=var2881, $i0=var105, $r4=var3997, java.util.ArrayList=var2727, $r5=var2476, java.util.List=var442, $r6=var1964, $r7=var1862, $r8=var520, $r9=var541, $r10=var2319, r11=var1700, i1=var3426, i3=var3287, $r12=var3901, i2=var209}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @this: okhttp3.internal.cache.DiskLruCache$Entry;	r2 := @parameter0: okhttp3.internal.cache.DiskLruCache;	r0 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "key");	r1.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0> = r2;	specialinvoke r1.<java.lang.Object: void <init>()>();	r1.<okhttp3.internal.cache.DiskLruCache$Entry: java.lang.String key> = r0;	$r3 = r1.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0>;	$i0 = virtualinvoke $r3.<okhttp3.internal.cache.DiskLruCache: int getValueCount$okhttp()>();	$r4 = newarray (long)[$i0];	r1.<okhttp3.internal.cache.DiskLruCache$Entry: long[] lengths> = $r4;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	$r6 = (java.util.List) $r5;	r1.<okhttp3.internal.cache.DiskLruCache$Entry: java.util.List cleanFiles> = $r6;	$r7 = new java.util.ArrayList;	specialinvoke $r7.<java.util.ArrayList: void <init>()>();	$r8 = (java.util.List) $r7;	r1.<okhttp3.internal.cache.DiskLruCache$Entry: java.util.List dirtyFiles> = $r8;	$r9 = new java.lang.StringBuilder;	$r10 = r1.<okhttp3.internal.cache.DiskLruCache$Entry: java.lang.String key>;	specialinvoke $r9.<java.lang.StringBuilder: void <init>(java.lang.String)>($r10);	r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	i1 = virtualinvoke r11.<java.lang.StringBuilder: int length()>();	i3 = 0;	$r12 = r1.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0>;	i2 = virtualinvoke $r12.<okhttp3.internal.cache.DiskLruCache: int getValueCount$okhttp()>();	if i3 >= i2 goto return;	return
;block_num 3