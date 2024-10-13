(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3939 0)
(declare-sort var1041 0)
(declare-sort var1904 0)
(declare-sort var510 0)
(declare-sort var430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun alias/441916970 (var3939) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getClass/1258963082 (var1904) ClassObject)
(declare-fun cast-from-var3939-to-var1904 (var3939) var1904)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lockMode/441916970 (var3939) var510)
(declare-fun propertyResults/441916970 (var3939) var430)
(declare-fun var430_hashCode/1768810987 (var430) Int)
(declare-const null-var3939 var3939)
(declare-const null-String String)
(declare-const null-var510 var510)
(declare-const var2869 var3939) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn 
(assert (not (= var2869 null-var3939)))
(define-const var1995 String (alias/441916970 var2869)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias> 
 ; Statement: if $r1 == null goto $i8 = 0 
(assert (not (= var1995 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1759 String (alias/441916970 var2869)) ; Statement: $r7 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias> 
(assert true)
(define-const var3867 Int (hashCode/-467973558 var1759)) ; Statement: $i8 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i1 = 31 * $i8] 
(assert true) ; Non Conditional
(define-const var3675 Int (* 31 var3867)) ; Statement: $i1 = 31 * $i8 
(assert true)
(define-const var242 ClassObject (getClass/1258963082 (cast-from-var3939-to-var1904 var2869))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2730 String (getName/-1958580599 var242)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1365 Int (hashCode/-467973558 var2730)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var433 Int (+ var3675 var1365)) ; Statement: $i7 = $i1 + $i0 
(define-const var518 Int (* 31 var433)) ; Statement: $i2 = 31 * $i7 
(define-const var306 var510 (lockMode/441916970 var2869)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (= var306 null-var510)) ; Cond: $r4 == null 
(define-const var3489 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var2787 Int (+ var518 var3489)) ; Statement: $i5 = $i2 + $i9 
(define-const var3188 Int (* 31 var2787)) ; Statement: $i4 = 31 * $i5 
(define-const var1931 var430 (propertyResults/441916970 var2869)) ; Statement: $r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.util.Map propertyResults> 
(define-const var3354 Int (var430_hashCode/1768810987 var1931)) ; Statement: $i3 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
(define-const var2507 Int (+ var3188 var3354)) ; Statement: $i6 = $i4 + $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {alias/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.lang.String), hashCode/-467973558=([java.lang.String], int), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3939-to-var1904=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), lockMode/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], org.hibernate.LockMode), propertyResults/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.util.Map), var430_hashCode/1768810987=([java.util.Map], int)}
; {var3939=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var2869=r0, var1995=$r1, var1041=null_type, var1759=$r7, var3867=$i8, var3675=$i1, var1904=java.lang.Object, var242=$r2, var2730=$r3, var1365=$i0, var433=$i7, var518=$i2, var510=org.hibernate.LockMode, var306=$r4, var3489=$i9, var2787=$i5, var3188=$i4, var430=java.util.Map, var1931=$r5, var3354=$i3, var2507=$i6}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var3939, r0=var2869, $r1=var1995, null_type=var1041, $r7=var1759, $i8=var3867, $i1=var3675, java.lang.Object=var1904, $r2=var242, $r3=var2730, $i0=var1365, $i7=var433, $i2=var518, org.hibernate.LockMode=var510, $r4=var306, $i9=var3489, $i5=var2787, $i4=var3188, java.util.Map=var430, $r5=var1931, $i3=var3354, $i6=var2507}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias>;	if $r1 == null goto $i8 = 0;	$r7 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias>;	$i8 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	goto [?= $i1 = 31 * $i8];	$i1 = 31 * $i8;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i7 = $i1 + $i0;	$i2 = 31 * $i7;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode>;	if $r4 == null goto $i9 = 0;	$i9 = 0;	$i5 = $i2 + $i9;	$i4 = 31 * $i5;	$r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.util.Map propertyResults>;	$i3 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	$i6 = $i4 + $i3;	return $i6
;block_num 5