(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3918 0)
(declare-sort var2709 0)
(declare-sort var843 0)
(declare-sort var1688 0)
(declare-sort var2 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var3918) String)
(declare-fun typeImplementorClass/-2026958200 (var3918) ClassObject)
(declare-fun registrationKeys/-2026958200 (var3918) (Array Int String))
(declare-fun var843_hashCode/1826207050 ((Array Int var1688)) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1688__ ((Array Int String)) (Array Int var1688))
(declare-fun parameters/-2026958200 (var3918) var2)
(declare-fun var2_hashCode/1768810987 (var2) Int)
(declare-const null-var3918 var3918)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2 var2)
(declare-const var1582 var3918) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var1582 null-var3918)))
(define-const var3262 String (name/-2026958200 var1582)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (= var3262 null-String)) ; Cond: $r1 == null 
(define-const var3373 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var141 Int (* 31 var3373)) ; Statement: $i0 = 31 * $i6 
(define-const var2323 ClassObject (typeImplementorClass/-2026958200 var1582)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (= var2323 null-ClassObject)) ; Cond: $r2 == null 
(define-const var2570 Int 0) ; Statement: $i7 = 0 
(assert true) ; Non Conditional
(define-const var227 Int (+ var141 var2570)) ; Statement: $i5 = $i0 + $i7 
(define-const var3464 Int (* 31 var227)) ; Statement: $i1 = 31 * $i5 
(define-const var3677 (Array Int String) (registrationKeys/-2026958200 var1582)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (not (= var3677 null-__Array__Int__String__))) ; Negate: Cond: $r3 == null  
(define-const var1240 (Array Int String) (registrationKeys/-2026958200 var1582)) ; Statement: $r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
(define-const var1904 Int (var843_hashCode/1826207050 (cast-from-__Array__Int__String__-to-__Array__Int__var1688__ var1240))) ; Statement: $i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6) 
 ; Statement: goto [?= $i4 = $i1 + $i8] 
(assert true) ; Non Conditional
(define-const var3168 Int (+ var3464 var1904)) ; Statement: $i4 = $i1 + $i8 
(define-const var1555 Int (* 31 var3168)) ; Statement: $i2 = 31 * $i4 
(define-const var373 var2 (parameters/-2026958200 var1582)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (not (= var373 null-var2))) ; Negate: Cond: $r4 == null  
(define-const var3913 var2 (parameters/-2026958200 var1582)) ; Statement: $r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
(define-const var2360 Int (var2_hashCode/1768810987 var3913)) ; Statement: $i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i2 + $i9] 
(assert true) ; Non Conditional
(define-const var257 Int (+ var1555 var2360)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), var843_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__String__-to-__Array__Int__var1688__=([java.lang.String[]], java.lang.Object[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map), var2_hashCode/1768810987=([java.util.Map], int)}
; {var3918=org.hibernate.boot.model.TypeDefinition, var1582=r0, var3262=$r1, var2709=null_type, var3373=$i6, var141=$i0, var2323=$r2, var2570=$i7, var227=$i5, var3464=$i1, var3677=$r3, var1240=$r6, var843=java.util.Arrays, var1688=java.lang.Object, var1904=$i8, var3168=$i4, var1555=$i2, var2=java.util.Map, var373=$r4, var3913=$r5, var2360=$i9, var257=$i3}
; {org.hibernate.boot.model.TypeDefinition=var3918, r0=var1582, $r1=var3262, null_type=var2709, $i6=var3373, $i0=var141, $r2=var2323, $i7=var2570, $i5=var227, $i1=var3464, $r3=var3677, $r6=var1240, java.util.Arrays=var843, java.lang.Object=var1688, $i8=var1904, $i4=var3168, $i2=var1555, java.util.Map=var2, $r4=var373, $r5=var3913, $i9=var2360, $i3=var257}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$i6 = 0;	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$i7 = 0;	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	$i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6);	goto [?= $i4 = $i1 + $i8];	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	$i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	goto [?= $i3 = $i2 + $i9];	$i3 = $i2 + $i9;	return $i3
;block_num 9