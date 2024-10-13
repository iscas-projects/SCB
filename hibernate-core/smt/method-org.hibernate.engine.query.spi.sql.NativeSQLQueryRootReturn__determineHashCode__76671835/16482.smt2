(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2189 0)
(declare-sort var896 0)
(declare-sort var47 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/695414053 (var896) Int)
(declare-fun cast-from-var2189-to-var896 (var2189) var896)
(declare-fun returnEntityName/-2100860527 (var2189) String)
(declare-const null-var2189 var2189)
(declare-const null-String String)
(declare-const var57 var2189) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn 
(assert (not (= var57 null-var2189)))
(assert true)
(define-const var2356 Int (hashCode/695414053 (cast-from-var2189-to-var896 var57))) ; Statement: i2 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>() 
(define-const var1456 Int (* 31 var2356)) ; Statement: $i0 = 31 * i2 
(define-const var899 String (returnEntityName/-2100860527 var57)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn: java.lang.String returnEntityName> 
 ; Statement: if $r1 == null goto $i3 = 0 
(assert (= var899 null-String)) ; Cond: $r1 == null 
(define-const var2854 Int 0) ; Statement: $i3 = 0 
(assert true) ; Non Conditional
(define-const var3666 Int (+ var1456 var2854)) ; Statement: $i1 = $i0 + $i3 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/695414053=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], int), cast-from-var2189-to-var896=([org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn), returnEntityName/-2100860527=([org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn], java.lang.String)}
; {var2189=org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn, var57=r0, var896=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var2356=i2, var1456=$i0, var899=$r1, var47=null_type, var2854=$i3, var3666=$i1}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn=var2189, r0=var57, org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var896, i2=var2356, $i0=var1456, $r1=var899, null_type=var47, $i3=var2854, $i1=var3666}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn;	i2 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>();	$i0 = 31 * i2;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn: java.lang.String returnEntityName>;	if $r1 == null goto $i3 = 0;	$i3 = 0;	$i1 = $i0 + $i3;	return $i1
;block_num 3