(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var498 0)
(declare-sort var3977 0)
(declare-sort var2522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-44921502 (var498) String)
(declare-fun strategy/-44921502 (var498) String)
(declare-fun parameters/-44921502 (var498) var2522)
(declare-const null-var498 var498)
(declare-const null-String String)
(declare-const null-var2522 var2522)
(declare-const var3656 var498) ; Statement: r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition 
(assert (not (= var3656 null-var498)))
(define-const var1943 String (name/-44921502 var3656)) ; Statement: $r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (= var1943 null-String)) ; Cond: $r1 == null 
(define-const var160 Int 0) ; Statement: $i4 = 0 
(assert true) ; Non Conditional
(define-const var1862 Int (* 31 var160)) ; Statement: $i0 = 31 * $i4 
(define-const var573 String (strategy/-44921502 var3656)) ; Statement: $r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (= var573 null-String)) ; Cond: $r2 == null 
(define-const var1678 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var2945 Int (+ var1862 var1678)) ; Statement: $i3 = $i0 + $i5 
(define-const var2921 Int (* 31 var2945)) ; Statement: $i1 = 31 * $i3 
(define-const var1589 var2522 (parameters/-44921502 var3656)) ; Statement: $r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (= var1589 null-var2522)) ; Cond: $r3 == null 
(define-const var1907 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var333 Int (+ var2921 var1907)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), strategy/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), parameters/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.util.Map)}
; {var498=org.hibernate.boot.model.IdentifierGeneratorDefinition, var3656=r0, var1943=$r1, var3977=null_type, var160=$i4, var1862=$i0, var573=$r2, var1678=$i5, var2945=$i3, var2921=$i1, var2522=java.util.Map, var1589=$r3, var1907=$i6, var333=$i2}
; {org.hibernate.boot.model.IdentifierGeneratorDefinition=var498, r0=var3656, $r1=var1943, null_type=var3977, $i4=var160, $i0=var1862, $r2=var573, $i5=var1678, $i3=var2945, $i1=var2921, java.util.Map=var2522, $r3=var1589, $i6=var1907, $i2=var333}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition;	$r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$i4 = 0;	$i0 = 31 * $i4;	$r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	if $r2 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	if $r3 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 7