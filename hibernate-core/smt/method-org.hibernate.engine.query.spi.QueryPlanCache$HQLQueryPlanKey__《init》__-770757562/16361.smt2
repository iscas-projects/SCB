(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2299 0)
(declare-sort var3962 0)
(declare-sort var2949 0)
(declare-sort var1325 0)
(declare-sort var239 0)
(declare-sort var1993 0)
(declare-sort var1042 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1325) void)
(declare-fun cast-from-var2299-to-var1325 (var2299) var1325)
(declare-fun query/490872172 (var2299) String)
(declare-fun shallow/490872172 (var2299) Bool)
(declare-fun var239_isEmpty/-1503223188 (var2949) Bool)
(declare-fun var1042_emptySet/2131139019 () var1993)
(declare-fun filterKeys/490872172 (var2299) var1993)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1993_hashCode/539623333 (var1993) Int)
(declare-fun hashCode/490872172 (var2299) Int)
(declare-const null-var2299 var2299)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2949 var2949)
(declare-const var1503 var2299) ; Statement: r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey 
(assert (not (= var1503 null-var2299)))
(declare-const var3504 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3504 null-String)))
(declare-const var691 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var691 null-Bool)))
(declare-const var2181 var2949) ; Statement: r2 := @parameter2: java.util.Map 
(assert (not (= var2181 null-var2949)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2299-to-var1325 var1503))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1503!1 var2299)
(declare-const var1503!2 var2299)
(assert (not (= var1503!2 null-var2299)))
(assert (= (query/490872172 var1503!2) var3504)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.lang.String query> = r1 
(declare-const var1503!3 var2299)
(assert (not (= var1503!3 null-var2299)))
(assert (= (shallow/490872172 var1503!3) var691)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: boolean shallow> = z0 
(define-const var3303 Bool (var239_isEmpty/-1503223188 var2181)) ; Statement: $z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r2) 
 ; Statement: if $z1 == 0 goto $r3 = new java.util.HashSet 
(assert (not (= (ite var3303 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var675 var1993 var1042_emptySet/2131139019) ; Statement: $r11 = staticinvoke <java.util.Collections: java.util.Set emptySet()>() 
(declare-const var1503!4 var2299)
(assert (not (= var1503!4 null-var2299)))
(assert (= (filterKeys/490872172 var1503!4) var675)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.util.Set filterKeys> = $r11 
 ; Statement: goto [?= $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3432 Int (hashCode/-467973558 var3504)) ; Statement: $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var2204 Int (* 29 var3432)) ; Statement: $i1 = 29 * $i6 
 ; Statement: if z0 == 0 goto $z3 = 0 
(assert (not (= (ite var691 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3825 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= $i4 = $i1 + $z3] 
(assert true) ; Non Conditional
(define-const var3947 Int (+ var2204 (ite var3825 1 0))) ; Statement: $i4 = $i1 + $z3 
(define-const var193 Int (* 29 var3947)) ; Statement: $i3 = 29 * $i4 
(define-const var2142 var1993 (filterKeys/490872172 var1503!4)) ; Statement: $r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.util.Set filterKeys> 
(define-const var2823 Int (var1993_hashCode/539623333 var2142)) ; Statement: $i2 = interfaceinvoke $r7.<java.util.Set: int hashCode()>() 
(define-const var3148 Int (+ var193 var2823)) ; Statement: $i5 = $i3 + $i2 
(declare-const var1503!5 var2299)
(assert (not (= var1503!5 null-var2299)))
(assert (= (hashCode/490872172 var1503!5) var3148)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: int hashCode> = $i5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2299-to-var1325=([org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey], java.lang.Object), query/490872172=([org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey], java.lang.String), shallow/490872172=([org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey], boolean), var239_isEmpty/-1503223188=([java.util.Map], boolean), var1042_emptySet/2131139019=([], java.util.Set), filterKeys/490872172=([org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey], java.util.Set), hashCode/-467973558=([java.lang.String], int), var1993_hashCode/539623333=([java.util.Set], int), hashCode/490872172=([org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey], int)}
; {var2299=org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey, var1503=r0, var3504=r1, var3962=null_type, var691=z0, var2949=java.util.Map, var2181=r2, var1325=java.lang.Object, var239=org.hibernate.internal.util.collections.CollectionHelper, var3303=$z1, var1993=java.util.Set, var1042=java.util.Collections, var675=$r11, var3432=$i6, var2204=$i1, var3825=$z3, var3947=$i4, var193=$i3, var2142=$r7, var2823=$i2, var3148=$i5}
; {org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey=var2299, r0=var1503, r1=var3504, null_type=var3962, z0=var691, java.util.Map=var2949, r2=var2181, java.lang.Object=var1325, org.hibernate.internal.util.collections.CollectionHelper=var239, $z1=var3303, java.util.Set=var1993, java.util.Collections=var1042, $r11=var675, $i6=var3432, $i1=var2204, $z3=var3825, $i4=var3947, $i3=var193, $r7=var2142, $i2=var2823, $i5=var3148}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	r2 := @parameter2: java.util.Map;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.lang.String query> = r1;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: boolean shallow> = z0;	$z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r2);	if $z1 == 0 goto $r3 = new java.util.HashSet;	$r11 = staticinvoke <java.util.Collections: java.util.Set emptySet()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.util.Set filterKeys> = $r11;	goto [?= $i6 = virtualinvoke r1.<java.lang.String: int hashCode()>()];	$i6 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i1 = 29 * $i6;	if z0 == 0 goto $z3 = 0;	$z3 = 1;	goto [?= $i4 = $i1 + $z3];	$i4 = $i1 + $z3;	$i3 = 29 * $i4;	$r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: java.util.Set filterKeys>;	$i2 = interfaceinvoke $r7.<java.util.Set: int hashCode()>();	$i5 = $i3 + $i2;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$HQLQueryPlanKey: int hashCode> = $i5;	return
;block_num 5