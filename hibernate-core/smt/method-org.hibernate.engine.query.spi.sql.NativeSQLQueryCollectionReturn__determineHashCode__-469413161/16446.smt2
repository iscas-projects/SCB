(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3735 0)
(declare-sort var1859 0)
(declare-sort var2802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/695414053 (var1859) Int)
(declare-fun cast-from-var3735-to-var1859 (var3735) var1859)
(declare-fun ownerEntityName/-197200115 (var3735) String)
(declare-fun ownerProperty/-197200115 (var3735) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3735 var3735)
(declare-const null-String String)
(declare-const var1594 var3735) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn 
(assert (not (= var1594 null-var3735)))
(assert true)
(define-const var1149 Int (hashCode/695414053 (cast-from-var3735-to-var1859 var1594))) ; Statement: i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>() 
(define-const var2447 Int (* 31 var1149)) ; Statement: $i0 = 31 * i4 
(define-const var3320 String (ownerEntityName/-197200115 var1594)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (= var3320 null-String)) ; Cond: $r1 == null 
(define-const var779 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var816 Int (+ var2447 var779)) ; Statement: $i3 = $i0 + $i5 
(define-const var3936 Int (* 31 var816)) ; Statement: $i1 = 31 * $i3 
(define-const var2532 String (ownerProperty/-197200115 var1594)) ; Statement: $r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty> 
 ; Statement: if $r2 == null goto $i6 = 0 
(assert (not (= var2532 null-String))) ; Negate: Cond: $r2 == null  
(define-const var3009 String (ownerProperty/-197200115 var1594)) ; Statement: $r3 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty> 
(assert true)
(define-const var447 Int (hashCode/-467973558 var3009)) ; Statement: $i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var1964 Int (+ var3936 var447)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/695414053=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], int), cast-from-var3735-to-var1859=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn), ownerEntityName/-197200115=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], java.lang.String), ownerProperty/-197200115=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3735=org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn, var1594=r0, var1859=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var1149=i4, var2447=$i0, var3320=$r1, var2802=null_type, var779=$i5, var816=$i3, var3936=$i1, var2532=$r2, var3009=$r3, var447=$i6, var1964=$i2}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn=var3735, r0=var1594, org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var1859, i4=var1149, $i0=var2447, $r1=var3320, null_type=var2802, $i5=var779, $i3=var816, $i1=var3936, $r2=var2532, $r3=var3009, $i6=var447, $i2=var1964}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn;	i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>();	$i0 = 31 * i4;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName>;	if $r1 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty>;	if $r2 == null goto $i6 = 0;	$r3 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty>;	$i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 5