(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1688 0)
(declare-sort var2125 0)
(declare-sort var1565 0)
(declare-sort var394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-2006819493 (var1688) var2125)
(declare-fun getClass/1258963082 (var1565) ClassObject)
(declare-fun cast-from-var1688-to-var1565 (var1688) var1565)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun columnAlias/-2006819493 (var1688) String)
(declare-const null-var1688 var1688)
(declare-const null-var2125 var2125)
(declare-const null-String String)
(declare-const var2652 var1688) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn 
(assert (not (= var2652 null-var1688)))
(define-const var956 var2125 (type/-2006819493 var2652)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (= var956 null-var2125)) ; Cond: $r1 == null 
(define-const var1597 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var1059 Int (* 31 var1597)) ; Statement: $i1 = 31 * $i5 
(assert true)
(define-const var1133 ClassObject (getClass/1258963082 (cast-from-var1688-to-var1565 var2652))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3782 String (getName/-1958580599 var1133)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3163 Int (hashCode/-467973558 var3782)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3068 Int (+ var1059 var3163)) ; Statement: $i4 = $i1 + $i0 
(define-const var3985 Int (* 31 var3068)) ; Statement: $i2 = 31 * $i4 
(define-const var3705 String (columnAlias/-2006819493 var2652)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias> 
 ; Statement: if $r4 == null goto $i6 = 0 
(assert (= var3705 null-String)) ; Cond: $r4 == null 
(define-const var3291 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var2311 Int (+ var3985 var3291)) ; Statement: $i3 = $i2 + $i6 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], org.hibernate.type.Type), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1688-to-var1565=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), hashCode/-467973558=([java.lang.String], int), columnAlias/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], java.lang.String)}
; {var1688=org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn, var2652=r0, var2125=org.hibernate.type.Type, var956=$r1, var1597=$i5, var1059=$i1, var1565=java.lang.Object, var1133=$r2, var3782=$r3, var3163=$i0, var3068=$i4, var3985=$i2, var3705=$r4, var394=null_type, var3291=$i6, var2311=$i3}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn=var1688, r0=var2652, org.hibernate.type.Type=var2125, $r1=var956, $i5=var1597, $i1=var1059, java.lang.Object=var1565, $r2=var1133, $r3=var3782, $i0=var3163, $i4=var3068, $i2=var3985, $r4=var3705, null_type=var394, $i6=var3291, $i3=var2311}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type>;	if $r1 == null goto $i5 = 0;	$i5 = 0;	$i1 = 31 * $i5;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i4 = $i1 + $i0;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias>;	if $r4 == null goto $i6 = 0;	$i6 = 0;	$i3 = $i2 + $i6;	return $i3
;block_num 5