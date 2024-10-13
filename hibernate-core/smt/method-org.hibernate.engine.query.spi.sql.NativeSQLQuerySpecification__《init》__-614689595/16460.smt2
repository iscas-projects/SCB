(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3726 0)
(declare-sort var2548 0)
(declare-sort var1128 0)
(declare-sort var254 0)
(declare-sort var3586 0)
(declare-sort var3813 0)
(declare-sort var1366 0)
(declare-sort var464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3586) void)
(declare-fun cast-from-var3726-to-var3586 (var3726) var3586)
(declare-fun queryString/616247236 (var3726) String)
(declare-fun queryReturns/616247236 (var3726) (Array Int var1128))
(declare-fun var3813-init () var3813)
(declare-fun <init>/1161881499 (var3813 var254) void)
(declare-fun var464_unmodifiableSet/219896279 (var1366) var1366)
(declare-fun cast-from-var3813-to-var1366 (var3813) var1366)
(declare-fun querySpaces/616247236 (var3726) var1366)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1366_hashCode/539623333 (var1366) Int)
(declare-fun hashCode/616247236 (var3726) Int)
(declare-const null-var3726 var3726)
(declare-const null-String String)
(declare-const null-__Array__Int__var1128__ (Array Int var1128))
(declare-const null-var254 var254)
(declare-const var2335 var3726) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification 
(assert (not (= var2335 null-var3726)))
(declare-const var1959 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1959 null-String)))
(declare-const var8 (Array Int var1128)) ; Statement: r2 := @parameter1: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] 
(assert (not (= var8 null-__Array__Int__var1128__)))
(declare-const var834 var254) ; Statement: r3 := @parameter2: java.util.Collection 
(assert (not (= var834 null-var254)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3726-to-var3586 var2335))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2335!1 var3726)
(declare-const var2335!2 var3726)
(assert (not (= var2335!2 null-var3726)))
(assert (= (queryString/616247236 var2335!2) var1959)) ; Statement: r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.lang.String queryString> = r1 
(declare-const var2335!3 var3726)
(assert (not (= var2335!3 null-var3726)))
(assert (= (queryReturns/616247236 var2335!3) var8)) ; Statement: r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] queryReturns> = r2 
 ; Statement: if r3 != null goto $r4 = new java.util.HashSet 
(assert (not (= var834 null-var254))) ; Cond: r3 != null 
(define-const var181 var3813 var3813-init) ; Statement: $r4 = new java.util.HashSet 
(assert true)
;(assert (<init>/1161881499 var181 var834)) ; Statement: specialinvoke $r4.<java.util.HashSet: void <init>(java.util.Collection)>(r3) 

(declare-const var181!1 var3813)
(declare-const var834!1 var254)
(define-const var1794 var1366 (var464_unmodifiableSet/219896279 (cast-from-var3813-to-var1366 var181!1))) ; Statement: $r5 = staticinvoke <java.util.Collections: java.util.Set unmodifiableSet(java.util.Set)>($r4) 
(declare-const var2335!4 var3726)
(assert (not (= var2335!4 null-var3726)))
(assert (= (querySpaces/616247236 var2335!4) var1794)) ; Statement: r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.util.Set querySpaces> = $r5 
(assert true) ; Non Conditional
(assert true)
(define-const var2194 Int (hashCode/-467973558 var1959)) ; Statement: $i4 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var3632 Int (* 29 var2194)) ; Statement: $i1 = 29 * $i4 
(define-const var353 var1366 (querySpaces/616247236 var2335!4)) ; Statement: $r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.util.Set querySpaces> 
(define-const var2696 Int (var1366_hashCode/539623333 var353)) ; Statement: $i0 = interfaceinvoke $r6.<java.util.Set: int hashCode()>() 
(define-const var3485 Int (+ var3632 var2696)) ; Statement: $i5 = $i1 + $i0 
(define-const var225 Int var3485) ; Statement: i6 = $i5 
(define-const var3598 (Array Int var1128) (queryReturns/616247236 var2335!4)) ; Statement: $r7 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] queryReturns> 
 ; Statement: if $r7 == null goto r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: int hashCode> = i6 
(assert (= var3598 null-__Array__Int__var1128__)) ; Cond: $r7 == null 
(declare-const var2335!5 var3726)
(assert (not (= var2335!5 null-var3726)))
(assert (= (hashCode/616247236 var2335!5) var225)) ; Statement: r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: int hashCode> = i6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3726-to-var3586=([org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification], java.lang.Object), queryString/616247236=([org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification], java.lang.String), queryReturns/616247236=([org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification], org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[]), var3813-init=([], java.util.HashSet), <init>/1161881499=([java.util.HashSet, java.util.Collection], void), var464_unmodifiableSet/219896279=([java.util.Set], java.util.Set), cast-from-var3813-to-var1366=([java.util.HashSet], java.util.Set), querySpaces/616247236=([org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification], java.util.Set), hashCode/-467973558=([java.lang.String], int), var1366_hashCode/539623333=([java.util.Set], int), hashCode/616247236=([org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification], int)}
; {var3726=org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification, var2335=r0, var1959=r1, var2548=null_type, var1128=org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn, var8=r2, var254=java.util.Collection, var834=r3, var3586=java.lang.Object, var3813=java.util.HashSet, var181=$r4, var1366=java.util.Set, var464=java.util.Collections, var1794=$r5, var2194=$i4, var3632=$i1, var353=$r6, var2696=$i0, var3485=$i5, var225=i6, var3598=$r7}
; {org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification=var3726, r0=var2335, r1=var1959, null_type=var2548, org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn=var1128, r2=var8, java.util.Collection=var254, r3=var834, java.lang.Object=var3586, java.util.HashSet=var3813, $r4=var181, java.util.Set=var1366, java.util.Collections=var464, $r5=var1794, $i4=var2194, $i1=var3632, $r6=var353, $i0=var2696, $i5=var3485, i6=var225, $r7=var3598}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[];	r3 := @parameter2: java.util.Collection;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.lang.String queryString> = r1;	r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] queryReturns> = r2;	if r3 != null goto $r4 = new java.util.HashSet;	$r4 = new java.util.HashSet;	specialinvoke $r4.<java.util.HashSet: void <init>(java.util.Collection)>(r3);	$r5 = staticinvoke <java.util.Collections: java.util.Set unmodifiableSet(java.util.Set)>($r4);	r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.util.Set querySpaces> = $r5;	$i4 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i1 = 29 * $i4;	$r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.util.Set querySpaces>;	$i0 = interfaceinvoke $r6.<java.util.Set: int hashCode()>();	$i5 = $i1 + $i0;	i6 = $i5;	$r7 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] queryReturns>;	if $r7 == null goto r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: int hashCode> = i6;	r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: int hashCode> = i6;	return
;block_num 4