(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun closed/1282390086 (var3742) Bool)
(declare-const null-var3742 var3742)
(declare-const var2628 var3742) ; Statement: r0 := @this: cn.hutool.core.io.AppendableWriter 
(assert (not (= var2628 null-var3742)))
(define-const var3157 Bool (closed/1282390086 var2628)) ; Statement: $z0 = r0.<cn.hutool.core.io.AppendableWriter: boolean closed> 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3157 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {closed/1282390086=([cn.hutool.core.io.AppendableWriter], boolean)}
; {var3742=cn.hutool.core.io.AppendableWriter, var2628=r0, var3157=$z0}
; {cn.hutool.core.io.AppendableWriter=var3742, r0=var2628, $z0=var3157}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.core.io.AppendableWriter;	$z0 = r0.<cn.hutool.core.io.AppendableWriter: boolean closed>;	if $z0 == 0 goto return;	return
;block_num 2