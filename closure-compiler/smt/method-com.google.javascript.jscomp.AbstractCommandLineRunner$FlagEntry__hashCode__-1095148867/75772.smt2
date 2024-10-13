(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2467 0)
(declare-sort var2201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun flag/1967435154 (var2467) var2201)
(declare-fun hashCode/1739917532 (var2201) Int)
(declare-fun value/1967435154 (var2467) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2467 var2467)
(declare-const var3005 var2467) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner$FlagEntry 
(assert (not (= var3005 null-var2467)))
(define-const var2559 var2201 (flag/1967435154 var3005)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner$FlagEntry: java.lang.Object flag> 
(assert true)
(define-const var772 Int (hashCode/1739917532 var2559)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var218 String (value/1967435154 var3005)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner$FlagEntry: java.lang.String value> 
(assert true)
(define-const var1937 Int (hashCode/-467973558 var218)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var2737 Int (+ var772 var1937)) ; Statement: $i2 = $i1 + $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {flag/1967435154=([com.google.javascript.jscomp.AbstractCommandLineRunner$FlagEntry], java.lang.Object), hashCode/1739917532=([java.lang.Object], int), value/1967435154=([com.google.javascript.jscomp.AbstractCommandLineRunner$FlagEntry], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2467=com.google.javascript.jscomp.AbstractCommandLineRunner$FlagEntry, var3005=r0, var2201=java.lang.Object, var2559=$r1, var772=$i1, var218=$r2, var1937=$i0, var2737=$i2}
; {com.google.javascript.jscomp.AbstractCommandLineRunner$FlagEntry=var2467, r0=var3005, java.lang.Object=var2201, $r1=var2559, $i1=var772, $r2=var218, $i0=var1937, $i2=var2737}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner$FlagEntry;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner$FlagEntry: java.lang.Object flag>;	$i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	$r2 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner$FlagEntry: java.lang.String value>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i2 = $i1 + $i0;	return $i2
;block_num 1