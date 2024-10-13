(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-Int Int)
(declare-const var892 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var892 null-Int)))
(define-const var1750 String "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@") ; Statement: $r0 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@" 
(define-const var1623 Int (cast-from-Int-to-Int var892)) ; Statement: $i2 = (int) c0 
(assert true)
(define-const var3287 Int (indexOf/-1037706067 var1750 var1623)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2) 
(define-const var1943 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i1 == $i4 goto $z0 = 0 
(assert (= var3287 var1943)) ; Cond: $i1 == $i4 
(define-const var943 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var892=c0, var1750=$r0, var1623=$i2, var3287=$i1, var1943=$i4, var943=$z0}
; {c0=var892, $r0=var1750, $i2=var1623, $i1=var3287, $i4=var1943, $z0=var943}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts c0 := @parameter0: char;	$r0 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@";	$i2 = (int) c0;	$i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2);	$i4 = (int) -1;	if $i1 == $i4 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3