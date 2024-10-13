(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var642 0)
(declare-sort var2098 0)
(declare-sort var646 0)
(declare-sort var2539 0)
(declare-sort var3528 0)
(declare-sort var620 0)
(declare-sort var2278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/353320196 (var3528 var2098 ClassObject String) void)
(declare-fun cast-from-var642-to-var3528 (var642) var3528)
(declare-fun argumentExpressions/1081192763 (var642) var2539)
(declare-fun toUpperCase/398655892 (String var620) String)
(declare-fun var2539_contains/-441121415 (var2539 var2278) Bool)
(declare-fun cast-from-String-to-var2278 (String) var2278)
(declare-fun isStandardJpaFunction/1081192763 (var642) Bool)
(declare-const null-var642 var642)
(declare-const null-var2098 var2098)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var2539 var2539)
(declare-const var642-STANDARD_JPA_FUNCTION_NAMES var2539)
(declare-const var620-ROOT var620)
(declare-const var3202 var642) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression 
(assert (not (= var3202 null-var642)))
(declare-const var2943 var2098) ; Statement: r1 := @parameter0: org.hibernate.query.criteria.internal.CriteriaBuilderImpl 
(assert (not (= var2943 null-var2098)))
(declare-const var3096 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3096 null-ClassObject)))
(declare-const var327 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var327 null-String)))
(declare-const var1206 var2539) ; Statement: r4 := @parameter3: java.util.List 
(assert (not (= var1206 null-var2539)))
(assert true)
;(assert (<init>/353320196 (cast-from-var642-to-var3528 var3202) var2943 var3096 var327)) ; Statement: specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression: void <init>(org.hibernate.query.criteria.internal.CriteriaBuilderImpl,java.lang.Class,java.lang.String)>(r1, r2, r3) 

(declare-const var3202!1 var642)
(declare-const var2943!1 var2098)
(declare-const var3096!1 ClassObject)
(declare-const var327!1 String)
(declare-const var3202!2 var642)
(assert (not (= var3202!2 null-var642)))
(assert (= (argumentExpressions/1081192763 var3202!2) var1206)) ; Statement: r0.<org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: java.util.List argumentExpressions> = r4 
(define-const var3749 var2539 var642-STANDARD_JPA_FUNCTION_NAMES) ; Statement: $r6 = <org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: java.util.List STANDARD_JPA_FUNCTION_NAMES> 
(define-const var2016 var620 var620-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2559 String (toUpperCase/398655892 var327!1 var2016)) ; Statement: $r7 = virtualinvoke r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r5) 
(define-const var846 Bool (var2539_contains/-441121415 var3749 (cast-from-String-to-var2278 var2559))) ; Statement: $z0 = interfaceinvoke $r6.<java.util.List: boolean contains(java.lang.Object)>($r7) 
(declare-const var3202!3 var642)
(assert (not (= var3202!3 null-var642)))
(assert (= (isStandardJpaFunction/1081192763 var3202!3) var846)) ; Statement: r0.<org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: boolean isStandardJpaFunction> = $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/353320196=([org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression, org.hibernate.query.criteria.internal.CriteriaBuilderImpl, java.lang.Class, java.lang.String], void), cast-from-var642-to-var3528=([org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression], org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression), argumentExpressions/1081192763=([org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression], java.util.List), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var2539_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2278=([java.lang.String], java.lang.Object), isStandardJpaFunction/1081192763=([org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression], boolean)}
; {var642=org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression, var3202=r0, var2098=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var2943=r1, var3096=r2, var327=r3, var646=null_type, var2539=java.util.List, var1206=r4, var3528=org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression, var3749=$r6, var620=java.util.Locale, var2016=$r5, var2559=$r7, var2278=java.lang.Object, var846=$z0}
; {org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression=var642, r0=var3202, org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var2098, r1=var2943, r2=var3096, r3=var327, null_type=var646, java.util.List=var2539, r4=var1206, org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression=var3528, $r6=var3749, java.util.Locale=var620, $r5=var2016, $r7=var2559, java.lang.Object=var2278, $z0=var846}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression;	r1 := @parameter0: org.hibernate.query.criteria.internal.CriteriaBuilderImpl;	r2 := @parameter1: java.lang.Class;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.util.List;	specialinvoke r0.<org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression: void <init>(org.hibernate.query.criteria.internal.CriteriaBuilderImpl,java.lang.Class,java.lang.String)>(r1, r2, r3);	r0.<org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: java.util.List argumentExpressions> = r4;	$r6 = <org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: java.util.List STANDARD_JPA_FUNCTION_NAMES>;	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r7 = virtualinvoke r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r5);	$z0 = interfaceinvoke $r6.<java.util.List: boolean contains(java.lang.Object)>($r7);	r0.<org.hibernate.query.criteria.internal.expression.function.ParameterizedFunctionExpression: boolean isStandardJpaFunction> = $z0;	return
;block_num 1