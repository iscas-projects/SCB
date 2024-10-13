(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3267 0)
(declare-sort var500 0)
(declare-sort var2274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun comparator/-1452178263 (var3267) var500)
(declare-fun hashCode/1739917532 (var2274) Int)
(declare-fun cast-from-var500-to-var2274 (var500) var2274)
(declare-const null-var3267 var3267)
(declare-const var1535 var3267) ; Statement: r1 := @this: cn.hutool.core.comparator.ReverseComparator 
(assert (not (= var1535 null-var3267)))
(define-const var3415 String "ReverseComparator") ; Statement: $r0 = "ReverseComparator" 
(assert true)
(define-const var1187 Int (hashCode/-467973558 var3415)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.String: int hashCode()>() 
(define-const var3705 var500 (comparator/-1452178263 var1535)) ; Statement: $r2 = r1.<cn.hutool.core.comparator.ReverseComparator: java.util.Comparator comparator> 
(assert true)
(define-const var1630 Int (hashCode/1739917532 (cast-from-var500-to-var2274 var3705))) ; Statement: $i0 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(define-const var3586 Int (bv2nat (bvxor ((_ int2bv 64) var1187) ((_ int2bv 64) var1630)))) ; Statement: $i2 = $i1 ^ $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), comparator/-1452178263=([cn.hutool.core.comparator.ReverseComparator], java.util.Comparator), hashCode/1739917532=([java.lang.Object], int), cast-from-var500-to-var2274=([java.util.Comparator], java.lang.Object)}
; {var3267=cn.hutool.core.comparator.ReverseComparator, var1535=r1, var3415=$r0, var1187=$i1, var500=java.util.Comparator, var3705=$r2, var2274=java.lang.Object, var1630=$i0, var3586=$i2}
; {cn.hutool.core.comparator.ReverseComparator=var3267, r1=var1535, $r0=var3415, $i1=var1187, java.util.Comparator=var500, $r2=var3705, java.lang.Object=var2274, $i0=var1630, $i2=var3586}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: cn.hutool.core.comparator.ReverseComparator;	$r0 = "ReverseComparator";	$i1 = virtualinvoke $r0.<java.lang.String: int hashCode()>();	$r2 = r1.<cn.hutool.core.comparator.ReverseComparator: java.util.Comparator comparator>;	$i0 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	$i2 = $i1 ^ $i0;	return $i2
;block_num 1