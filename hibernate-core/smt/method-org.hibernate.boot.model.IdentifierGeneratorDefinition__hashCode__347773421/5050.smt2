(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3663 0)
(declare-sort var1375 0)
(declare-sort var1606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-44921502 (var3663) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun strategy/-44921502 (var3663) String)
(declare-fun parameters/-44921502 (var3663) var1606)
(declare-const null-var3663 var3663)
(declare-const null-String String)
(declare-const null-var1606 var1606)
(declare-const var3699 var3663) ; Statement: r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition 
(assert (not (= var3699 null-var3663)))
(define-const var628 String (name/-44921502 var3699)) ; Statement: $r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (not (= var628 null-String))) ; Negate: Cond: $r1 == null  
(define-const var2393 String (name/-44921502 var3699)) ; Statement: $r6 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
(assert true)
(define-const var3669 Int (hashCode/-467973558 var2393)) ; Statement: $i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i4] 
(assert true) ; Non Conditional
(define-const var1664 Int (* 31 var3669)) ; Statement: $i0 = 31 * $i4 
(define-const var2487 String (strategy/-44921502 var3699)) ; Statement: $r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (not (= var2487 null-String))) ; Negate: Cond: $r2 == null  
(define-const var2051 String (strategy/-44921502 var3699)) ; Statement: $r5 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
(assert true)
(define-const var1317 Int (hashCode/-467973558 var2051)) ; Statement: $i5 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var3482 Int (+ var1664 var1317)) ; Statement: $i3 = $i0 + $i5 
(define-const var852 Int (* 31 var3482)) ; Statement: $i1 = 31 * $i3 
(define-const var3804 var1606 (parameters/-44921502 var3699)) ; Statement: $r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (= var3804 null-var1606)) ; Cond: $r3 == null 
(define-const var467 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var120 Int (+ var852 var467)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), strategy/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), parameters/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.util.Map)}
; {var3663=org.hibernate.boot.model.IdentifierGeneratorDefinition, var3699=r0, var628=$r1, var1375=null_type, var2393=$r6, var3669=$i4, var1664=$i0, var2487=$r2, var2051=$r5, var1317=$i5, var3482=$i3, var852=$i1, var1606=java.util.Map, var3804=$r3, var467=$i6, var120=$i2}
; {org.hibernate.boot.model.IdentifierGeneratorDefinition=var3663, r0=var3699, $r1=var628, null_type=var1375, $r6=var2393, $i4=var3669, $i0=var1664, $r2=var2487, $r5=var2051, $i5=var1317, $i3=var3482, $i1=var852, java.util.Map=var1606, $r3=var3804, $i6=var467, $i2=var120}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition;	$r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$r6 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	$i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i4];	$i0 = 31 * $i4;	$r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	if $r2 == null goto $i5 = 0;	$r5 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	$i5 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	if $r3 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 7