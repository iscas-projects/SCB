(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-29768105 (var2782) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2782 var2782)
(declare-const var1459 var2782) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry 
(assert (not (= var1459 null-var2782)))
(assert true)
(define-const var3970 String (getName/-29768105 var1459)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>() 
(assert true)
(define-const var1873 Int (hashCode/-467973558 var3970)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-29768105=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2782=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry, var1459=r0, var3970=$r1, var1873=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry=var2782, r0=var1459, $r1=var3970, $i0=var1873}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1