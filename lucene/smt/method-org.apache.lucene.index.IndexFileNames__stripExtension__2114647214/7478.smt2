(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var1670 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1670 null-String)))
(assert true)
(define-const var1838 Int (indexOf/-1037706067 var1670 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var2829 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 == $i2 goto return r0 
(assert (= var1838 var2829)) ; Cond: i0 == $i2 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1670=r0, var1545=null_type, var1838=i0, var2829=$i2}
; {r0=var1670, null_type=var1545, i0=var1838, $i2=var2829}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if i0 == $i2 goto return r0;	return r0
;block_num 2