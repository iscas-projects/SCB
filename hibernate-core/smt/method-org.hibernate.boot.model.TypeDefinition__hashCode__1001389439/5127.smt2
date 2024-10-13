(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1057 0)
(declare-sort var2271 0)
(declare-sort var125 0)
(declare-sort var3251 0)
(declare-sort var3267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var1057) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun typeImplementorClass/-2026958200 (var1057) ClassObject)
(declare-fun registrationKeys/-2026958200 (var1057) (Array Int String))
(declare-fun var125_hashCode/1826207050 ((Array Int var3251)) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3251__ ((Array Int String)) (Array Int var3251))
(declare-fun parameters/-2026958200 (var1057) var3267)
(declare-const null-var1057 var1057)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3267 var3267)
(declare-const var879 var1057) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var879 null-var1057)))
(define-const var880 String (name/-2026958200 var879)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (not (= var880 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1717 String (name/-2026958200 var879)) ; Statement: $r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
(assert true)
(define-const var104 Int (hashCode/-467973558 var1717)) ; Statement: $i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i6] 
(assert true) ; Non Conditional
(define-const var418 Int (* 31 var104)) ; Statement: $i0 = 31 * $i6 
(define-const var2821 ClassObject (typeImplementorClass/-2026958200 var879)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (= var2821 null-ClassObject)) ; Cond: $r2 == null 
(define-const var973 Int 0) ; Statement: $i7 = 0 
(assert true) ; Non Conditional
(define-const var3295 Int (+ var418 var973)) ; Statement: $i5 = $i0 + $i7 
(define-const var1589 Int (* 31 var3295)) ; Statement: $i1 = 31 * $i5 
(define-const var3628 (Array Int String) (registrationKeys/-2026958200 var879)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (not (= var3628 null-__Array__Int__String__))) ; Negate: Cond: $r3 == null  
(define-const var586 (Array Int String) (registrationKeys/-2026958200 var879)) ; Statement: $r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
(define-const var541 Int (var125_hashCode/1826207050 (cast-from-__Array__Int__String__-to-__Array__Int__var3251__ var586))) ; Statement: $i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6) 
 ; Statement: goto [?= $i4 = $i1 + $i8] 
(assert true) ; Non Conditional
(define-const var37 Int (+ var1589 var541)) ; Statement: $i4 = $i1 + $i8 
(define-const var3311 Int (* 31 var37)) ; Statement: $i2 = 31 * $i4 
(define-const var3643 var3267 (parameters/-2026958200 var879)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (= var3643 null-var3267)) ; Cond: $r4 == null 
(define-const var1403 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var1478 Int (+ var3311 var1403)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), var125_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__String__-to-__Array__Int__var3251__=([java.lang.String[]], java.lang.Object[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map)}
; {var1057=org.hibernate.boot.model.TypeDefinition, var879=r0, var880=$r1, var2271=null_type, var1717=$r8, var104=$i6, var418=$i0, var2821=$r2, var973=$i7, var3295=$i5, var1589=$i1, var3628=$r3, var586=$r6, var125=java.util.Arrays, var3251=java.lang.Object, var541=$i8, var37=$i4, var3311=$i2, var3267=java.util.Map, var3643=$r4, var1403=$i9, var1478=$i3}
; {org.hibernate.boot.model.TypeDefinition=var1057, r0=var879, $r1=var880, null_type=var2271, $r8=var1717, $i6=var104, $i0=var418, $r2=var2821, $i7=var973, $i5=var3295, $i1=var1589, $r3=var3628, $r6=var586, java.util.Arrays=var125, java.lang.Object=var3251, $i8=var541, $i4=var37, $i2=var3311, java.util.Map=var3267, $r4=var3643, $i9=var1403, $i3=var1478}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	$i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i6];	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$i7 = 0;	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	$i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6);	goto [?= $i4 = $i1 + $i8];	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$i9 = 0;	$i3 = $i2 + $i9;	return $i3
;block_num 9