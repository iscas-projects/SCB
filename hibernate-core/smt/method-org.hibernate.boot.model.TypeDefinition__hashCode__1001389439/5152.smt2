(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var865 0)
(declare-sort var941 0)
(declare-sort var3144 0)
(declare-sort var1760 0)
(declare-sort var916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var865) String)
(declare-fun typeImplementorClass/-2026958200 (var865) ClassObject)
(declare-fun hashCode/1739917532 (var3144) Int)
(declare-fun cast-from-ClassObject-to-var3144 (ClassObject) var3144)
(declare-fun registrationKeys/-2026958200 (var865) (Array Int String))
(declare-fun var1760_hashCode/1826207050 ((Array Int var3144)) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3144__ ((Array Int String)) (Array Int var3144))
(declare-fun parameters/-2026958200 (var865) var916)
(declare-fun var916_hashCode/1768810987 (var916) Int)
(declare-const null-var865 var865)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var916 var916)
(declare-const var1344 var865) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var1344 null-var865)))
(define-const var2730 String (name/-2026958200 var1344)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (= var2730 null-String)) ; Cond: $r1 == null 
(define-const var943 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var3287 Int (* 31 var943)) ; Statement: $i0 = 31 * $i6 
(define-const var3120 ClassObject (typeImplementorClass/-2026958200 var1344)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (not (= var3120 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var2411 ClassObject (typeImplementorClass/-2026958200 var1344)) ; Statement: $r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
(assert true)
(define-const var3221 Int (hashCode/1739917532 (cast-from-ClassObject-to-var3144 var2411))) ; Statement: $i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i5 = $i0 + $i7] 
(assert true) ; Non Conditional
(define-const var881 Int (+ var3287 var3221)) ; Statement: $i5 = $i0 + $i7 
(define-const var1478 Int (* 31 var881)) ; Statement: $i1 = 31 * $i5 
(define-const var2466 (Array Int String) (registrationKeys/-2026958200 var1344)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (not (= var2466 null-__Array__Int__String__))) ; Negate: Cond: $r3 == null  
(define-const var1392 (Array Int String) (registrationKeys/-2026958200 var1344)) ; Statement: $r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
(define-const var305 Int (var1760_hashCode/1826207050 (cast-from-__Array__Int__String__-to-__Array__Int__var3144__ var1392))) ; Statement: $i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6) 
 ; Statement: goto [?= $i4 = $i1 + $i8] 
(assert true) ; Non Conditional
(define-const var2014 Int (+ var1478 var305)) ; Statement: $i4 = $i1 + $i8 
(define-const var2080 Int (* 31 var2014)) ; Statement: $i2 = 31 * $i4 
(define-const var742 var916 (parameters/-2026958200 var1344)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (not (= var742 null-var916))) ; Negate: Cond: $r4 == null  
(define-const var2001 var916 (parameters/-2026958200 var1344)) ; Statement: $r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
(define-const var1676 Int (var916_hashCode/1768810987 var2001)) ; Statement: $i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i2 + $i9] 
(assert true) ; Non Conditional
(define-const var3492 Int (+ var2080 var1676)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var3144=([java.lang.Class], java.lang.Object), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), var1760_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__String__-to-__Array__Int__var3144__=([java.lang.String[]], java.lang.Object[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map), var916_hashCode/1768810987=([java.util.Map], int)}
; {var865=org.hibernate.boot.model.TypeDefinition, var1344=r0, var2730=$r1, var941=null_type, var943=$i6, var3287=$i0, var3120=$r2, var2411=$r7, var3144=java.lang.Object, var3221=$i7, var881=$i5, var1478=$i1, var2466=$r3, var1392=$r6, var1760=java.util.Arrays, var305=$i8, var2014=$i4, var2080=$i2, var916=java.util.Map, var742=$r4, var2001=$r5, var1676=$i9, var3492=$i3}
; {org.hibernate.boot.model.TypeDefinition=var865, r0=var1344, $r1=var2730, null_type=var941, $i6=var943, $i0=var3287, $r2=var3120, $r7=var2411, java.lang.Object=var3144, $i7=var3221, $i5=var881, $i1=var1478, $r3=var2466, $r6=var1392, java.util.Arrays=var1760, $i8=var305, $i4=var2014, $i2=var2080, java.util.Map=var916, $r4=var742, $r5=var2001, $i9=var1676, $i3=var3492}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$i6 = 0;	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	$i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>();	goto [?= $i5 = $i0 + $i7];	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$r6 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	$i8 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r6);	goto [?= $i4 = $i1 + $i8];	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$r5 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	$i9 = interfaceinvoke $r5.<java.util.Map: int hashCode()>();	goto [?= $i3 = $i2 + $i9];	$i3 = $i2 + $i9;	return $i3
;block_num 9