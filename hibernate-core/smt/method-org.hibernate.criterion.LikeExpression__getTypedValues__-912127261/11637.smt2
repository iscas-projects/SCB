(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var990 0)
(declare-sort var344 0)
(declare-sort var3428 0)
(declare-sort var1660 0)
(declare-sort var1844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ignoreCase/-1321302526 (var990) Bool)
(declare-fun value/-1321302526 (var990) var1660)
(declare-fun toString/-522406933 (var1660) String)
(declare-fun arr-var1844-init () (Array Int var1844))
(declare-fun propertyName/-1321302526 (var990) String)
(declare-fun var3428_getTypedValue/-975752508 (var3428 var344 String var1660) var1844)
(declare-fun cast-from-String-to-var1660 (String) var1660)
(declare-const null-var990 var990)
(declare-const null-var344 var344)
(declare-const null-var3428 var3428)
(declare-const null-__Array__Int__var1844__ (Array Int var1844))
(declare-const var2048 var990) ; Statement: r0 := @this: org.hibernate.criterion.LikeExpression 
(assert (not (= var2048 null-var990)))
(declare-const var2555 var344) ; Statement: r4 := @parameter0: org.hibernate.Criteria 
(assert (not (= var2555 null-var344)))
(declare-const var3375 var3428) ; Statement: r3 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var3375 null-var3428)))
(define-const var2753 Bool (ignoreCase/-1321302526 var2048)) ; Statement: $z0 = r0.<org.hibernate.criterion.LikeExpression: boolean ignoreCase> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.hibernate.criterion.LikeExpression: java.lang.Object value> 
(assert (= (ite var2753 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3658 var1660 (value/-1321302526 var2048)) ; Statement: $r1 = r0.<org.hibernate.criterion.LikeExpression: java.lang.Object value> 
(assert true)
(define-const var1683 String (toString/-522406933 var3658)) ; Statement: $r9 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2346 (Array Int var1844) arr-var1844-init) ; Statement: $r2 = newarray (org.hibernate.engine.spi.TypedValue)[1] 
(define-const var2296 String (propertyName/-1321302526 var2048)) ; Statement: $r5 = r0.<org.hibernate.criterion.LikeExpression: java.lang.String propertyName> 
(define-const var2496 var1844 (var3428_getTypedValue/-975752508 var3375 var2555 var2296 (cast-from-String-to-var1660 var1683))) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.TypedValue getTypedValue(org.hibernate.Criteria,java.lang.String,java.lang.Object)>(r4, $r5, $r9) 
(declare-const var2346!1 (Array Int var1844))
(assert (not (= var2346!1 null-__Array__Int__var1844__)))
(assert (= (select var2346!1 0) var2496)) ; Statement: $r2[0] = $r6 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {ignoreCase/-1321302526=([org.hibernate.criterion.LikeExpression], boolean), value/-1321302526=([org.hibernate.criterion.LikeExpression], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), arr-var1844-init=([], org.hibernate.engine.spi.TypedValue[]), propertyName/-1321302526=([org.hibernate.criterion.LikeExpression], java.lang.String), var3428_getTypedValue/-975752508=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String, java.lang.Object], org.hibernate.engine.spi.TypedValue), cast-from-String-to-var1660=([java.lang.String], java.lang.Object)}
; {var990=org.hibernate.criterion.LikeExpression, var2048=r0, var344=org.hibernate.Criteria, var2555=r4, var3428=org.hibernate.criterion.CriteriaQuery, var3375=r3, var2753=$z0, var1660=java.lang.Object, var3658=$r1, var1683=$r9, var1844=org.hibernate.engine.spi.TypedValue, var2346=$r2, var2296=$r5, var2496=$r6}
; {org.hibernate.criterion.LikeExpression=var990, r0=var2048, org.hibernate.Criteria=var344, r4=var2555, org.hibernate.criterion.CriteriaQuery=var3428, r3=var3375, $z0=var2753, java.lang.Object=var1660, $r1=var3658, $r9=var1683, org.hibernate.engine.spi.TypedValue=var1844, $r2=var2346, $r5=var2296, $r6=var2496}
;seq <java.lang.Object: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: org.hibernate.criterion.LikeExpression;	r4 := @parameter0: org.hibernate.Criteria;	r3 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$z0 = r0.<org.hibernate.criterion.LikeExpression: boolean ignoreCase>;	if $z0 == 0 goto $r1 = r0.<org.hibernate.criterion.LikeExpression: java.lang.Object value>;	$r1 = r0.<org.hibernate.criterion.LikeExpression: java.lang.Object value>;	$r9 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>();	$r2 = newarray (org.hibernate.engine.spi.TypedValue)[1];	$r5 = r0.<org.hibernate.criterion.LikeExpression: java.lang.String propertyName>;	$r6 = interfaceinvoke r3.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.TypedValue getTypedValue(org.hibernate.Criteria,java.lang.String,java.lang.Object)>(r4, $r5, $r9);	$r2[0] = $r6;	return $r2
;block_num 3