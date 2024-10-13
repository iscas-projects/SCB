(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tabSize/198980522 (var1746) Int)
(declare-const null-var1746 var1746)
(declare-const null-Int Int)
(declare-const var3891 var1746) ; Statement: r0 := @this: freemarker.template.Configuration 
(assert (not (= var3891 null-var1746)))
(declare-const var1765 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1765 null-Int)))
 ; Statement: if i0 >= 1 goto (branch) 
(assert (>= var1765 1)) ; Cond: i0 >= 1 
 ; Statement: if i0 <= 256 goto r0.<freemarker.template.Configuration: int tabSize> = i0 
(assert (<= var1765 256)) ; Cond: i0 <= 256 
(declare-const var3891!1 var1746)
(assert (not (= var3891!1 null-var1746)))
(assert (= (tabSize/198980522 var3891!1) var1765)) ; Statement: r0.<freemarker.template.Configuration: int tabSize> = i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tabSize/198980522=([freemarker.template.Configuration], int)}
; {var1746=freemarker.template.Configuration, var3891=r0, var1765=i0}
; {freemarker.template.Configuration=var1746, r0=var3891, i0=var1765}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.template.Configuration;	i0 := @parameter0: int;	if i0 >= 1 goto (branch);	if i0 <= 256 goto r0.<freemarker.template.Configuration: int tabSize> = i0;	r0.<freemarker.template.Configuration: int tabSize> = i0;	return
;block_num 3