(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2229 0)
(declare-sort var2180 0)
(declare-sort var213 0)
(declare-sort var3459 0)
(declare-sort var1214 0)
(declare-sort var2773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/19152 (var2229) String)
(declare-fun var213_findColumns/-631918876 (var213 String var2180) (Array Int String))
(declare-fun var213_getFactory/960862227 (var213) var3459)
(declare-fun var3459_getDialect/549556505 (var3459) var1214)
(declare-fun supportsRowValueConstructorSyntaxInInList/-2052866003 (var1214) Bool)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun values/19152 (var2229) (Array Int var2773))
(declare-fun getLength-Arr-var2773-1 ((Array Int var2773)) Int)
(declare-const null-var2229 var2229)
(declare-const null-var2180 var2180)
(declare-const null-var213 var213)
(declare-const var3699 var2229) ; Statement: r1 := @this: org.hibernate.criterion.InExpression 
(assert (not (= var3699 null-var2229)))
(declare-const var2891 var2180) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var2891 null-var2180)))
(declare-const var1325 var213) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var1325 null-var213)))
(define-const var2070 String (propertyName/19152 var3699)) ; Statement: $r3 = r1.<org.hibernate.criterion.InExpression: java.lang.String propertyName> 
(define-const var2083 (Array Int String) (var213_findColumns/-631918876 var1325 var2070 var2891)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2) 
(define-const var2634 var3459 (var213_getFactory/960862227 var1325)) ; Statement: $r5 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var220 var1214 (var3459_getDialect/549556505 var2634)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var1216 Bool (supportsRowValueConstructorSyntaxInInList/-2052866003 var220)) ; Statement: $z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>() 
 ; Statement: if $z0 != 0 goto $r7 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1216 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1943 Int (getLength-Arr-String-1 var2083)) ; Statement: $i6 = lengthof r4 
 ; Statement: if $i6 > 1 goto $r36 = new java.lang.StringBuilder 
(assert (> var1943 1)) ; Cond: $i6 > 1 
(define-const var3238 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3238)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3238!1 String)
(assert (= var3238!1 ""))
(assert true)
(define-const var3791 String (append/672562846 var3238!1 " ( ")) ; Statement: $r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ( ") 
(declare-const var3238!2 String)
(assert (= var3238!2 (str.++ var3238!1 " ( ")))
(define-const var1108 String (String_join/-1520935655 (cast-from-String-to-String " = ? and ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2083))) ; Statement: $r37 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" = ? and ", r4) 
(assert true)
(define-const var35 String (append/672562846 var3791 var1108)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37) 
(declare-const var3791!1 String)
(assert (= var3791!1 (str.++ var3791 var1108)))
(assert true)
(define-const var2870 String (append/672562846 var35 "= ? ) ")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("= ? ) ") 
(declare-const var35!1 String)
(assert (= var35!1 (str.++ var35 "= ? ) ")))
(assert true)
(define-const var3983 String (toString/-2075883882 var2870)) ; Statement: r61 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2768 (Array Int var2773) (values/19152 var3699)) ; Statement: $r41 = r1.<org.hibernate.criterion.InExpression: java.lang.Object[] values> 
(define-const var1814 Int (getLength-Arr-var2773-1 var2768)) ; Statement: $i7 = lengthof $r41 
 ; Statement: if $i7 <= 0 goto $r62 = "" 
(assert (<= var1814 0)) ; Cond: $i7 <= 0 
(define-const var2947 String "") ; Statement: $r62 = "" 
(assert true) ; Non Conditional
(define-const var2166 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2166)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2166!1 String)
(assert (= var2166!1 ""))
(assert true)
(define-const var9 String (append/672562846 var2166!1 " ( ")) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ( ") 
(declare-const var2166!2 String)
(assert (= var2166!2 (str.++ var2166!1 " ( ")))
(assert true)
(define-const var1110 String (append/672562846 var9 var2947)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62) 
(declare-const var9!1 String)
(assert (= var9!1 (str.++ var9 var2947)))
(assert true)
(define-const var1890 String (append/672562846 var1110 " ) ")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) ") 
(declare-const var1110!1 String)
(assert (= var1110!1 (str.++ var1110 " ) ")))
(assert true)
(define-const var1131 String (toString/-2075883882 var1890)) ; Statement: $r55 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/19152=([org.hibernate.criterion.InExpression], java.lang.String), var213_findColumns/-631918876=([org.hibernate.criterion.CriteriaQuery, java.lang.String, org.hibernate.Criteria], java.lang.String[]), var213_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), var3459_getDialect/549556505=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.dialect.Dialect), supportsRowValueConstructorSyntaxInInList/-2052866003=([org.hibernate.dialect.Dialect], boolean), getLength-Arr-String-1=([java.lang.String[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), values/19152=([org.hibernate.criterion.InExpression], java.lang.Object[]), getLength-Arr-var2773-1=([java.lang.Object[]], int)}
; {var2229=org.hibernate.criterion.InExpression, var3699=r1, var2180=org.hibernate.Criteria, var2891=r2, var213=org.hibernate.criterion.CriteriaQuery, var1325=r0, var2070=$r3, var2083=r4, var3459=org.hibernate.engine.spi.SessionFactoryImplementor, var2634=$r5, var1214=org.hibernate.dialect.Dialect, var220=r6, var1216=$z0, var1943=$i6, var3238=$r36, var3791=$r38, var1108=$r37, var35=$r39, var2870=$r40, var3983=r61, var2773=java.lang.Object, var2768=$r41, var1814=$i7, var2947=$r62, var2166=$r42, var9=$r43, var1110=$r44, var1890=$r45, var1131=$r55}
; {org.hibernate.criterion.InExpression=var2229, r1=var3699, org.hibernate.Criteria=var2180, r2=var2891, org.hibernate.criterion.CriteriaQuery=var213, r0=var1325, $r3=var2070, r4=var2083, org.hibernate.engine.spi.SessionFactoryImplementor=var3459, $r5=var2634, org.hibernate.dialect.Dialect=var1214, r6=var220, $z0=var1216, $i6=var1943, $r36=var3238, $r38=var3791, $r37=var1108, $r39=var35, $r40=var2870, r61=var3983, java.lang.Object=var2773, $r41=var2768, $i7=var1814, $r62=var2947, $r42=var2166, $r43=var9, $r44=var1110, $r45=var1890, $r55=var1131}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.hibernate.criterion.InExpression;	r2 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r1.<org.hibernate.criterion.InExpression: java.lang.String propertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2);	$r5 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	r6 = interfaceinvoke $r5.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>();	$z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>();	if $z0 != 0 goto $r7 = new java.lang.StringBuilder;	$i6 = lengthof r4;	if $i6 > 1 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ( ");	$r37 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" = ? and ", r4);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("= ? ) ");	r61 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = r1.<org.hibernate.criterion.InExpression: java.lang.Object[] values>;	$i7 = lengthof $r41;	if $i7 <= 0 goto $r62 = "";	$r62 = "";	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ( ");	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62);	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) ");	$r55 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	return $r55
;block_num 5