(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var756 0)
(declare-sort var1140 0)
(declare-sort var3565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/695414053 (var1140) Int)
(declare-fun cast-from-var756-to-var1140 (var756) var1140)
(declare-fun ownerAlias/869232601 (var756) String)
(declare-fun ownerProperty/869232601 (var756) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var756 var756)
(declare-const null-String String)
(declare-const var2516 var756) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn 
(assert (not (= var2516 null-var756)))
(assert true)
(define-const var1457 Int (hashCode/695414053 (cast-from-var756-to-var1140 var2516))) ; Statement: i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>() 
(define-const var381 Int (* 31 var1457)) ; Statement: $i0 = 31 * i4 
(define-const var1681 String (ownerAlias/869232601 var2516)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (= var1681 null-String)) ; Cond: $r1 == null 
(define-const var842 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var888 Int (+ var381 var842)) ; Statement: $i3 = $i0 + $i5 
(define-const var3505 Int (* 31 var888)) ; Statement: $i1 = 31 * $i3 
(define-const var2673 String (ownerProperty/869232601 var2516)) ; Statement: $r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty> 
 ; Statement: if $r2 == null goto $i6 = 0 
(assert (not (= var2673 null-String))) ; Negate: Cond: $r2 == null  
(define-const var1631 String (ownerProperty/869232601 var2516)) ; Statement: $r3 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty> 
(assert true)
(define-const var3446 Int (hashCode/-467973558 var1631)) ; Statement: $i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var371 Int (+ var3505 var3446)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/695414053=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], int), cast-from-var756-to-var1140=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn), ownerAlias/869232601=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], java.lang.String), ownerProperty/869232601=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var756=org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn, var2516=r0, var1140=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var1457=i4, var381=$i0, var1681=$r1, var3565=null_type, var842=$i5, var888=$i3, var3505=$i1, var2673=$r2, var1631=$r3, var3446=$i6, var371=$i2}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn=var756, r0=var2516, org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var1140, i4=var1457, $i0=var381, $r1=var1681, null_type=var3565, $i5=var842, $i3=var888, $i1=var3505, $r2=var2673, $r3=var1631, $i6=var3446, $i2=var371}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn;	i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>();	$i0 = 31 * i4;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias>;	if $r1 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty>;	if $r2 == null goto $i6 = 0;	$r3 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty>;	$i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 5