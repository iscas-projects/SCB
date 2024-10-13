(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var111 0)
(declare-sort var3099 0)
(declare-sort var1975 0)
(declare-sort var3262 0)
(declare-sort var1807 0)
(declare-sort var3369 0)
(declare-sort var271 0)
(declare-sort var1234 0)
(declare-sort var1389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/353320196 (var1807 var3099 ClassObject String) void)
(declare-fun cast-from-var111-to-var1807 (var111) var1807)
(declare-fun var271_asList/1779083644 ((Array Int var1234)) var3369)
(declare-fun cast-from-__Array__Int__var3262__-to-__Array__Int__var1234__ ((Array Int var3262)) (Array Int var1234))
(declare-fun argumentExpressions/1081192763 (var111) var3369)
(declare-fun toUpperCase/398655892 (String var1389) String)
(declare-fun var3369_contains/-441121415 (var3369 var1234) Bool)
(declare-fun cast-from-String-to-var1234 (String) var1234)
(declare-fun isStandardJpaFunction/1081192763 (var111) Bool)
(declare-const null-var111 var111)
(declare-const null-var3099 var3099)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__var3262__ (Array Int var3262))
(declare-const var111-STANDARD_JPA_FUNCTION_NAMES var3369)
(declare-const var1389-ROOT var1389)
(declare-const var3933 var111) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression 
(assert (not (= var3933 null-var111)))
(declare-const var180 var3099) ; Statement: r1 := @parameter0: org.hibernate.query.criteria.internal.CriteriaBuilderImpl 
(assert (not (= var180 null-var3099)))
(declare-const var2510 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var2510 null-ClassObject)))
(declare-const var1583 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1583 null-String)))
(declare-const var3471 (Array Int var3262)) ; Statement: r4 := @parameter3: javax.persistence.criteria.Expression[] 
(assert (not (= var3471 null-__Array__Int__var3262__)))
(assert true)
;(assert (<init>/353320196 (cast-from-var111-to-var1807 var3933) var180 var2510 var1583)) ; Statement: specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression: void <init>(org.hibernate.query.criteria.internal.CriteriaBuilderImpl,java.lang.Class,java.lang.String)>(r1, r2, r3) 

(declare-const var3933!1 var111)
(declare-const var180!1 var3099)
(declare-const var2510!1 ClassObject)
(declare-const var1583!1 String)
(define-const var1971 var3369 (var271_asList/1779083644 (cast-from-__Array__Int__var3262__-to-__Array__Int__var1234__ var3471))) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r4) 
(declare-const var3933!2 var111)
(assert (not (= var3933!2 null-var111)))
(assert (= (argumentExpressions/1081192763 var3933!2) var1971)) ; Statement: r0.<org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: java.util.List argumentExpressions> = $r5 
(define-const var2205 var3369 var111-STANDARD_JPA_FUNCTION_NAMES) ; Statement: $r7 = <org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: java.util.List STANDARD_JPA_FUNCTION_NAMES> 
(define-const var1643 var1389 var1389-ROOT) ; Statement: $r6 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1451 String (toUpperCase/398655892 var1583!1 var1643)) ; Statement: $r8 = virtualinvoke r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r6) 
(define-const var949 Bool (var3369_contains/-441121415 var2205 (cast-from-String-to-var1234 var1451))) ; Statement: $z0 = interfaceinvoke $r7.<java.util.List: boolean contains(java.lang.Object)>($r8) 
(declare-const var3933!3 var111)
(assert (not (= var3933!3 null-var111)))
(assert (= (isStandardJpaFunction/1081192763 var3933!3) var949)) ; Statement: r0.<org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: boolean isStandardJpaFunction> = $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/353320196=([org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression, org.hibernate.query.criteria.internal.CriteriaBuilderImpl, java.lang.Class, java.lang.String], void), cast-from-var111-to-var1807=([org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression], org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression), var271_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__var3262__-to-__Array__Int__var1234__=([javax.persistence.criteria.Expression[]], java.lang.Object[]), argumentExpressions/1081192763=([org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression], java.util.List), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var3369_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1234=([java.lang.String], java.lang.Object), isStandardJpaFunction/1081192763=([org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression], boolean)}
; {var111=org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression, var3933=r0, var3099=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var180=r1, var2510=r2, var1583=r3, var1975=null_type, var3262=javax.persistence.criteria.Expression, var3471=r4, var1807=org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression, var3369=java.util.List, var271=java.util.Arrays, var1234=java.lang.Object, var1971=$r5, var2205=$r7, var1389=java.util.Locale, var1643=$r6, var1451=$r8, var949=$z0}
; {org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression=var111, r0=var3933, org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var3099, r1=var180, r2=var2510, r3=var1583, null_type=var1975, javax.persistence.criteria.Expression=var3262, r4=var3471, org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression=var1807, java.util.List=var3369, java.util.Arrays=var271, java.lang.Object=var1234, $r5=var1971, $r7=var2205, java.util.Locale=var1389, $r6=var1643, $r8=var1451, $z0=var949}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression;	r1 := @parameter0: org.hibernate.query.criteria.internal.CriteriaBuilderImpl;	r2 := @parameter1: java.lang.Class;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: javax.persistence.criteria.Expression[];	specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression: void <init>(org.hibernate.query.criteria.internal.CriteriaBuilderImpl,java.lang.Class,java.lang.String)>(r1, r2, r3);	$r5 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r4);	r0.<org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: java.util.List argumentExpressions> = $r5;	$r7 = <org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: java.util.List STANDARD_JPA_FUNCTION_NAMES>;	$r6 = <java.util.Locale: java.util.Locale ROOT>;	$r8 = virtualinvoke r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r6);	$z0 = interfaceinvoke $r7.<java.util.List: boolean contains(java.lang.Object)>($r8);	r0.<org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: boolean isStandardJpaFunction> = $z0;	return
;block_num 1