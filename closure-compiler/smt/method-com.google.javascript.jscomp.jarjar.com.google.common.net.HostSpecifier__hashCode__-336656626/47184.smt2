(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun canonicalForm/206597401 (var2606) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2606 var2606)
(declare-const var1374 var2606) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.HostSpecifier 
(assert (not (= var1374 null-var2606)))
(define-const var3305 String (canonicalForm/206597401 var1374)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostSpecifier: java.lang.String canonicalForm> 
(assert true)
(define-const var1799 Int (hashCode/-467973558 var3305)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {canonicalForm/206597401=([com.google.javascript.jscomp.jarjar.com.google.common.net.HostSpecifier], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2606=com.google.javascript.jscomp.jarjar.com.google.common.net.HostSpecifier, var1374=r0, var3305=$r1, var1799=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.HostSpecifier=var2606, r0=var1374, $r1=var3305, $i0=var1799}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.HostSpecifier;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostSpecifier: java.lang.String canonicalForm>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1