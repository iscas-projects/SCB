(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var724 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var724 null-Int)))
(declare-const var952 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var952 null-Bool)))
(define-const var2534 Int (ite (> var724 1000) 1 (ite (< var724 1000) (- 1) 0))) ; Statement: $b1 = l0 cmp 1000L 
(define-const var3687 Int (cast-from-Int-to-Int var2534)) ; Statement: $i6 = (int) $b1 
 ; Statement: if $i6 >= 0 goto $i8 = (int) -1 
(assert (not (>= var3687 0))) ; Negate: Cond: $i6 >= 0  
(define-const var1057 String (String_valueOf/-107395227 var724)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String_valueOf/-107395227=([long], java.lang.String)}
; {var724=l0, var952=z0, var2534=$b1, var3687=$i6, var1057=$r5}
; {l0=var724, z0=var952, $b1=var2534, $i6=var3687, $r5=var1057}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts l0 := @parameter0: long;	z0 := @parameter1: boolean;	$b1 = l0 cmp 1000L;	$i6 = (int) $b1;	if $i6 >= 0 goto $i8 = (int) -1;	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	return $r5
;block_num 2