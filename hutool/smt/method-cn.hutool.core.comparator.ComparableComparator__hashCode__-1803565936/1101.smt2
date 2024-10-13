(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1087 var1087)
(declare-const var2555 var1087) ; Statement: r1 := @this: cn.hutool.core.comparator.ComparableComparator 
(assert (not (= var2555 null-var1087)))
(define-const var1974 String "ComparableComparator") ; Statement: $r0 = "ComparableComparator" 
(assert true)
(define-const var145 Int (hashCode/-467973558 var1974)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var1087=cn.hutool.core.comparator.ComparableComparator, var2555=r1, var1974=$r0, var145=$i0}
; {cn.hutool.core.comparator.ComparableComparator=var1087, r1=var2555, $r0=var1974, $i0=var145}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: cn.hutool.core.comparator.ComparableComparator;	$r0 = "ComparableComparator";	$i0 = virtualinvoke $r0.<java.lang.String: int hashCode()>();	return $i0
;block_num 1