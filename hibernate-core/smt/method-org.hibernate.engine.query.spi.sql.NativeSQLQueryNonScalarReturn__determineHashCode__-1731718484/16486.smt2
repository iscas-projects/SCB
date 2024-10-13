(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2025 0)
(declare-sort var1752 0)
(declare-sort var1442 0)
(declare-sort var135 0)
(declare-sort var3578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun alias/441916970 (var2025) String)
(declare-fun getClass/1258963082 (var1442) ClassObject)
(declare-fun cast-from-var2025-to-var1442 (var2025) var1442)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun lockMode/441916970 (var2025) var135)
(declare-fun propertyResults/441916970 (var2025) var3578)
(declare-fun var3578_hashCode/1768810987 (var3578) Int)
(declare-const null-var2025 var2025)
(declare-const null-String String)
(declare-const null-var135 var135)
(declare-const var1763 var2025) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn 
(assert (not (= var1763 null-var2025)))
(define-const var1166 String (alias/441916970 var1763)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias> 
 ; Statement: if $r1 == null goto $i8 = 0 
(assert (= var1166 null-String)) ; Cond: $r1 == null 
(define-const var3996 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var1000 Int (* 31 var3996)) ; Statement: $i1 = 31 * $i8 
(assert true)
(define-const var768 ClassObject (getClass/1258963082 (cast-from-var2025-to-var1442 var1763))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3675 String (getName/-1958580599 var768)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1868 Int (hashCode/-467973558 var3675)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3256 Int (+ var1000 var1868)) ; Statement: $i7 = $i1 + $i0 
(define-const var2470 Int (* 31 var3256)) ; Statement: $i2 = 31 * $i7 
(define-const var338 var135 (lockMode/441916970 var1763)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (= var338 null-var135)) ; Cond: $r4 == null 
(define-const var2028 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var2610 Int (+ var2470 var2028)) ; Statement: $i5 = $i2 + $i9 
(define-const var358 Int (* 31 var2610)) ; Statement: $i4 = 31 * $i5 
(define-const var3418 var3578 (propertyResults/441916970 var1763)) ; Statement: $r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.util.Map propertyResults> 
(define-const var2612 Int (var3578_hashCode/1768810987 var3418)) ; Statement: $i3 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
(define-const var576 Int (+ var358 var2612)) ; Statement: $i6 = $i4 + $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {alias/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2025-to-var1442=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), hashCode/-467973558=([java.lang.String], int), lockMode/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], org.hibernate.LockMode), propertyResults/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.util.Map), var3578_hashCode/1768810987=([java.util.Map], int)}
; {var2025=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var1763=r0, var1166=$r1, var1752=null_type, var3996=$i8, var1000=$i1, var1442=java.lang.Object, var768=$r2, var3675=$r3, var1868=$i0, var3256=$i7, var2470=$i2, var135=org.hibernate.LockMode, var338=$r4, var2028=$i9, var2610=$i5, var358=$i4, var3578=java.util.Map, var3418=$r5, var2612=$i3, var576=$i6}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var2025, r0=var1763, $r1=var1166, null_type=var1752, $i8=var3996, $i1=var1000, java.lang.Object=var1442, $r2=var768, $r3=var3675, $i0=var1868, $i7=var3256, $i2=var2470, org.hibernate.LockMode=var135, $r4=var338, $i9=var2028, $i5=var2610, $i4=var358, java.util.Map=var3578, $r5=var3418, $i3=var2612, $i6=var576}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias>;	if $r1 == null goto $i8 = 0;	$i8 = 0;	$i1 = 31 * $i8;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i7 = $i1 + $i0;	$i2 = 31 * $i7;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode>;	if $r4 == null goto $i9 = 0;	$i9 = 0;	$i5 = $i2 + $i9;	$i4 = 31 * $i5;	$r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.util.Map propertyResults>;	$i3 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	$i6 = $i4 + $i3;	return $i6
;block_num 5