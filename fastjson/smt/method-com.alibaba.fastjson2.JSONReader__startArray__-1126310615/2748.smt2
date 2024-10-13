(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfArrayStart/1644613984 (var750) Bool)
(declare-const null-var750 var750)
(declare-const var3747 var750) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3747 null-var750)))
(assert true)
(define-const var510 Bool (nextIfArrayStart/1644613984 var3747)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>() 
 ; Statement: if $z0 != 0 goto return 2147483647 
(assert (not (= (ite var510 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 2147483647 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfArrayStart/1644613984=([com.alibaba.fastjson2.JSONReader], boolean)}
; {var750=com.alibaba.fastjson2.JSONReader, var3747=r0, var510=$z0}
; {com.alibaba.fastjson2.JSONReader=var750, r0=var3747, $z0=var510}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>();	if $z0 != 0 goto return 2147483647;	return 2147483647
;block_num 2