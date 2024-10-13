(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var2646 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2646 null-String)))
(assert true)
(define-const var3502 Int (indexOf/-1037706067 var2646 83)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(83) 
 ; Statement: if i0 < 0 goto return 1000 
(assert (< var3502 0)) ; Cond: i0 < 0 
 ; Statement: return 1000 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var2646=r0, var2415=null_type, var3502=i0}
; {r0=var2646, null_type=var2415, i0=var3502}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(83);	if i0 < 0 goto return 1000;	return 1000
;block_num 2