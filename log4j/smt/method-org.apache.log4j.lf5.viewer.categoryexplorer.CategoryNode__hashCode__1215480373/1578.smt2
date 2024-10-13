(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTitle/-456128196 (var2233) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2233 var2233)
(declare-const var66 var2233) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode 
(assert (not (= var66 null-var2233)))
(assert true)
(define-const var757 String (getTitle/-456128196 var66)) ; Statement: $r1 = virtualinvoke r0.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: java.lang.String getTitle()>() 
(assert true)
(define-const var2145 Int (hashCode/-467973558 var757)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getTitle/-456128196=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2233=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode, var66=r0, var757=$r1, var2145=$i0}
; {org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode=var2233, r0=var66, $r1=var757, $i0=var2145}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode;	$r1 = virtualinvoke r0.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: java.lang.String getTitle()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1