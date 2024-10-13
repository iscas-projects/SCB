(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3417 0)
(declare-sort var2217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-var2217 var2217)
(declare-const var2770 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2770 null-String)))
(declare-const var3264 var2217) ; Statement: r0 := @parameter1: java.lang.management.MemoryUsage 
(assert (not (= var3264 null-var2217)))
 ; Statement: if r0 == null goto return "" 
(assert (= var3264 null-var2217)) ; Cond: r0 == null 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2770=r2, var3417=null_type, var2217=java.lang.management.MemoryUsage, var3264=r0}
; {r2=var2770, null_type=var3417, java.lang.management.MemoryUsage=var2217, r0=var3264}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.management.MemoryUsage;	if r0 == null goto return "";	return ""
;block_num 2