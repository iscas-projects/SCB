(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1400 0)
(declare-sort var678 0)
(declare-sort var475 0)
(declare-sort var901 0)
(declare-sort var1904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var1400) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun typeImplementorClass/-2026958200 (var1400) ClassObject)
(declare-fun hashCode/1739917532 (var475) Int)
(declare-fun cast-from-ClassObject-to-var475 (ClassObject) var475)
(declare-fun registrationKeys/-2026958200 (var1400) (Array Int String))
(declare-fun var901_hashCode/1826207050 ((Array Int var475)) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var475__ ((Array Int String)) (Array Int var475))
(declare-fun parameters/-2026958200 (var1400) var1904)
(declare-const null-var1400 var1400)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1904 var1904)
(declare-const var2060 var1400) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var2060 null-var1400)))
(define-const var3505 String (name/-2026958200 var2060)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (not (= var3505 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1049 String (name/-2026958200 var2060)) ; Statement: $r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
(assert true)
(define-const var843 Int (hashCode/-467973558 var1049)) ; Statement: $i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i6] 
(assert true) ; Non Conditional
(define-const var3458 Int (* 31 var843)) ; Statement: $i0 = 31 * $i6 
(define-const var3079 ClassObject (typeImplementorClass/-2026958200 var2060)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (not (= var3079 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var2614 ClassObject (typeImplementorClass/-2026958200 var2060)) ; Statement: $r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
(assert true)
(define-const var3493 Int (hashCode/1739917532 (cast-from-ClassObject-to-var475 var2614))) ; Statement: $i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i5 = $i0 + $i7] 
(assert true) ; Non Conditional
(define-const var1685 Int (+ var3458 var3493)) ; Statement: $i5 = $i0 + $i7 
(define-const var699 Int (* 31 var1685)) ; Statement: $i1 = 31 * $i5 
(define-const var1572 (Array Int String) (registrationKeys/-2026958200 var2060)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (not (= var1572 null-__Array__Int__String__))) ; Negate: Cond: $r3 == null  
(define-const var2569 (Array Int String) (registrationKeys/-2026958200 var2060)) ; Statement: $r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
(define-const var1997 Int (var901_hashCode/1826207050 (cast-from-__Array__Int__String__-to-__Array__Int__var475__ var2569))) ; Statement: $i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6) 
 ; Statement: goto [?= $i4 = $i1 + $i8] 
(assert true) ; Non Conditional
(define-const var2299 Int (+ var699 var1997)) ; Statement: $i4 = $i1 + $i8 
(define-const var84 Int (* 31 var2299)) ; Statement: $i2 = 31 * $i4 
(define-const var3045 var1904 (parameters/-2026958200 var2060)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (= var3045 null-var1904)) ; Cond: $r4 == null 
(define-const var3091 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var3286 Int (+ var84 var3091)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var475=([java.lang.Class], java.lang.Object), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), var901_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__String__-to-__Array__Int__var475__=([java.lang.String[]], java.lang.Object[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map)}
; {var1400=org.hibernate.boot.model.TypeDefinition, var2060=r0, var3505=$r1, var678=null_type, var1049=$r8, var843=$i6, var3458=$i0, var3079=$r2, var2614=$r7, var475=java.lang.Object, var3493=$i7, var1685=$i5, var699=$i1, var1572=$r3, var2569=$r6, var901=java.util.Arrays, var1997=$i8, var2299=$i4, var84=$i2, var1904=java.util.Map, var3045=$r4, var3091=$i9, var3286=$i3}
; {org.hibernate.boot.model.TypeDefinition=var1400, r0=var2060, $r1=var3505, null_type=var678, $r8=var1049, $i6=var843, $i0=var3458, $r2=var3079, $r7=var2614, java.lang.Object=var475, $i7=var3493, $i5=var1685, $i1=var699, $r3=var1572, $r6=var2569, java.util.Arrays=var901, $i8=var1997, $i4=var2299, $i2=var84, java.util.Map=var1904, $r4=var3045, $i9=var3091, $i3=var3286}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	$i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i6];	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	$i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>();	goto [?= $i5 = $i0 + $i7];	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	$i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6);	goto [?= $i4 = $i1 + $i8];	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$i9 = 0;	$i3 = $i2 + $i9;	return $i3
;block_num 9