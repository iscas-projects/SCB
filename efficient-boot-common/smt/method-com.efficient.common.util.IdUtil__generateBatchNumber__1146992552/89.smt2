(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var127 0)
(declare-sort var3766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var127_currentTimeMillis/630293680 () Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/1940348007 (Int Int) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-const var3766-sequence Int)
(define-const var1668 Int var127_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var2299 Int (- var1668 946684800000)) ; Statement: l1 = $l0 - 946684800000L 
(define-const var1273 Int (ite (> var2299 0) 1 (ite (< var2299 0) (- 1) 0))) ; Statement: $b2 = l1 cmp 0L 
(define-const var3012 Int (cast-from-Int-to-Int var1273)) ; Statement: $i8 = (int) $b2 
 ; Statement: if $i8 >= 0 goto $l6 = l1 << 20 
(assert (>= var3012 0)) ; Cond: $i8 >= 0 
(define-const var232 Int (* var2299 (to_int (^ 2 20)))) ; Statement: $l6 = l1 << 20 
(define-const var1550 Int var3766-sequence) ; Statement: $l3 = <com.efficient.common.util.IdUtil: long sequence> 
(define-const var2277 Int (+ var1550 1)) ; Statement: $l4 = $l3 + 1L 
(define-const var1032 Int var2277) ; Statement: <com.efficient.common.util.IdUtil: long sequence> = $l4 
(define-const var2073 Int (bv2nat (bvand ((_ int2bv 64) var1550) ((_ int2bv 64) 1048575)))) ; Statement: $l5 = $l3 & 1048575L 
(define-const var2463 Int (bv2nat (bvor ((_ int2bv 64) var232) ((_ int2bv 64) var2073)))) ; Statement: l7 = $l6 | $l5 
(define-const var2685 String (Int_toString/1940348007 var2463 36)) ; Statement: $r0 = staticinvoke <java.lang.Long: java.lang.String toString(long,int)>(l7, 36) 
(assert true)
(define-const var360 String (toUpperCase/1156088314 var2685)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: java.lang.String toUpperCase()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var127_currentTimeMillis/630293680=([], long), cast-from-Int-to-Int=([byte], int), Int_toString/1940348007=([long, int], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String)}
; {var127=java.lang.System, var1668=$l0, var2299=l1, var1273=$b2, var3012=$i8, var232=$l6, var3766=com.efficient.common.util.IdUtil, var1550=$l3, var2277=$l4, var1032=<com.efficient.common.util.IdUtil: long sequence>, var2073=$l5, var2463=l7, var2685=$r0, var360=$r1}
; {java.lang.System=var127, $l0=var1668, l1=var2299, $b2=var1273, $i8=var3012, $l6=var232, com.efficient.common.util.IdUtil=var3766, $l3=var1550, $l4=var2277, <com.efficient.common.util.IdUtil: long sequence>=var1032, $l5=var2073, l7=var2463, $r0=var2685, $r1=var360}
;seq <java.lang.Long: java.lang.String toString(long,int)>;	<java.lang.String: java.lang.String toUpperCase()>
;cnt {"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	l1 = $l0 - 946684800000L;	$b2 = l1 cmp 0L;	$i8 = (int) $b2;	if $i8 >= 0 goto $l6 = l1 << 20;	$l6 = l1 << 20;	$l3 = <com.efficient.common.util.IdUtil: long sequence>;	$l4 = $l3 + 1L;	<com.efficient.common.util.IdUtil: long sequence> = $l4;	$l5 = $l3 & 1048575L;	l7 = $l6 | $l5;	$r0 = staticinvoke <java.lang.Long: java.lang.String toString(long,int)>(l7, 36);	$r1 = virtualinvoke $r0.<java.lang.String: java.lang.String toUpperCase()>();	return $r1
;block_num 2