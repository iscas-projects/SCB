(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun builder/-294971588 (var1347) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1347 var1347)
(declare-const var3760 var1347) ; Statement: r0 := @this: org.apache.commons.io.output.StringBuilderWriter 
(assert (not (= var3760 null-var1347)))
(define-const var3670 String (builder/-294971588 var3760)) ; Statement: $r1 = r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder> 
(assert true)
(define-const var685 String (toString/-2075883882 var3670)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {builder/-294971588=([org.apache.commons.io.output.StringBuilderWriter], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1347=org.apache.commons.io.output.StringBuilderWriter, var3760=r0, var3670=$r1, var685=$r2}
; {org.apache.commons.io.output.StringBuilderWriter=var1347, r0=var3760, $r1=var3670, $r2=var685}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.output.StringBuilderWriter;	$r1 = r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1