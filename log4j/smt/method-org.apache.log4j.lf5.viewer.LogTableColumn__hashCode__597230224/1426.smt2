(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _label/1395696735 (var3829) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3829 var3829)
(declare-const var2876 var3829) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.LogTableColumn 
(assert (not (= var2876 null-var3829)))
(define-const var1843 String (_label/1395696735 var2876)) ; Statement: $r1 = r0.<org.apache.log4j.lf5.viewer.LogTableColumn: java.lang.String _label> 
(assert true)
(define-const var3598 Int (hashCode/-467973558 var1843)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {_label/1395696735=([org.apache.log4j.lf5.viewer.LogTableColumn], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3829=org.apache.log4j.lf5.viewer.LogTableColumn, var2876=r0, var1843=$r1, var3598=$i0}
; {org.apache.log4j.lf5.viewer.LogTableColumn=var3829, r0=var2876, $r1=var1843, $i0=var3598}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.LogTableColumn;	$r1 = r0.<org.apache.log4j.lf5.viewer.LogTableColumn: java.lang.String _label>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1