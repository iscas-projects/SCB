(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2628 0)
(declare-sort var1996 0)
(declare-sort var1926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-44921502 (var2628) String)
(declare-fun strategy/-44921502 (var2628) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun parameters/-44921502 (var2628) var1926)
(declare-const null-var2628 var2628)
(declare-const null-String String)
(declare-const null-var1926 var1926)
(declare-const var1241 var2628) ; Statement: r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition 
(assert (not (= var1241 null-var2628)))
(define-const var908 String (name/-44921502 var1241)) ; Statement: $r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (= var908 null-String)) ; Cond: $r1 == null 
(define-const var3484 Int 0) ; Statement: $i4 = 0 
(assert true) ; Non Conditional
(define-const var70 Int (* 31 var3484)) ; Statement: $i0 = 31 * $i4 
(define-const var1120 String (strategy/-44921502 var1241)) ; Statement: $r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (not (= var1120 null-String))) ; Negate: Cond: $r2 == null  
(define-const var1193 String (strategy/-44921502 var1241)) ; Statement: $r5 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
(assert true)
(define-const var1566 Int (hashCode/-467973558 var1193)) ; Statement: $i5 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var1335 Int (+ var70 var1566)) ; Statement: $i3 = $i0 + $i5 
(define-const var2986 Int (* 31 var1335)) ; Statement: $i1 = 31 * $i3 
(define-const var1791 var1926 (parameters/-44921502 var1241)) ; Statement: $r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (= var1791 null-var1926)) ; Cond: $r3 == null 
(define-const var1382 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var514 Int (+ var2986 var1382)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), strategy/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), parameters/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.util.Map)}
; {var2628=org.hibernate.boot.model.IdentifierGeneratorDefinition, var1241=r0, var908=$r1, var1996=null_type, var3484=$i4, var70=$i0, var1120=$r2, var1193=$r5, var1566=$i5, var1335=$i3, var2986=$i1, var1926=java.util.Map, var1791=$r3, var1382=$i6, var514=$i2}
; {org.hibernate.boot.model.IdentifierGeneratorDefinition=var2628, r0=var1241, $r1=var908, null_type=var1996, $i4=var3484, $i0=var70, $r2=var1120, $r5=var1193, $i5=var1566, $i3=var1335, $i1=var2986, java.util.Map=var1926, $r3=var1791, $i6=var1382, $i2=var514}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition;	$r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$i4 = 0;	$i0 = 31 * $i4;	$r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	if $r2 == null goto $i5 = 0;	$r5 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	$i5 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	if $r3 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 7