(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1096020831 (var3165) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3165 var3165)
(declare-const var2942 var3165) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var2942 null-var3165)))
(assert true)
(define-const var1381 String (getName/1096020831 var2942)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String getName()>() 
(assert true)
(define-const var2669 Int (hashCode/-467973558 var1381)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1096020831=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3165=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var2942=r0, var1381=$r1, var2669=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var3165, r0=var2942, $r1=var1381, $i0=var2669}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String getName()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1