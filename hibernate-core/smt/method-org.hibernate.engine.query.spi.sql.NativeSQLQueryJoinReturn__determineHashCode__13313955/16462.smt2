(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1234 0)
(declare-sort var3592 0)
(declare-sort var782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/695414053 (var3592) Int)
(declare-fun cast-from-var1234-to-var3592 (var1234) var3592)
(declare-fun ownerAlias/869232601 (var1234) String)
(declare-fun ownerProperty/869232601 (var1234) String)
(declare-const null-var1234 var1234)
(declare-const null-String String)
(declare-const var3018 var1234) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn 
(assert (not (= var3018 null-var1234)))
(assert true)
(define-const var2289 Int (hashCode/695414053 (cast-from-var1234-to-var3592 var3018))) ; Statement: i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>() 
(define-const var2286 Int (* 31 var2289)) ; Statement: $i0 = 31 * i4 
(define-const var1637 String (ownerAlias/869232601 var3018)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (= var1637 null-String)) ; Cond: $r1 == null 
(define-const var3489 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var1386 Int (+ var2286 var3489)) ; Statement: $i3 = $i0 + $i5 
(define-const var506 Int (* 31 var1386)) ; Statement: $i1 = 31 * $i3 
(define-const var3002 String (ownerProperty/869232601 var3018)) ; Statement: $r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty> 
 ; Statement: if $r2 == null goto $i6 = 0 
(assert (= var3002 null-String)) ; Cond: $r2 == null 
(define-const var1458 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var3993 Int (+ var506 var1458)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/695414053=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], int), cast-from-var1234-to-var3592=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn), ownerAlias/869232601=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], java.lang.String), ownerProperty/869232601=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], java.lang.String)}
; {var1234=org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn, var3018=r0, var3592=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var2289=i4, var2286=$i0, var1637=$r1, var782=null_type, var3489=$i5, var1386=$i3, var506=$i1, var3002=$r2, var1458=$i6, var3993=$i2}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn=var1234, r0=var3018, org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var3592, i4=var2289, $i0=var2286, $r1=var1637, null_type=var782, $i5=var3489, $i3=var1386, $i1=var506, $r2=var3002, $i6=var1458, $i2=var3993}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn;	i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>();	$i0 = 31 * i4;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias>;	if $r1 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty>;	if $r2 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 5