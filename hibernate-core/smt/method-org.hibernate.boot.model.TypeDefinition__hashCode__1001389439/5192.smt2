(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2785 0)
(declare-sort var3691 0)
(declare-sort var1346 0)
(declare-sort var142 0)
(declare-sort var1950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var2785) String)
(declare-fun typeImplementorClass/-2026958200 (var2785) ClassObject)
(declare-fun registrationKeys/-2026958200 (var2785) (Array Int String))
(declare-fun var1346_hashCode/1826207050 ((Array Int var142)) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var142__ ((Array Int String)) (Array Int var142))
(declare-fun parameters/-2026958200 (var2785) var1950)
(declare-const null-var2785 var2785)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1950 var1950)
(declare-const var369 var2785) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var369 null-var2785)))
(define-const var249 String (name/-2026958200 var369)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (= var249 null-String)) ; Cond: $r1 == null 
(define-const var3706 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var1862 Int (* 31 var3706)) ; Statement: $i0 = 31 * $i6 
(define-const var1590 ClassObject (typeImplementorClass/-2026958200 var369)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (= var1590 null-ClassObject)) ; Cond: $r2 == null 
(define-const var2793 Int 0) ; Statement: $i7 = 0 
(assert true) ; Non Conditional
(define-const var611 Int (+ var1862 var2793)) ; Statement: $i5 = $i0 + $i7 
(define-const var3427 Int (* 31 var611)) ; Statement: $i1 = 31 * $i5 
(define-const var781 (Array Int String) (registrationKeys/-2026958200 var369)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (not (= var781 null-__Array__Int__String__))) ; Negate: Cond: $r3 == null  
(define-const var1737 (Array Int String) (registrationKeys/-2026958200 var369)) ; Statement: $r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
(define-const var267 Int (var1346_hashCode/1826207050 (cast-from-__Array__Int__String__-to-__Array__Int__var142__ var1737))) ; Statement: $i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6) 
 ; Statement: goto [?= $i4 = $i1 + $i8] 
(assert true) ; Non Conditional
(define-const var1413 Int (+ var3427 var267)) ; Statement: $i4 = $i1 + $i8 
(define-const var2365 Int (* 31 var1413)) ; Statement: $i2 = 31 * $i4 
(define-const var3073 var1950 (parameters/-2026958200 var369)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (= var3073 null-var1950)) ; Cond: $r4 == null 
(define-const var2755 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var697 Int (+ var2365 var2755)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), var1346_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__String__-to-__Array__Int__var142__=([java.lang.String[]], java.lang.Object[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map)}
; {var2785=org.hibernate.boot.model.TypeDefinition, var369=r0, var249=$r1, var3691=null_type, var3706=$i6, var1862=$i0, var1590=$r2, var2793=$i7, var611=$i5, var3427=$i1, var781=$r3, var1737=$r6, var1346=java.util.Arrays, var142=java.lang.Object, var267=$i8, var1413=$i4, var2365=$i2, var1950=java.util.Map, var3073=$r4, var2755=$i9, var697=$i3}
; {org.hibernate.boot.model.TypeDefinition=var2785, r0=var369, $r1=var249, null_type=var3691, $i6=var3706, $i0=var1862, $r2=var1590, $i7=var2793, $i5=var611, $i1=var3427, $r3=var781, $r6=var1737, java.util.Arrays=var1346, java.lang.Object=var142, $i8=var267, $i4=var1413, $i2=var2365, java.util.Map=var1950, $r4=var3073, $i9=var2755, $i3=var697}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$i6 = 0;	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$i7 = 0;	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	$i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6);	goto [?= $i4 = $i1 + $i8];	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$i9 = 0;	$i3 = $i2 + $i9;	return $i3
;block_num 9