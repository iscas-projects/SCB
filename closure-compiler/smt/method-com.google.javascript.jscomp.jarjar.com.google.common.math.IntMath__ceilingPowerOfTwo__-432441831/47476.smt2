(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3088 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3088_checkPositive/-144509040 (String Int) Int)
(declare-fun Int_numberOfLeadingZeros/527677734 (Int) Int)
(declare-const null-Int Int)
(declare-const var1155 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1155 null-Int)))
;(assert (var3088_checkPositive/-144509040 "x" var1155)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions: int checkPositive(java.lang.String,int)>("x", i0) 

(declare-const var3012 String)
(declare-const var1155!1 Int)
 ; Statement: if i0 <= 1073741824 goto $i1 = i0 - 1 
(assert (<= var1155!1 1073741824)) ; Cond: i0 <= 1073741824 
(define-const var225 Int (- var1155!1 1)) ; Statement: $i1 = i0 - 1 
(define-const var1735 Int (Int_numberOfLeadingZeros/527677734 var225)) ; Statement: $i2 = staticinvoke <java.lang.Integer: int numberOfLeadingZeros(int)>($i1) 
(define-const var937 Int (- var1735)) ; Statement: $i3 = neg $i2 
(define-const var1948 Int (* 1 (to_int (^ 2 var937)))) ; Statement: $i4 = 1 << $i3 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3088_checkPositive/-144509040=([java.lang.String, int], int), Int_numberOfLeadingZeros/527677734=([int], int)}
; {var1155=i0, var3088=com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions, var3012="x", var225=$i1, var1735=$i2, var937=$i3, var1948=$i4}
; {i0=var1155, com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions=var3088, "x"=var3012, $i1=var225, $i2=var1735, $i3=var937, $i4=var1948}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions: int checkPositive(java.lang.String,int)>("x", i0);	if i0 <= 1073741824 goto $i1 = i0 - 1;	$i1 = i0 - 1;	$i2 = staticinvoke <java.lang.Integer: int numberOfLeadingZeros(int)>($i1);	$i3 = neg $i2;	$i4 = 1 << $i3;	return $i4
;block_num 2