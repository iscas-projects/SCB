(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3882 0)
(declare-sort var131 0)
(declare-sort var1421 0)
(declare-sort var1530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var3882) String)
(declare-fun typeImplementorClass/-2026958200 (var3882) ClassObject)
(declare-fun hashCode/1739917532 (var1421) Int)
(declare-fun cast-from-ClassObject-to-var1421 (ClassObject) var1421)
(declare-fun registrationKeys/-2026958200 (var3882) (Array Int String))
(declare-fun parameters/-2026958200 (var3882) var1530)
(declare-fun var1530_hashCode/1768810987 (var1530) Int)
(declare-const null-var3882 var3882)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1530 var1530)
(declare-const var459 var3882) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var459 null-var3882)))
(define-const var3675 String (name/-2026958200 var459)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (= var3675 null-String)) ; Cond: $r1 == null 
(define-const var3298 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var799 Int (* 31 var3298)) ; Statement: $i0 = 31 * $i6 
(define-const var3135 ClassObject (typeImplementorClass/-2026958200 var459)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (not (= var3135 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var1642 ClassObject (typeImplementorClass/-2026958200 var459)) ; Statement: $r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
(assert true)
(define-const var948 Int (hashCode/1739917532 (cast-from-ClassObject-to-var1421 var1642))) ; Statement: $i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i5 = $i0 + $i7] 
(assert true) ; Non Conditional
(define-const var1759 Int (+ var799 var948)) ; Statement: $i5 = $i0 + $i7 
(define-const var584 Int (* 31 var1759)) ; Statement: $i1 = 31 * $i5 
(define-const var847 (Array Int String) (registrationKeys/-2026958200 var459)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (= var847 null-__Array__Int__String__)) ; Cond: $r3 == null 
(define-const var1032 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var876 Int (+ var584 var1032)) ; Statement: $i4 = $i1 + $i8 
(define-const var1436 Int (* 31 var876)) ; Statement: $i2 = 31 * $i4 
(define-const var2529 var1530 (parameters/-2026958200 var459)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (not (= var2529 null-var1530))) ; Negate: Cond: $r4 == null  
(define-const var2052 var1530 (parameters/-2026958200 var459)) ; Statement: $r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
(define-const var1331 Int (var1530_hashCode/1768810987 var2052)) ; Statement: $i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i2 + $i9] 
(assert true) ; Non Conditional
(define-const var3940 Int (+ var1436 var1331)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var1421=([java.lang.Class], java.lang.Object), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map), var1530_hashCode/1768810987=([java.util.Map], int)}
; {var3882=org.hibernate.boot.model.TypeDefinition, var459=r0, var3675=$r1, var131=null_type, var3298=$i6, var799=$i0, var3135=$r2, var1642=$r7, var1421=java.lang.Object, var948=$i7, var1759=$i5, var584=$i1, var847=$r3, var1032=$i8, var876=$i4, var1436=$i2, var1530=java.util.Map, var2529=$r4, var2052=$r5, var1331=$i9, var3940=$i3}
; {org.hibernate.boot.model.TypeDefinition=var3882, r0=var459, $r1=var3675, null_type=var131, $i6=var3298, $i0=var799, $r2=var3135, $r7=var1642, java.lang.Object=var1421, $i7=var948, $i5=var1759, $i1=var584, $r3=var847, $i8=var1032, $i4=var876, $i2=var1436, java.util.Map=var1530, $r4=var2529, $r5=var2052, $i9=var1331, $i3=var3940}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$i6 = 0;	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	$i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>();	goto [?= $i5 = $i0 + $i7];	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$i8 = 0;	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	$i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	goto [?= $i3 = $i2 + $i9];	$i3 = $i2 + $i9;	return $i3
;block_num 9