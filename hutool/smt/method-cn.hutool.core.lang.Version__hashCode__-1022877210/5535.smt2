(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var56 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun version/1458213185 (var56) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var56 var56)
(declare-const var2764 var56) ; Statement: r0 := @this: cn.hutool.core.lang.Version 
(assert (not (= var2764 null-var56)))
(define-const var67 String (version/1458213185 var2764)) ; Statement: $r1 = r0.<cn.hutool.core.lang.Version: java.lang.String version> 
(assert true)
(define-const var1240 Int (hashCode/-467973558 var67)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {version/1458213185=([cn.hutool.core.lang.Version], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var56=cn.hutool.core.lang.Version, var2764=r0, var67=$r1, var1240=$i0}
; {cn.hutool.core.lang.Version=var56, r0=var2764, $r1=var67, $i0=var1240}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: cn.hutool.core.lang.Version;	$r1 = r0.<cn.hutool.core.lang.Version: java.lang.String version>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1