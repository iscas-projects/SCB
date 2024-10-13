(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var975 0)
(declare-sort var2823 0)
(declare-sort var3037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/695414053 (var2823) Int)
(declare-fun cast-from-var975-to-var2823 (var975) var2823)
(declare-fun ownerAlias/869232601 (var975) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun ownerProperty/869232601 (var975) String)
(declare-const null-var975 var975)
(declare-const null-String String)
(declare-const var3448 var975) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn 
(assert (not (= var3448 null-var975)))
(assert true)
(define-const var3066 Int (hashCode/695414053 (cast-from-var975-to-var2823 var3448))) ; Statement: i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>() 
(define-const var3635 Int (* 31 var3066)) ; Statement: $i0 = 31 * i4 
(define-const var2069 String (ownerAlias/869232601 var3448)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (not (= var2069 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3401 String (ownerAlias/869232601 var3448)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias> 
(assert true)
(define-const var3782 Int (hashCode/-467973558 var3401)) ; Statement: $i5 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var3355 Int (+ var3635 var3782)) ; Statement: $i3 = $i0 + $i5 
(define-const var942 Int (* 31 var3355)) ; Statement: $i1 = 31 * $i3 
(define-const var1133 String (ownerProperty/869232601 var3448)) ; Statement: $r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty> 
 ; Statement: if $r2 == null goto $i6 = 0 
(assert (= var1133 null-String)) ; Cond: $r2 == null 
(define-const var486 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var2081 Int (+ var942 var486)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/695414053=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], int), cast-from-var975-to-var2823=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn), ownerAlias/869232601=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], java.lang.String), hashCode/-467973558=([java.lang.String], int), ownerProperty/869232601=([org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn], java.lang.String)}
; {var975=org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn, var3448=r0, var2823=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var3066=i4, var3635=$i0, var2069=$r1, var3037=null_type, var3401=$r4, var3782=$i5, var3355=$i3, var942=$i1, var1133=$r2, var486=$i6, var2081=$i2}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn=var975, r0=var3448, org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var2823, i4=var3066, $i0=var3635, $r1=var2069, null_type=var3037, $r4=var3401, $i5=var3782, $i3=var3355, $i1=var942, $r2=var1133, $i6=var486, $i2=var2081}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn;	i4 = specialinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: int hashCode()>();	$i0 = 31 * i4;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias>;	if $r1 == null goto $i5 = 0;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerAlias>;	$i5 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryJoinReturn: java.lang.String ownerProperty>;	if $r2 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 5