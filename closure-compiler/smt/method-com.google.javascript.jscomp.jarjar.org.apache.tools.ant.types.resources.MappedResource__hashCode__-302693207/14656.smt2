(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1503 0)
(declare-sort var3887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-194546865 (var1503) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1503 var1503)
(declare-const null-String String)
(declare-const var2416 var1503) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MappedResource 
(assert (not (= var2416 null-var1503)))
(assert true)
(define-const var2773 String (getName/-194546865 var2416)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MappedResource: java.lang.String getName()>() 
 ; Statement: if r1 != null goto $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(assert (not (= var2773 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var1258 Int (hashCode/-467973558 var2773)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-194546865=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MappedResource], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1503=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MappedResource, var2416=r0, var2773=r1, var3887=null_type, var1258=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MappedResource=var1503, r0=var2416, r1=var2773, null_type=var3887, $i0=var1258}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MappedResource;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.MappedResource: java.lang.String getName()>();	if r1 != null goto $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 3