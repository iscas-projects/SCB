(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1401 0)
(declare-sort var464 0)
(declare-sort var2 0)
(declare-sort var1717 0)
(declare-sort var1490 0)
(declare-sort var2118 0)
(declare-sort var2285 0)
(declare-sort var3976 0)
(declare-sort var2441 0)
(declare-sort var3627 0)
(declare-sort var1273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1490_checkNotNullParameter/-2060636419 (var2118 String) void)
(declare-fun cast-from-var464-to-var2118 (var464) var2118)
(declare-fun cast-from-var2-to-var2118 (var2) var2118)
(declare-fun cast-from-var1717-to-var2118 (var1717) var2118)
(declare-fun <init>/-279557996 (var2118) void)
(declare-fun cast-from-var1401-to-var2118 (var1401) var2118)
(declare-fun fileSystem/1990431374 (var1401) var464)
(declare-fun directory/1990431374 (var1401) var2)
(declare-fun appVersion/1990431374 (var1401) Int)
(declare-fun valueCount/1990431374 (var1401) Int)
(declare-fun maxSize/1990431374 (var1401) Int)
(declare-fun var2285-init () var2285)
(declare-fun <init>/356628039 (var2285 Int Float32 Bool) void)
(declare-fun lruEntries/1990431374 (var1401) var2285)
(declare-fun newQueue/-1490586697 (var1717) var3976)
(declare-fun cleanupQueue/1990431374 (var1401) var3976)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3627-init () var3627)
(declare-fun <init>/1566490636 (var3627 var1401 String) void)
(declare-fun cleanupTask/1990431374 (var1401) var3627)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1273-init () var1273)
(declare-fun toString/-522406933 (var2118) String)
(declare-fun cast-from-String-to-var2118 (String) var2118)
(declare-fun <init>/875830710 (var1273 String) void)
(declare-const null-var1401 var1401)
(declare-const null-var464 var464)
(declare-const null-var2 var2)
(declare-const null-Int Int)
(declare-const null-var1717 var1717)
(declare-const var2441-okHttpName String)
(declare-const var3912 var1401) ; Statement: r3 := @this: okhttp3.internal.cache.DiskLruCache 
(assert (not (= var3912 null-var1401)))
(declare-const var1331 var464) ; Statement: r0 := @parameter0: okhttp3.internal.io.FileSystem 
(assert (not (= var1331 null-var464)))
(declare-const var3261 var2) ; Statement: r1 := @parameter1: java.io.File 
(assert (not (= var3261 null-var2)))
(declare-const var3131 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3131 null-Int)))
(declare-const var2850 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2850 null-Int)))
(declare-const var1005 Int) ; Statement: l2 := @parameter4: long 
(assert (not (= var1005 null-Int)))
(declare-const var451 var1717) ; Statement: r2 := @parameter5: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var451 null-var1717)))
;(assert (var1490_checkNotNullParameter/-2060636419 (cast-from-var464-to-var2118 var1331) "fileSystem")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "fileSystem") 

(declare-const var1331!1 var464)
(declare-const var2473 String)
;(assert (var1490_checkNotNullParameter/-2060636419 (cast-from-var2-to-var2118 var3261) "directory")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "directory") 

(declare-const var3261!1 var2)
(declare-const var517 String)
;(assert (var1490_checkNotNullParameter/-2060636419 (cast-from-var1717-to-var2118 var451) "taskRunner")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "taskRunner") 

(declare-const var451!1 var1717)
(declare-const var1699 String)
(assert true)
;(assert (<init>/-279557996 (cast-from-var1401-to-var2118 var3912))) ; Statement: specialinvoke r3.<java.lang.Object: void <init>()>() 

(declare-const var3912!1 var1401)
(declare-const var3912!2 var1401)
(assert (not (= var3912!2 null-var1401)))
(assert (= (fileSystem/1990431374 var3912!2) var1331!1)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.io.FileSystem fileSystem> = r0 
(declare-const var3912!3 var1401)
(assert (not (= var3912!3 null-var1401)))
(assert (= (directory/1990431374 var3912!3) var3261!1)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: java.io.File directory> = r1 
(declare-const var3912!4 var1401)
(assert (not (= var3912!4 null-var1401)))
(assert (= (appVersion/1990431374 var3912!4) var3131)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: int appVersion> = i0 
(declare-const var3912!5 var1401)
(assert (not (= var3912!5 null-var1401)))
(assert (= (valueCount/1990431374 var3912!5) var2850)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: int valueCount> = i1 
(declare-const var3912!6 var1401)
(assert (not (= var3912!6 null-var1401)))
(assert (= (maxSize/1990431374 var3912!6) var1005)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: long maxSize> = l2 
(define-const var1139 var2285 var2285-init) ; Statement: $r27 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/356628039 var1139 0 ((_ to_fp 8 24) #x3f400000) (ite (= 1 1) true false))) ; Statement: specialinvoke $r27.<java.util.LinkedHashMap: void <init>(int,float,boolean)>(0, 0.75F, 1) 

(declare-const var1139!1 var2285)
(declare-const var440 Int)
(declare-const var577 Float32)
(declare-const var3702 Int)
(declare-const var3912!7 var1401)
(assert (not (= var3912!7 null-var1401)))
(assert (= (lruEntries/1990431374 var3912!7) var1139!1)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: java.util.LinkedHashMap lruEntries> = $r27 
(assert true)
(define-const var2187 var3976 (newQueue/-1490586697 var451!1)) ; Statement: $r5 = virtualinvoke r2.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>() 
(declare-const var3912!8 var1401)
(assert (not (= var3912!8 null-var1401)))
(assert (= (cleanupQueue/1990431374 var3912!8) var2187)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r5 
(define-const var2474 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2474)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2474!1 String)
(assert (= var2474!1 ""))
(define-const var2899 String var2441-okHttpName) ; Statement: $r7 = <okhttp3.internal.Util: java.lang.String okHttpName> 
(assert true)
(define-const var2082 String (append/672562846 var2474!1 var2899)) ; Statement: $r8 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2474!2 String)
(assert (= var2474!2 (str.++ var2474!1 var2899)))
(assert true)
(define-const var1462 String (append/672562846 var2082 " Cache")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Cache") 
(declare-const var2082!1 String)
(assert (= var2082!1 (str.++ var2082 " Cache")))
(assert true)
(define-const var2855 String (toString/-2075883882 var1462)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var29 var3627 var3627-init) ; Statement: $r29 = new okhttp3.internal.cache.DiskLruCache$cleanupTask$1 
(assert true)
;(assert (<init>/1566490636 var29 var3912!8 var2855)) ; Statement: specialinvoke $r29.<okhttp3.internal.cache.DiskLruCache$cleanupTask$1: void <init>(okhttp3.internal.cache.DiskLruCache,java.lang.String)>(r3, r10) 

(declare-const var29!1 var3627)
(declare-const var3912!9 var1401)
(declare-const var2855!1 String)
(declare-const var3912!10 var1401)
(assert (not (= var3912!10 null-var1401)))
(assert (= (cleanupTask/1990431374 var3912!10) var29!1)) ; Statement: r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.cache.DiskLruCache$cleanupTask$1 cleanupTask> = $r29 
(define-const var768 Int (ite (> var1005 0) 1 (ite (< var1005 0) (- 1) 0))) ; Statement: $b3 = l2 cmp 0L 
(define-const var2496 Int (cast-from-Int-to-Int var768)) ; Statement: $i5 = (int) $b3 
 ; Statement: if $i5 <= 0 goto $z0 = 0 
(assert (not (<= var2496 0))) ; Negate: Cond: $i5 <= 0  
(define-const var3796 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $i4 = r3.<okhttp3.internal.cache.DiskLruCache: int valueCount> 
(assert (not (not (= (ite var3796 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2152 String "maxSize <= 0") ; Statement: $r25 = "maxSize <= 0" 
(define-const var2973 var1273 var1273-init) ; Statement: $r30 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var476 String (toString/-522406933 (cast-from-String-to-var2118 var2152))) ; Statement: $r24 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2973 var476)) ; Statement: specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r24) 

(declare-const var2973!1 var1273)
(declare-const var476!1 String)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var1490_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var464-to-var2118=([okhttp3.internal.io.FileSystem], java.lang.Object), cast-from-var2-to-var2118=([java.io.File], java.lang.Object), cast-from-var1717-to-var2118=([okhttp3.internal.concurrent.TaskRunner], java.lang.Object), <init>/-279557996=([java.lang.Object], void), cast-from-var1401-to-var2118=([okhttp3.internal.cache.DiskLruCache], java.lang.Object), fileSystem/1990431374=([okhttp3.internal.cache.DiskLruCache], okhttp3.internal.io.FileSystem), directory/1990431374=([okhttp3.internal.cache.DiskLruCache], java.io.File), appVersion/1990431374=([okhttp3.internal.cache.DiskLruCache], int), valueCount/1990431374=([okhttp3.internal.cache.DiskLruCache], int), maxSize/1990431374=([okhttp3.internal.cache.DiskLruCache], long), var2285-init=([], java.util.LinkedHashMap), <init>/356628039=([java.util.LinkedHashMap, int, float, boolean], void), lruEntries/1990431374=([okhttp3.internal.cache.DiskLruCache], java.util.LinkedHashMap), newQueue/-1490586697=([okhttp3.internal.concurrent.TaskRunner], okhttp3.internal.concurrent.TaskQueue), cleanupQueue/1990431374=([okhttp3.internal.cache.DiskLruCache], okhttp3.internal.concurrent.TaskQueue), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3627-init=([], okhttp3.internal.cache.DiskLruCache$cleanupTask$1), <init>/1566490636=([okhttp3.internal.cache.DiskLruCache$cleanupTask$1, okhttp3.internal.cache.DiskLruCache, java.lang.String], void), cleanupTask/1990431374=([okhttp3.internal.cache.DiskLruCache], okhttp3.internal.cache.DiskLruCache$cleanupTask$1), cast-from-Int-to-Int=([byte], int), var1273-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2118=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1401=okhttp3.internal.cache.DiskLruCache, var3912=r3, var464=okhttp3.internal.io.FileSystem, var1331=r0, var2=java.io.File, var3261=r1, var3131=i0, var2850=i1, var1005=l2, var1717=okhttp3.internal.concurrent.TaskRunner, var451=r2, var1490=kotlin.jvm.internal.Intrinsics, var2118=java.lang.Object, var2473="fileSystem", var517="directory", var1699="taskRunner", var2285=java.util.LinkedHashMap, var1139=$r27, var440=0, var577=0.75F, var3702=1, var3976=okhttp3.internal.concurrent.TaskQueue, var2187=$r5, var2474=$r28, var2441=okhttp3.internal.Util, var2899=$r7, var2082=$r8, var1462=$r9, var2855=r10, var3627=okhttp3.internal.cache.DiskLruCache$cleanupTask$1, var29=$r29, var768=$b3, var2496=$i5, var3796=$z0, var2152=$r25, var1273=java.lang.IllegalArgumentException, var2973=$r30, var476=$r24}
; {okhttp3.internal.cache.DiskLruCache=var1401, r3=var3912, okhttp3.internal.io.FileSystem=var464, r0=var1331, java.io.File=var2, r1=var3261, i0=var3131, i1=var2850, l2=var1005, okhttp3.internal.concurrent.TaskRunner=var1717, r2=var451, kotlin.jvm.internal.Intrinsics=var1490, java.lang.Object=var2118, "fileSystem"=var2473, "directory"=var517, "taskRunner"=var1699, java.util.LinkedHashMap=var2285, $r27=var1139, 0=var440, 0.75F=var577, 1=var3702, okhttp3.internal.concurrent.TaskQueue=var3976, $r5=var2187, $r28=var2474, okhttp3.internal.Util=var2441, $r7=var2899, $r8=var2082, $r9=var1462, r10=var2855, okhttp3.internal.cache.DiskLruCache$cleanupTask$1=var3627, $r29=var29, $b3=var768, $i5=var2496, $z0=var3796, $r25=var2152, java.lang.IllegalArgumentException=var1273, $r30=var2973, $r24=var476}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: okhttp3.internal.cache.DiskLruCache;	r0 := @parameter0: okhttp3.internal.io.FileSystem;	r1 := @parameter1: java.io.File;	i0 := @parameter2: int;	i1 := @parameter3: int;	l2 := @parameter4: long;	r2 := @parameter5: okhttp3.internal.concurrent.TaskRunner;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "fileSystem");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "directory");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "taskRunner");	specialinvoke r3.<java.lang.Object: void <init>()>();	r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.io.FileSystem fileSystem> = r0;	r3.<okhttp3.internal.cache.DiskLruCache: java.io.File directory> = r1;	r3.<okhttp3.internal.cache.DiskLruCache: int appVersion> = i0;	r3.<okhttp3.internal.cache.DiskLruCache: int valueCount> = i1;	r3.<okhttp3.internal.cache.DiskLruCache: long maxSize> = l2;	$r27 = new java.util.LinkedHashMap;	specialinvoke $r27.<java.util.LinkedHashMap: void <init>(int,float,boolean)>(0, 0.75F, 1);	r3.<okhttp3.internal.cache.DiskLruCache: java.util.LinkedHashMap lruEntries> = $r27;	$r5 = virtualinvoke r2.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskQueue newQueue()>();	r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.concurrent.TaskQueue cleanupQueue> = $r5;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r7 = <okhttp3.internal.Util: java.lang.String okHttpName>;	$r8 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Cache");	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = new okhttp3.internal.cache.DiskLruCache$cleanupTask$1;	specialinvoke $r29.<okhttp3.internal.cache.DiskLruCache$cleanupTask$1: void <init>(okhttp3.internal.cache.DiskLruCache,java.lang.String)>(r3, r10);	r3.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.cache.DiskLruCache$cleanupTask$1 cleanupTask> = $r29;	$b3 = l2 cmp 0L;	$i5 = (int) $b3;	if $i5 <= 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $i4 = r3.<okhttp3.internal.cache.DiskLruCache: int valueCount>;	$r25 = "maxSize <= 0";	$r30 = new java.lang.IllegalArgumentException;	$r24 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r24);	throw $r30
;block_num 4