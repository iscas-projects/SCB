(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1890 0)
(declare-sort var546 0)
(declare-sort var1862 0)
(declare-sort var464 0)
(declare-sort var2775 0)
(declare-sort var3102 0)
(declare-sort var3625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var464) void)
(declare-fun cast-from-var1890-to-var464 (var1890) var464)
(declare-fun query/490872172 (var1890) String)
(declare-fun shallow/490872172 (var1890) Bool)
(declare-fun var2775_isEmpty/-1503223188 (var1862) Bool)
(declare-fun var3625_emptySet/2131139019 () var3102)
(declare-fun filterKeys/490872172 (var1890) var3102)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3102_hashCode/539623333 (var3102) Int)
(declare-fun hashCode/490872172 (var1890) Int)
(declare-const null-var1890 var1890)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1862 var1862)
(declare-const var3072 var1890) ; Statement: r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey 
(assert (not (= var3072 null-var1890)))
(declare-const var2542 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2542 null-String)))
(declare-const var975 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var975 null-Bool)))
(declare-const var1969 var1862) ; Statement: r2 := @parameter2: java.util.Map 
(assert (not (= var1969 null-var1862)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1890-to-var464 var3072))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3072!1 var1890)
(declare-const var3072!2 var1890)
(assert (not (= var3072!2 null-var1890)))
(assert (= (query/490872172 var3072!2) var2542)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.lang.String query> = r1 
(declare-const var3072!3 var1890)
(assert (not (= var3072!3 null-var1890)))
(assert (= (shallow/490872172 var3072!3) var975)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: boolean shallow> = z0 
(define-const var3312 Bool (var2775_isEmpty/-1503223188 var1969)) ; Statement: $z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r2) 
 ; Statement: if $z1 == 0 goto $r3 = new java.util.HashSet 
(assert (not (= (ite var3312 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var156 var3102 var3625_emptySet/2131139019) ; Statement: $r11 = staticinvoke <java.util.Collections: java.util.Set emptySet()>() 
(declare-const var3072!4 var1890)
(assert (not (= var3072!4 null-var1890)))
(assert (= (filterKeys/490872172 var3072!4) var156)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.util.Set filterKeys> = $r11 
 ; Statement: goto [?= $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3539 Int (hashCode/-467973558 var2542)) ; Statement: $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var410 Int (* 29 var3539)) ; Statement: $i1 = 29 * $i6 
 ; Statement: if z0 == 0 goto $z3 = 0 
(assert (= (ite var975 1 0) 0)) ; Cond: z0 == 0 
(define-const var2954 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var3207 Int (+ var410 (ite var2954 1 0))) ; Statement: $i4 = $i1 + $z3 
(define-const var3306 Int (* 29 var3207)) ; Statement: $i3 = 29 * $i4 
(define-const var389 var3102 (filterKeys/490872172 var3072!4)) ; Statement: $r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.util.Set filterKeys> 
(define-const var3566 Int (var3102_hashCode/539623333 var389)) ; Statement: $i2 = interfaceinvoke $r7.<java.util.Set: int hashCode()>() 
(define-const var1536 Int (+ var3306 var3566)) ; Statement: $i5 = $i3 + $i2 
(declare-const var3072!5 var1890)
(assert (not (= var3072!5 null-var1890)))
(assert (= (hashCode/490872172 var3072!5) var1536)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: int hashCode> = $i5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1890-to-var464=([org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey], java.lang.Object), query/490872172=([org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey], java.lang.String), shallow/490872172=([org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey], boolean), var2775_isEmpty/-1503223188=([java.util.Map], boolean), var3625_emptySet/2131139019=([], java.util.Set), filterKeys/490872172=([org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey], java.util.Set), hashCode/-467973558=([java.lang.String], int), var3102_hashCode/539623333=([java.util.Set], int), hashCode/490872172=([org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey], int)}
; {var1890=org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey, var3072=r0, var2542=r1, var546=null_type, var975=z0, var1862=java.util.Map, var1969=r2, var464=java.lang.Object, var2775=org.hibernate.internal.util.collections.CollectionHelper, var3312=$z1, var3102=java.util.Set, var3625=java.util.Collections, var156=$r11, var3539=$i6, var410=$i1, var2954=$z3, var3207=$i4, var3306=$i3, var389=$r7, var3566=$i2, var1536=$i5}
; {org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey=var1890, r0=var3072, r1=var2542, null_type=var546, z0=var975, java.util.Map=var1862, r2=var1969, java.lang.Object=var464, org.hibernate.internal.util.collections.CollectionHelper=var2775, $z1=var3312, java.util.Set=var3102, java.util.Collections=var3625, $r11=var156, $i6=var3539, $i1=var410, $z3=var2954, $i4=var3207, $i3=var3306, $r7=var389, $i2=var3566, $i5=var1536}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	r2 := @parameter2: java.util.Map;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.lang.String query> = r1;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: boolean shallow> = z0;	$z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r2);	if $z1 == 0 goto $r3 = new java.util.HashSet;	$r11 = staticinvoke <java.util.Collections: java.util.Set emptySet()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.util.Set filterKeys> = $r11;	goto [?= $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>()];	$i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i1 = 29 * $i6;	if z0 == 0 goto $z3 = 0;	$z3 = 0;	$i4 = $i1 + $z3;	$i3 = 29 * $i4;	$r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.util.Set filterKeys>;	$i2 = interfaceinvoke $r7.<java.util.Set: int hashCode()>();	$i5 = $i3 + $i2;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: int hashCode> = $i5;	return
;block_num 5