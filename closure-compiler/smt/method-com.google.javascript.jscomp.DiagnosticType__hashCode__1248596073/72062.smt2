(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/221390942 (var2222) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2222 var2222)
(declare-const var2630 var2222) ; Statement: r0 := @this: com.google.javascript.jscomp.DiagnosticType 
(assert (not (= var2630 null-var2222)))
(define-const var3616 String (key/221390942 var2630)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(assert true)
(define-const var497 Int (hashCode/-467973558 var3616)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {key/221390942=([com.google.javascript.jscomp.DiagnosticType], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2222=com.google.javascript.jscomp.DiagnosticType, var2630=r0, var3616=$r1, var497=$i0}
; {com.google.javascript.jscomp.DiagnosticType=var2222, r0=var2630, $r1=var3616, $i0=var497}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.DiagnosticType;	$r1 = r0.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1