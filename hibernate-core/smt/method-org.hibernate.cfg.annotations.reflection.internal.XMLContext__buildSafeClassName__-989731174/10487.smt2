(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var1764 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1764 null-String)))
(declare-const var1183 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1183 null-String)))
(assert true)
(define-const var2120 Int (indexOf/-1037706067 var1764 46)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 >= 0 goto return r1 
(assert (>= var2120 0)) ; Cond: $i0 >= 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var1764=r1, var2436=null_type, var1183=r0, var2120=$i0}
; {r1=var1764, null_type=var2436, r0=var1183, $i0=var2120}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46);	if $i0 >= 0 goto return r1;	return r1
;block_num 2