(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1115 0)
(declare-sort var2838 0)
(declare-sort var2659 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isDistinct/1665456926 (var1115) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun renderArguments/1051849798 (var2659 String var2838) void)
(declare-fun cast-from-var1115-to-var2659 (var1115) var2659)
(declare-const null-var1115 var1115)
(declare-const null-String String)
(declare-const null-var2838 var2838)
(declare-const var1852 var1115) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT 
(assert (not (= var1852 null-var1115)))
(declare-const var759 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var759 null-String)))
(declare-const var1699 var2838) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1699 null-var2838)))
(assert true)
(define-const var1752 Bool (isDistinct/1665456926 var1852)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT: boolean isDistinct()>() 
 ; Statement: if $z0 == 0 goto r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT: java.util.List getArgumentExpressions()>() 
(assert (not (= (ite var1752 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/672562846 var759 "distinct ")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("distinct ") 
(declare-const var759!1 String)
(assert (= var759!1 (str.++ var759 "distinct ")))
 ; Statement: goto [?= specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction: void renderArguments(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2, r3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (renderArguments/1051849798 (cast-from-var1115-to-var2659 var1852) var759!1 var1699)) ; Statement: specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction: void renderArguments(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2, r3) 

(declare-const var1852!1 var1115)
(declare-const var759!2 String)
(declare-const var1699!1 var2838)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isDistinct/1665456926=([org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), renderArguments/1051849798=([org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression, java.lang.StringBuilder, org.hibernate.query.criteria.internal.compile.RenderingContext], void), cast-from-var1115-to-var2659=([org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT], org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression)}
; {var1115=org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT, var1852=r0, var759=r2, var2838=org.hibernate.query.criteria.internal.compile.RenderingContext, var1699=r3, var1752=$z0, var2659=org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression}
; {org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT=var1115, r0=var1852, r2=var759, org.hibernate.query.criteria.internal.compile.RenderingContext=var2838, r3=var1699, $z0=var1752, org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression=var2659}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT;	r2 := @parameter0: java.lang.StringBuilder;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT: boolean isDistinct()>();	if $z0 == 0 goto r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction$COUNT: java.util.List getArgumentExpressions()>();	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("distinct ");	goto [?= specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction: void renderArguments(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2, r3)];	specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.AggregationFunction: void renderArguments(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2, r3);	return
;block_num 3