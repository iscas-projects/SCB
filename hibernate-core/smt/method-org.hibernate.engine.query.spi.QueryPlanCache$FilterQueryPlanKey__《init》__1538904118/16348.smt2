(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2450 0)
(declare-sort var3876 0)
(declare-sort var1878 0)
(declare-sort var3708 0)
(declare-sort var1732 0)
(declare-sort var2965 0)
(declare-sort var2901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3708) void)
(declare-fun cast-from-var2450-to-var3708 (var2450) var3708)
(declare-fun query/1175036299 (var2450) String)
(declare-fun collectionRole/1175036299 (var2450) String)
(declare-fun shallow/1175036299 (var2450) Bool)
(declare-fun var1732_isEmpty/-1503223188 (var1878) Bool)
(declare-fun var2901_emptySet/2131139019 () var2965)
(declare-fun filterNames/1175036299 (var2450) var2965)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2965_hashCode/539623333 (var2965) Int)
(declare-fun hashCode/1175036299 (var2450) Int)
(declare-const null-var2450 var2450)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1878 var1878)
(declare-const var1635 var2450) ; Statement: r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey 
(assert (not (= var1635 null-var2450)))
(declare-const var1876 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1876 null-String)))
(declare-const var438 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var438 null-String)))
(declare-const var2127 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2127 null-Bool)))
(declare-const var614 var1878) ; Statement: r3 := @parameter3: java.util.Map 
(assert (not (= var614 null-var1878)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2450-to-var3708 var1635))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1635!1 var2450)
(declare-const var1635!2 var2450)
(assert (not (= var1635!2 null-var2450)))
(assert (= (query/1175036299 var1635!2) var1876)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String query> = r1 
(declare-const var1635!3 var2450)
(assert (not (= var1635!3 null-var2450)))
(assert (= (collectionRole/1175036299 var1635!3) var438)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String collectionRole> = r2 
(declare-const var1635!4 var2450)
(assert (not (= var1635!4 null-var2450)))
(assert (= (shallow/1175036299 var1635!4) var2127)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: boolean shallow> = z0 
(define-const var3903 Bool (var1732_isEmpty/-1503223188 var614)) ; Statement: $z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r3) 
 ; Statement: if $z1 == 0 goto $r4 = new java.util.HashSet 
(assert (not (= (ite var3903 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1051 var2965 var2901_emptySet/2131139019) ; Statement: $r8 = staticinvoke <java.util.Collections: java.util.Set emptySet()>() 
(declare-const var1635!5 var2450)
(assert (not (= var1635!5 null-var2450)))
(assert (= (filterNames/1175036299 var1635!5) var1051)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> = $r8 
 ; Statement: goto [?= $i7 = virtualinvoke r1.<java.lang.String: int hashCode()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2109 Int (hashCode/-467973558 var1876)) ; Statement: $i7 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var2539 Int (* 29 var2109)) ; Statement: $i1 = 29 * $i7 
(assert true)
(define-const var984 Int (hashCode/-467973558 var438)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
(define-const var1072 Int (+ var2539 var984)) ; Statement: $i8 = $i1 + $i0 
(define-const var3352 Int (* 29 var1072)) ; Statement: $i2 = 29 * $i8 
 ; Statement: if z0 == 0 goto $z2 = 0 
(assert (not (= (ite var2127 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2687 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $i5 = $i2 + $z2] 
(assert true) ; Non Conditional
(define-const var276 Int (+ var3352 (ite var2687 1 0))) ; Statement: $i5 = $i2 + $z2 
(define-const var3077 Int (* 29 var276)) ; Statement: $i4 = 29 * $i5 
(define-const var2372 var2965 (filterNames/1175036299 var1635!5)) ; Statement: $r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> 
(define-const var1386 Int (var2965_hashCode/539623333 var2372)) ; Statement: $i3 = interfaceinvoke $r7.<java.util.Set: int hashCode()>() 
(define-const var483 Int (+ var3077 var1386)) ; Statement: $i6 = $i4 + $i3 
(declare-const var1635!6 var2450)
(assert (not (= var1635!6 null-var2450)))
(assert (= (hashCode/1175036299 var1635!6) var483)) ; Statement: r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: int hashCode> = $i6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2450-to-var3708=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.Object), query/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.String), collectionRole/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.lang.String), shallow/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], boolean), var1732_isEmpty/-1503223188=([java.util.Map], boolean), var2901_emptySet/2131139019=([], java.util.Set), filterNames/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], java.util.Set), hashCode/-467973558=([java.lang.String], int), var2965_hashCode/539623333=([java.util.Set], int), hashCode/1175036299=([org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey], int)}
; {var2450=org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey, var1635=r0, var1876=r1, var3876=null_type, var438=r2, var2127=z0, var1878=java.util.Map, var614=r3, var3708=java.lang.Object, var1732=org.hibernate.internal.util.collections.CollectionHelper, var3903=$z1, var2965=java.util.Set, var2901=java.util.Collections, var1051=$r8, var2109=$i7, var2539=$i1, var984=$i0, var1072=$i8, var3352=$i2, var2687=$z2, var276=$i5, var3077=$i4, var2372=$r7, var1386=$i3, var483=$i6}
; {org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey=var2450, r0=var1635, r1=var1876, null_type=var3876, r2=var438, z0=var2127, java.util.Map=var1878, r3=var614, java.lang.Object=var3708, org.hibernate.internal.util.collections.CollectionHelper=var1732, $z1=var3903, java.util.Set=var2965, java.util.Collections=var2901, $r8=var1051, $i7=var2109, $i1=var2539, $i0=var984, $i8=var1072, $i2=var3352, $z2=var2687, $i5=var276, $i4=var3077, $r7=var2372, $i3=var1386, $i6=var483}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	r3 := @parameter3: java.util.Map;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String query> = r1;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.lang.String collectionRole> = r2;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: boolean shallow> = z0;	$z1 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: boolean isEmpty(java.util.Map)>(r3);	if $z1 == 0 goto $r4 = new java.util.HashSet;	$r8 = staticinvoke <java.util.Collections: java.util.Set emptySet()>();	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames> = $r8;	goto [?= $i7 = virtualinvoke r1.<java.lang.String: int hashCode()>()];	$i7 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i1 = 29 * $i7;	$i0 = virtualinvoke r2.<java.lang.String: int hashCode()>();	$i8 = $i1 + $i0;	$i2 = 29 * $i8;	if z0 == 0 goto $z2 = 0;	$z2 = 1;	goto [?= $i5 = $i2 + $z2];	$i5 = $i2 + $z2;	$i4 = 29 * $i5;	$r7 = r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: java.util.Set filterNames>;	$i3 = interfaceinvoke $r7.<java.util.Set: int hashCode()>();	$i6 = $i4 + $i3;	r0.<org.hibernate.engine.query.spi.QueryPlanCache$FilterQueryPlanKey: int hashCode> = $i6;	return
;block_num 5