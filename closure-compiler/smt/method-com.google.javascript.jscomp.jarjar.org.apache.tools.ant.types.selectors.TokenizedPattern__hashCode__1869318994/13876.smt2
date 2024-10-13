(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/1998934357 (var543) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var543 var543)
(declare-const var2169 var543) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern 
(assert (not (= var2169 null-var543)))
(define-const var2475 String (pattern/1998934357 var2169)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern: java.lang.String pattern> 
(assert true)
(define-const var88 Int (hashCode/-467973558 var2475)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/1998934357=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var543=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern, var2169=r0, var2475=$r1, var88=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern=var543, r0=var2169, $r1=var2475, $i0=var88}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern: java.lang.String pattern>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1