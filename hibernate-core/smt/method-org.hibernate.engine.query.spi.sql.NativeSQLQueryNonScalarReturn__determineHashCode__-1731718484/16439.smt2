(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var898 0)
(declare-sort var3341 0)
(declare-sort var1962 0)
(declare-sort var2245 0)
(declare-sort var2468 0)
(declare-sort var378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun alias/441916970 (var898) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getClass/1258963082 (var1962) ClassObject)
(declare-fun cast-from-var898-to-var1962 (var898) var1962)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lockMode/441916970 (var898) var2245)
(declare-fun hashCode/385986394 (var2468) Int)
(declare-fun cast-from-var2245-to-var2468 (var2245) var2468)
(declare-fun propertyResults/441916970 (var898) var378)
(declare-fun var378_hashCode/1768810987 (var378) Int)
(declare-const null-var898 var898)
(declare-const null-String String)
(declare-const null-var2245 var2245)
(declare-const var3935 var898) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn 
(assert (not (= var3935 null-var898)))
(define-const var3878 String (alias/441916970 var3935)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias> 
 ; Statement: if $r1 == null goto $i8 = 0 
(assert (not (= var3878 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3370 String (alias/441916970 var3935)) ; Statement: $r7 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias> 
(assert true)
(define-const var164 Int (hashCode/-467973558 var3370)) ; Statement: $i8 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i1 = 31 * $i8] 
(assert true) ; Non Conditional
(define-const var912 Int (* 31 var164)) ; Statement: $i1 = 31 * $i8 
(assert true)
(define-const var3827 ClassObject (getClass/1258963082 (cast-from-var898-to-var1962 var3935))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2376 String (getName/-1958580599 var3827)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3311 Int (hashCode/-467973558 var2376)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var74 Int (+ var912 var3311)) ; Statement: $i7 = $i1 + $i0 
(define-const var2850 Int (* 31 var74)) ; Statement: $i2 = 31 * $i7 
(define-const var3064 var2245 (lockMode/441916970 var3935)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (not (= var3064 null-var2245))) ; Negate: Cond: $r4 == null  
(define-const var1042 var2245 (lockMode/441916970 var3935)) ; Statement: $r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode> 
(assert true)
(define-const var1146 Int (hashCode/385986394 (cast-from-var2245-to-var2468 var1042))) ; Statement: $i9 = virtualinvoke $r6.<org.hibernate.LockMode: int hashCode()>() 
 ; Statement: goto [?= $i5 = $i2 + $i9] 
(assert true) ; Non Conditional
(define-const var566 Int (+ var2850 var1146)) ; Statement: $i5 = $i2 + $i9 
(define-const var1462 Int (* 31 var566)) ; Statement: $i4 = 31 * $i5 
(define-const var2853 var378 (propertyResults/441916970 var3935)) ; Statement: $r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.util.Map propertyResults> 
(define-const var3696 Int (var378_hashCode/1768810987 var2853)) ; Statement: $i3 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
(define-const var2013 Int (+ var1462 var3696)) ; Statement: $i6 = $i4 + $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {alias/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.lang.String), hashCode/-467973558=([java.lang.String], int), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var898-to-var1962=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), lockMode/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], org.hibernate.LockMode), hashCode/385986394=([java.lang.Enum], int), cast-from-var2245-to-var2468=([org.hibernate.LockMode], java.lang.Enum), propertyResults/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.util.Map), var378_hashCode/1768810987=([java.util.Map], int)}
; {var898=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var3935=r0, var3878=$r1, var3341=null_type, var3370=$r7, var164=$i8, var912=$i1, var1962=java.lang.Object, var3827=$r2, var2376=$r3, var3311=$i0, var74=$i7, var2850=$i2, var2245=org.hibernate.LockMode, var3064=$r4, var1042=$r6, var2468=java.lang.Enum, var1146=$i9, var566=$i5, var1462=$i4, var378=java.util.Map, var2853=$r5, var3696=$i3, var2013=$i6}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var898, r0=var3935, $r1=var3878, null_type=var3341, $r7=var3370, $i8=var164, $i1=var912, java.lang.Object=var1962, $r2=var3827, $r3=var2376, $i0=var3311, $i7=var74, $i2=var2850, org.hibernate.LockMode=var2245, $r4=var3064, $r6=var1042, java.lang.Enum=var2468, $i9=var1146, $i5=var566, $i4=var1462, java.util.Map=var378, $r5=var2853, $i3=var3696, $i6=var2013}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias>;	if $r1 == null goto $i8 = 0;	$r7 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias>;	$i8 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	goto [?= $i1 = 31 * $i8];	$i1 = 31 * $i8;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i7 = $i1 + $i0;	$i2 = 31 * $i7;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode>;	if $r4 == null goto $i9 = 0;	$r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode>;	$i9 = virtualinvoke $r6.<org.hibernate.LockMode: int hashCode()>();	goto [?= $i5 = $i2 + $i9];	$i5 = $i2 + $i9;	$i4 = 31 * $i5;	$r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.util.Map propertyResults>;	$i3 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	$i6 = $i4 + $i3;	return $i6
;block_num 5