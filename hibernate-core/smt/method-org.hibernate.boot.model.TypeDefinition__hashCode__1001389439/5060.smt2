(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2980 0)
(declare-sort var3575 0)
(declare-sort var210 0)
(declare-sort var3321 0)
(declare-sort var2381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var2980) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun typeImplementorClass/-2026958200 (var2980) ClassObject)
(declare-fun hashCode/1739917532 (var210) Int)
(declare-fun cast-from-ClassObject-to-var210 (ClassObject) var210)
(declare-fun registrationKeys/-2026958200 (var2980) (Array Int String))
(declare-fun var3321_hashCode/1826207050 ((Array Int var210)) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var210__ ((Array Int String)) (Array Int var210))
(declare-fun parameters/-2026958200 (var2980) var2381)
(declare-fun var2381_hashCode/1768810987 (var2381) Int)
(declare-const null-var2980 var2980)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2381 var2381)
(declare-const var3601 var2980) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var3601 null-var2980)))
(define-const var3782 String (name/-2026958200 var3601)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (not (= var3782 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1222 String (name/-2026958200 var3601)) ; Statement: $r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
(assert true)
(define-const var1683 Int (hashCode/-467973558 var1222)) ; Statement: $i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i6] 
(assert true) ; Non Conditional
(define-const var2863 Int (* 31 var1683)) ; Statement: $i0 = 31 * $i6 
(define-const var2153 ClassObject (typeImplementorClass/-2026958200 var3601)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (not (= var2153 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var1598 ClassObject (typeImplementorClass/-2026958200 var3601)) ; Statement: $r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
(assert true)
(define-const var1743 Int (hashCode/1739917532 (cast-from-ClassObject-to-var210 var1598))) ; Statement: $i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i5 = $i0 + $i7] 
(assert true) ; Non Conditional
(define-const var3840 Int (+ var2863 var1743)) ; Statement: $i5 = $i0 + $i7 
(define-const var2549 Int (* 31 var3840)) ; Statement: $i1 = 31 * $i5 
(define-const var3709 (Array Int String) (registrationKeys/-2026958200 var3601)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (not (= var3709 null-__Array__Int__String__))) ; Negate: Cond: $r3 == null  
(define-const var489 (Array Int String) (registrationKeys/-2026958200 var3601)) ; Statement: $r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
(define-const var3032 Int (var3321_hashCode/1826207050 (cast-from-__Array__Int__String__-to-__Array__Int__var210__ var489))) ; Statement: $i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6) 
 ; Statement: goto [?= $i4 = $i1 + $i8] 
(assert true) ; Non Conditional
(define-const var1986 Int (+ var2549 var3032)) ; Statement: $i4 = $i1 + $i8 
(define-const var3695 Int (* 31 var1986)) ; Statement: $i2 = 31 * $i4 
(define-const var47 var2381 (parameters/-2026958200 var3601)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (not (= var47 null-var2381))) ; Negate: Cond: $r4 == null  
(define-const var3965 var2381 (parameters/-2026958200 var3601)) ; Statement: $r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
(define-const var2995 Int (var2381_hashCode/1768810987 var3965)) ; Statement: $i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i2 + $i9] 
(assert true) ; Non Conditional
(define-const var179 Int (+ var3695 var2995)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var210=([java.lang.Class], java.lang.Object), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), var3321_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__String__-to-__Array__Int__var210__=([java.lang.String[]], java.lang.Object[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map), var2381_hashCode/1768810987=([java.util.Map], int)}
; {var2980=org.hibernate.boot.model.TypeDefinition, var3601=r0, var3782=$r1, var3575=null_type, var1222=$r8, var1683=$i6, var2863=$i0, var2153=$r2, var1598=$r7, var210=java.lang.Object, var1743=$i7, var3840=$i5, var2549=$i1, var3709=$r3, var489=$r6, var3321=java.util.Arrays, var3032=$i8, var1986=$i4, var3695=$i2, var2381=java.util.Map, var47=$r4, var3965=$r5, var2995=$i9, var179=$i3}
; {org.hibernate.boot.model.TypeDefinition=var2980, r0=var3601, $r1=var3782, null_type=var3575, $r8=var1222, $i6=var1683, $i0=var2863, $r2=var2153, $r7=var1598, java.lang.Object=var210, $i7=var1743, $i5=var3840, $i1=var2549, $r3=var3709, $r6=var489, java.util.Arrays=var3321, $i8=var3032, $i4=var1986, $i2=var3695, java.util.Map=var2381, $r4=var47, $r5=var3965, $i9=var2995, $i3=var179}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	$i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i6];	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	$i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>();	goto [?= $i5 = $i0 + $i7];	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	$i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6);	goto [?= $i4 = $i1 + $i8];	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	$i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	goto [?= $i3 = $i2 + $i9];	$i3 = $i2 + $i9;	return $i3
;block_num 9