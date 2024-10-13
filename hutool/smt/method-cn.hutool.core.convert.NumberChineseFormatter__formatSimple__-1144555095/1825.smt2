(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-Int Int)
(declare-const var2063 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2063 null-Int)))
(define-const var2335 Int (ite (> var2063 10000) 1 (ite (< var2063 10000) (- 1) 0))) ; Statement: $b1 = l0 cmp 10000L 
(define-const var1934 Int (cast-from-Int-to-Int var2335)) ; Statement: $i7 = (int) $b1 
 ; Statement: if $i7 >= 0 goto $b2 = l0 cmp 100000000L 
(assert (not (>= var1934 0))) ; Negate: Cond: $i7 >= 0  
(define-const var1263 Int (ite (> var2063 (- 10000)) 1 (ite (< var2063 (- 10000)) (- 1) 0))) ; Statement: $b6 = l0 cmp -10000L 
(define-const var1517 Int (cast-from-Int-to-Int var1263)) ; Statement: $i8 = (int) $b6 
 ; Statement: if $i8 <= 0 goto $b2 = l0 cmp 100000000L 
(assert (not (<= var1517 0))) ; Negate: Cond: $i8 <= 0  
(define-const var3343 String (String_valueOf/-107395227 var2063)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String_valueOf/-107395227=([long], java.lang.String)}
; {var2063=l0, var2335=$b1, var1934=$i7, var1263=$b6, var1517=$i8, var3343=$r9}
; {l0=var2063, $b1=var2335, $i7=var1934, $b6=var1263, $i8=var1517, $r9=var3343}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts l0 := @parameter0: long;	$b1 = l0 cmp 10000L;	$i7 = (int) $b1;	if $i7 >= 0 goto $b2 = l0 cmp 100000000L;	$b6 = l0 cmp -10000L;	$i8 = (int) $b6;	if $i8 <= 0 goto $b2 = l0 cmp 100000000L;	$r9 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	return $r9
;block_num 3