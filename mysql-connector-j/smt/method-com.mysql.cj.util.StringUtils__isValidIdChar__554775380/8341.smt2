(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-Int Int)
(declare-const var1632 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1632 null-Int)))
(define-const var2572 String "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@") ; Statement: $r0 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@" 
(define-const var98 Int (cast-from-Int-to-Int var1632)) ; Statement: $i2 = (int) c0 
(assert true)
(define-const var3801 Int (indexOf/-1037706067 var2572 var98)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2) 
(define-const var306 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i1 == $i4 goto $z0 = 0 
(assert (not (= var3801 var306))) ; Negate: Cond: $i1 == $i4  
(define-const var118 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var1632=c0, var2572=$r0, var98=$i2, var3801=$i1, var306=$i4, var118=$z0}
; {c0=var1632, $r0=var2572, $i2=var98, $i1=var3801, $i4=var306, $z0=var118}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts c0 := @parameter0: char;	$r0 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@";	$i2 = (int) c0;	$i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2);	$i4 = (int) -1;	if $i1 == $i4 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3