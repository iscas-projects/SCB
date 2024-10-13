(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3555 0)
(declare-sort var1265 0)
(declare-sort var2040 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/695414053 (var1265) Int)
(declare-fun cast-from-var3555-to-var1265 (var3555) var1265)
(declare-fun ownerEntityName/-197200115 (var3555) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun ownerProperty/-197200115 (var3555) String)
(declare-const null-var3555 var3555)
(declare-const null-String String)
(declare-const var281 var3555) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn 
(assert (not (= var281 null-var3555)))
(assert true)
(define-const var2592 Int (hashCode/695414053 (cast-from-var3555-to-var1265 var281))) ; Statement: i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>() 
(define-const var215 Int (* 31 var2592)) ; Statement: $i0 = 31 * i4 
(define-const var1576 String (ownerEntityName/-197200115 var281)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (not (= var1576 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1372 String (ownerEntityName/-197200115 var281)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName> 
(assert true)
(define-const var3333 Int (hashCode/-467973558 var1372)) ; Statement: $i5 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var3430 Int (+ var215 var3333)) ; Statement: $i3 = $i0 + $i5 
(define-const var3552 Int (* 31 var3430)) ; Statement: $i1 = 31 * $i3 
(define-const var2972 String (ownerProperty/-197200115 var281)) ; Statement: $r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty> 
 ; Statement: if $r2 == null goto $i6 = 0 
(assert (= var2972 null-String)) ; Cond: $r2 == null 
(define-const var3718 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var2409 Int (+ var3552 var3718)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/695414053=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], int), cast-from-var3555-to-var1265=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn), ownerEntityName/-197200115=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], java.lang.String), hashCode/-467973558=([java.lang.String], int), ownerProperty/-197200115=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], java.lang.String)}
; {var3555=org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn, var281=r0, var1265=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var2592=i4, var215=$i0, var1576=$r1, var2040=null_type, var1372=$r4, var3333=$i5, var3430=$i3, var3552=$i1, var2972=$r2, var3718=$i6, var2409=$i2}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn=var3555, r0=var281, org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var1265, i4=var2592, $i0=var215, $r1=var1576, null_type=var2040, $r4=var1372, $i5=var3333, $i3=var3430, $i1=var3552, $r2=var2972, $i6=var3718, $i2=var2409}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn;	i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>();	$i0 = 31 * i4;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName>;	if $r1 == null goto $i5 = 0;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerEntityName>;	$i5 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String ownerProperty>;	if $r2 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 5