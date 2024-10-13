(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2202 0)
(declare-sort var2644 0)
(declare-sort var1686 0)
(declare-sort var3497 0)
(declare-sort var684 0)
(declare-sort var3105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3497-init () (Array Int var3497))
(declare-fun propertyName/-1142638555 (var2202) String)
(declare-fun value/-1142638555 (var2202) var684)
(declare-fun toString/-522406933 (var684) String)
(declare-fun toLowerCase/1946809429 (String var3105) String)
(declare-fun var1686_getTypedValue/-975752508 (var1686 var2644 String var684) var3497)
(declare-fun cast-from-String-to-var684 (String) var684)
(declare-const null-var2202 var2202)
(declare-const null-var2644 var2644)
(declare-const null-var1686 var1686)
(declare-const var3105-ROOT var3105)
(declare-const null-__Array__Int__var3497__ (Array Int var3497))
(declare-const var1709 var2202) ; Statement: r3 := @this: org.hibernate.criterion.IlikeExpression 
(assert (not (= var1709 null-var2202)))
(declare-const var1140 var2644) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var1140 null-var2644)))
(declare-const var2354 var1686) ; Statement: r1 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2354 null-var1686)))
(define-const var3399 (Array Int var3497) arr-var3497-init) ; Statement: $r0 = newarray (org.hibernate.engine.spi.TypedValue)[1] 
(define-const var720 String (propertyName/-1142638555 var1709)) ; Statement: $r5 = r3.<org.hibernate.criterion.IlikeExpression: java.lang.String propertyName> 
(define-const var3840 var684 (value/-1142638555 var1709)) ; Statement: $r4 = r3.<org.hibernate.criterion.IlikeExpression: java.lang.Object value> 
(assert true)
(define-const var314 String (toString/-522406933 var3840)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(define-const var3164 var3105 var3105-ROOT) ; Statement: $r6 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3251 String (toLowerCase/1946809429 var314 var3164)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r6) 
(define-const var1475 var3497 (var1686_getTypedValue/-975752508 var2354 var1140 var720 (cast-from-String-to-var684 var3251))) ; Statement: $r9 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.TypedValue getTypedValue(org.hibernate.Criteria,java.lang.String,java.lang.Object)>(r2, $r5, $r8) 
(declare-const var3399!1 (Array Int var3497))
(assert (not (= var3399!1 null-__Array__Int__var3497__)))
(assert (= (select var3399!1 0) var1475)) ; Statement: $r0[0] = $r9 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3497-init=([], org.hibernate.engine.spi.TypedValue[]), propertyName/-1142638555=([org.hibernate.criterion.IlikeExpression], java.lang.String), value/-1142638555=([org.hibernate.criterion.IlikeExpression], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1686_getTypedValue/-975752508=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String, java.lang.Object], org.hibernate.engine.spi.TypedValue), cast-from-String-to-var684=([java.lang.String], java.lang.Object)}
; {var2202=org.hibernate.criterion.IlikeExpression, var1709=r3, var2644=org.hibernate.Criteria, var1140=r2, var1686=org.hibernate.criterion.CriteriaQuery, var2354=r1, var3497=org.hibernate.engine.spi.TypedValue, var3399=$r0, var720=$r5, var684=java.lang.Object, var3840=$r4, var314=$r7, var3105=java.util.Locale, var3164=$r6, var3251=$r8, var1475=$r9}
; {org.hibernate.criterion.IlikeExpression=var2202, r3=var1709, org.hibernate.Criteria=var2644, r2=var1140, org.hibernate.criterion.CriteriaQuery=var1686, r1=var2354, org.hibernate.engine.spi.TypedValue=var3497, $r0=var3399, $r5=var720, java.lang.Object=var684, $r4=var3840, $r7=var314, java.util.Locale=var3105, $r6=var3164, $r8=var3251, $r9=var1475}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r3 := @this: org.hibernate.criterion.IlikeExpression;	r2 := @parameter0: org.hibernate.Criteria;	r1 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r0 = newarray (org.hibernate.engine.spi.TypedValue)[1];	$r5 = r3.<org.hibernate.criterion.IlikeExpression: java.lang.String propertyName>;	$r4 = r3.<org.hibernate.criterion.IlikeExpression: java.lang.Object value>;	$r7 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	$r6 = <java.util.Locale: java.util.Locale ROOT>;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r6);	$r9 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.TypedValue getTypedValue(org.hibernate.Criteria,java.lang.String,java.lang.Object)>(r2, $r5, $r8);	$r0[0] = $r9;	return $r0
;block_num 1