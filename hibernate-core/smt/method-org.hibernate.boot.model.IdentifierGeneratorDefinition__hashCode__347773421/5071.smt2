(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3684 0)
(declare-sort var3966 0)
(declare-sort var131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-44921502 (var3684) String)
(declare-fun strategy/-44921502 (var3684) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun parameters/-44921502 (var3684) var131)
(declare-fun var131_hashCode/1768810987 (var131) Int)
(declare-const null-var3684 var3684)
(declare-const null-String String)
(declare-const null-var131 var131)
(declare-const var703 var3684) ; Statement: r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition 
(assert (not (= var703 null-var3684)))
(define-const var1232 String (name/-44921502 var703)) ; Statement: $r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (= var1232 null-String)) ; Cond: $r1 == null 
(define-const var153 Int 0) ; Statement: $i4 = 0 
(assert true) ; Non Conditional
(define-const var3510 Int (* 31 var153)) ; Statement: $i0 = 31 * $i4 
(define-const var1225 String (strategy/-44921502 var703)) ; Statement: $r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (not (= var1225 null-String))) ; Negate: Cond: $r2 == null  
(define-const var2875 String (strategy/-44921502 var703)) ; Statement: $r5 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
(assert true)
(define-const var1523 Int (hashCode/-467973558 var2875)) ; Statement: $i5 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var3334 Int (+ var3510 var1523)) ; Statement: $i3 = $i0 + $i5 
(define-const var2385 Int (* 31 var3334)) ; Statement: $i1 = 31 * $i3 
(define-const var925 var131 (parameters/-44921502 var703)) ; Statement: $r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (not (= var925 null-var131))) ; Negate: Cond: $r3 == null  
(define-const var3961 var131 (parameters/-44921502 var703)) ; Statement: $r4 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
(define-const var2471 Int (var131_hashCode/1768810987 var3961)) ; Statement: $i6 = interfaceinvoke $r4.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var1476 Int (+ var2385 var2471)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), strategy/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), parameters/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.util.Map), var131_hashCode/1768810987=([java.util.Map], int)}
; {var3684=org.hibernate.boot.model.IdentifierGeneratorDefinition, var703=r0, var1232=$r1, var3966=null_type, var153=$i4, var3510=$i0, var1225=$r2, var2875=$r5, var1523=$i5, var3334=$i3, var2385=$i1, var131=java.util.Map, var925=$r3, var3961=$r4, var2471=$i6, var1476=$i2}
; {org.hibernate.boot.model.IdentifierGeneratorDefinition=var3684, r0=var703, $r1=var1232, null_type=var3966, $i4=var153, $i0=var3510, $r2=var1225, $r5=var2875, $i5=var1523, $i3=var3334, $i1=var2385, java.util.Map=var131, $r3=var925, $r4=var3961, $i6=var2471, $i2=var1476}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition;	$r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$i4 = 0;	$i0 = 31 * $i4;	$r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	if $r2 == null goto $i5 = 0;	$r5 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	$i5 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	if $r3 == null goto $i6 = 0;	$r4 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	$i6 = interfaceinvoke $r4.<java.util.Map: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 7