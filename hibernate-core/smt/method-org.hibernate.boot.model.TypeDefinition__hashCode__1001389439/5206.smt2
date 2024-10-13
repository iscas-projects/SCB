(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1545 0)
(declare-sort var3227 0)
(declare-sort var1624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var1545) String)
(declare-fun typeImplementorClass/-2026958200 (var1545) ClassObject)
(declare-fun registrationKeys/-2026958200 (var1545) (Array Int String))
(declare-fun parameters/-2026958200 (var1545) var1624)
(declare-const null-var1545 var1545)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1624 var1624)
(declare-const var704 var1545) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var704 null-var1545)))
(define-const var1897 String (name/-2026958200 var704)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (= var1897 null-String)) ; Cond: $r1 == null 
(define-const var3969 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var2485 Int (* 31 var3969)) ; Statement: $i0 = 31 * $i6 
(define-const var3000 ClassObject (typeImplementorClass/-2026958200 var704)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (= var3000 null-ClassObject)) ; Cond: $r2 == null 
(define-const var1466 Int 0) ; Statement: $i7 = 0 
(assert true) ; Non Conditional
(define-const var3674 Int (+ var2485 var1466)) ; Statement: $i5 = $i0 + $i7 
(define-const var3533 Int (* 31 var3674)) ; Statement: $i1 = 31 * $i5 
(define-const var784 (Array Int String) (registrationKeys/-2026958200 var704)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (= var784 null-__Array__Int__String__)) ; Cond: $r3 == null 
(define-const var3190 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var3779 Int (+ var3533 var3190)) ; Statement: $i4 = $i1 + $i8 
(define-const var3336 Int (* 31 var3779)) ; Statement: $i2 = 31 * $i4 
(define-const var444 var1624 (parameters/-2026958200 var704)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (= var444 null-var1624)) ; Cond: $r4 == null 
(define-const var2118 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var535 Int (+ var3336 var2118)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map)}
; {var1545=org.hibernate.boot.model.TypeDefinition, var704=r0, var1897=$r1, var3227=null_type, var3969=$i6, var2485=$i0, var3000=$r2, var1466=$i7, var3674=$i5, var3533=$i1, var784=$r3, var3190=$i8, var3779=$i4, var3336=$i2, var1624=java.util.Map, var444=$r4, var2118=$i9, var535=$i3}
; {org.hibernate.boot.model.TypeDefinition=var1545, r0=var704, $r1=var1897, null_type=var3227, $i6=var3969, $i0=var2485, $r2=var3000, $i7=var1466, $i5=var3674, $i1=var3533, $r3=var784, $i8=var3190, $i4=var3779, $i2=var3336, java.util.Map=var1624, $r4=var444, $i9=var2118, $i3=var535}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$i6 = 0;	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$i7 = 0;	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$i8 = 0;	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$i9 = 0;	$i3 = $i2 + $i9;	return $i3
;block_num 9