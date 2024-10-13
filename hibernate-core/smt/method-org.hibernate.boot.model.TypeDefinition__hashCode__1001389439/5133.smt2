(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1319 0)
(declare-sort var1778 0)
(declare-sort var1043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var1319) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun typeImplementorClass/-2026958200 (var1319) ClassObject)
(declare-fun registrationKeys/-2026958200 (var1319) (Array Int String))
(declare-fun parameters/-2026958200 (var1319) var1043)
(declare-fun var1043_hashCode/1768810987 (var1043) Int)
(declare-const null-var1319 var1319)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1043 var1043)
(declare-const var660 var1319) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var660 null-var1319)))
(define-const var2476 String (name/-2026958200 var660)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (not (= var2476 null-String))) ; Negate: Cond: $r1 == null  
(define-const var987 String (name/-2026958200 var660)) ; Statement: $r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
(assert true)
(define-const var3466 Int (hashCode/-467973558 var987)) ; Statement: $i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i6] 
(assert true) ; Non Conditional
(define-const var2996 Int (* 31 var3466)) ; Statement: $i0 = 31 * $i6 
(define-const var2036 ClassObject (typeImplementorClass/-2026958200 var660)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (= var2036 null-ClassObject)) ; Cond: $r2 == null 
(define-const var233 Int 0) ; Statement: $i7 = 0 
(assert true) ; Non Conditional
(define-const var902 Int (+ var2996 var233)) ; Statement: $i5 = $i0 + $i7 
(define-const var901 Int (* 31 var902)) ; Statement: $i1 = 31 * $i5 
(define-const var1865 (Array Int String) (registrationKeys/-2026958200 var660)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (= var1865 null-__Array__Int__String__)) ; Cond: $r3 == null 
(define-const var2986 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var870 Int (+ var901 var2986)) ; Statement: $i4 = $i1 + $i8 
(define-const var3631 Int (* 31 var870)) ; Statement: $i2 = 31 * $i4 
(define-const var2258 var1043 (parameters/-2026958200 var660)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (not (= var2258 null-var1043))) ; Negate: Cond: $r4 == null  
(define-const var3581 var1043 (parameters/-2026958200 var660)) ; Statement: $r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
(define-const var3848 Int (var1043_hashCode/1768810987 var3581)) ; Statement: $i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i2 + $i9] 
(assert true) ; Non Conditional
(define-const var1347 Int (+ var3631 var3848)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map), var1043_hashCode/1768810987=([java.util.Map], int)}
; {var1319=org.hibernate.boot.model.TypeDefinition, var660=r0, var2476=$r1, var1778=null_type, var987=$r8, var3466=$i6, var2996=$i0, var2036=$r2, var233=$i7, var902=$i5, var901=$i1, var1865=$r3, var2986=$i8, var870=$i4, var3631=$i2, var1043=java.util.Map, var2258=$r4, var3581=$r5, var3848=$i9, var1347=$i3}
; {org.hibernate.boot.model.TypeDefinition=var1319, r0=var660, $r1=var2476, null_type=var1778, $r8=var987, $i6=var3466, $i0=var2996, $r2=var2036, $i7=var233, $i5=var902, $i1=var901, $r3=var1865, $i8=var2986, $i4=var870, $i2=var3631, java.util.Map=var1043, $r4=var2258, $r5=var3581, $i9=var3848, $i3=var1347}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	$i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i6];	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$i7 = 0;	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$i8 = 0;	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	$i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	goto [?= $i3 = $i2 + $i9];	$i3 = $i2 + $i9;	return $i3
;block_num 9