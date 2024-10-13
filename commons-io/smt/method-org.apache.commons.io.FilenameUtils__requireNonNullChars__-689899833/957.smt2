(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var2651 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2651 null-String)))
(assert true)
(define-const var957 Int (indexOf/-1037706067 var2651 0)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(0) 
 ; Statement: if $i0 < 0 goto return r0 
(assert (< var957 0)) ; Cond: $i0 < 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var2651=r0, var3483=null_type, var957=$i0}
; {r0=var2651, null_type=var3483, $i0=var957}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(0);	if $i0 < 0 goto return r0;	return r0
;block_num 2