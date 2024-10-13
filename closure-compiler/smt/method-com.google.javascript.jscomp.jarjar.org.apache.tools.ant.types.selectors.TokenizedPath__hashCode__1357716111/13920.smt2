(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun path/472800384 (var2310) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2310 var2310)
(declare-const var2654 var2310) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath 
(assert (not (= var2654 null-var2310)))
(define-const var191 String (path/472800384 var2654)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String path> 
(assert true)
(define-const var1925 Int (hashCode/-467973558 var191)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {path/472800384=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2310=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath, var2654=r0, var191=$r1, var1925=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath=var2310, r0=var2654, $r1=var191, $i0=var1925}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String path>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1