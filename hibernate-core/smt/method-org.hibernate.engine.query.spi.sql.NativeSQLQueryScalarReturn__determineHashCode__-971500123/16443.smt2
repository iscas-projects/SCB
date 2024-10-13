(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2032 0)
(declare-sort var2417 0)
(declare-sort var405 0)
(declare-sort var1563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-2006819493 (var2032) var2417)
(declare-fun hashCode/1739917532 (var405) Int)
(declare-fun cast-from-var2417-to-var405 (var2417) var405)
(declare-fun getClass/1258963082 (var405) ClassObject)
(declare-fun cast-from-var2032-to-var405 (var2032) var405)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun columnAlias/-2006819493 (var2032) String)
(declare-const null-var2032 var2032)
(declare-const null-var2417 var2417)
(declare-const null-String String)
(declare-const var2663 var2032) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn 
(assert (not (= var2663 null-var2032)))
(define-const var2003 var2417 (type/-2006819493 var2663)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (not (= var2003 null-var2417))) ; Negate: Cond: $r1 == null  
(define-const var3125 var2417 (type/-2006819493 var2663)) ; Statement: $r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type> 
(assert true)
(define-const var1469 Int (hashCode/1739917532 (cast-from-var2417-to-var405 var3125))) ; Statement: $i5 = virtualinvoke $r6.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i1 = 31 * $i5] 
(assert true) ; Non Conditional
(define-const var3784 Int (* 31 var1469)) ; Statement: $i1 = 31 * $i5 
(assert true)
(define-const var2389 ClassObject (getClass/1258963082 (cast-from-var2032-to-var405 var2663))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1539 String (getName/-1958580599 var2389)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1874 Int (hashCode/-467973558 var1539)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2760 Int (+ var3784 var1874)) ; Statement: $i4 = $i1 + $i0 
(define-const var178 Int (* 31 var2760)) ; Statement: $i2 = 31 * $i4 
(define-const var2533 String (columnAlias/-2006819493 var2663)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias> 
 ; Statement: if $r4 == null goto $i6 = 0 
(assert (not (= var2533 null-String))) ; Negate: Cond: $r4 == null  
(define-const var3945 String (columnAlias/-2006819493 var2663)) ; Statement: $r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias> 
(assert true)
(define-const var2835 Int (hashCode/-467973558 var3945)) ; Statement: $i6 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i2 + $i6] 
(assert true) ; Non Conditional
(define-const var1131 Int (+ var178 var2835)) ; Statement: $i3 = $i2 + $i6 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], org.hibernate.type.Type), hashCode/1739917532=([java.lang.Object], int), cast-from-var2417-to-var405=([org.hibernate.type.Type], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2032-to-var405=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), hashCode/-467973558=([java.lang.String], int), columnAlias/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], java.lang.String)}
; {var2032=org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn, var2663=r0, var2417=org.hibernate.type.Type, var2003=$r1, var3125=$r6, var405=java.lang.Object, var1469=$i5, var3784=$i1, var2389=$r2, var1539=$r3, var1874=$i0, var2760=$i4, var178=$i2, var2533=$r4, var1563=null_type, var3945=$r5, var2835=$i6, var1131=$i3}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn=var2032, r0=var2663, org.hibernate.type.Type=var2417, $r1=var2003, $r6=var3125, java.lang.Object=var405, $i5=var1469, $i1=var3784, $r2=var2389, $r3=var1539, $i0=var1874, $i4=var2760, $i2=var178, $r4=var2533, null_type=var1563, $r5=var3945, $i6=var2835, $i3=var1131}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type>;	if $r1 == null goto $i5 = 0;	$r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type>;	$i5 = virtualinvoke $r6.<java.lang.Object: int hashCode()>();	goto [?= $i1 = 31 * $i5];	$i1 = 31 * $i5;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i4 = $i1 + $i0;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias>;	if $r4 == null goto $i6 = 0;	$r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias>;	$i6 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	goto [?= $i3 = $i2 + $i6];	$i3 = $i2 + $i6;	return $i3
;block_num 5