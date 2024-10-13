(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var561 0)
(declare-sort var2999 0)
(declare-sort var1794 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCurrentMacroContext/716990097 (var2999) var1794)
(declare-const null-var561 var561)
(declare-const null-var2999 var2999)
(declare-const null-var1794 var1794)
(declare-const var432 var561) ; Statement: r4 := @this: freemarker.core.BuiltinVariable 
(assert (not (= var432 null-var561)))
(declare-const var3442 var2999) ; Statement: r0 := @parameter0: freemarker.core.Environment 
(assert (not (= var3442 null-var2999)))
(assert true)
(define-const var2353 var1794 (getCurrentMacroContext/716990097 var3442)) ; Statement: r1 = virtualinvoke r0.<freemarker.core.Environment: freemarker.core.Macro$Context getCurrentMacroContext()>() 
 ; Statement: if r1 != null goto return r1 
(assert (not (= var2353 null-var1794))) ; Cond: r1 != null 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getCurrentMacroContext/716990097=([freemarker.core.Environment], freemarker.core.Macro$Context)}
; {var561=freemarker.core.BuiltinVariable, var432=r4, var2999=freemarker.core.Environment, var3442=r0, var1794=freemarker.core.Macro$Context, var2353=r1}
; {freemarker.core.BuiltinVariable=var561, r4=var432, freemarker.core.Environment=var2999, r0=var3442, freemarker.core.Macro$Context=var1794, r1=var2353}
;seq 
;cnt {}
;stmts r4 := @this: freemarker.core.BuiltinVariable;	r0 := @parameter0: freemarker.core.Environment;	r1 = virtualinvoke r0.<freemarker.core.Environment: freemarker.core.Macro$Context getCurrentMacroContext()>();	if r1 != null goto return r1;	return r1
;block_num 2