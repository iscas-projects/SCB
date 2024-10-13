(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var989 0)
(declare-sort var2472 0)
(declare-sort var2526 0)
(declare-sort var2728 0)
(declare-sort var3561 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var989) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun typeImplementorClass/-2026958200 (var989) ClassObject)
(declare-fun registrationKeys/-2026958200 (var989) (Array Int String))
(declare-fun var2526_hashCode/1826207050 ((Array Int var2728)) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2728__ ((Array Int String)) (Array Int var2728))
(declare-fun parameters/-2026958200 (var989) var3561)
(declare-fun var3561_hashCode/1768810987 (var3561) Int)
(declare-const null-var989 var989)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3561 var3561)
(declare-const var3292 var989) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var3292 null-var989)))
(define-const var1532 String (name/-2026958200 var3292)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (not (= var1532 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3022 String (name/-2026958200 var3292)) ; Statement: $r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
(assert true)
(define-const var2643 Int (hashCode/-467973558 var3022)) ; Statement: $i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i6] 
(assert true) ; Non Conditional
(define-const var1665 Int (* 31 var2643)) ; Statement: $i0 = 31 * $i6 
(define-const var3884 ClassObject (typeImplementorClass/-2026958200 var3292)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (= var3884 null-ClassObject)) ; Cond: $r2 == null 
(define-const var3141 Int 0) ; Statement: $i7 = 0 
(assert true) ; Non Conditional
(define-const var3134 Int (+ var1665 var3141)) ; Statement: $i5 = $i0 + $i7 
(define-const var2274 Int (* 31 var3134)) ; Statement: $i1 = 31 * $i5 
(define-const var1982 (Array Int String) (registrationKeys/-2026958200 var3292)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (not (= var1982 null-__Array__Int__String__))) ; Negate: Cond: $r3 == null  
(define-const var688 (Array Int String) (registrationKeys/-2026958200 var3292)) ; Statement: $r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
(define-const var2301 Int (var2526_hashCode/1826207050 (cast-from-__Array__Int__String__-to-__Array__Int__var2728__ var688))) ; Statement: $i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6) 
 ; Statement: goto [?= $i4 = $i1 + $i8] 
(assert true) ; Non Conditional
(define-const var243 Int (+ var2274 var2301)) ; Statement: $i4 = $i1 + $i8 
(define-const var2582 Int (* 31 var243)) ; Statement: $i2 = 31 * $i4 
(define-const var626 var3561 (parameters/-2026958200 var3292)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (not (= var626 null-var3561))) ; Negate: Cond: $r4 == null  
(define-const var1294 var3561 (parameters/-2026958200 var3292)) ; Statement: $r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
(define-const var2928 Int (var3561_hashCode/1768810987 var1294)) ; Statement: $i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i2 + $i9] 
(assert true) ; Non Conditional
(define-const var2027 Int (+ var2582 var2928)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), var2526_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__String__-to-__Array__Int__var2728__=([java.lang.String[]], java.lang.Object[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map), var3561_hashCode/1768810987=([java.util.Map], int)}
; {var989=org.hibernate.boot.model.TypeDefinition, var3292=r0, var1532=$r1, var2472=null_type, var3022=$r8, var2643=$i6, var1665=$i0, var3884=$r2, var3141=$i7, var3134=$i5, var2274=$i1, var1982=$r3, var688=$r6, var2526=java.util.Arrays, var2728=java.lang.Object, var2301=$i8, var243=$i4, var2582=$i2, var3561=java.util.Map, var626=$r4, var1294=$r5, var2928=$i9, var2027=$i3}
; {org.hibernate.boot.model.TypeDefinition=var989, r0=var3292, $r1=var1532, null_type=var2472, $r8=var3022, $i6=var2643, $i0=var1665, $r2=var3884, $i7=var3141, $i5=var3134, $i1=var2274, $r3=var1982, $r6=var688, java.util.Arrays=var2526, java.lang.Object=var2728, $i8=var2301, $i4=var243, $i2=var2582, java.util.Map=var3561, $r4=var626, $r5=var1294, $i9=var2928, $i3=var2027}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	$i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i6];	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$i7 = 0;	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	$i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6);	goto [?= $i4 = $i1 + $i8];	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	$i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	goto [?= $i3 = $i2 + $i9];	$i3 = $i2 + $i9;	return $i3
;block_num 9