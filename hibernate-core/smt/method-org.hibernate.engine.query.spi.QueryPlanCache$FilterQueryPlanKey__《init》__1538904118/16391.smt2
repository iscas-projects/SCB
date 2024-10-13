(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1510 0)
(declare-sort var2817 0)
(declare-sort var1444 0)
(declare-sort var1857 0)
(declare-sort var3362 0)
(declare-sort var2159 0)
(declare-sort var3746 0)
(declare-sort var1288 0)
(declare-sort var1195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1857) void)
(declare-fun cast-from-var1510-to-var1857 (var1510) var1857)
(declare-fun query/1175036299 (var1510) String)
(declare-fun collectionRole/1175036299 (var1510) String)
(declare-fun shallow/1175036299 (var1510) Bool)
(declare-fun var3362_isEmpty/-1503223188 (var1444) Bool)
(declare-fun var2159-init () var2159)
(declare-fun var1444_keySet/-712633290 (var1444) var3746)
(declare-fun <init>/1161881499 (var2159 var1288) void)
(declare-fun cast-from-var3746-to-var1288 (var3746) var1288)
(declare-fun var1195_unmodifiableSet/219896279 (var3746) var3746)
(declare-fun cast-from-var2159-to-var3746 (var2159) var3746)
(declare-fun filterNames/1175036299 (var1510) var3746)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3746_hashCode/539623333 (var3746) Int)
(declare-fun hashCode/1175036299 (var1510) Int)
(declare-const null-var1510 var1510)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1444 var1444)
(declare-const var2028 var1510) ; Statement: r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey 
(assert (not (= var2028 null-var1510)))
(declare-const var979 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var979 null-String)))
(declare-const var730 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var730 null-String)))
(declare-const var1462 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1462 null-Bool)))
(declare-const var674 var1444) ; Statement: r3 := @parameter3: java.util.Map 
(assert (not (= var674 null-var1444)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1510-to-var1857 var2028))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2028!1 var1510)
(declare-const var2028!2 var1510)
(assert (not (= var2028!2 null-var1510)))
(assert (= (query/1175036299 var2028!2) var979)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String query> = r1 
(declare-const var2028!3 var1510)
(assert (not (= var2028!3 null-var1510)))
(assert (= (collectionRole/1175036299 var2028!3) var730)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String collectionRole> = r2 
(declare-const var2028!4 var1510)
(assert (not (= var2028!4 null-var1510)))
(assert (= (shallow/1175036299 var2028!4) var1462)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: boolean shallow> = z0 
(define-const var3876 Bool (var3362_isEmpty/-1503223188 var674)) ; Statement: $z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r3) 
 ; Statement: if $z1 == 0 goto $r4 = new java.util.HashSet 
(assert (= (ite var3876 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1332 var2159 var2159-init) ; Statement: $r4 = new java.util.HashSet 
(define-const var3012 var3746 (var1444_keySet/-712633290 var674)) ; Statement: $r5 = interfaceinvoke r3.<java.util.Map: java.util.Set keySet()>() 
(assert true)
;(assert (<init>/1161881499 var1332 (cast-from-var3746-to-var1288 var3012))) ; Statement: specialinvoke $r4.<java.util.HashSet: void <init>(java.util.Collection)>($r5) 

(declare-const var1332!1 var2159)
(declare-const var3012!1 var3746)
(define-const var296 var3746 (var1195_unmodifiableSet/219896279 (cast-from-var2159-to-var3746 var1332!1))) ; Statement: $r6 = staticinvoke <java.util.Collections: java.util.Set unmodifiableSet(java.util.Set)>($r4) 
(declare-const var2028!5 var1510)
(assert (not (= var2028!5 null-var1510)))
(assert (= (filterNames/1175036299 var2028!5) var296)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> = $r6 
(assert true) ; Non Conditional
(assert true)
(define-const var3594 Int (hashCode/-467973558 var979)) ; Statement: $i7 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var526 Int (* 29 var3594)) ; Statement: $i1 = 29 * $i7 
(assert true)
(define-const var2923 Int (hashCode/-467973558 var730)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
(define-const var2616 Int (+ var526 var2923)) ; Statement: $i8 = $i1 + $i0 
(define-const var3772 Int (* 29 var2616)) ; Statement: $i2 = 29 * $i8 
 ; Statement: if z0 == 0 goto $z2 = 0 
(assert (= (ite var1462 1 0) 0)) ; Cond: z0 == 0 
(define-const var583 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var954 Int (+ var3772 (ite var583 1 0))) ; Statement: $i5 = $i2 + $z2 
(define-const var510 Int (* 29 var954)) ; Statement: $i4 = 29 * $i5 
(define-const var353 var3746 (filterNames/1175036299 var2028!5)) ; Statement: $r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> 
(define-const var520 Int (var3746_hashCode/539623333 var353)) ; Statement: $i3 = interfaceinvoke $r7.<java.util.Set: int hashCode()>() 
(define-const var822 Int (+ var510 var520)) ; Statement: $i6 = $i4 + $i3 
(declare-const var2028!6 var1510)
(assert (not (= var2028!6 null-var1510)))
(assert (= (hashCode/1175036299 var2028!6) var822)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: int hashCode> = $i6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1510-to-var1857=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.Object), query/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.String), collectionRole/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.String), shallow/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], boolean), var3362_isEmpty/-1503223188=([java.util.Map], boolean), var2159-init=([], java.util.HashSet), var1444_keySet/-712633290=([java.util.Map], java.util.Set), <init>/1161881499=([java.util.HashSet, java.util.Collection], void), cast-from-var3746-to-var1288=([java.util.Set], java.util.Collection), var1195_unmodifiableSet/219896279=([java.util.Set], java.util.Set), cast-from-var2159-to-var3746=([java.util.HashSet], java.util.Set), filterNames/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.util.Set), hashCode/-467973558=([java.lang.String], int), var3746_hashCode/539623333=([java.util.Set], int), hashCode/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], int)}
; {var1510=org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey, var2028=r0, var979=r1, var2817=null_type, var730=r2, var1462=z0, var1444=java.util.Map, var674=r3, var1857=java.lang.Object, var3362=org.hibernate.internal.util.collections.CollectionHelper, var3876=$z1, var2159=java.util.HashSet, var1332=$r4, var3746=java.util.Set, var3012=$r5, var1288=java.util.Collection, var1195=java.util.Collections, var296=$r6, var3594=$i7, var526=$i1, var2923=$i0, var2616=$i8, var3772=$i2, var583=$z2, var954=$i5, var510=$i4, var353=$r7, var520=$i3, var822=$i6}
; {org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey=var1510, r0=var2028, r1=var979, null_type=var2817, r2=var730, z0=var1462, java.util.Map=var1444, r3=var674, java.lang.Object=var1857, org.hibernate.internal.util.collections.CollectionHelper=var3362, $z1=var3876, java.util.HashSet=var2159, $r4=var1332, java.util.Set=var3746, $r5=var3012, java.util.Collection=var1288, java.util.Collections=var1195, $r6=var296, $i7=var3594, $i1=var526, $i0=var2923, $i8=var2616, $i2=var3772, $z2=var583, $i5=var954, $i4=var510, $r7=var353, $i3=var520, $i6=var822}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	r3 := @parameter3: java.util.Map;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String query> = r1;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String collectionRole> = r2;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: boolean shallow> = z0;	$z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r3);	if $z1 == 0 goto $r4 = new java.util.HashSet;	$r4 = new java.util.HashSet;	$r5 = interfaceinvoke r3.<java.util.Map: java.util.Set keySet()>();	specialinvoke $r4.<java.util.HashSet: void <init>(java.util.Collection)>($r5);	$r6 = staticinvoke <java.util.Collections: java.util.Set unmodifiableSet(java.util.Set)>($r4);	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> = $r6;	$i7 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i1 = 29 * $i7;	$i0 = virtualinvoke r2.<java.lang.String: int hashCode()>();	$i8 = $i1 + $i0;	$i2 = 29 * $i8;	if z0 == 0 goto $z2 = 0;	$z2 = 0;	$i5 = $i2 + $z2;	$i4 = 29 * $i5;	$r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames>;	$i3 = interfaceinvoke $r7.<java.util.Set: int hashCode()>();	$i6 = $i4 + $i3;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: int hashCode> = $i6;	return
;block_num 5