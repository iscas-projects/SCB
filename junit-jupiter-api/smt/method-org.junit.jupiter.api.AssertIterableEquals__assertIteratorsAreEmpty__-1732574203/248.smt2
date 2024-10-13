(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var315 0)
(declare-sort var269 0)
(declare-sort var1512 0)
(declare-sort var498 0)
(declare-sort var511 0)
(declare-sort var2324 0)
(declare-sort var2804 0)
(declare-sort var3411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1512-init () var1512)
(declare-fun <init>/2144030345 (var1512 Int) void)
(declare-fun var511_bootstrap$/-188096379 (var1512) var498)
(declare-fun Iterator_forEachRemaining/-454044031 (Iterator var498) void)
(declare-fun var2324_bootstrap$/860049982 (var1512) var498)
(declare-fun var2804_assertionFailure/-1766832277 () var2804)
(declare-fun message/-1182943533 (var2804 var269) var2804)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3411_formatIndexes/152567131 (var315) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun reason/-554335116 (var2804 String) var2804)
(declare-fun get/-785596375 (var1512) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun expected/127684014 (var2804 var269) var2804)
(declare-fun cast-from-Int-to-var269 (Int) var269)
(declare-fun actual/-918735720 (var2804 var269) var2804)
(declare-fun buildAndThrow/-910448578 (var2804) void)
(declare-const null-Iterator Iterator)
(declare-const null-Int Int)
(declare-const null-var315 var315)
(declare-const null-var269 var269)
(declare-const var1049 Iterator) ; Statement: r0 := @parameter0: java.util.Iterator 
(assert (not (= var1049 null-Iterator)))
(declare-const var3439 Iterator) ; Statement: r4 := @parameter1: java.util.Iterator 
(assert (not (= var3439 null-Iterator)))
(declare-const var2730 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2730 null-Int)))
(declare-const var1279 var315) ; Statement: r9 := @parameter3: java.util.Deque 
(assert (not (= var1279 null-var315)))
(declare-const var3227 var269) ; Statement: r6 := @parameter4: java.lang.Object 
(assert (not (= var3227 null-var269)))
(define-const var2758 Bool (Iterator_hasNext/-1669924200 var1049)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r1 = new java.util.concurrent.atomic.AtomicInteger 
(assert (not (= (ite var2758 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1215 var1512 var1512-init) ; Statement: $r1 = new java.util.concurrent.atomic.AtomicInteger 
(assert true)
;(assert (<init>/2144030345 var1215 var2730)) ; Statement: specialinvoke $r1.<java.util.concurrent.atomic.AtomicInteger: void <init>(int)>(i0) 

(declare-const var1215!1 var1512)
(declare-const var2730!1 Int)
(define-const var3061 var498 (var511_bootstrap$/-188096379 var1215!1)) ; Statement: $r2 = staticinvoke <org.junit.jupiter.api.AssertIterableEquals$lambda_assertIteratorsAreEmpty_0__4: java.util.function.Consumer bootstrap$(java.util.concurrent.atomic.AtomicInteger)>($r1) 
;(assert (Iterator_forEachRemaining/-454044031 var1049 var3061)) ; Statement: interfaceinvoke r0.<java.util.Iterator: void forEachRemaining(java.util.function.Consumer)>($r2) 

(declare-const var1049!1 Iterator)
(declare-const var3061!1 var498)
(define-const var1694 var1512 var1512-init) ; Statement: $r3 = new java.util.concurrent.atomic.AtomicInteger 
(assert true)
;(assert (<init>/2144030345 var1694 var2730!1)) ; Statement: specialinvoke $r3.<java.util.concurrent.atomic.AtomicInteger: void <init>(int)>(i0) 

(declare-const var1694!1 var1512)
(declare-const var2730!2 Int)
(define-const var1475 var498 (var2324_bootstrap$/860049982 var1694!1)) ; Statement: $r5 = staticinvoke <org.junit.jupiter.api.AssertIterableEquals$lambda_assertIteratorsAreEmpty_1__17: java.util.function.Consumer bootstrap$(java.util.concurrent.atomic.AtomicInteger)>($r3) 
;(assert (Iterator_forEachRemaining/-454044031 var3439 var1475)) ; Statement: interfaceinvoke r4.<java.util.Iterator: void forEachRemaining(java.util.function.Consumer)>($r5) 

(declare-const var3439!1 Iterator)
(declare-const var1475!1 var498)
(define-const var1896 var2804 var2804_assertionFailure/-1766832277) ; Statement: $r7 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>() 
(assert true)
(define-const var2608 var2804 (message/-1182943533 var1896 var3227)) ; Statement: $r14 = virtualinvoke $r7.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r6) 
(define-const var1350 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1350)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1350!1 String)
(assert (= var1350!1 ""))
(assert true)
(define-const var1254 String (append/672562846 var1350!1 "iterable lengths differ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("iterable lengths differ") 
(declare-const var1350!2 String)
(assert (= var1350!2 (str.++ var1350!1 "iterable lengths differ")))
(define-const var3758 String (var3411_formatIndexes/152567131 var1279)) ; Statement: $r10 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r9) 
(assert true)
(define-const var1182 String (append/672562846 var1254 var3758)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1254!1 String)
(assert (= var1254!1 (str.++ var1254 var3758)))
(assert true)
(define-const var206 String (toString/-2075883882 var1182)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3037 var2804 (reason/-554335116 var2608 var206)) ; Statement: $r16 = virtualinvoke $r14.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r13) 
(assert true)
(define-const var422 Int (get/-785596375 var1215!1)) ; Statement: $i1 = virtualinvoke $r1.<java.util.concurrent.atomic.AtomicInteger: int get()>() 
(define-const var2133 Int (Int_valueOf/-1371140006 var422)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(assert true)
(define-const var991 var2804 (expected/127684014 var3037 (cast-from-Int-to-var269 var2133))) ; Statement: $r18 = virtualinvoke $r16.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder expected(java.lang.Object)>($r15) 
(assert true)
(define-const var1137 Int (get/-785596375 var1694!1)) ; Statement: $i2 = virtualinvoke $r3.<java.util.concurrent.atomic.AtomicInteger: int get()>() 
(define-const var204 Int (Int_valueOf/-1371140006 var1137)) ; Statement: $r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(assert true)
(define-const var1658 var2804 (actual/-918735720 var991 (cast-from-Int-to-var269 var204))) ; Statement: $r19 = virtualinvoke $r18.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder actual(java.lang.Object)>($r17) 
(assert true)
;(assert (buildAndThrow/-910448578 var1658)) ; Statement: virtualinvoke $r19.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>() 

(declare-const var1658!1 var2804)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1512-init=([], java.util.concurrent.atomic.AtomicInteger), <init>/2144030345=([java.util.concurrent.atomic.AtomicInteger, int], void), var511_bootstrap$/-188096379=([java.util.concurrent.atomic.AtomicInteger], java.util.function.Consumer), Iterator_forEachRemaining/-454044031=([java.util.Iterator, java.util.function.Consumer], void), var2324_bootstrap$/860049982=([java.util.concurrent.atomic.AtomicInteger], java.util.function.Consumer), var2804_assertionFailure/-1766832277=([], org.junit.jupiter.api.AssertionFailureBuilder), message/-1182943533=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3411_formatIndexes/152567131=([java.util.Deque], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), reason/-554335116=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.String], org.junit.jupiter.api.AssertionFailureBuilder), get/-785596375=([java.util.concurrent.atomic.AtomicInteger], int), Int_valueOf/-1371140006=([int], java.lang.Integer), expected/127684014=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), cast-from-Int-to-var269=([java.lang.Integer], java.lang.Object), actual/-918735720=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), buildAndThrow/-910448578=([org.junit.jupiter.api.AssertionFailureBuilder], void)}
; {var1049=r0, var3439=r4, var2730=i0, var315=java.util.Deque, var1279=r9, var269=java.lang.Object, var3227=r6, var2758=$z0, var1512=java.util.concurrent.atomic.AtomicInteger, var1215=$r1, var498=java.util.function.Consumer, var511=org.junit.jupiter.api.AssertIterableEquals$lambda_assertIteratorsAreEmpty_0__4, var3061=$r2, var1694=$r3, var2324=org.junit.jupiter.api.AssertIterableEquals$lambda_assertIteratorsAreEmpty_1__17, var1475=$r5, var2804=org.junit.jupiter.api.AssertionFailureBuilder, var1896=$r7, var2608=$r14, var1350=$r8, var1254=$r11, var3411=org.junit.jupiter.api.AssertionUtils, var3758=$r10, var1182=$r12, var206=$r13, var3037=$r16, var422=$i1, var2133=$r15, var991=$r18, var1137=$i2, var204=$r17, var1658=$r19}
; {r0=var1049, r4=var3439, i0=var2730, java.util.Deque=var315, r9=var1279, java.lang.Object=var269, r6=var3227, $z0=var2758, java.util.concurrent.atomic.AtomicInteger=var1512, $r1=var1215, java.util.function.Consumer=var498, org.junit.jupiter.api.AssertIterableEquals$lambda_assertIteratorsAreEmpty_0__4=var511, $r2=var3061, $r3=var1694, org.junit.jupiter.api.AssertIterableEquals$lambda_assertIteratorsAreEmpty_1__17=var2324, $r5=var1475, org.junit.jupiter.api.AssertionFailureBuilder=var2804, $r7=var1896, $r14=var2608, $r8=var1350, $r11=var1254, org.junit.jupiter.api.AssertionUtils=var3411, $r10=var3758, $r12=var1182, $r13=var206, $r16=var3037, $i1=var422, $r15=var2133, $r18=var991, $i2=var1137, $r17=var204, $r19=var1658}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Iterator;	r4 := @parameter1: java.util.Iterator;	i0 := @parameter2: int;	r9 := @parameter3: java.util.Deque;	r6 := @parameter4: java.lang.Object;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r1 = new java.util.concurrent.atomic.AtomicInteger;	$r1 = new java.util.concurrent.atomic.AtomicInteger;	specialinvoke $r1.<java.util.concurrent.atomic.AtomicInteger: void <init>(int)>(i0);	$r2 = staticinvoke <org.junit.jupiter.api.AssertIterableEquals$lambda_assertIteratorsAreEmpty_0__4: java.util.function.Consumer bootstrap$(java.util.concurrent.atomic.AtomicInteger)>($r1);	interfaceinvoke r0.<java.util.Iterator: void forEachRemaining(java.util.function.Consumer)>($r2);	$r3 = new java.util.concurrent.atomic.AtomicInteger;	specialinvoke $r3.<java.util.concurrent.atomic.AtomicInteger: void <init>(int)>(i0);	$r5 = staticinvoke <org.junit.jupiter.api.AssertIterableEquals$lambda_assertIteratorsAreEmpty_1__17: java.util.function.Consumer bootstrap$(java.util.concurrent.atomic.AtomicInteger)>($r3);	interfaceinvoke r4.<java.util.Iterator: void forEachRemaining(java.util.function.Consumer)>($r5);	$r7 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>();	$r14 = virtualinvoke $r7.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r6);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("iterable lengths differ");	$r10 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke $r14.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r13);	$i1 = virtualinvoke $r1.<java.util.concurrent.atomic.AtomicInteger: int get()>();	$r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r18 = virtualinvoke $r16.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder expected(java.lang.Object)>($r15);	$i2 = virtualinvoke $r3.<java.util.concurrent.atomic.AtomicInteger: int get()>();	$r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r19 = virtualinvoke $r18.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder actual(java.lang.Object)>($r17);	virtualinvoke $r19.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>();	return
;block_num 3