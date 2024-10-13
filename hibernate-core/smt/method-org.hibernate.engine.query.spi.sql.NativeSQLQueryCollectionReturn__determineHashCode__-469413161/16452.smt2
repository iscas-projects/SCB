(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2442 0)
(declare-sort var1720 0)
(declare-sort var582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/695414053 (var1720) Int)
(declare-fun cast-from-var2442-to-var1720 (var2442) var1720)
(declare-fun ownerEntityName/-197200115 (var2442) String)
(declare-fun ownerProperty/-197200115 (var2442) String)
(declare-const null-var2442 var2442)
(declare-const null-String String)
(declare-const var51 var2442) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn 
(assert (not (= var51 null-var2442)))
(assert true)
(define-const var1235 Int (hashCode/695414053 (cast-from-var2442-to-var1720 var51))) ; Statement: i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>() 
(define-const var1529 Int (* 31 var1235)) ; Statement: $i0 = 31 * i4 
(define-const var1691 String (ownerEntityName/-197200115 var51)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (= var1691 null-String)) ; Cond: $r1 == null 
(define-const var1295 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var337 Int (+ var1529 var1295)) ; Statement: $i3 = $i0 + $i5 
(define-const var2839 Int (* 31 var337)) ; Statement: $i1 = 31 * $i3 
(define-const var2389 String (ownerProperty/-197200115 var51)) ; Statement: $r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty> 
 ; Statement: if $r2 == null goto $i6 = 0 
(assert (= var2389 null-String)) ; Cond: $r2 == null 
(define-const var3206 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var3716 Int (+ var2839 var3206)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/695414053=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], int), cast-from-var2442-to-var1720=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn), ownerEntityName/-197200115=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], java.lang.String), ownerProperty/-197200115=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], java.lang.String)}
; {var2442=org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn, var51=r0, var1720=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var1235=i4, var1529=$i0, var1691=$r1, var582=null_type, var1295=$i5, var337=$i3, var2839=$i1, var2389=$r2, var3206=$i6, var3716=$i2}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn=var2442, r0=var51, org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var1720, i4=var1235, $i0=var1529, $r1=var1691, null_type=var582, $i5=var1295, $i3=var337, $i1=var2839, $r2=var2389, $i6=var3206, $i2=var3716}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn;	i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>();	$i0 = 31 * i4;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName>;	if $r1 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty>;	if $r2 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 5