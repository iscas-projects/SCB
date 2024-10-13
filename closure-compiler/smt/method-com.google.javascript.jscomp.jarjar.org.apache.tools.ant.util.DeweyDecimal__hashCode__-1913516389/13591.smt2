(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/1596537996 (var221) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var221 var221)
(declare-const var3538 var221) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal 
(assert (not (= var3538 null-var221)))
(assert true)
(define-const var3443 String (toString/1596537996 var3538)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal: java.lang.String toString()>() 
(assert true)
(define-const var3712 Int (hashCode/-467973558 var3443)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/1596537996=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var221=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal, var3538=r0, var3443=$r1, var3712=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal=var221, r0=var3538, $r1=var3443, $i0=var3712}
;seq <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal: java.lang.String toString()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1