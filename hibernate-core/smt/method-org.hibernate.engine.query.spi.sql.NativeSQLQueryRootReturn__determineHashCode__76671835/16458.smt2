(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1676 0)
(declare-sort var729 0)
(declare-sort var2093 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/695414053 (var729) Int)
(declare-fun cast-from-var1676-to-var729 (var1676) var729)
(declare-fun returnEntityName/-2100860527 (var1676) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1676 var1676)
(declare-const null-String String)
(declare-const var2921 var1676) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn 
(assert (not (= var2921 null-var1676)))
(assert true)
(define-const var2276 Int (hashCode/695414053 (cast-from-var1676-to-var729 var2921))) ; Statement: i2 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>() 
(define-const var3209 Int (* 31 var2276)) ; Statement: $i0 = 31 * i2 
(define-const var42 String (returnEntityName/-2100860527 var2921)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn: java.lang.String returnEntityName> 
 ; Statement: if $r1 == null goto $i3 = 0 
(assert (not (= var42 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3533 String (returnEntityName/-2100860527 var2921)) ; Statement: $r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn: java.lang.String returnEntityName> 
(assert true)
(define-const var2107 Int (hashCode/-467973558 var3533)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i1 = $i0 + $i3] 
(assert true) ; Non Conditional
(define-const var2841 Int (+ var3209 var2107)) ; Statement: $i1 = $i0 + $i3 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/695414053=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], int), cast-from-var1676-to-var729=([org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn), returnEntityName/-2100860527=([org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1676=org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn, var2921=r0, var729=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var2276=i2, var3209=$i0, var42=$r1, var2093=null_type, var3533=$r2, var2107=$i3, var2841=$i1}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn=var1676, r0=var2921, org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var729, i2=var2276, $i0=var3209, $r1=var42, null_type=var2093, $r2=var3533, $i3=var2107, $i1=var2841}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn;	i2 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>();	$i0 = 31 * i2;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn: java.lang.String returnEntityName>;	if $r1 == null goto $i3 = 0;	$r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryRootReturn: java.lang.String returnEntityName>;	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	goto [?= $i1 = $i0 + $i3];	$i1 = $i0 + $i3;	return $i1
;block_num 3