(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2627_formatDataAmount/-1414391859 (String Int) String)
(declare-const null-Int Int)
(declare-const var2768 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2768 null-Int)))
(define-const var2892 Int (ite (> var2768 1024) 1 (ite (< var2768 1024) (- 1) 0))) ; Statement: $b1 = l0 cmp 1024L 
(define-const var820 Int (cast-from-Int-to-Int var2892)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 >= 0 goto $r0 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatDataAmount(java.lang.String,long)>("%.1f%cB", l0) 
(assert (>= var820 0)) ; Cond: $i2 >= 0 
(define-const var1423 String (var2627_formatDataAmount/-1414391859 "%.1f%cB" var2768)) ; Statement: $r0 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatDataAmount(java.lang.String,long)>("%.1f%cB", l0) 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var2627_formatDataAmount/-1414391859=([java.lang.String, long], java.lang.String)}
; {var2768=l0, var2892=$b1, var820=$i2, var2627=jdk.jfr.internal.Utils, var1423=$r0}
; {l0=var2768, $b1=var2892, $i2=var820, jdk.jfr.internal.Utils=var2627, $r0=var1423}
;seq 
;cnt {}
;stmts l0 := @parameter0: long;	$b1 = l0 cmp 1024L;	$i2 = (int) $b1;	if $i2 >= 0 goto $r0 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatDataAmount(java.lang.String,long)>("%.1f%cB", l0);	$r0 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatDataAmount(java.lang.String,long)>("%.1f%cB", l0);	return $r0
;block_num 2