(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3641 0)
(declare-sort var956 0)
(declare-sort var3629 0)
(declare-sort var1706 0)
(declare-sort var1405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var3641) String)
(declare-fun typeImplementorClass/-2026958200 (var3641) ClassObject)
(declare-fun hashCode/1739917532 (var3629) Int)
(declare-fun cast-from-ClassObject-to-var3629 (ClassObject) var3629)
(declare-fun registrationKeys/-2026958200 (var3641) (Array Int String))
(declare-fun var1706_hashCode/1826207050 ((Array Int var3629)) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3629__ ((Array Int String)) (Array Int var3629))
(declare-fun parameters/-2026958200 (var3641) var1405)
(declare-const null-var3641 var3641)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1405 var1405)
(declare-const var2099 var3641) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var2099 null-var3641)))
(define-const var1806 String (name/-2026958200 var2099)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (= var1806 null-String)) ; Cond: $r1 == null 
(define-const var631 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var2534 Int (* 31 var631)) ; Statement: $i0 = 31 * $i6 
(define-const var3656 ClassObject (typeImplementorClass/-2026958200 var2099)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (not (= var3656 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var3697 ClassObject (typeImplementorClass/-2026958200 var2099)) ; Statement: $r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
(assert true)
(define-const var3064 Int (hashCode/1739917532 (cast-from-ClassObject-to-var3629 var3697))) ; Statement: $i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i5 = $i0 + $i7] 
(assert true) ; Non Conditional
(define-const var1369 Int (+ var2534 var3064)) ; Statement: $i5 = $i0 + $i7 
(define-const var739 Int (* 31 var1369)) ; Statement: $i1 = 31 * $i5 
(define-const var21 (Array Int String) (registrationKeys/-2026958200 var2099)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (not (= var21 null-__Array__Int__String__))) ; Negate: Cond: $r3 == null  
(define-const var1691 (Array Int String) (registrationKeys/-2026958200 var2099)) ; Statement: $r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
(define-const var277 Int (var1706_hashCode/1826207050 (cast-from-__Array__Int__String__-to-__Array__Int__var3629__ var1691))) ; Statement: $i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6) 
 ; Statement: goto [?= $i4 = $i1 + $i8] 
(assert true) ; Non Conditional
(define-const var2205 Int (+ var739 var277)) ; Statement: $i4 = $i1 + $i8 
(define-const var1446 Int (* 31 var2205)) ; Statement: $i2 = 31 * $i4 
(define-const var2134 var1405 (parameters/-2026958200 var2099)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (= var2134 null-var1405)) ; Cond: $r4 == null 
(define-const var1353 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var1155 Int (+ var1446 var1353)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var3629=([java.lang.Class], java.lang.Object), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), var1706_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__String__-to-__Array__Int__var3629__=([java.lang.String[]], java.lang.Object[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map)}
; {var3641=org.hibernate.boot.model.TypeDefinition, var2099=r0, var1806=$r1, var956=null_type, var631=$i6, var2534=$i0, var3656=$r2, var3697=$r7, var3629=java.lang.Object, var3064=$i7, var1369=$i5, var739=$i1, var21=$r3, var1691=$r6, var1706=java.util.Arrays, var277=$i8, var2205=$i4, var1446=$i2, var1405=java.util.Map, var2134=$r4, var1353=$i9, var1155=$i3}
; {org.hibernate.boot.model.TypeDefinition=var3641, r0=var2099, $r1=var1806, null_type=var956, $i6=var631, $i0=var2534, $r2=var3656, $r7=var3697, java.lang.Object=var3629, $i7=var3064, $i5=var1369, $i1=var739, $r3=var21, $r6=var1691, java.util.Arrays=var1706, $i8=var277, $i4=var2205, $i2=var1446, java.util.Map=var1405, $r4=var2134, $i9=var1353, $i3=var1155}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$i6 = 0;	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	$i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>();	goto [?= $i5 = $i0 + $i7];	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	$i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6);	goto [?= $i4 = $i1 + $i8];	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$i9 = 0;	$i3 = $i2 + $i9;	return $i3
;block_num 9