(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2373 0)
(declare-sort var2687 0)
(declare-sort var81 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/695414053 (var2687) Int)
(declare-fun cast-from-var2373-to-var2687 (var2373) var2687)
(declare-fun ownerAlias/869232601 (var2373) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun ownerProperty/869232601 (var2373) String)
(declare-const null-var2373 var2373)
(declare-const null-String String)
(declare-const var1876 var2373) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn 
(assert (not (= var1876 null-var2373)))
(assert true)
(define-const var2487 Int (hashCode/695414053 (cast-from-var2373-to-var2687 var1876))) ; Statement: i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>() 
(define-const var1554 Int (* 31 var2487)) ; Statement: $i0 = 31 * i4 
(define-const var3327 String (ownerAlias/869232601 var1876)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (not (= var3327 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1414 String (ownerAlias/869232601 var1876)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias> 
(assert true)
(define-const var3665 Int (hashCode/-467973558 var1414)) ; Statement: $i5 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var956 Int (+ var1554 var3665)) ; Statement: $i3 = $i0 + $i5 
(define-const var2966 Int (* 31 var956)) ; Statement: $i1 = 31 * $i3 
(define-const var561 String (ownerProperty/869232601 var1876)) ; Statement: $r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty> 
 ; Statement: if $r2 == null goto $i6 = 0 
(assert (not (= var561 null-String))) ; Negate: Cond: $r2 == null  
(define-const var2817 String (ownerProperty/869232601 var1876)) ; Statement: $r3 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty> 
(assert true)
(define-const var15 Int (hashCode/-467973558 var2817)) ; Statement: $i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var2886 Int (+ var2966 var15)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/695414053=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], int), cast-from-var2373-to-var2687=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn), ownerAlias/869232601=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], java.lang.String), hashCode/-467973558=([java.lang.String], int), ownerProperty/869232601=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], java.lang.String)}
; {var2373=org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn, var1876=r0, var2687=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var2487=i4, var1554=$i0, var3327=$r1, var81=null_type, var1414=$r4, var3665=$i5, var956=$i3, var2966=$i1, var561=$r2, var2817=$r3, var15=$i6, var2886=$i2}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn=var2373, r0=var1876, org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var2687, i4=var2487, $i0=var1554, $r1=var3327, null_type=var81, $r4=var1414, $i5=var3665, $i3=var956, $i1=var2966, $r2=var561, $r3=var2817, $i6=var15, $i2=var2886}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn;	i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>();	$i0 = 31 * i4;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias>;	if $r1 == null goto $i5 = 0;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias>;	$i5 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty>;	if $r2 == null goto $i6 = 0;	$r3 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty>;	$i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 5