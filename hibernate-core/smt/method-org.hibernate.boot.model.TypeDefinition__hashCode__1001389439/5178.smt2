(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var506 0)
(declare-sort var1548 0)
(declare-sort var1633 0)
(declare-sort var984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var506) String)
(declare-fun typeImplementorClass/-2026958200 (var506) ClassObject)
(declare-fun hashCode/1739917532 (var1633) Int)
(declare-fun cast-from-ClassObject-to-var1633 (ClassObject) var1633)
(declare-fun registrationKeys/-2026958200 (var506) (Array Int String))
(declare-fun parameters/-2026958200 (var506) var984)
(declare-const null-var506 var506)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var984 var984)
(declare-const var831 var506) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var831 null-var506)))
(define-const var629 String (name/-2026958200 var831)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (= var629 null-String)) ; Cond: $r1 == null 
(define-const var2824 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var3034 Int (* 31 var2824)) ; Statement: $i0 = 31 * $i6 
(define-const var3809 ClassObject (typeImplementorClass/-2026958200 var831)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (not (= var3809 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var590 ClassObject (typeImplementorClass/-2026958200 var831)) ; Statement: $r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
(assert true)
(define-const var3564 Int (hashCode/1739917532 (cast-from-ClassObject-to-var1633 var590))) ; Statement: $i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i5 = $i0 + $i7] 
(assert true) ; Non Conditional
(define-const var1498 Int (+ var3034 var3564)) ; Statement: $i5 = $i0 + $i7 
(define-const var3465 Int (* 31 var1498)) ; Statement: $i1 = 31 * $i5 
(define-const var2242 (Array Int String) (registrationKeys/-2026958200 var831)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (= var2242 null-__Array__Int__String__)) ; Cond: $r3 == null 
(define-const var1257 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var3339 Int (+ var3465 var1257)) ; Statement: $i4 = $i1 + $i8 
(define-const var1318 Int (* 31 var3339)) ; Statement: $i2 = 31 * $i4 
(define-const var3233 var984 (parameters/-2026958200 var831)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (= var3233 null-var984)) ; Cond: $r4 == null 
(define-const var3344 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var852 Int (+ var1318 var3344)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var1633=([java.lang.Class], java.lang.Object), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map)}
; {var506=org.hibernate.boot.model.TypeDefinition, var831=r0, var629=$r1, var1548=null_type, var2824=$i6, var3034=$i0, var3809=$r2, var590=$r7, var1633=java.lang.Object, var3564=$i7, var1498=$i5, var3465=$i1, var2242=$r3, var1257=$i8, var3339=$i4, var1318=$i2, var984=java.util.Map, var3233=$r4, var3344=$i9, var852=$i3}
; {org.hibernate.boot.model.TypeDefinition=var506, r0=var831, $r1=var629, null_type=var1548, $i6=var2824, $i0=var3034, $r2=var3809, $r7=var590, java.lang.Object=var1633, $i7=var3564, $i5=var1498, $i1=var3465, $r3=var2242, $i8=var1257, $i4=var3339, $i2=var1318, java.util.Map=var984, $r4=var3233, $i9=var3344, $i3=var852}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$i6 = 0;	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	$i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>();	goto [?= $i5 = $i0 + $i7];	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$i8 = 0;	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$i9 = 0;	$i3 = $i2 + $i9;	return $i3
;block_num 9