(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var166-FM_24_DETECTED Bool)
(define-const var2136 Bool var166-FM_24_DETECTED) ; Statement: $z0 = <freemarker.template.Configuration: boolean FM_24_DETECTED> 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2136 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var166=freemarker.template.Configuration, var2136=$z0}
; {freemarker.template.Configuration=var166, $z0=var2136}
;seq 
;cnt {}
;stmts $z0 = <freemarker.template.Configuration: boolean FM_24_DETECTED>;	if $z0 == 0 goto return;	return
;block_num 2