(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1064 0)
(declare-sort var165 0)
(declare-sort var1932 0)
(declare-sort var845 0)
(declare-sort var3569 0)
(declare-sort var2768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ignoreCase/1155273117 (var1064) Bool)
(declare-fun value/1155273117 (var1064) var845)
(declare-fun toString/-522406933 (var845) String)
(declare-fun cast-from-String-to-var845 (String) var845)
(declare-fun toLowerCase/1946809429 (String var3569) String)
(declare-fun arr-var2768-init () (Array Int var2768))
(declare-fun propertyName/1155273117 (var1064) String)
(declare-fun var1932_getTypedValue/-975752508 (var1932 var165 String var845) var2768)
(declare-const null-var1064 var1064)
(declare-const null-var165 var165)
(declare-const null-var1932 var1932)
(declare-const var3569-ROOT var3569)
(declare-const null-__Array__Int__var2768__ (Array Int var2768))
(declare-const var2423 var1064) ; Statement: r0 := @this: org.hibernate.criterion.SimpleExpression 
(assert (not (= var2423 null-var1064)))
(declare-const var2002 var165) ; Statement: r3 := @parameter0: org.hibernate.Criteria 
(assert (not (= var2002 null-var165)))
(declare-const var2877 var1932) ; Statement: r2 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2877 null-var1932)))
(define-const var2779 Bool (ignoreCase/1155273117 var2423)) ; Statement: $z0 = r0.<org.hibernate.criterion.SimpleExpression: boolean ignoreCase> 
 ; Statement: if $z0 == 0 goto $r9 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.Object value> 
(assert (not (= (ite var2779 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var540 var845 (value/1155273117 var2423)) ; Statement: $r6 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.Object value> 
(assert true)
(define-const var2402 String (toString/-522406933 var540)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>() 
(define-const var1890 var3569 var3569-ROOT) ; Statement: $r7 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2368 var845 (cast-from-String-to-var845 (toLowerCase/1946809429 var2402 var1890))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r7) 
 ; Statement: goto [?= $r1 = newarray (org.hibernate.engine.spi.TypedValue)[1]] 
(assert true) ; Non Conditional
(define-const var1981 (Array Int var2768) arr-var2768-init) ; Statement: $r1 = newarray (org.hibernate.engine.spi.TypedValue)[1] 
(define-const var161 String (propertyName/1155273117 var2423)) ; Statement: $r4 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.String propertyName> 
(define-const var992 var2768 (var1932_getTypedValue/-975752508 var2877 var2002 var161 var2368)) ; Statement: $r5 = interfaceinvoke r2.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.TypedValue getTypedValue(org.hibernate.Criteria,java.lang.String,java.lang.Object)>(r3, $r4, $r9) 
(declare-const var1981!1 (Array Int var2768))
(assert (not (= var1981!1 null-__Array__Int__var2768__)))
(assert (= (select var1981!1 0) var992)) ; Statement: $r1[0] = $r5 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {ignoreCase/1155273117=([org.hibernate.criterion.SimpleExpression], boolean), value/1155273117=([org.hibernate.criterion.SimpleExpression], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var845=([java.lang.String], java.lang.Object), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), arr-var2768-init=([], org.hibernate.engine.spi.TypedValue[]), propertyName/1155273117=([org.hibernate.criterion.SimpleExpression], java.lang.String), var1932_getTypedValue/-975752508=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String, java.lang.Object], org.hibernate.engine.spi.TypedValue)}
; {var1064=org.hibernate.criterion.SimpleExpression, var2423=r0, var165=org.hibernate.Criteria, var2002=r3, var1932=org.hibernate.criterion.CriteriaQuery, var2877=r2, var2779=$z0, var845=java.lang.Object, var540=$r6, var2402=$r8, var3569=java.util.Locale, var1890=$r7, var2368=$r9, var2768=org.hibernate.engine.spi.TypedValue, var1981=$r1, var161=$r4, var992=$r5}
; {org.hibernate.criterion.SimpleExpression=var1064, r0=var2423, org.hibernate.Criteria=var165, r3=var2002, org.hibernate.criterion.CriteriaQuery=var1932, r2=var2877, $z0=var2779, java.lang.Object=var845, $r6=var540, $r8=var2402, java.util.Locale=var3569, $r7=var1890, $r9=var2368, org.hibernate.engine.spi.TypedValue=var2768, $r1=var1981, $r4=var161, $r5=var992}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.criterion.SimpleExpression;	r3 := @parameter0: org.hibernate.Criteria;	r2 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$z0 = r0.<org.hibernate.criterion.SimpleExpression: boolean ignoreCase>;	if $z0 == 0 goto $r9 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.Object value>;	$r6 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.Object value>;	$r8 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>();	$r7 = <java.util.Locale: java.util.Locale ROOT>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r7);	goto [?= $r1 = newarray (org.hibernate.engine.spi.TypedValue)[1]];	$r1 = newarray (org.hibernate.engine.spi.TypedValue)[1];	$r4 = r0.<org.hibernate.criterion.SimpleExpression: java.lang.String propertyName>;	$r5 = interfaceinvoke r2.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.TypedValue getTypedValue(org.hibernate.Criteria,java.lang.String,java.lang.Object)>(r3, $r4, $r9);	$r1[0] = $r5;	return $r1
;block_num 3