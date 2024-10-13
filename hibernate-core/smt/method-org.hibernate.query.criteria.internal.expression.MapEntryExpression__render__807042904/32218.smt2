(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var123 0)
(declare-sort var490 0)
(declare-sort var1658 0)
(declare-sort var2370 0)
(declare-sort var2269 0)
(declare-sort var1303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var490_getClauseStack/1048601114 (var490) var1658)
(declare-fun var1658_getCurrent/1301638501 (var1658) var2370)
(declare-fun cast-from-var2269-to-var2370 (var2269) var2370)
(declare-fun var1303-init () var1303)
(declare-fun <init>/-1092629202 (var1303 String) void)
(declare-const null-var123 var123)
(declare-const null-var490 var490)
(declare-const var2269-SELECT var2269)
(declare-const var1822 var123) ; Statement: r6 := @this: org.hibernate.query.criteria.internal.expression.MapEntryExpression 
(assert (not (= var1822 null-var123)))
(declare-const var2917 var490) ; Statement: r0 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2917 null-var490)))
(define-const var953 var1658 (var490_getClauseStack/1048601114 var2917)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>() 
(define-const var48 var2370 (var1658_getCurrent/1301638501 var953)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.internal.util.collections.Stack: java.lang.Object getCurrent()>() 
(define-const var2789 var2269 var2269-SELECT) ; Statement: $r2 = <org.hibernate.sql.ast.Clause: org.hibernate.sql.ast.Clause SELECT> 
 ; Statement: if $r3 != $r2 goto $r4 = new java.lang.IllegalStateException 
(assert (not (= var48 (cast-from-var2269-to-var2370 var2789)))) ; Cond: $r3 != $r2 
(define-const var697 var1303 var1303-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(assert true)
;(assert (<init>/-1092629202 var697 "illegal reference to map entry outside of select clause.")) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>("illegal reference to map entry outside of select clause.") 

(declare-const var697!1 var1303)
(declare-const var236 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var490_getClauseStack/1048601114=([org.hibernate.query.criteria.internal.compile.RenderingContext], org.hibernate.internal.util.collections.Stack), var1658_getCurrent/1301638501=([org.hibernate.internal.util.collections.Stack], java.lang.Object), cast-from-var2269-to-var2370=([org.hibernate.sql.ast.Clause], java.lang.Object), var1303-init=([], java.lang.IllegalStateException), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var123=org.hibernate.query.criteria.internal.expression.MapEntryExpression, var1822=r6, var490=org.hibernate.query.criteria.internal.compile.RenderingContext, var2917=r0, var1658=org.hibernate.internal.util.collections.Stack, var953=$r1, var2370=java.lang.Object, var48=$r3, var2269=org.hibernate.sql.ast.Clause, var2789=$r2, var1303=java.lang.IllegalStateException, var697=$r4, var236="illegal reference to map entry outside of select clause."}
; {org.hibernate.query.criteria.internal.expression.MapEntryExpression=var123, r6=var1822, org.hibernate.query.criteria.internal.compile.RenderingContext=var490, r0=var2917, org.hibernate.internal.util.collections.Stack=var1658, $r1=var953, java.lang.Object=var2370, $r3=var48, org.hibernate.sql.ast.Clause=var2269, $r2=var2789, java.lang.IllegalStateException=var1303, $r4=var697, "illegal reference to map entry outside of select clause."=var236}
;seq 
;cnt {}
;stmts r6 := @this: org.hibernate.query.criteria.internal.expression.MapEntryExpression;	r0 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r1 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>();	$r3 = interfaceinvoke $r1.<org.hibernate.internal.util.collections.Stack: java.lang.Object getCurrent()>();	$r2 = <org.hibernate.sql.ast.Clause: org.hibernate.sql.ast.Clause SELECT>;	if $r3 != $r2 goto $r4 = new java.lang.IllegalStateException;	$r4 = new java.lang.IllegalStateException;	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>("illegal reference to map entry outside of select clause.");	throw $r4
;block_num 2