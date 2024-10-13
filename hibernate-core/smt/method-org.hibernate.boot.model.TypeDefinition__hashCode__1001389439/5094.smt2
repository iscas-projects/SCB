(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1480 0)
(declare-sort var2533 0)
(declare-sort var325 0)
(declare-sort var2770 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var1480) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun typeImplementorClass/-2026958200 (var1480) ClassObject)
(declare-fun hashCode/1739917532 (var325) Int)
(declare-fun cast-from-ClassObject-to-var325 (ClassObject) var325)
(declare-fun registrationKeys/-2026958200 (var1480) (Array Int String))
(declare-fun parameters/-2026958200 (var1480) var2770)
(declare-fun var2770_hashCode/1768810987 (var2770) Int)
(declare-const null-var1480 var1480)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2770 var2770)
(declare-const var3789 var1480) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var3789 null-var1480)))
(define-const var1752 String (name/-2026958200 var3789)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (not (= var1752 null-String))) ; Negate: Cond: $r1 == null  
(define-const var584 String (name/-2026958200 var3789)) ; Statement: $r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
(assert true)
(define-const var394 Int (hashCode/-467973558 var584)) ; Statement: $i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i6] 
(assert true) ; Non Conditional
(define-const var1825 Int (* 31 var394)) ; Statement: $i0 = 31 * $i6 
(define-const var3269 ClassObject (typeImplementorClass/-2026958200 var3789)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (not (= var3269 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var3703 ClassObject (typeImplementorClass/-2026958200 var3789)) ; Statement: $r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
(assert true)
(define-const var719 Int (hashCode/1739917532 (cast-from-ClassObject-to-var325 var3703))) ; Statement: $i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i5 = $i0 + $i7] 
(assert true) ; Non Conditional
(define-const var1027 Int (+ var1825 var719)) ; Statement: $i5 = $i0 + $i7 
(define-const var3001 Int (* 31 var1027)) ; Statement: $i1 = 31 * $i5 
(define-const var867 (Array Int String) (registrationKeys/-2026958200 var3789)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (= var867 null-__Array__Int__String__)) ; Cond: $r3 == null 
(define-const var2134 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var889 Int (+ var3001 var2134)) ; Statement: $i4 = $i1 + $i8 
(define-const var3348 Int (* 31 var889)) ; Statement: $i2 = 31 * $i4 
(define-const var3938 var2770 (parameters/-2026958200 var3789)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (not (= var3938 null-var2770))) ; Negate: Cond: $r4 == null  
(define-const var252 var2770 (parameters/-2026958200 var3789)) ; Statement: $r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
(define-const var3263 Int (var2770_hashCode/1768810987 var252)) ; Statement: $i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i2 + $i9] 
(assert true) ; Non Conditional
(define-const var668 Int (+ var3348 var3263)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var325=([java.lang.Class], java.lang.Object), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map), var2770_hashCode/1768810987=([java.util.Map], int)}
; {var1480=org.hibernate.boot.model.TypeDefinition, var3789=r0, var1752=$r1, var2533=null_type, var584=$r8, var394=$i6, var1825=$i0, var3269=$r2, var3703=$r7, var325=java.lang.Object, var719=$i7, var1027=$i5, var3001=$i1, var867=$r3, var2134=$i8, var889=$i4, var3348=$i2, var2770=java.util.Map, var3938=$r4, var252=$r5, var3263=$i9, var668=$i3}
; {org.hibernate.boot.model.TypeDefinition=var1480, r0=var3789, $r1=var1752, null_type=var2533, $r8=var584, $i6=var394, $i0=var1825, $r2=var3269, $r7=var3703, java.lang.Object=var325, $i7=var719, $i5=var1027, $i1=var3001, $r3=var867, $i8=var2134, $i4=var889, $i2=var3348, java.util.Map=var2770, $r4=var3938, $r5=var252, $i9=var3263, $i3=var668}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	$i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i6];	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	$i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>();	goto [?= $i5 = $i0 + $i7];	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$i8 = 0;	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	$i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	goto [?= $i3 = $i2 + $i9];	$i3 = $i2 + $i9;	return $i3
;block_num 9