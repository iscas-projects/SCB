(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2031 0)
(declare-sort var2942 0)
(declare-sort var1222 0)
(declare-sort var3695 0)
(declare-sort var2831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2942_getClauseStack/1048601114 (var2942) var1222)
(declare-fun var1222_getCurrent/1301638501 (var1222) var3695)
(declare-fun cast-from-var2831-to-var3695 (var2831) var3695)
(declare-const null-var2031 var2031)
(declare-const null-var2942 var2942)
(declare-const var2831-SELECT var2831)
(declare-const var3273 var2031) ; Statement: r5 := @this: org.hibernate.query.criteria.internal.expression.NullLiteralExpression 
(assert (not (= var3273 null-var2031)))
(declare-const var3654 var2942) ; Statement: r0 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3654 null-var2942)))
(define-const var3636 var1222 (var2942_getClauseStack/1048601114 var3654)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>() 
(define-const var2634 var3695 (var1222_getCurrent/1301638501 var3636)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.internal.util.collections.Stack: java.lang.Object getCurrent()>() 
(define-const var2736 var2831 var2831-SELECT) ; Statement: $r2 = <org.hibernate.sql.ast.Clause: org.hibernate.sql.ast.Clause SELECT> 
 ; Statement: if $r3 != $r2 goto return "null" 
(assert (not (= var2634 (cast-from-var2831-to-var3695 var2736)))) ; Cond: $r3 != $r2 
 ; Statement: return "null" 
(check-sat)
(get-model)
(get-unsat-core)
; {var2942_getClauseStack/1048601114=([org.hibernate.query.criteria.internal.compile.RenderingContext], org.hibernate.internal.util.collections.Stack), var1222_getCurrent/1301638501=([org.hibernate.internal.util.collections.Stack], java.lang.Object), cast-from-var2831-to-var3695=([org.hibernate.sql.ast.Clause], java.lang.Object)}
; {var2031=org.hibernate.query.criteria.internal.expression.NullLiteralExpression, var3273=r5, var2942=org.hibernate.query.criteria.internal.compile.RenderingContext, var3654=r0, var1222=org.hibernate.internal.util.collections.Stack, var3636=$r1, var3695=java.lang.Object, var2634=$r3, var2831=org.hibernate.sql.ast.Clause, var2736=$r2}
; {org.hibernate.query.criteria.internal.expression.NullLiteralExpression=var2031, r5=var3273, org.hibernate.query.criteria.internal.compile.RenderingContext=var2942, r0=var3654, org.hibernate.internal.util.collections.Stack=var1222, $r1=var3636, java.lang.Object=var3695, $r3=var2634, org.hibernate.sql.ast.Clause=var2831, $r2=var2736}
;seq 
;cnt {}
;stmts r5 := @this: org.hibernate.query.criteria.internal.expression.NullLiteralExpression;	r0 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r1 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>();	$r3 = interfaceinvoke $r1.<org.hibernate.internal.util.collections.Stack: java.lang.Object getCurrent()>();	$r2 = <org.hibernate.sql.ast.Clause: org.hibernate.sql.ast.Clause SELECT>;	if $r3 != $r2 goto return "null";	return "null"
;block_num 2