(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-Int Int)
(declare-const var2319 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2319 null-Int)))
(define-const var646 String " \t\n\r\u2028\u2029\u000b\f\u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\ufeff") ; Statement: $r0 = " \t\n\r\u2028\u2029\u000b\f\u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\ufeff" 
(define-const var2327 Int (cast-from-Int-to-Int var2319)) ; Statement: $i2 = (int) c0 
(assert true)
(define-const var698 Int (indexOf/-1037706067 var646 var2327)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2) 
(define-const var1953 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i1 == $i4 goto $z0 = 0 
(assert (not (= var698 var1953))) ; Negate: Cond: $i1 == $i4  
(define-const var3771 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var2319=c0, var646=$r0, var2327=$i2, var698=$i1, var1953=$i4, var3771=$z0}
; {c0=var2319, $r0=var646, $i2=var2327, $i1=var698, $i4=var1953, $z0=var3771}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts c0 := @parameter0: char;	$r0 = " \t\n\r\u2028\u2029\u000b\f\u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\ufeff";	$i2 = (int) c0;	$i1 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i2);	$i4 = (int) -1;	if $i1 == $i4 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3