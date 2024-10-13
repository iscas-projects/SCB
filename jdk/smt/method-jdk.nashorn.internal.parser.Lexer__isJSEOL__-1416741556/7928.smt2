(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-Int Int)
(declare-const var389 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var389 null-Int)))
(define-const var314 String "\n\r\u2028\u2029") ; Statement: $r0 = "\n\r\u2028\u2029" 
(define-const var1819 Int (cast-from-Int-to-Int var389)) ; Statement: $i2 = (int) c0 
(assert true)
(define-const var868 Int (indexOf/-1037706067 var314 var1819)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2) 
(define-const var1880 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i1 == $i4 goto $z0 = 0 
(assert (= var868 var1880)) ; Cond: $i1 == $i4 
(define-const var3268 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var389=c0, var314=$r0, var1819=$i2, var868=$i1, var1880=$i4, var3268=$z0}
; {c0=var389, $r0=var314, $i2=var1819, $i1=var868, $i4=var1880, $z0=var3268}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts c0 := @parameter0: char;	$r0 = "\n\r\u2028\u2029";	$i2 = (int) c0;	$i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2);	$i4 = (int) -1;	if $i1 == $i4 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3