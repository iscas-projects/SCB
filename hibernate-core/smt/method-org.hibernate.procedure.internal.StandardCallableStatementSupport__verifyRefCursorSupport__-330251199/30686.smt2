(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var397 0)
(declare-sort var882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun supportsRefCursors/-535395643 (var397) Bool)
(declare-const null-var397 var397)
(declare-const null-var882 var882)
(declare-const var1402 var397) ; Statement: r0 := @this: org.hibernate.procedure.internal.StandardCallableStatementSupport 
(assert (not (= var1402 null-var397)))
(declare-const var2696 var882) ; Statement: r3 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var2696 null-var882)))
(define-const var3182 Bool (supportsRefCursors/-535395643 var1402)) ; Statement: $z0 = r0.<org.hibernate.procedure.internal.StandardCallableStatementSupport: boolean supportsRefCursors> 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3182 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {supportsRefCursors/-535395643=([org.hibernate.procedure.internal.StandardCallableStatementSupport], boolean)}
; {var397=org.hibernate.procedure.internal.StandardCallableStatementSupport, var1402=r0, var882=org.hibernate.dialect.Dialect, var2696=r3, var3182=$z0}
; {org.hibernate.procedure.internal.StandardCallableStatementSupport=var397, r0=var1402, org.hibernate.dialect.Dialect=var882, r3=var2696, $z0=var3182}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.procedure.internal.StandardCallableStatementSupport;	r3 := @parameter0: org.hibernate.dialect.Dialect;	$z0 = r0.<org.hibernate.procedure.internal.StandardCallableStatementSupport: boolean supportsRefCursors>;	if $z0 != 0 goto return;	return
;block_num 2