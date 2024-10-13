(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-Int Int)
(declare-const var3068 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3068 null-Int)))
(define-const var143 String " \t\n\r\u2028\u2029\u000b\f\u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\ufeff") ; Statement: $r0 = " \t\n\r\u2028\u2029\u000b\f\u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\ufeff" 
(define-const var2810 Int (cast-from-Int-to-Int var3068)) ; Statement: $i2 = (int) c0 
(assert true)
(define-const var1412 Int (indexOf/-1037706067 var143 var2810)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2) 
(define-const var3754 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i1 == $i4 goto $z0 = 0 
(assert (= var1412 var3754)) ; Cond: $i1 == $i4 
(define-const var1620 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var3068=c0, var143=$r0, var2810=$i2, var1412=$i1, var3754=$i4, var1620=$z0}
; {c0=var3068, $r0=var143, $i2=var2810, $i1=var1412, $i4=var3754, $z0=var1620}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts c0 := @parameter0: char;	$r0 = " \t\n\r\u2028\u2029\u000b\f\u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\ufeff";	$i2 = (int) c0;	$i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2);	$i4 = (int) -1;	if $i1 == $i4 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3