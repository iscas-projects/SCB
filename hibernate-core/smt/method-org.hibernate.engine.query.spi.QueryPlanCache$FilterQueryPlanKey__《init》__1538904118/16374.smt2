(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3754 0)
(declare-sort var3086 0)
(declare-sort var3087 0)
(declare-sort var2940 0)
(declare-sort var919 0)
(declare-sort var2255 0)
(declare-sort var1683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2940) void)
(declare-fun cast-from-var3754-to-var2940 (var3754) var2940)
(declare-fun query/1175036299 (var3754) String)
(declare-fun collectionRole/1175036299 (var3754) String)
(declare-fun shallow/1175036299 (var3754) Bool)
(declare-fun var919_isEmpty/-1503223188 (var3087) Bool)
(declare-fun var1683_emptySet/2131139019 () var2255)
(declare-fun filterNames/1175036299 (var3754) var2255)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2255_hashCode/539623333 (var2255) Int)
(declare-fun hashCode/1175036299 (var3754) Int)
(declare-const null-var3754 var3754)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3087 var3087)
(declare-const var3348 var3754) ; Statement: r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey 
(assert (not (= var3348 null-var3754)))
(declare-const var3072 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3072 null-String)))
(declare-const var1290 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1290 null-String)))
(declare-const var2131 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2131 null-Bool)))
(declare-const var651 var3087) ; Statement: r3 := @parameter3: java.util.Map 
(assert (not (= var651 null-var3087)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3754-to-var2940 var3348))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3348!1 var3754)
(declare-const var3348!2 var3754)
(assert (not (= var3348!2 null-var3754)))
(assert (= (query/1175036299 var3348!2) var3072)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String query> = r1 
(declare-const var3348!3 var3754)
(assert (not (= var3348!3 null-var3754)))
(assert (= (collectionRole/1175036299 var3348!3) var1290)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String collectionRole> = r2 
(declare-const var3348!4 var3754)
(assert (not (= var3348!4 null-var3754)))
(assert (= (shallow/1175036299 var3348!4) var2131)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: boolean shallow> = z0 
(define-const var495 Bool (var919_isEmpty/-1503223188 var651)) ; Statement: $z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r3) 
 ; Statement: if $z1 == 0 goto $r4 = new java.util.HashSet 
(assert (not (= (ite var495 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3638 var2255 var1683_emptySet/2131139019) ; Statement: $r8 = staticinvoke <java.util.Collections: java.util.Set emptySet()>() 
(declare-const var3348!5 var3754)
(assert (not (= var3348!5 null-var3754)))
(assert (= (filterNames/1175036299 var3348!5) var3638)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> = $r8 
 ; Statement: goto [?= $i7 = virtualinvoke r1.<java.lang.String: int hashCode()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1619 Int (hashCode/-467973558 var3072)) ; Statement: $i7 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var478 Int (* 29 var1619)) ; Statement: $i1 = 29 * $i7 
(assert true)
(define-const var3599 Int (hashCode/-467973558 var1290)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
(define-const var1947 Int (+ var478 var3599)) ; Statement: $i8 = $i1 + $i0 
(define-const var2113 Int (* 29 var1947)) ; Statement: $i2 = 29 * $i8 
 ; Statement: if z0 == 0 goto $z2 = 0 
(assert (= (ite var2131 1 0) 0)) ; Cond: z0 == 0 
(define-const var1577 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3368 Int (+ var2113 (ite var1577 1 0))) ; Statement: $i5 = $i2 + $z2 
(define-const var3504 Int (* 29 var3368)) ; Statement: $i4 = 29 * $i5 
(define-const var3376 var2255 (filterNames/1175036299 var3348!5)) ; Statement: $r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> 
(define-const var3339 Int (var2255_hashCode/539623333 var3376)) ; Statement: $i3 = interfaceinvoke $r7.<java.util.Set: int hashCode()>() 
(define-const var2122 Int (+ var3504 var3339)) ; Statement: $i6 = $i4 + $i3 
(declare-const var3348!6 var3754)
(assert (not (= var3348!6 null-var3754)))
(assert (= (hashCode/1175036299 var3348!6) var2122)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: int hashCode> = $i6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3754-to-var2940=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.Object), query/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.String), collectionRole/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.String), shallow/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], boolean), var919_isEmpty/-1503223188=([java.util.Map], boolean), var1683_emptySet/2131139019=([], java.util.Set), filterNames/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.util.Set), hashCode/-467973558=([java.lang.String], int), var2255_hashCode/539623333=([java.util.Set], int), hashCode/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], int)}
; {var3754=org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey, var3348=r0, var3072=r1, var3086=null_type, var1290=r2, var2131=z0, var3087=java.util.Map, var651=r3, var2940=java.lang.Object, var919=org.hibernate.internal.util.collections.CollectionHelper, var495=$z1, var2255=java.util.Set, var1683=java.util.Collections, var3638=$r8, var1619=$i7, var478=$i1, var3599=$i0, var1947=$i8, var2113=$i2, var1577=$z2, var3368=$i5, var3504=$i4, var3376=$r7, var3339=$i3, var2122=$i6}
; {org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey=var3754, r0=var3348, r1=var3072, null_type=var3086, r2=var1290, z0=var2131, java.util.Map=var3087, r3=var651, java.lang.Object=var2940, org.hibernate.internal.util.collections.CollectionHelper=var919, $z1=var495, java.util.Set=var2255, java.util.Collections=var1683, $r8=var3638, $i7=var1619, $i1=var478, $i0=var3599, $i8=var1947, $i2=var2113, $z2=var1577, $i5=var3368, $i4=var3504, $r7=var3376, $i3=var3339, $i6=var2122}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	r3 := @parameter3: java.util.Map;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String query> = r1;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String collectionRole> = r2;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: boolean shallow> = z0;	$z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r3);	if $z1 == 0 goto $r4 = new java.util.HashSet;	$r8 = staticinvoke <java.util.Collections: java.util.Set emptySet()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> = $r8;	goto [?= $i7 = virtualinvoke r1.<java.lang.String: int hashCode()>()];	$i7 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i1 = 29 * $i7;	$i0 = virtualinvoke r2.<java.lang.String: int hashCode()>();	$i8 = $i1 + $i0;	$i2 = 29 * $i8;	if z0 == 0 goto $z2 = 0;	$z2 = 0;	$i5 = $i2 + $z2;	$i4 = 29 * $i5;	$r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames>;	$i3 = interfaceinvoke $r7.<java.util.Set: int hashCode()>();	$i6 = $i4 + $i3;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: int hashCode> = $i6;	return
;block_num 5