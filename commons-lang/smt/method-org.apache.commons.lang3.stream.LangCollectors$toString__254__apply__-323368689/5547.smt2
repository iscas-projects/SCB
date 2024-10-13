(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3404 0)
(declare-sort var3843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3843-to-String (var3843) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3404 var3404)
(declare-const null-var3843 var3843)
(declare-const var2990 var3404) ; Statement: $r0 := @this: org.apache.commons.lang3.stream.LangCollectors$toString__254 
(assert (not (= var2990 null-var3404)))
(declare-const var1088 var3843) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var1088 null-var3843)))
(define-const var2337 String (cast-from-var3843-to-String var1088)) ; Statement: $r2 = (java.lang.StringBuilder) $r1 
(assert true)
(define-const var959 String (toString/-2075883882 var2337)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3843-to-String=([java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3404=org.apache.commons.lang3.stream.LangCollectors$toString__254, var2990=$r0, var3843=java.lang.Object, var1088=$r1, var2337=$r2, var959=$r3}
; {org.apache.commons.lang3.stream.LangCollectors$toString__254=var3404, $r0=var2990, java.lang.Object=var3843, $r1=var1088, $r2=var2337, $r3=var959}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 := @this: org.apache.commons.lang3.stream.LangCollectors$toString__254;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.StringBuilder) $r1;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1