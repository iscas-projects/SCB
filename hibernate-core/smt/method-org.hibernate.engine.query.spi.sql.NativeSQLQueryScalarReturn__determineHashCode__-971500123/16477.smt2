(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1357 0)
(declare-sort var2435 0)
(declare-sort var91 0)
(declare-sort var3063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-2006819493 (var1357) var2435)
(declare-fun getClass/1258963082 (var91) ClassObject)
(declare-fun cast-from-var1357-to-var91 (var1357) var91)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun columnAlias/-2006819493 (var1357) String)
(declare-const null-var1357 var1357)
(declare-const null-var2435 var2435)
(declare-const null-String String)
(declare-const var912 var1357) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn 
(assert (not (= var912 null-var1357)))
(define-const var2506 var2435 (type/-2006819493 var912)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (= var2506 null-var2435)) ; Cond: $r1 == null 
(define-const var3739 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var1958 Int (* 31 var3739)) ; Statement: $i1 = 31 * $i5 
(assert true)
(define-const var1119 ClassObject (getClass/1258963082 (cast-from-var1357-to-var91 var912))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1604 String (getName/-1958580599 var1119)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var907 Int (hashCode/-467973558 var1604)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var175 Int (+ var1958 var907)) ; Statement: $i4 = $i1 + $i0 
(define-const var1187 Int (* 31 var175)) ; Statement: $i2 = 31 * $i4 
(define-const var2897 String (columnAlias/-2006819493 var912)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias> 
 ; Statement: if $r4 == null goto $i6 = 0 
(assert (not (= var2897 null-String))) ; Negate: Cond: $r4 == null  
(define-const var1136 String (columnAlias/-2006819493 var912)) ; Statement: $r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias> 
(assert true)
(define-const var3726 Int (hashCode/-467973558 var1136)) ; Statement: $i6 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i2 + $i6] 
(assert true) ; Non Conditional
(define-const var468 Int (+ var1187 var3726)) ; Statement: $i3 = $i2 + $i6 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], org.hibernate.type.Type), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1357-to-var91=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), hashCode/-467973558=([java.lang.String], int), columnAlias/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], java.lang.String)}
; {var1357=org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn, var912=r0, var2435=org.hibernate.type.Type, var2506=$r1, var3739=$i5, var1958=$i1, var91=java.lang.Object, var1119=$r2, var1604=$r3, var907=$i0, var175=$i4, var1187=$i2, var2897=$r4, var3063=null_type, var1136=$r5, var3726=$i6, var468=$i3}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn=var1357, r0=var912, org.hibernate.type.Type=var2435, $r1=var2506, $i5=var3739, $i1=var1958, java.lang.Object=var91, $r2=var1119, $r3=var1604, $i0=var907, $i4=var175, $i2=var1187, $r4=var2897, null_type=var3063, $r5=var1136, $i6=var3726, $i3=var468}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type>;	if $r1 == null goto $i5 = 0;	$i5 = 0;	$i1 = 31 * $i5;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i4 = $i1 + $i0;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias>;	if $r4 == null goto $i6 = 0;	$r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias>;	$i6 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	goto [?= $i3 = $i2 + $i6];	$i3 = $i2 + $i6;	return $i3
;block_num 5