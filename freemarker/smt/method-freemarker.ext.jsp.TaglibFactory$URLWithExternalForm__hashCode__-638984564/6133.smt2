(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun externalForm/294403043 (var2314) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2314 var2314)
(declare-const var1425 var2314) ; Statement: r0 := @this: freemarker.ext.jsp.TaglibFactory$URLWithExternalForm 
(assert (not (= var1425 null-var2314)))
(define-const var3520 String (externalForm/294403043 var1425)) ; Statement: $r1 = r0.<freemarker.ext.jsp.TaglibFactory$URLWithExternalForm: java.lang.String externalForm> 
(assert true)
(define-const var2717 Int (hashCode/-467973558 var3520)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {externalForm/294403043=([freemarker.ext.jsp.TaglibFactory$URLWithExternalForm], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2314=freemarker.ext.jsp.TaglibFactory$URLWithExternalForm, var1425=r0, var3520=$r1, var2717=$i0}
; {freemarker.ext.jsp.TaglibFactory$URLWithExternalForm=var2314, r0=var1425, $r1=var3520, $i0=var2717}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.TaglibFactory$URLWithExternalForm;	$r1 = r0.<freemarker.ext.jsp.TaglibFactory$URLWithExternalForm: java.lang.String externalForm>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1