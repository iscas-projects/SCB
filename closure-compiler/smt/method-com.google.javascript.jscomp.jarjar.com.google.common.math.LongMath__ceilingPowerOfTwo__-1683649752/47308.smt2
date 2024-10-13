(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3659 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3659_checkPositive/765015080 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_numberOfLeadingZeros/717301905 (Int) Int)
(declare-const null-Int Int)
(declare-const var366 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var366 null-Int)))
;(assert (var3659_checkPositive/765015080 "x" var366)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions: long checkPositive(java.lang.String,long)>("x", l0) 

(declare-const var2269 String)
(declare-const var366!1 Int)
(define-const var1466 Int (ite (> var366!1 4611686018427387904) 1 (ite (< var366!1 4611686018427387904) (- 1) 0))) ; Statement: $b1 = l0 cmp 4611686018427387904L 
(define-const var2968 Int (cast-from-Int-to-Int var1466)) ; Statement: $i6 = (int) $b1 
 ; Statement: if $i6 <= 0 goto $l2 = l0 - 1L 
(assert (<= var2968 0)) ; Cond: $i6 <= 0 
(define-const var899 Int (- var366!1 1)) ; Statement: $l2 = l0 - 1L 
(define-const var3456 Int (Int_numberOfLeadingZeros/717301905 var899)) ; Statement: $i3 = staticinvoke <java.lang.Long: int numberOfLeadingZeros(long)>($l2) 
(define-const var2817 Int (- var3456)) ; Statement: $i4 = neg $i3 
(define-const var3300 Int (* 1 (to_int (^ 2 var2817)))) ; Statement: $l5 = 1L << $i4 
 ; Statement: return $l5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3659_checkPositive/765015080=([java.lang.String, long], long), cast-from-Int-to-Int=([byte], int), Int_numberOfLeadingZeros/717301905=([long], int)}
; {var366=l0, var3659=com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions, var2269="x", var1466=$b1, var2968=$i6, var899=$l2, var3456=$i3, var2817=$i4, var3300=$l5}
; {l0=var366, com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions=var3659, "x"=var2269, $b1=var1466, $i6=var2968, $l2=var899, $i3=var3456, $i4=var2817, $l5=var3300}
;seq 
;cnt {}
;stmts l0 := @parameter0: long;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions: long checkPositive(java.lang.String,long)>("x", l0);	$b1 = l0 cmp 4611686018427387904L;	$i6 = (int) $b1;	if $i6 <= 0 goto $l2 = l0 - 1L;	$l2 = l0 - 1L;	$i3 = staticinvoke <java.lang.Long: int numberOfLeadingZeros(long)>($l2);	$i4 = neg $i3;	$l5 = 1L << $i4;	return $l5
;block_num 2