(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var685 0)
(declare-sort var2301 0)
(declare-sort var1318 0)
(declare-sort var2389 0)
(declare-sort var888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ignoreCase/1155273117 (var685) Bool)
(declare-fun value/1155273117 (var685) var2389)
(declare-fun arr-var888-init () (Array Int var888))
(declare-fun propertyName/1155273117 (var685) String)
(declare-fun var1318_getTypedValue/-975752508 (var1318 var2301 String var2389) var888)
(declare-const null-var685 var685)
(declare-const null-var2301 var2301)
(declare-const null-var1318 var1318)
(declare-const null-__Array__Int__var888__ (Array Int var888))
(declare-const var2647 var685) ; Statement: r0 := @this: org.hibernate.criterion.SimpleExpression 
(assert (not (= var2647 null-var685)))
(declare-const var1596 var2301) ; Statement: r3 := @parameter0: org.hibernate.Criteria 
(assert (not (= var1596 null-var2301)))
(declare-const var2923 var1318) ; Statement: r2 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2923 null-var1318)))
(define-const var1446 Bool (ignoreCase/1155273117 var2647)) ; Statement: $z0 = r0.<org.hibernate.criterion.SimpleExpression: boolean ignoreCase> 
 ; Statement: if $z0 == 0 goto $r9 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.Object value> 
(assert (= (ite var1446 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1495 var2389 (value/1155273117 var2647)) ; Statement: $r9 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var1426 (Array Int var888) arr-var888-init) ; Statement: $r1 = newarray (org.hibernate.engine.spi.TypedValue)[1] 
(define-const var493 String (propertyName/1155273117 var2647)) ; Statement: $r4 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.String propertyName> 
(define-const var750 var888 (var1318_getTypedValue/-975752508 var2923 var1596 var493 var1495)) ; Statement: $r5 = interfaceinvoke r2.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.TypedValue getTypedValue(org.hibernate.Criteria,java.lang.String,java.lang.Object)>(r3, $r4, $r9) 
(declare-const var1426!1 (Array Int var888))
(assert (not (= var1426!1 null-__Array__Int__var888__)))
(assert (= (select var1426!1 0) var750)) ; Statement: $r1[0] = $r5 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {ignoreCase/1155273117=([org.hibernate.criterion.SimpleExpression], boolean), value/1155273117=([org.hibernate.criterion.SimpleExpression], java.lang.Object), arr-var888-init=([], org.hibernate.engine.spi.TypedValue[]), propertyName/1155273117=([org.hibernate.criterion.SimpleExpression], java.lang.String), var1318_getTypedValue/-975752508=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String, java.lang.Object], org.hibernate.engine.spi.TypedValue)}
; {var685=org.hibernate.criterion.SimpleExpression, var2647=r0, var2301=org.hibernate.Criteria, var1596=r3, var1318=org.hibernate.criterion.CriteriaQuery, var2923=r2, var1446=$z0, var2389=java.lang.Object, var1495=$r9, var888=org.hibernate.engine.spi.TypedValue, var1426=$r1, var493=$r4, var750=$r5}
; {org.hibernate.criterion.SimpleExpression=var685, r0=var2647, org.hibernate.Criteria=var2301, r3=var1596, org.hibernate.criterion.CriteriaQuery=var1318, r2=var2923, $z0=var1446, java.lang.Object=var2389, $r9=var1495, org.hibernate.engine.spi.TypedValue=var888, $r1=var1426, $r4=var493, $r5=var750}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.criterion.SimpleExpression;	r3 := @parameter0: org.hibernate.Criteria;	r2 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$z0 = r0.<org.hibernate.criterion.SimpleExpression: boolean ignoreCase>;	if $z0 == 0 goto $r9 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.Object value>;	$r9 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.Object value>;	$r1 = newarray (org.hibernate.engine.spi.TypedValue)[1];	$r4 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.String propertyName>;	$r5 = interfaceinvoke r2.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.TypedValue getTypedValue(org.hibernate.Criteria,java.lang.String,java.lang.Object)>(r3, $r4, $r9);	$r1[0] = $r5;	return $r1
;block_num 3