(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2078 0)
(declare-sort var2933 0)
(declare-sort var977 0)
(declare-sort var2713 0)
(declare-sort var3879 0)
(declare-sort var1097 0)
(declare-sort var572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3879) void)
(declare-fun cast-from-var2078-to-var3879 (var2078) var3879)
(declare-fun queryString/616247236 (var2078) String)
(declare-fun queryReturns/616247236 (var2078) (Array Int var977))
(declare-fun querySpaces/616247236 (var2078) var1097)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1097_hashCode/539623333 (var1097) Int)
(declare-fun hashCode/616247236 (var2078) Int)
(declare-const null-var2078 var2078)
(declare-const null-String String)
(declare-const null-__Array__Int__var977__ (Array Int var977))
(declare-const null-var2713 var2713)
(declare-const var572-EMPTY_SET var1097)
(declare-const var703 var2078) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification 
(assert (not (= var703 null-var2078)))
(declare-const var22 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var22 null-String)))
(declare-const var1287 (Array Int var977)) ; Statement: r2 := @parameter1: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] 
(assert (not (= var1287 null-__Array__Int__var977__)))
(declare-const var3361 var2713) ; Statement: r3 := @parameter2: java.util.Collection 
(assert (not (= var3361 null-var2713)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2078-to-var3879 var703))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var703!1 var2078)
(declare-const var703!2 var2078)
(assert (not (= var703!2 null-var2078)))
(assert (= (queryString/616247236 var703!2) var22)) ; Statement: r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.lang.String queryString> = r1 
(declare-const var703!3 var2078)
(assert (not (= var703!3 null-var2078)))
(assert (= (queryReturns/616247236 var703!3) var1287)) ; Statement: r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] queryReturns> = r2 
 ; Statement: if r3 != null goto $r4 = new java.util.HashSet 
(assert (not (not (= var3361 null-var2713)))) ; Negate: Cond: r3 != null  
(define-const var2984 var1097 var572-EMPTY_SET) ; Statement: $r10 = <java.util.Collections: java.util.Set EMPTY_SET> 
(declare-const var703!4 var2078)
(assert (not (= var703!4 null-var2078)))
(assert (= (querySpaces/616247236 var703!4) var2984)) ; Statement: r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.util.Set querySpaces> = $r10 
 ; Statement: goto [?= $i4 = virtualinvoke r1.<java.lang.String: int hashCode()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var924 Int (hashCode/-467973558 var22)) ; Statement: $i4 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var1564 Int (* 29 var924)) ; Statement: $i1 = 29 * $i4 
(define-const var1119 var1097 (querySpaces/616247236 var703!4)) ; Statement: $r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.util.Set querySpaces> 
(define-const var5 Int (var1097_hashCode/539623333 var1119)) ; Statement: $i0 = interfaceinvoke $r6.<java.util.Set: int hashCode()>() 
(define-const var3590 Int (+ var1564 var5)) ; Statement: $i5 = $i1 + $i0 
(define-const var918 Int var3590) ; Statement: i6 = $i5 
(define-const var1679 (Array Int var977) (queryReturns/616247236 var703!4)) ; Statement: $r7 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] queryReturns> 
 ; Statement: if $r7 == null goto r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: int hashCode> = i6 
(assert (= var1679 null-__Array__Int__var977__)) ; Cond: $r7 == null 
(declare-const var703!5 var2078)
(assert (not (= var703!5 null-var2078)))
(assert (= (hashCode/616247236 var703!5) var918)) ; Statement: r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: int hashCode> = i6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2078-to-var3879=([org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification], java.lang.Object), queryString/616247236=([org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification], java.lang.String), queryReturns/616247236=([org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification], org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[]), querySpaces/616247236=([org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification], java.util.Set), hashCode/-467973558=([java.lang.String], int), var1097_hashCode/539623333=([java.util.Set], int), hashCode/616247236=([org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification], int)}
; {var2078=org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification, var703=r0, var22=r1, var2933=null_type, var977=org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn, var1287=r2, var2713=java.util.Collection, var3361=r3, var3879=java.lang.Object, var1097=java.util.Set, var572=java.util.Collections, var2984=$r10, var924=$i4, var1564=$i1, var1119=$r6, var5=$i0, var3590=$i5, var918=i6, var1679=$r7}
; {org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification=var2078, r0=var703, r1=var22, null_type=var2933, org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn=var977, r2=var1287, java.util.Collection=var2713, r3=var3361, java.lang.Object=var3879, java.util.Set=var1097, java.util.Collections=var572, $r10=var2984, $i4=var924, $i1=var1564, $r6=var1119, $i0=var5, $i5=var3590, i6=var918, $r7=var1679}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[];	r3 := @parameter2: java.util.Collection;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.lang.String queryString> = r1;	r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] queryReturns> = r2;	if r3 != null goto $r4 = new java.util.HashSet;	$r10 = <java.util.Collections: java.util.Set EMPTY_SET>;	r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.util.Set querySpaces> = $r10;	goto [?= $i4 = virtualinvoke r1.<java.lang.String: int hashCode()>()];	$i4 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i1 = 29 * $i4;	$r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: java.util.Set querySpaces>;	$i0 = interfaceinvoke $r6.<java.util.Set: int hashCode()>();	$i5 = $i1 + $i0;	i6 = $i5;	$r7 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] queryReturns>;	if $r7 == null goto r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: int hashCode> = i6;	r0.<org.hibernate.engine.query.spi.sql.NativeSQLQuerySpecification: int hashCode> = i6;	return
;block_num 4