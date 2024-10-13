(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1814 0)
(declare-sort var3413 0)
(declare-sort var3877 0)
(declare-sort var987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isDistinct/1665456926 (var1814) Bool)
(declare-fun getArgumentExpressions/-964114600 (var987) var3877)
(declare-fun cast-from-var1814-to-var987 (var1814) var987)
(declare-fun var3877_size/-959786421 (var3877) Int)
(declare-fun renderArguments/1051849798 (var987 String var3413) void)
(declare-const null-var1814 var1814)
(declare-const null-String String)
(declare-const null-var3413 var3413)
(declare-const var3415 var1814) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT 
(assert (not (= var3415 null-var1814)))
(declare-const var10 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var10 null-String)))
(declare-const var480 var3413) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var480 null-var3413)))
(assert true)
(define-const var783 Bool (isDistinct/1665456926 var3415)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT: boolean isDistinct()>() 
 ; Statement: if $z0 == 0 goto r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT: java.util.List getArgumentExpressions()>() 
(assert (= (ite var783 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var179 var3877 (getArgumentExpressions/-964114600 (cast-from-var1814-to-var987 var3415))) ; Statement: r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT: java.util.List getArgumentExpressions()>() 
(define-const var2514 Int (var3877_size/-959786421 var179)) ; Statement: $i0 = interfaceinvoke r1.<java.util.List: int size()>() 
 ; Statement: if $i0 != 1 goto specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction: void renderArguments(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2, r3) 
(assert (not (= var2514 1))) ; Cond: $i0 != 1 
(assert true)
;(assert (renderArguments/1051849798 (cast-from-var1814-to-var987 var3415) var10 var480)) ; Statement: specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction: void renderArguments(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2, r3) 

(declare-const var3415!1 var1814)
(declare-const var10!1 String)
(declare-const var480!1 var3413)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isDistinct/1665456926=([org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT], boolean), getArgumentExpressions/-964114600=([org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression], java.util.List), cast-from-var1814-to-var987=([org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT], org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression), var3877_size/-959786421=([java.util.List], int), renderArguments/1051849798=([org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression, java.lang.StringBuilder, org.hibernate.query.criteria.internal.compile.RenderingContext], void)}
; {var1814=org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT, var3415=r0, var10=r2, var3413=org.hibernate.query.criteria.internal.compile.RenderingContext, var480=r3, var783=$z0, var3877=java.util.List, var987=org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression, var179=r1, var2514=$i0}
; {org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT=var1814, r0=var3415, r2=var10, org.hibernate.query.criteria.internal.compile.RenderingContext=var3413, r3=var480, $z0=var783, java.util.List=var3877, org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression=var987, r1=var179, $i0=var2514}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT;	r2 := @parameter0: java.lang.StringBuilder;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT: boolean isDistinct()>();	if $z0 == 0 goto r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT: java.util.List getArgumentExpressions()>();	r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT: java.util.List getArgumentExpressions()>();	$i0 = interfaceinvoke r1.<java.util.List: int size()>();	if $i0 != 1 goto specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction: void renderArguments(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2, r3);	specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction: void renderArguments(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2, r3);	return
;block_num 3