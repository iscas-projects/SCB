(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1269 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1269 null-String)))
(declare-const var1004 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var1004 null-Int)))
(define-const var2519 Int (cast-from-Int-to-Int var1004)) ; Statement: $i2 = (int) c0 
(assert true)
(define-const var2678 Int (indexOf/-1037706067 var1269 var2519)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>($i2) 
(define-const var703 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i1 != $i4 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
(assert (not (not (= var2678 var703)))) ; Negate: Cond: i1 != $i4  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var1269=r0, var2612=null_type, var1004=c0, var2519=$i2, var2678=i1, var703=$i4}
; {r0=var1269, null_type=var2612, c0=var1004, $i2=var2519, i1=var2678, $i4=var703}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$i2 = (int) c0;	i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>($i2);	$i4 = (int) -1;	if i1 != $i4 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	return r0
;block_num 2