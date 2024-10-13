(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2288 0)
(declare-sort var8 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var8_fnvHash/-1855057620 (String) Int)
(declare-const null-String String)
(declare-const var1766 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1766 null-String)))
(assert true)
(define-const var2290 Int (hashCode/-467973558 var1766)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var1783 Int (cast-from-Int-to-Int var2290)) ; Statement: l3 = (long) $i0 
(define-const var1545 Int (* var1783 (to_int (^ 2 32)))) ; Statement: l4 = l3 << 32 
(define-const var539 Int (var8_fnvHash/-1855057620 var1766)) ; Statement: $i1 = staticinvoke <cn.hutool.core.util.HashUtil: int fnvHash(java.lang.String)>(r0) 
(define-const var238 Int (cast-from-Int-to-Int var539)) ; Statement: $l2 = (long) $i1 
(define-const var3419 Int (bv2nat (bvor ((_ int2bv 64) var1545) ((_ int2bv 64) var238)))) ; Statement: l5 = l4 | $l2 
 ; Statement: return l5 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), cast-from-Int-to-Int=([int], long), var8_fnvHash/-1855057620=([java.lang.String], int)}
; {var1766=r0, var2288=null_type, var2290=$i0, var1783=l3, var1545=l4, var8=cn.hutool.core.util.HashUtil, var539=$i1, var238=$l2, var3419=l5}
; {r0=var1766, null_type=var2288, $i0=var2290, l3=var1783, l4=var1545, cn.hutool.core.util.HashUtil=var8, $i1=var539, $l2=var238, l5=var3419}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	l3 = (long) $i0;	l4 = l3 << 32;	$i1 = staticinvoke <cn.hutool.core.util.HashUtil: int fnvHash(java.lang.String)>(r0);	$l2 = (long) $i1;	l5 = l4 | $l2;	return l5
;block_num 1