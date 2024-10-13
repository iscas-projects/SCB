(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2843 0)
(declare-sort var743 0)
(declare-sort var617 0)
(declare-sort var1555 0)
(declare-sort var136 0)
(declare-sort var3740 0)
(declare-sort var2176 0)
(declare-sort var2566 0)
(declare-sort var1764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1555) void)
(declare-fun cast-from-var2843-to-var1555 (var2843) var1555)
(declare-fun query/1175036299 (var2843) String)
(declare-fun collectionRole/1175036299 (var2843) String)
(declare-fun shallow/1175036299 (var2843) Bool)
(declare-fun var136_isEmpty/-1503223188 (var617) Bool)
(declare-fun var3740-init () var3740)
(declare-fun var617_keySet/-712633290 (var617) var2176)
(declare-fun <init>/1161881499 (var3740 var2566) void)
(declare-fun cast-from-var2176-to-var2566 (var2176) var2566)
(declare-fun var1764_unmodifiableSet/219896279 (var2176) var2176)
(declare-fun cast-from-var3740-to-var2176 (var3740) var2176)
(declare-fun filterNames/1175036299 (var2843) var2176)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2176_hashCode/539623333 (var2176) Int)
(declare-fun hashCode/1175036299 (var2843) Int)
(declare-const null-var2843 var2843)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var617 var617)
(declare-const var2011 var2843) ; Statement: r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey 
(assert (not (= var2011 null-var2843)))
(declare-const var618 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var618 null-String)))
(declare-const var1490 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1490 null-String)))
(declare-const var1349 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1349 null-Bool)))
(declare-const var2360 var617) ; Statement: r3 := @parameter3: java.util.Map 
(assert (not (= var2360 null-var617)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2843-to-var1555 var2011))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2011!1 var2843)
(declare-const var2011!2 var2843)
(assert (not (= var2011!2 null-var2843)))
(assert (= (query/1175036299 var2011!2) var618)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String query> = r1 
(declare-const var2011!3 var2843)
(assert (not (= var2011!3 null-var2843)))
(assert (= (collectionRole/1175036299 var2011!3) var1490)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String collectionRole> = r2 
(declare-const var2011!4 var2843)
(assert (not (= var2011!4 null-var2843)))
(assert (= (shallow/1175036299 var2011!4) var1349)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: boolean shallow> = z0 
(define-const var1860 Bool (var136_isEmpty/-1503223188 var2360)) ; Statement: $z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r3) 
 ; Statement: if $z1 == 0 goto $r4 = new java.util.HashSet 
(assert (= (ite var1860 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1070 var3740 var3740-init) ; Statement: $r4 = new java.util.HashSet 
(define-const var3282 var2176 (var617_keySet/-712633290 var2360)) ; Statement: $r5 = interfaceinvoke r3.<java.util.Map: java.util.Set keySet()>() 
(assert true)
;(assert (<init>/1161881499 var1070 (cast-from-var2176-to-var2566 var3282))) ; Statement: specialinvoke $r4.<java.util.HashSet: void <init>(java.util.Collection)>($r5) 

(declare-const var1070!1 var3740)
(declare-const var3282!1 var2176)
(define-const var2346 var2176 (var1764_unmodifiableSet/219896279 (cast-from-var3740-to-var2176 var1070!1))) ; Statement: $r6 = staticinvoke <java.util.Collections: java.util.Set unmodifiableSet(java.util.Set)>($r4) 
(declare-const var2011!5 var2843)
(assert (not (= var2011!5 null-var2843)))
(assert (= (filterNames/1175036299 var2011!5) var2346)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> = $r6 
(assert true) ; Non Conditional
(assert true)
(define-const var15 Int (hashCode/-467973558 var618)) ; Statement: $i7 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var3380 Int (* 29 var15)) ; Statement: $i1 = 29 * $i7 
(assert true)
(define-const var3624 Int (hashCode/-467973558 var1490)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
(define-const var418 Int (+ var3380 var3624)) ; Statement: $i8 = $i1 + $i0 
(define-const var3420 Int (* 29 var418)) ; Statement: $i2 = 29 * $i8 
 ; Statement: if z0 == 0 goto $z2 = 0 
(assert (not (= (ite var1349 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1821 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $i5 = $i2 + $z2] 
(assert true) ; Non Conditional
(define-const var717 Int (+ var3420 (ite var1821 1 0))) ; Statement: $i5 = $i2 + $z2 
(define-const var707 Int (* 29 var717)) ; Statement: $i4 = 29 * $i5 
(define-const var1474 var2176 (filterNames/1175036299 var2011!5)) ; Statement: $r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> 
(define-const var636 Int (var2176_hashCode/539623333 var1474)) ; Statement: $i3 = interfaceinvoke $r7.<java.util.Set: int hashCode()>() 
(define-const var1491 Int (+ var707 var636)) ; Statement: $i6 = $i4 + $i3 
(declare-const var2011!6 var2843)
(assert (not (= var2011!6 null-var2843)))
(assert (= (hashCode/1175036299 var2011!6) var1491)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: int hashCode> = $i6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2843-to-var1555=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.Object), query/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.String), collectionRole/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.String), shallow/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], boolean), var136_isEmpty/-1503223188=([java.util.Map], boolean), var3740-init=([], java.util.HashSet), var617_keySet/-712633290=([java.util.Map], java.util.Set), <init>/1161881499=([java.util.HashSet, java.util.Collection], void), cast-from-var2176-to-var2566=([java.util.Set], java.util.Collection), var1764_unmodifiableSet/219896279=([java.util.Set], java.util.Set), cast-from-var3740-to-var2176=([java.util.HashSet], java.util.Set), filterNames/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.util.Set), hashCode/-467973558=([java.lang.String], int), var2176_hashCode/539623333=([java.util.Set], int), hashCode/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], int)}
; {var2843=org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey, var2011=r0, var618=r1, var743=null_type, var1490=r2, var1349=z0, var617=java.util.Map, var2360=r3, var1555=java.lang.Object, var136=org.hibernate.internal.util.collections.CollectionHelper, var1860=$z1, var3740=java.util.HashSet, var1070=$r4, var2176=java.util.Set, var3282=$r5, var2566=java.util.Collection, var1764=java.util.Collections, var2346=$r6, var15=$i7, var3380=$i1, var3624=$i0, var418=$i8, var3420=$i2, var1821=$z2, var717=$i5, var707=$i4, var1474=$r7, var636=$i3, var1491=$i6}
; {org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey=var2843, r0=var2011, r1=var618, null_type=var743, r2=var1490, z0=var1349, java.util.Map=var617, r3=var2360, java.lang.Object=var1555, org.hibernate.internal.util.collections.CollectionHelper=var136, $z1=var1860, java.util.HashSet=var3740, $r4=var1070, java.util.Set=var2176, $r5=var3282, java.util.Collection=var2566, java.util.Collections=var1764, $r6=var2346, $i7=var15, $i1=var3380, $i0=var3624, $i8=var418, $i2=var3420, $z2=var1821, $i5=var717, $i4=var707, $r7=var1474, $i3=var636, $i6=var1491}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	r3 := @parameter3: java.util.Map;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String query> = r1;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String collectionRole> = r2;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: boolean shallow> = z0;	$z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r3);	if $z1 == 0 goto $r4 = new java.util.HashSet;	$r4 = new java.util.HashSet;	$r5 = interfaceinvoke r3.<java.util.Map: java.util.Set keySet()>();	specialinvoke $r4.<java.util.HashSet: void <init>(java.util.Collection)>($r5);	$r6 = staticinvoke <java.util.Collections: java.util.Set unmodifiableSet(java.util.Set)>($r4);	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> = $r6;	$i7 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i1 = 29 * $i7;	$i0 = virtualinvoke r2.<java.lang.String: int hashCode()>();	$i8 = $i1 + $i0;	$i2 = 29 * $i8;	if z0 == 0 goto $z2 = 0;	$z2 = 1;	goto [?= $i5 = $i2 + $z2];	$i5 = $i2 + $z2;	$i4 = 29 * $i5;	$r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames>;	$i3 = interfaceinvoke $r7.<java.util.Set: int hashCode()>();	$i6 = $i4 + $i3;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: int hashCode> = $i6;	return
;block_num 5