(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var2196 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2196 null-String)))
(assert true)
(define-const var2073 Int (indexOf/1426977840 var2196 95 1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(95, 1) 
(define-const var49 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto return i0 
(assert (not (= var2073 var49))) ; Cond: i0 != $i2 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/1426977840=([java.lang.String, int, int], int), cast-from-Int-to-Int=([int], int)}
; {var2196=r0, var3619=null_type, var2073=i0, var49=$i2}
; {r0=var2196, null_type=var3619, i0=var2073, $i2=var49}
;seq <java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(95, 1);	$i2 = (int) -1;	if i0 != $i2 goto return i0;	return i0
;block_num 2