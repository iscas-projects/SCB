(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun captureExpression/1664261911 (var2920) Bool)
(declare-const null-var2920 var2920)
(declare-const var2077 var2920) ; Statement: r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase 
(assert (not (= var2077 null-var2920)))
(define-const var2404 Bool (captureExpression/1664261911 var2077)) ; Statement: $z0 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression> 
 ; Statement: if $z0 == 0 goto r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression> = 1 
(assert (= (ite var2404 1 0) 0)) ; Cond: $z0 == 0 
(declare-const var2077!1 var2920)
(assert (not (= var2077!1 null-var2920)))
(assert (= (captureExpression/1664261911 var2077!1) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression> = 1 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {captureExpression/1664261911=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], boolean)}
; {var2920=org.hibernate.hql.internal.antlr.SqlGeneratorBase, var2077=r0, var2404=$z0}
; {org.hibernate.hql.internal.antlr.SqlGeneratorBase=var2920, r0=var2077, $z0=var2404}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase;	$z0 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression>;	if $z0 == 0 goto r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression> = 1;	r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression> = 1;	return
;block_num 3