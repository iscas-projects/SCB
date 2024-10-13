(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3949 0)
(declare-sort var3790 0)
(declare-sort var3818 0)
(declare-sort var256 0)
(declare-sort var2850 0)
(declare-sort var2209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun alias/441916970 (var3949) String)
(declare-fun getClass/1258963082 (var3818) ClassObject)
(declare-fun cast-from-var3949-to-var3818 (var3949) var3818)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun lockMode/441916970 (var3949) var256)
(declare-fun hashCode/385986394 (var2850) Int)
(declare-fun cast-from-var256-to-var2850 (var256) var2850)
(declare-fun propertyResults/441916970 (var3949) var2209)
(declare-fun var2209_hashCode/1768810987 (var2209) Int)
(declare-const null-var3949 var3949)
(declare-const null-String String)
(declare-const null-var256 var256)
(declare-const var2796 var3949) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn 
(assert (not (= var2796 null-var3949)))
(define-const var3599 String (alias/441916970 var2796)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias> 
 ; Statement: if $r1 == null goto $i8 = 0 
(assert (= var3599 null-String)) ; Cond: $r1 == null 
(define-const var1215 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var3069 Int (* 31 var1215)) ; Statement: $i1 = 31 * $i8 
(assert true)
(define-const var2251 ClassObject (getClass/1258963082 (cast-from-var3949-to-var3818 var2796))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1266 String (getName/-1958580599 var2251)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2343 Int (hashCode/-467973558 var1266)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var306 Int (+ var3069 var2343)) ; Statement: $i7 = $i1 + $i0 
(define-const var1847 Int (* 31 var306)) ; Statement: $i2 = 31 * $i7 
(define-const var3357 var256 (lockMode/441916970 var2796)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (not (= var3357 null-var256))) ; Negate: Cond: $r4 == null  
(define-const var2063 var256 (lockMode/441916970 var2796)) ; Statement: $r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode> 
(assert true)
(define-const var1326 Int (hashCode/385986394 (cast-from-var256-to-var2850 var2063))) ; Statement: $i9 = virtualinvoke $r6.<org.hibernate.LockMode: int hashCode()>() 
 ; Statement: goto [?= $i5 = $i2 + $i9] 
(assert true) ; Non Conditional
(define-const var128 Int (+ var1847 var1326)) ; Statement: $i5 = $i2 + $i9 
(define-const var3317 Int (* 31 var128)) ; Statement: $i4 = 31 * $i5 
(define-const var2159 var2209 (propertyResults/441916970 var2796)) ; Statement: $r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.util.Map propertyResults> 
(define-const var975 Int (var2209_hashCode/1768810987 var2159)) ; Statement: $i3 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
(define-const var1284 Int (+ var3317 var975)) ; Statement: $i6 = $i4 + $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {alias/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3949-to-var3818=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), hashCode/-467973558=([java.lang.String], int), lockMode/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], org.hibernate.LockMode), hashCode/385986394=([java.lang.Enum], int), cast-from-var256-to-var2850=([org.hibernate.LockMode], java.lang.Enum), propertyResults/441916970=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.util.Map), var2209_hashCode/1768810987=([java.util.Map], int)}
; {var3949=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var2796=r0, var3599=$r1, var3790=null_type, var1215=$i8, var3069=$i1, var3818=java.lang.Object, var2251=$r2, var1266=$r3, var2343=$i0, var306=$i7, var1847=$i2, var256=org.hibernate.LockMode, var3357=$r4, var2063=$r6, var2850=java.lang.Enum, var1326=$i9, var128=$i5, var3317=$i4, var2209=java.util.Map, var2159=$r5, var975=$i3, var1284=$i6}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var3949, r0=var2796, $r1=var3599, null_type=var3790, $i8=var1215, $i1=var3069, java.lang.Object=var3818, $r2=var2251, $r3=var1266, $i0=var2343, $i7=var306, $i2=var1847, org.hibernate.LockMode=var256, $r4=var3357, $r6=var2063, java.lang.Enum=var2850, $i9=var1326, $i5=var128, $i4=var3317, java.util.Map=var2209, $r5=var2159, $i3=var975, $i6=var1284}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.lang.String alias>;	if $r1 == null goto $i8 = 0;	$i8 = 0;	$i1 = 31 * $i8;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i7 = $i1 + $i0;	$i2 = 31 * $i7;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode>;	if $r4 == null goto $i9 = 0;	$r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: org.hibernate.LockMode lockMode>;	$i9 = virtualinvoke $r6.<org.hibernate.LockMode: int hashCode()>();	goto [?= $i5 = $i2 + $i9];	$i5 = $i2 + $i9;	$i4 = 31 * $i5;	$r5 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn: java.util.Map propertyResults>;	$i3 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	$i6 = $i4 + $i3;	return $i6
;block_num 5