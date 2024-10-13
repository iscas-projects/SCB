(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2572 0)
(declare-sort var1849 0)
(declare-sort var3980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var2572) String)
(declare-fun typeImplementorClass/-2026958200 (var2572) ClassObject)
(declare-fun registrationKeys/-2026958200 (var2572) (Array Int String))
(declare-fun parameters/-2026958200 (var2572) var3980)
(declare-fun var3980_hashCode/1768810987 (var3980) Int)
(declare-const null-var2572 var2572)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3980 var3980)
(declare-const var1628 var2572) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var1628 null-var2572)))
(define-const var3186 String (name/-2026958200 var1628)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (= var3186 null-String)) ; Cond: $r1 == null 
(define-const var431 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var3973 Int (* 31 var431)) ; Statement: $i0 = 31 * $i6 
(define-const var286 ClassObject (typeImplementorClass/-2026958200 var1628)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (= var286 null-ClassObject)) ; Cond: $r2 == null 
(define-const var680 Int 0) ; Statement: $i7 = 0 
(assert true) ; Non Conditional
(define-const var3764 Int (+ var3973 var680)) ; Statement: $i5 = $i0 + $i7 
(define-const var786 Int (* 31 var3764)) ; Statement: $i1 = 31 * $i5 
(define-const var2392 (Array Int String) (registrationKeys/-2026958200 var1628)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (= var2392 null-__Array__Int__String__)) ; Cond: $r3 == null 
(define-const var2726 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var894 Int (+ var786 var2726)) ; Statement: $i4 = $i1 + $i8 
(define-const var3178 Int (* 31 var894)) ; Statement: $i2 = 31 * $i4 
(define-const var1788 var3980 (parameters/-2026958200 var1628)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (not (= var1788 null-var3980))) ; Negate: Cond: $r4 == null  
(define-const var588 var3980 (parameters/-2026958200 var1628)) ; Statement: $r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
(define-const var1762 Int (var3980_hashCode/1768810987 var588)) ; Statement: $i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i2 + $i9] 
(assert true) ; Non Conditional
(define-const var3715 Int (+ var3178 var1762)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map), var3980_hashCode/1768810987=([java.util.Map], int)}
; {var2572=org.hibernate.boot.model.TypeDefinition, var1628=r0, var3186=$r1, var1849=null_type, var431=$i6, var3973=$i0, var286=$r2, var680=$i7, var3764=$i5, var786=$i1, var2392=$r3, var2726=$i8, var894=$i4, var3178=$i2, var3980=java.util.Map, var1788=$r4, var588=$r5, var1762=$i9, var3715=$i3}
; {org.hibernate.boot.model.TypeDefinition=var2572, r0=var1628, $r1=var3186, null_type=var1849, $i6=var431, $i0=var3973, $r2=var286, $i7=var680, $i5=var3764, $i1=var786, $r3=var2392, $i8=var2726, $i4=var894, $i2=var3178, java.util.Map=var3980, $r4=var1788, $r5=var588, $i9=var1762, $i3=var3715}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$i6 = 0;	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$i7 = 0;	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$i8 = 0;	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	$i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	goto [?= $i3 = $i2 + $i9];	$i3 = $i2 + $i9;	return $i3
;block_num 9