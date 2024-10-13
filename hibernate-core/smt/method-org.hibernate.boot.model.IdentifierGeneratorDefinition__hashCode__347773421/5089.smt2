(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2440 0)
(declare-sort var877 0)
(declare-sort var3309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-44921502 (var2440) String)
(declare-fun strategy/-44921502 (var2440) String)
(declare-fun parameters/-44921502 (var2440) var3309)
(declare-fun var3309_hashCode/1768810987 (var3309) Int)
(declare-const null-var2440 var2440)
(declare-const null-String String)
(declare-const null-var3309 var3309)
(declare-const var333 var2440) ; Statement: r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition 
(assert (not (= var333 null-var2440)))
(define-const var937 String (name/-44921502 var333)) ; Statement: $r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (= var937 null-String)) ; Cond: $r1 == null 
(define-const var1543 Int 0) ; Statement: $i4 = 0 
(assert true) ; Non Conditional
(define-const var1953 Int (* 31 var1543)) ; Statement: $i0 = 31 * $i4 
(define-const var2145 String (strategy/-44921502 var333)) ; Statement: $r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (= var2145 null-String)) ; Cond: $r2 == null 
(define-const var3915 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var1910 Int (+ var1953 var3915)) ; Statement: $i3 = $i0 + $i5 
(define-const var1058 Int (* 31 var1910)) ; Statement: $i1 = 31 * $i3 
(define-const var2637 var3309 (parameters/-44921502 var333)) ; Statement: $r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (not (= var2637 null-var3309))) ; Negate: Cond: $r3 == null  
(define-const var3634 var3309 (parameters/-44921502 var333)) ; Statement: $r4 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
(define-const var2290 Int (var3309_hashCode/1768810987 var3634)) ; Statement: $i6 = interfaceinvoke $r4.<java.util.Map: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var523 Int (+ var1058 var2290)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), strategy/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), parameters/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.util.Map), var3309_hashCode/1768810987=([java.util.Map], int)}
; {var2440=org.hibernate.boot.model.IdentifierGeneratorDefinition, var333=r0, var937=$r1, var877=null_type, var1543=$i4, var1953=$i0, var2145=$r2, var3915=$i5, var1910=$i3, var1058=$i1, var3309=java.util.Map, var2637=$r3, var3634=$r4, var2290=$i6, var523=$i2}
; {org.hibernate.boot.model.IdentifierGeneratorDefinition=var2440, r0=var333, $r1=var937, null_type=var877, $i4=var1543, $i0=var1953, $r2=var2145, $i5=var3915, $i3=var1910, $i1=var1058, java.util.Map=var3309, $r3=var2637, $r4=var3634, $i6=var2290, $i2=var523}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition;	$r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$i4 = 0;	$i0 = 31 * $i4;	$r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	if $r2 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	if $r3 == null goto $i6 = 0;	$r4 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	$i6 = interfaceinvoke $r4.<java.util.Map: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 7