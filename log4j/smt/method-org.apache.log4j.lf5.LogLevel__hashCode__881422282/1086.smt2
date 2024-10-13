(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _label/162672605 (var2345) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2345 var2345)
(declare-const var1525 var2345) ; Statement: r0 := @this: org.apache.log4j.lf5.LogLevel 
(assert (not (= var1525 null-var2345)))
(define-const var2642 String (_label/162672605 var1525)) ; Statement: $r1 = r0.<org.apache.log4j.lf5.LogLevel: java.lang.String _label> 
(assert true)
(define-const var438 Int (hashCode/-467973558 var2642)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {_label/162672605=([org.apache.log4j.lf5.LogLevel], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2345=org.apache.log4j.lf5.LogLevel, var1525=r0, var2642=$r1, var438=$i0}
; {org.apache.log4j.lf5.LogLevel=var2345, r0=var1525, $r1=var2642, $i0=var438}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.LogLevel;	$r1 = r0.<org.apache.log4j.lf5.LogLevel: java.lang.String _label>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1