(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2564 0)
(declare-sort var2104 0)
(declare-sort var771 0)
(declare-sort var1392 0)
(declare-sort var1643 0)
(declare-sort var3856 0)
(declare-sort var3357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var771-init () var771)
(declare-fun <init>/1742009542 (var771 Int) void)
(declare-fun locks/1655599909 (var2564) var1392)
(declare-fun putIfAbsent/830056851 (var1392 var2104 var2104) var2104)
(declare-fun cast-from-var771-to-var2104 (var771) var2104)
(declare-fun cast-from-var2104-to-var771 (var2104) var771)
(declare-fun timeout/1655599909 (var2564) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3856-init () var3856)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2104) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1290385087 (var3856 String var3357) void)
(declare-fun cast-from-var1643-to-var3357 (var1643) var3357)
(declare-const null-var2564 var2564)
(declare-const null-var2104 var2104)
(declare-const null-var771 var771)
(declare-const null-var1643 var1643)
(declare-const var691 var2564) ; Statement: r1 := @this: org.apache.ibatis.cache.decorators.BlockingCache 
(assert (not (= var691 null-var2564)))
(declare-const var1832 var2104) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1832 null-var2104)))
(define-const var1853 var771 var771-init) ; Statement: $r24 = new java.util.concurrent.CountDownLatch 
(assert true)
;(assert (<init>/1742009542 var1853 1)) ; Statement: specialinvoke $r24.<java.util.concurrent.CountDownLatch: void <init>(int)>(1) 

(declare-const var1853!1 var771)
(declare-const var1812 Int)
(assert true) ; Non Conditional
(define-const var1238 var1392 (locks/1655599909 var691)) ; Statement: $r3 = r1.<org.apache.ibatis.cache.decorators.BlockingCache: java.util.concurrent.ConcurrentHashMap locks> 
(assert true)
(define-const var3166 var2104 (putIfAbsent/830056851 var1238 var1832 (cast-from-var771-to-var2104 var1853!1))) ; Statement: $r4 = virtualinvoke $r3.<java.util.concurrent.ConcurrentHashMap: java.lang.Object putIfAbsent(java.lang.Object,java.lang.Object)>(r2, $r24) 
(define-const var59 var771 (cast-from-var2104-to-var771 var3166)) ; Statement: $r5 = (java.util.concurrent.CountDownLatch) $r4 
 ; Statement: if $r5 != null goto $l0 = r1.<org.apache.ibatis.cache.decorators.BlockingCache: long timeout> 
(assert (not (= var59 null-var771))) ; Cond: $r5 != null 
(define-const var2233 Int (timeout/1655599909 var691)) ; Statement: $l0 = r1.<org.apache.ibatis.cache.decorators.BlockingCache: long timeout> 
(define-const var2514 Int (ite (> var2233 0) 1 (ite (< var2233 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
(define-const var905 Int (cast-from-Int-to-Int var2514)) ; Statement: $i4 = (int) $b1 
 ; Statement: if $i4 <= 0 goto virtualinvoke $r5.<java.util.concurrent.CountDownLatch: void await()>() 
(assert (not (<= var905 0))) ; Negate: Cond: $i4 <= 0  
(declare-const var2393 var1643) ; Statement: $r18 := @caughtexception 
(assert (not (= var2393 null-var1643)))
(define-const var3286 var3856 var3856-init) ; Statement: $r28 = new org.apache.ibatis.cache.CacheException 
(define-const var3571 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3571)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3571!1 String)
(assert (= var3571!1 ""))
(assert true)
(define-const var649 String (append/672562846 var3571!1 "Got interrupted while trying to acquire lock for key ")) ; Statement: $r21 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Got interrupted while trying to acquire lock for key ") 
(declare-const var3571!2 String)
(assert (= var3571!2 (str.++ var3571!1 "Got interrupted while trying to acquire lock for key ")))
(assert true)
(define-const var1241 String (append/-1031950772 var649 var1832)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var649!1 String)
(assert (str.prefixof var649 var649!1))
(assert true)
(define-const var671 String (toString/-2075883882 var1241)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1290385087 var3286 var671 (cast-from-var1643-to-var3357 var2393))) ; Statement: specialinvoke $r28.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r18) 

(declare-const var3286!1 var3856)
(declare-const var671!1 String)
(declare-const var2393!1 var1643)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var771-init=([], java.util.concurrent.CountDownLatch), <init>/1742009542=([java.util.concurrent.CountDownLatch, int], void), locks/1655599909=([org.apache.ibatis.cache.decorators.BlockingCache], java.util.concurrent.ConcurrentHashMap), putIfAbsent/830056851=([java.util.concurrent.ConcurrentHashMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var771-to-var2104=([java.util.concurrent.CountDownLatch], java.lang.Object), cast-from-var2104-to-var771=([java.lang.Object], java.util.concurrent.CountDownLatch), timeout/1655599909=([org.apache.ibatis.cache.decorators.BlockingCache], long), cast-from-Int-to-Int=([byte], int), var3856-init=([], org.apache.ibatis.cache.CacheException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1290385087=([org.apache.ibatis.cache.CacheException, java.lang.String, java.lang.Throwable], void), cast-from-var1643-to-var3357=([java.lang.InterruptedException], java.lang.Throwable)}
; {var2564=org.apache.ibatis.cache.decorators.BlockingCache, var691=r1, var2104=java.lang.Object, var1832=r2, var771=java.util.concurrent.CountDownLatch, var1853=$r24, var1812=1, var1392=java.util.concurrent.ConcurrentHashMap, var1238=$r3, var3166=$r4, var59=$r5, var2233=$l0, var2514=$b1, var905=$i4, var1643=java.lang.InterruptedException, var2393=$r18, var3856=org.apache.ibatis.cache.CacheException, var3286=$r28, var3571=$r27, var649=$r21, var1241=$r22, var671=$r23, var3357=java.lang.Throwable}
; {org.apache.ibatis.cache.decorators.BlockingCache=var2564, r1=var691, java.lang.Object=var2104, r2=var1832, java.util.concurrent.CountDownLatch=var771, $r24=var1853, 1=var1812, java.util.concurrent.ConcurrentHashMap=var1392, $r3=var1238, $r4=var3166, $r5=var59, $l0=var2233, $b1=var2514, $i4=var905, java.lang.InterruptedException=var1643, $r18=var2393, org.apache.ibatis.cache.CacheException=var3856, $r28=var3286, $r27=var3571, $r21=var649, $r22=var1241, $r23=var671, java.lang.Throwable=var3357}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.cache.decorators.BlockingCache;	r2 := @parameter0: java.lang.Object;	$r24 = new java.util.concurrent.CountDownLatch;	specialinvoke $r24.<java.util.concurrent.CountDownLatch: void <init>(int)>(1);	$r3 = r1.<org.apache.ibatis.cache.decorators.BlockingCache: java.util.concurrent.ConcurrentHashMap locks>;	$r4 = virtualinvoke $r3.<java.util.concurrent.ConcurrentHashMap: java.lang.Object putIfAbsent(java.lang.Object,java.lang.Object)>(r2, $r24);	$r5 = (java.util.concurrent.CountDownLatch) $r4;	if $r5 != null goto $l0 = r1.<org.apache.ibatis.cache.decorators.BlockingCache: long timeout>;	$l0 = r1.<org.apache.ibatis.cache.decorators.BlockingCache: long timeout>;	$b1 = $l0 cmp 0L;	$i4 = (int) $b1;	if $i4 <= 0 goto virtualinvoke $r5.<java.util.concurrent.CountDownLatch: void await()>();	$r18 := @caughtexception;	$r28 = new org.apache.ibatis.cache.CacheException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Got interrupted while trying to acquire lock for key ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r18);	throw $r28
;block_num 4