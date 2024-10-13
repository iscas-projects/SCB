(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var72 0)
(declare-sort var606 0)
(declare-sort var1755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var72) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun typeImplementorClass/-2026958200 (var72) ClassObject)
(declare-fun registrationKeys/-2026958200 (var72) (Array Int String))
(declare-fun parameters/-2026958200 (var72) var1755)
(declare-const null-var72 var72)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1755 var1755)
(declare-const var1685 var72) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var1685 null-var72)))
(define-const var558 String (name/-2026958200 var1685)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (not (= var558 null-String))) ; Negate: Cond: $r1 == null  
(define-const var2066 String (name/-2026958200 var1685)) ; Statement: $r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
(assert true)
(define-const var3220 Int (hashCode/-467973558 var2066)) ; Statement: $i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i6] 
(assert true) ; Non Conditional
(define-const var3307 Int (* 31 var3220)) ; Statement: $i0 = 31 * $i6 
(define-const var2105 ClassObject (typeImplementorClass/-2026958200 var1685)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (= var2105 null-ClassObject)) ; Cond: $r2 == null 
(define-const var1192 Int 0) ; Statement: $i7 = 0 
(assert true) ; Non Conditional
(define-const var2214 Int (+ var3307 var1192)) ; Statement: $i5 = $i0 + $i7 
(define-const var987 Int (* 31 var2214)) ; Statement: $i1 = 31 * $i5 
(define-const var3182 (Array Int String) (registrationKeys/-2026958200 var1685)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (= var3182 null-__Array__Int__String__)) ; Cond: $r3 == null 
(define-const var956 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var3811 Int (+ var987 var956)) ; Statement: $i4 = $i1 + $i8 
(define-const var477 Int (* 31 var3811)) ; Statement: $i2 = 31 * $i4 
(define-const var3453 var1755 (parameters/-2026958200 var1685)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (= var3453 null-var1755)) ; Cond: $r4 == null 
(define-const var1353 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var586 Int (+ var477 var1353)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map)}
; {var72=org.hibernate.boot.model.TypeDefinition, var1685=r0, var558=$r1, var606=null_type, var2066=$r8, var3220=$i6, var3307=$i0, var2105=$r2, var1192=$i7, var2214=$i5, var987=$i1, var3182=$r3, var956=$i8, var3811=$i4, var477=$i2, var1755=java.util.Map, var3453=$r4, var1353=$i9, var586=$i3}
; {org.hibernate.boot.model.TypeDefinition=var72, r0=var1685, $r1=var558, null_type=var606, $r8=var2066, $i6=var3220, $i0=var3307, $r2=var2105, $i7=var1192, $i5=var2214, $i1=var987, $r3=var3182, $i8=var956, $i4=var3811, $i2=var477, java.util.Map=var1755, $r4=var3453, $i9=var1353, $i3=var586}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	$i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i6];	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$i7 = 0;	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$i8 = 0;	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$i9 = 0;	$i3 = $i2 + $i9;	return $i3
;block_num 9