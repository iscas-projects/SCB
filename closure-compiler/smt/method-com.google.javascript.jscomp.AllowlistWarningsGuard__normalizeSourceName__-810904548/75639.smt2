(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1173 0)
(declare-sort var3413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1173 var1173)
(declare-const null-String String)
(declare-const var399 var1173) ; Statement: r2 := @this: com.google.javascript.jscomp.AllowlistWarningsGuard 
(assert (not (= var399 null-var1173)))
(declare-const var2694 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2694 null-String)))
 ; Statement: if r0 == null goto return r0 
(assert (= var2694 null-String)) ; Cond: r0 == null 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1173=com.google.javascript.jscomp.AllowlistWarningsGuard, var399=r2, var2694=r0, var3413=null_type}
; {com.google.javascript.jscomp.AllowlistWarningsGuard=var1173, r2=var399, r0=var2694, null_type=var3413}
;seq 
;cnt {}
;stmts r2 := @this: com.google.javascript.jscomp.AllowlistWarningsGuard;	r0 := @parameter0: java.lang.String;	if r0 == null goto return r0;	return r0
;block_num 2