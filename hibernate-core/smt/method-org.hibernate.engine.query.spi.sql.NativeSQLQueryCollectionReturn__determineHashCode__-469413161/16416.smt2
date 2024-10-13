(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2700 0)
(declare-sort var2333 0)
(declare-sort var3656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/695414053 (var2333) Int)
(declare-fun cast-from-var2700-to-var2333 (var2700) var2333)
(declare-fun ownerEntityName/-197200115 (var2700) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun ownerProperty/-197200115 (var2700) String)
(declare-const null-var2700 var2700)
(declare-const null-String String)
(declare-const var3353 var2700) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn 
(assert (not (= var3353 null-var2700)))
(assert true)
(define-const var3733 Int (hashCode/695414053 (cast-from-var2700-to-var2333 var3353))) ; Statement: i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>() 
(define-const var3071 Int (* 31 var3733)) ; Statement: $i0 = 31 * i4 
(define-const var2574 String (ownerEntityName/-197200115 var3353)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (not (= var2574 null-String))) ; Negate: Cond: $r1 == null  
(define-const var2272 String (ownerEntityName/-197200115 var3353)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName> 
(assert true)
(define-const var183 Int (hashCode/-467973558 var2272)) ; Statement: $i5 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var2759 Int (+ var3071 var183)) ; Statement: $i3 = $i0 + $i5 
(define-const var772 Int (* 31 var2759)) ; Statement: $i1 = 31 * $i3 
(define-const var2306 String (ownerProperty/-197200115 var3353)) ; Statement: $r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty> 
 ; Statement: if $r2 == null goto $i6 = 0 
(assert (not (= var2306 null-String))) ; Negate: Cond: $r2 == null  
(define-const var1562 String (ownerProperty/-197200115 var3353)) ; Statement: $r3 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty> 
(assert true)
(define-const var1044 Int (hashCode/-467973558 var1562)) ; Statement: $i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var666 Int (+ var772 var1044)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/695414053=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], int), cast-from-var2700-to-var2333=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn), ownerEntityName/-197200115=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], java.lang.String), hashCode/-467973558=([java.lang.String], int), ownerProperty/-197200115=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], java.lang.String)}
; {var2700=org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn, var3353=r0, var2333=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var3733=i4, var3071=$i0, var2574=$r1, var3656=null_type, var2272=$r4, var183=$i5, var2759=$i3, var772=$i1, var2306=$r2, var1562=$r3, var1044=$i6, var666=$i2}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn=var2700, r0=var3353, org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var2333, i4=var3733, $i0=var3071, $r1=var2574, null_type=var3656, $r4=var2272, $i5=var183, $i3=var2759, $i1=var772, $r2=var2306, $r3=var1562, $i6=var1044, $i2=var666}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn;	i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>();	$i0 = 31 * i4;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName>;	if $r1 == null goto $i5 = 0;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName>;	$i5 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty>;	if $r2 == null goto $i6 = 0;	$r3 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty>;	$i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 5