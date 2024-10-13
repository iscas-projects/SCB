(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-Int Int)
(declare-const var3414 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3414 null-Int)))
(define-const var815 String "\n\r\u2028\u2029") ; Statement: $r0 = "\n\r\u2028\u2029" 
(define-const var3341 Int (cast-from-Int-to-Int var3414)) ; Statement: $i2 = (int) c0 
(assert true)
(define-const var822 Int (indexOf/-1037706067 var815 var3341)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2) 
(define-const var1177 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i1 == $i4 goto $z0 = 0 
(assert (not (= var822 var1177))) ; Negate: Cond: $i1 == $i4  
(define-const var249 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var3414=c0, var815=$r0, var3341=$i2, var822=$i1, var1177=$i4, var249=$z0}
; {c0=var3414, $r0=var815, $i2=var3341, $i1=var822, $i4=var1177, $z0=var249}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts c0 := @parameter0: char;	$r0 = "\n\r\u2028\u2029";	$i2 = (int) c0;	$i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2);	$i4 = (int) -1;	if $i1 == $i4 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3