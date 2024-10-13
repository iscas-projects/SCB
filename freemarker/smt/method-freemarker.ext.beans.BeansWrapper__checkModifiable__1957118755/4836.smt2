(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun writeProtected/-302782480 (var871) Bool)
(declare-const null-var871 var871)
(declare-const var2512 var871) ; Statement: r0 := @this: freemarker.ext.beans.BeansWrapper 
(assert (not (= var2512 null-var871)))
(define-const var1424 Bool (writeProtected/-302782480 var2512)) ; Statement: $z0 = r0.<freemarker.ext.beans.BeansWrapper: boolean writeProtected> 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1424 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {writeProtected/-302782480=([freemarker.ext.beans.BeansWrapper], boolean)}
; {var871=freemarker.ext.beans.BeansWrapper, var2512=r0, var1424=$z0}
; {freemarker.ext.beans.BeansWrapper=var871, r0=var2512, $z0=var1424}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.ext.beans.BeansWrapper;	$z0 = r0.<freemarker.ext.beans.BeansWrapper: boolean writeProtected>;	if $z0 == 0 goto return;	return
;block_num 2