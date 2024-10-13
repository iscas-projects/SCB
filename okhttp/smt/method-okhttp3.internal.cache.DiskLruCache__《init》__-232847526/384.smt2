(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3366 0)
(declare-sort var2326 0)
(declare-sort var2377 0)
(declare-sort var368 0)
(declare-sort var2980 0)
(declare-sort var3489 0)
(declare-sort var2923 0)
(declare-sort var1995 0)
(declare-sort var1206 0)
(declare-sort var3717 0)
(declare-sort var3344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2980_checkNotNullParameter/-2060636419 (var3489 String) void)
(declare-fun cast-from-var2326-to-var3489 (var2326) var3489)
(declare-fun cast-from-var2377-to-var3489 (var2377) var3489)
(declare-fun cast-from-var368-to-var3489 (var368) var3489)
(declare-fun <init>/-279557996 (var3489) void)
(declare-fun cast-from-var3366-to-var3489 (var3366) var3489)
(declare-fun fileSystem/1990431374 (var3366) var2326)
(declare-fun directory/1990431374 (var3366) var2377)
(declare-fun appVersion/1990431374 (var3366) Int)
(declare-fun valueCount/1990431374 (var3366) Int)
(declare-fun maxSize/1990431374 (var3366) Int)
(declare-fun var2923-init () var2923)
(declare-fun <init>/356628039 (var2923 Int Float32 Bool) void)
(declare-fun lruEntries/1990431374 (var3366) var2923)
(declare-fun newQueue/-1490586697 (var368) var1995)
(declare-fun cleanupQueue/1990431374 (var3366) var1995)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3717-init () var3717)
(declare-fun <init>/1566490636 (var3717 var3366 String) void)
(declare-fun cleanupTask/1990431374 (var3366) var3717)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3344-init () var3344)
(declare-fun toString/-522406933 (var3489) String)
(declare-fun cast-from-String-to-var3489 (String) var3489)
(declare-fun <init>/875830710 (var3344 String) void)
(declare-const null-var3366 var3366)
(declare-const null-var2326 var2326)
(declare-const null-var2377 var2377)
(declare-const null-Int Int)
(declare-const null-var368 var368)
(declare-const var1206-okHttpName String)
(declare-const var3173 var3366) ; Statement: r3 := @this: okhttp3.internal.cache.DiskLruCache 
(assert (not (= var3173 null-var3366)))
(declare-const var234 var2326) ; Statement: r0 := @parameter0: okhttp3.internal.io.FileSystem 
(assert (not (= var234 null-var2326)))
(declare-const var3423 var2377) ; Statement: r1 := @parameter1: java.io.File 
(assert (not (= var3423 null-var2377)))
(declare-const var1460 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1460 null-Int)))
(declare-const var1712 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1712 null-Int)))
(declare-const var558 Int) ; Statement: l2 := @parameter4: long 
(assert (not (= var558 null-Int)))
(declare-const var2071 var368) ; Statement: r2 := @parameter5: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var2071 null-var368)))
;(assert (var2980_checkNotNullParameter/-2060636419 (cast-from-var2326-to-var3489 var234) "fileSystem")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "fileSystem") 

(declare-const var234!1 var2326)
(declare-const var3444 String)
;(assert (var2980_checkNotNullParameter/-2060636419 (cast-from-var2377-to-var3489 var3423) "directory")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "directory") 

(declare-const var3423!1 var2377)
(declare-const var2898 String)
;(assert (var2980_checkNotNullParameter/-2060636419 (cast-from-var368-to-var3489 var2071) "taskRunner")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "taskRunner") 

(declare-const var2071!1 var368)
(declare-const var2145 String)
(assert true)
;(assert (<init>/-279557996 (cast-from-var3366-to-var3489 var3173))) ; Statement: specialinvoke r3.<java.lang.Object: void <init>()>() 

(declare-const var3173!1 var3366)
(declare-const var3173!2 var3366)
(assert (not (= var3173!2 null-var3366)))
(assert (= (fileSystem/1990431374 var3173!2) var234!1)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.io.FileSystem fileSystem> = r0 
(declare-const var3173!3 var3366)
(assert (not (= var3173!3 null-var3366)))
(assert (= (directory/1990431374 var3173!3) var3423!1)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: java.io.File directory> = r1 
(declare-const var3173!4 var3366)
(assert (not (= var3173!4 null-var3366)))
(assert (= (appVersion/1990431374 var3173!4) var1460)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: int appVersion> = i0 
(declare-const var3173!5 var3366)
(assert (not (= var3173!5 null-var3366)))
(assert (= (valueCount/1990431374 var3173!5) var1712)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: int valueCount> = i1 
(declare-const var3173!6 var3366)
(assert (not (= var3173!6 null-var3366)))
(assert (= (maxSize/1990431374 var3173!6) var558)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: long maxSize> = l2 
(define-const var256 var2923 var2923-init) ; Statement: $r27 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/356628039 var256 0 ((_ to_fp 8 24) #x3f400000) (ite (= 1 1) true false))) ; Statement: specialinvoke $r27.<java.util.LinkedHashMap: void <init>(int,float,boolean)>(0, 0.75F, 1) 

(declare-const var256!1 var2923)
(declare-const var638 Int)
(declare-const var348 Float32)
(declare-const var2110 Int)
(declare-const var3173!7 var3366)
(assert (not (= var3173!7 null-var3366)))
(assert (= (lruEntries/1990431374 var3173!7) var256!1)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: java.util.LinkedHashMap lruEntries> = $r27 
(assert true)
(define-const var3764 var1995 (newQueue/-1490586697 var2071!1)) ; Statement: $r5 = virtualinvoke r2.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>() 
(declare-const var3173!8 var3366)
(assert (not (= var3173!8 null-var3366)))
(assert (= (cleanupQueue/1990431374 var3173!8) var3764)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r5 
(define-const var1019 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1019)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1019!1 String)
(assert (= var1019!1 ""))
(define-const var229 String var1206-okHttpName) ; Statement: $r7 = <okhttp3.internal.Util: java.lang.String okHttpName> 
(assert true)
(define-const var2813 String (append/672562846 var1019!1 var229)) ; Statement: $r8 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1019!2 String)
(assert (= var1019!2 (str.++ var1019!1 var229)))
(assert true)
(define-const var1299 String (append/672562846 var2813 " Cache")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Cache") 
(declare-const var2813!1 String)
(assert (= var2813!1 (str.++ var2813 " Cache")))
(assert true)
(define-const var1882 String (toString/-2075883882 var1299)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1973 var3717 var3717-init) ; Statement: $r29 = new okhttp3.internal.cache.DiskLruCache$cleanupTask$1 
(assert true)
;(assert (<init>/1566490636 var1973 var3173!8 var1882)) ; Statement: specialinvoke $r29.<okhttp3.internal.cache.DiskLruCache$cleanupTask$1: void <init>(okhttp3.internal.cache.DiskLruCache,java.lang.String)>(r3, r10) 

(declare-const var1973!1 var3717)
(declare-const var3173!9 var3366)
(declare-const var1882!1 String)
(declare-const var3173!10 var3366)
(assert (not (= var3173!10 null-var3366)))
(assert (= (cleanupTask/1990431374 var3173!10) var1973!1)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.cache.DiskLruCache$cleanupTask$1 cleanupTask> = $r29 
(define-const var1039 Int (ite (> var558 0) 1 (ite (< var558 0) (- 1) 0))) ; Statement: $b3 = l2 cmp 0L 
(define-const var3914 Int (cast-from-Int-to-Int var1039)) ; Statement: $i5 = (int) $b3 
 ; Statement: if $i5 <= 0 goto $z0 = 0 
(assert (<= var3914 0)) ; Cond: $i5 <= 0 
(define-const var921 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $i4 = r3.<okhttp3.internal.cache.DiskLruCache: int valueCount> 
(assert (not (not (= (ite var921 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3420 String "maxSize <= 0") ; Statement: $r25 = "maxSize <= 0" 
(define-const var3219 var3344 var3344-init) ; Statement: $r30 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3051 String (toString/-522406933 (cast-from-String-to-var3489 var3420))) ; Statement: $r24 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3219 var3051)) ; Statement: specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r24) 

(declare-const var3219!1 var3344)
(declare-const var3051!1 String)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var2980_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2326-to-var3489=([okhttp3.internal.io.FileSystem], java.lang.Object), cast-from-var2377-to-var3489=([java.io.File], java.lang.Object), cast-from-var368-to-var3489=([okhttp3.internal.concurrent.TaskRunner], java.lang.Object), <init>/-279557996=([java.lang.Object], void), cast-from-var3366-to-var3489=([okhttp3.internal.cache.DiskLruCache], java.lang.Object), fileSystem/1990431374=([okhttp3.internal.cache.DiskLruCache], okhttp3.internal.io.FileSystem), directory/1990431374=([okhttp3.internal.cache.DiskLruCache], java.io.File), appVersion/1990431374=([okhttp3.internal.cache.DiskLruCache], int), valueCount/1990431374=([okhttp3.internal.cache.DiskLruCache], int), maxSize/1990431374=([okhttp3.internal.cache.DiskLruCache], long), var2923-init=([], java.util.LinkedHashMap), <init>/356628039=([java.util.LinkedHashMap, int, float, boolean], void), lruEntries/1990431374=([okhttp3.internal.cache.DiskLruCache], java.util.LinkedHashMap), newQueue/-1490586697=([okhttp3.internal.concurrent.TaskRunner], okhttp3.internal.concurrent.TaskQueue), cleanupQueue/1990431374=([okhttp3.internal.cache.DiskLruCache], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3717-init=([], okhttp3.internal.cache.DiskLruCache$cleanupTask$1), <init>/1566490636=([okhttp3.internal.cache.DiskLruCache$cleanupTask$1, okhttp3.internal.cache.DiskLruCache, java.lang.String], void), cleanupTask/1990431374=([okhttp3.internal.cache.DiskLruCache], okhttp3.internal.cache.DiskLruCache$cleanupTask$1), cast-from-Int-to-Int=([byte], int), var3344-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3489=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3366=okhttp3.internal.cache.DiskLruCache, var3173=r3, var2326=okhttp3.internal.io.FileSystem, var234=r0, var2377=java.io.File, var3423=r1, var1460=i0, var1712=i1, var558=l2, var368=okhttp3.internal.concurrent.TaskRunner, var2071=r2, var2980=kotlin.jvm.internal.Intrinsics, var3489=java.lang.Object, var3444="fileSystem", var2898="directory", var2145="taskRunner", var2923=java.util.LinkedHashMap, var256=$r27, var638=0, var348=0.75F, var2110=1, var1995=okhttp3.internal.concurrent.TaskQueue, var3764=$r5, var1019=$r28, var1206=okhttp3.internal.Util, var229=$r7, var2813=$r8, var1299=$r9, var1882=r10, var3717=okhttp3.internal.cache.DiskLruCache$cleanupTask$1, var1973=$r29, var1039=$b3, var3914=$i5, var921=$z0, var3420=$r25, var3344=java.lang.IllegalArgumentException, var3219=$r30, var3051=$r24}
; {okhttp3.internal.cache.DiskLruCache=var3366, r3=var3173, okhttp3.internal.io.FileSystem=var2326, r0=var234, java.io.File=var2377, r1=var3423, i0=var1460, i1=var1712, l2=var558, okhttp3.internal.concurrent.TaskRunner=var368, r2=var2071, kotlin.jvm.internal.Intrinsics=var2980, java.lang.Object=var3489, "fileSystem"=var3444, "directory"=var2898, "taskRunner"=var2145, java.util.LinkedHashMap=var2923, $r27=var256, 0=var638, 0.75F=var348, 1=var2110, okhttp3.internal.concurrent.TaskQueue=var1995, $r5=var3764, $r28=var1019, okhttp3.internal.Util=var1206, $r7=var229, $r8=var2813, $r9=var1299, r10=var1882, okhttp3.internal.cache.DiskLruCache$cleanupTask$1=var3717, $r29=var1973, $b3=var1039, $i5=var3914, $z0=var921, $r25=var3420, java.lang.IllegalArgumentException=var3344, $r30=var3219, $r24=var3051}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: okhttp3.internal.cache.DiskLruCache;	r0 := @parameter0: okhttp3.internal.io.FileSystem;	r1 := @parameter1: java.io.File;	i0 := @parameter2: int;	i1 := @parameter3: int;	l2 := @parameter4: long;	r2 := @parameter5: okhttp3.internal.concurrent.TaskRunner;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "fileSystem");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "directory");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "taskRunner");	specialinvoke r3.<java.lang.Object: void <init>()>();	r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.io.FileSystem fileSystem> = r0;	r3.<okhttp3.internal.cache.DiskLruCache: java.io.File directory> = r1;	r3.<okhttp3.internal.cache.DiskLruCache: int appVersion> = i0;	r3.<okhttp3.internal.cache.DiskLruCache: int valueCount> = i1;	r3.<okhttp3.internal.cache.DiskLruCache: long maxSize> = l2;	$r27 = new java.util.LinkedHashMap;	specialinvoke $r27.<java.util.LinkedHashMap: void <init>(int,float,boolean)>(0, 0.75F, 1);	r3.<okhttp3.internal.cache.DiskLruCache: java.util.LinkedHashMap lruEntries> = $r27;	$r5 = virtualinvoke r2.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>();	r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r5;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r7 = <okhttp3.internal.Util: java.lang.String okHttpName>;	$r8 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Cache");	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = new okhttp3.internal.cache.DiskLruCache$cleanupTask$1;	specialinvoke $r29.<okhttp3.internal.cache.DiskLruCache$cleanupTask$1: void <init>(okhttp3.internal.cache.DiskLruCache,java.lang.String)>(r3, r10);	r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.cache.DiskLruCache$cleanupTask$1 cleanupTask> = $r29;	$b3 = l2 cmp 0L;	$i5 = (int) $b3;	if $i5 <= 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $i4 = r3.<okhttp3.internal.cache.DiskLruCache: int valueCount>;	$r25 = "maxSize <= 0";	$r30 = new java.lang.IllegalArgumentException;	$r24 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r24);	throw $r30
;block_num 4