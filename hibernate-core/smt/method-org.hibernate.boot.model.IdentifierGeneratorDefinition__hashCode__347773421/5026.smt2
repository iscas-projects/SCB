(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2538 0)
(declare-sort var1113 0)
(declare-sort var2 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-44921502 (var2538) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun strategy/-44921502 (var2538) String)
(declare-fun parameters/-44921502 (var2538) var2)
(declare-fun var2_hashCode/1768810987 (var2) Int)
(declare-const null-var2538 var2538)
(declare-const null-String String)
(declare-const null-var2 var2)
(declare-const var2232 var2538) ; Statement: r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition 
(assert (not (= var2232 null-var2538)))
(define-const var3901 String (name/-44921502 var2232)) ; Statement: $r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (not (= var3901 null-String))) ; Negate: Cond: $r1 == null  
(define-const var363 String (name/-44921502 var2232)) ; Statement: $r6 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
(assert true)
(define-const var1886 Int (hashCode/-467973558 var363)) ; Statement: $i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i4] 
(assert true) ; Non Conditional
(define-const var1988 Int (* 31 var1886)) ; Statement: $i0 = 31 * $i4 
(define-const var2507 String (strategy/-44921502 var2232)) ; Statement: $r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (not (= var2507 null-String))) ; Negate: Cond: $r2 == null  
(define-const var1420 String (strategy/-44921502 var2232)) ; Statement: $r5 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
(assert true)
(define-const var187 Int (hashCode/-467973558 var1420)) ; Statement: $i5 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var137 Int (+ var1988 var187)) ; Statement: $i3 = $i0 + $i5 
(define-const var2240 Int (* 31 var137)) ; Statement: $i1 = 31 * $i3 
(define-const var3302 var2 (parameters/-44921502 var2232)) ; Statement: $r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (not (= var3302 null-var2))) ; Negate: Cond: $r3 == null  
(define-const var1099 var2 (parameters/-44921502 var2232)) ; Statement: $r4 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
(define-const var2476 Int (var2_hashCode/1768810987 var1099)) ; Statement: $i6 = interfaceinvoke $r4.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var1298 Int (+ var2240 var2476)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), strategy/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), parameters/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.util.Map), var2_hashCode/1768810987=([java.util.Map], int)}
; {var2538=org.hibernate.boot.model.IdentifierGeneratorDefinition, var2232=r0, var3901=$r1, var1113=null_type, var363=$r6, var1886=$i4, var1988=$i0, var2507=$r2, var1420=$r5, var187=$i5, var137=$i3, var2240=$i1, var2=java.util.Map, var3302=$r3, var1099=$r4, var2476=$i6, var1298=$i2}
; {org.hibernate.boot.model.IdentifierGeneratorDefinition=var2538, r0=var2232, $r1=var3901, null_type=var1113, $r6=var363, $i4=var1886, $i0=var1988, $r2=var2507, $r5=var1420, $i5=var187, $i3=var137, $i1=var2240, java.util.Map=var2, $r3=var3302, $r4=var1099, $i6=var2476, $i2=var1298}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition;	$r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$r6 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	$i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i4];	$i0 = 31 * $i4;	$r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	if $r2 == null goto $i5 = 0;	$r5 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	$i5 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	if $r3 == null goto $i6 = 0;	$r4 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	$i6 = interfaceinvoke $r4.<java.util.Map: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 7