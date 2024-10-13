(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var348 0)
(declare-sort var240 0)
(declare-sort var965 0)
(declare-sort var3286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2026958200 (var348) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun typeImplementorClass/-2026958200 (var348) ClassObject)
(declare-fun hashCode/1739917532 (var965) Int)
(declare-fun cast-from-ClassObject-to-var965 (ClassObject) var965)
(declare-fun registrationKeys/-2026958200 (var348) (Array Int String))
(declare-fun parameters/-2026958200 (var348) var3286)
(declare-const null-var348 var348)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3286 var3286)
(declare-const var169 var348) ; Statement: r0 := @this: org.hibernate.boot.model.TypeDefinition 
(assert (not (= var169 null-var348)))
(define-const var2700 String (name/-2026958200 var169)) ; Statement: $r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i6 = 0 
(assert (not (= var2700 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3788 String (name/-2026958200 var169)) ; Statement: $r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name> 
(assert true)
(define-const var594 Int (hashCode/-467973558 var3788)) ; Statement: $i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i6] 
(assert true) ; Non Conditional
(define-const var289 Int (* 31 var594)) ; Statement: $i0 = 31 * $i6 
(define-const var634 ClassObject (typeImplementorClass/-2026958200 var169)) ; Statement: $r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
 ; Statement: if $r2 == null goto $i7 = 0 
(assert (not (= var634 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var880 ClassObject (typeImplementorClass/-2026958200 var169)) ; Statement: $r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass> 
(assert true)
(define-const var2248 Int (hashCode/1739917532 (cast-from-ClassObject-to-var965 var880))) ; Statement: $i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i5 = $i0 + $i7] 
(assert true) ; Non Conditional
(define-const var3292 Int (+ var289 var2248)) ; Statement: $i5 = $i0 + $i7 
(define-const var299 Int (* 31 var3292)) ; Statement: $i1 = 31 * $i5 
(define-const var3372 (Array Int String) (registrationKeys/-2026958200 var169)) ; Statement: $r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys> 
 ; Statement: if $r3 == null goto $i8 = 0 
(assert (= var3372 null-__Array__Int__String__)) ; Cond: $r3 == null 
(define-const var2049 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var3299 Int (+ var299 var2049)) ; Statement: $i4 = $i1 + $i8 
(define-const var1659 Int (* 31 var3299)) ; Statement: $i2 = 31 * $i4 
(define-const var1349 var3286 (parameters/-2026958200 var169)) ; Statement: $r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters> 
 ; Statement: if $r4 == null goto $i9 = 0 
(assert (= var1349 null-var3286)) ; Cond: $r4 == null 
(define-const var2255 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var1916 Int (+ var1659 var2255)) ; Statement: $i3 = $i2 + $i9 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), typeImplementorClass/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var965=([java.lang.Class], java.lang.Object), registrationKeys/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.lang.String[]), parameters/-2026958200=([org.hibernate.boot.model.TypeDefinition], java.util.Map)}
; {var348=org.hibernate.boot.model.TypeDefinition, var169=r0, var2700=$r1, var240=null_type, var3788=$r8, var594=$i6, var289=$i0, var634=$r2, var880=$r7, var965=java.lang.Object, var2248=$i7, var3292=$i5, var299=$i1, var3372=$r3, var2049=$i8, var3299=$i4, var1659=$i2, var3286=java.util.Map, var1349=$r4, var2255=$i9, var1916=$i3}
; {org.hibernate.boot.model.TypeDefinition=var348, r0=var169, $r1=var2700, null_type=var240, $r8=var3788, $i6=var594, $i0=var289, $r2=var634, $r7=var880, java.lang.Object=var965, $i7=var2248, $i5=var3292, $i1=var299, $r3=var3372, $i8=var2049, $i4=var3299, $i2=var1659, java.util.Map=var3286, $r4=var1349, $i9=var2255, $i3=var1916}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.TypeDefinition;	$r1 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	if $r1 == null goto $i6 = 0;	$r8 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String name>;	$i6 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i6];	$i0 = 31 * $i6;	$r2 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	if $r2 == null goto $i7 = 0;	$r7 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.Class typeImplementorClass>;	$i7 = virtualinvoke $r7.<java.lang.Object: int hashCode()>();	goto [?= $i5 = $i0 + $i7];	$i5 = $i0 + $i7;	$i1 = 31 * $i5;	$r3 = r0.<org.hibernate.boot.model.TypeDefinition: java.lang.String[] registrationKeys>;	if $r3 == null goto $i8 = 0;	$i8 = 0;	$i4 = $i1 + $i8;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.boot.model.TypeDefinition: java.util.Map parameters>;	if $r4 == null goto $i9 = 0;	$i9 = 0;	$i3 = $i2 + $i9;	return $i3
;block_num 9