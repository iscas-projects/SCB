(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3598 0)
(declare-sort var2821 0)
(declare-sort var2006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-44921502 (var3598) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun strategy/-44921502 (var3598) String)
(declare-fun parameters/-44921502 (var3598) var2006)
(declare-const null-var3598 var3598)
(declare-const null-String String)
(declare-const null-var2006 var2006)
(declare-const var3087 var3598) ; Statement: r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition 
(assert (not (= var3087 null-var3598)))
(define-const var90 String (name/-44921502 var3087)) ; Statement: $r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (not (= var90 null-String))) ; Negate: Cond: $r1 == null  
(define-const var245 String (name/-44921502 var3087)) ; Statement: $r6 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
(assert true)
(define-const var3385 Int (hashCode/-467973558 var245)) ; Statement: $i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i4] 
(assert true) ; Non Conditional
(define-const var1456 Int (* 31 var3385)) ; Statement: $i0 = 31 * $i4 
(define-const var1166 String (strategy/-44921502 var3087)) ; Statement: $r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (= var1166 null-String)) ; Cond: $r2 == null 
(define-const var3525 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var3831 Int (+ var1456 var3525)) ; Statement: $i3 = $i0 + $i5 
(define-const var1023 Int (* 31 var3831)) ; Statement: $i1 = 31 * $i3 
(define-const var1144 var2006 (parameters/-44921502 var3087)) ; Statement: $r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (= var1144 null-var2006)) ; Cond: $r3 == null 
(define-const var3077 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var3255 Int (+ var1023 var3077)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), hashCode/-467973558=([java.lang.String], int), strategy/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), parameters/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.util.Map)}
; {var3598=org.hibernate.boot.model.IdentifierGeneratorDefinition, var3087=r0, var90=$r1, var2821=null_type, var245=$r6, var3385=$i4, var1456=$i0, var1166=$r2, var3525=$i5, var3831=$i3, var1023=$i1, var2006=java.util.Map, var1144=$r3, var3077=$i6, var3255=$i2}
; {org.hibernate.boot.model.IdentifierGeneratorDefinition=var3598, r0=var3087, $r1=var90, null_type=var2821, $r6=var245, $i4=var3385, $i0=var1456, $r2=var1166, $i5=var3525, $i3=var3831, $i1=var1023, java.util.Map=var2006, $r3=var1144, $i6=var3077, $i2=var3255}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition;	$r1 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$r6 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	$i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i4];	$i0 = 31 * $i4;	$r2 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	if $r2 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	if $r3 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 7