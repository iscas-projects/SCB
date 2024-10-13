(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var35 0)
(declare-sort var3558 0)
(declare-sort var2217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-44921502 (var35) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun strategy/-44921502 (var35) String)
(declare-fun parameters/-44921502 (var35) var2217)
(declare-fun var2217_hashCode/1768810987 (var2217) Int)
(declare-const null-var35 var35)
(declare-const null-String String)
(declare-const null-var2217 var2217)
(declare-const var1061 var35) ; Statement: r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition 
(assert (not (= var1061 null-var35)))
(define-const var1603 String (name/-44921502 var1061)) ; Statement: $r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (not (= var1603 null-String))) ; Negate: Cond: $r1 == null  
(define-const var511 String (name/-44921502 var1061)) ; Statement: $r6 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
(assert true)
(define-const var3162 Int (hashCode/-467973558 var511)) ; Statement: $i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i4] 
(assert true) ; Non Conditional
(define-const var545 Int (* 31 var3162)) ; Statement: $i0 = 31 * $i4 
(define-const var2047 String (strategy/-44921502 var1061)) ; Statement: $r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (= var2047 null-String)) ; Cond: $r2 == null 
(define-const var469 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var1943 Int (+ var545 var469)) ; Statement: $i3 = $i0 + $i5 
(define-const var3893 Int (* 31 var1943)) ; Statement: $i1 = 31 * $i3 
(define-const var1479 var2217 (parameters/-44921502 var1061)) ; Statement: $r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (not (= var1479 null-var2217))) ; Negate: Cond: $r3 == null  
(define-const var3896 var2217 (parameters/-44921502 var1061)) ; Statement: $r4 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
(define-const var959 Int (var2217_hashCode/1768810987 var3896)) ; Statement: $i6 = interfaceinvoke $r4.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var2462 Int (+ var3893 var959)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), strategy/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), parameters/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.util.Map), var2217_hashCode/1768810987=([java.util.Map], int)}
; {var35=org.hibernate.boot.model.IdentifierGeneratorDefinition, var1061=r0, var1603=$r1, var3558=null_type, var511=$r6, var3162=$i4, var545=$i0, var2047=$r2, var469=$i5, var1943=$i3, var3893=$i1, var2217=java.util.Map, var1479=$r3, var3896=$r4, var959=$i6, var2462=$i2}
; {org.hibernate.boot.model.IdentifierGeneratorDefinition=var35, r0=var1061, $r1=var1603, null_type=var3558, $r6=var511, $i4=var3162, $i0=var545, $r2=var2047, $i5=var469, $i3=var1943, $i1=var3893, java.util.Map=var2217, $r3=var1479, $r4=var3896, $i6=var959, $i2=var2462}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition;	$r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$r6 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	$i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i4];	$i0 = 31 * $i4;	$r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	if $r2 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	if $r3 == null goto $i6 = 0;	$r4 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	$i6 = interfaceinvoke $r4.<java.util.Map: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 7