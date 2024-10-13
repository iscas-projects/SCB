(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3853 0)
(declare-sort var3801 0)
(declare-sort var1873 0)
(declare-sort var1323 0)
(declare-sort var3355 0)
(declare-sort var3385 0)
(declare-sort var1553 0)
(declare-sort var2241 0)
(declare-sort var384 0)
(declare-sort var1259 0)
(declare-sort var1680 0)
(declare-sort var1893 0)
(declare-sort var2134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1323!class ClassObject)
(declare-const var384!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getExpression/-1977772026 (var3853) var1873)
(declare-fun isInstance/451912363 (ClassObject var3355) Bool)
(declare-fun cast-from-var1873-to-var3355 (var1873) var3355)
(declare-fun cast-from-var1873-to-var1323 (var1873) var1323)
(declare-fun criteriaBuilder/1170171335 (var1553) var3385)
(declare-fun cast-from-var3853-to-var1553 (var3853) var1553)
(declare-fun getEntityManagerFactory/-1647005728 (var3385) var2241)
(declare-fun unwrap/203390488 (var2241 ClassObject) var3355)
(declare-fun cast-from-var3355-to-var384 (var3355) var384)
(declare-fun var384_getTypeResolver/-73977883 (var384) var1259)
(declare-fun getParameterType/922123897 (var1323) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun heuristicType/653904078 (var1259 String) var1680)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun render/-905610509 (var1323 var3801) String)
(declare-fun var1680_getName/-1292724027 (var1680) String)
(declare-fun getValues/1067036624 (var3853) var1893)
(declare-fun var1893_size/-959786421 (var1893) Int)
(declare-fun var1893_get/-1216255739 (var1893 Int) var3355)
(declare-fun cast-from-var3355-to-var2134 (var3355) var2134)
(declare-fun var2134_render/-1233042088 (var2134 var3801) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3853 var3853)
(declare-const null-Bool Bool)
(declare-const null-var3801 var3801)
(declare-const var3016 var3853) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.InPredicate 
(assert (not (= var3016 null-var3853)))
(declare-const var3644 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var3644 null-Bool)))
(declare-const var1453 var3801) ; Statement: r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1453 null-var3801)))
(define-const var2065 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2065)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2065!1 String)
(assert (= var2065!1 ""))
(assert true)
(define-const var2791 var1873 (getExpression/-1977772026 var3016)) ; Statement: r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: javax.persistence.criteria.Expression getExpression()>() 
(define-const var349 ClassObject var1323!class) ; Statement: $r3 = class "Lorg/hibernate/query/criteria/internal/expression/ParameterExpressionImpl;" 
(assert true)
(define-const var653 Bool (isInstance/451912363 var349 (cast-from-var1873-to-var3355 var2791))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Class: boolean isInstance(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: javax.persistence.criteria.Expression getExpression()>() 
(assert (not (= (ite var653 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var417 var1323 (cast-from-var1873-to-var1323 var2791)) ; Statement: r33 = (org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl) r2 
(assert true)
(define-const var937 var3385 (criteriaBuilder/1170171335 (cast-from-var3853-to-var1553 var3016))) ; Statement: $r21 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder()>() 
(assert true)
(define-const var3991 var2241 (getEntityManagerFactory/-1647005728 var937)) ; Statement: $r22 = virtualinvoke $r21.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>() 
(assert true)
(define-const var3436 var3355 (unwrap/203390488 var3991 var384!class)) ; Statement: $r23 = virtualinvoke $r22.<org.hibernate.internal.SessionFactoryImpl: java.lang.Object unwrap(java.lang.Class)>(class "Lorg/hibernate/engine/spi/SessionFactoryImplementor;") 
(define-const var3371 var384 (cast-from-var3355-to-var384 var3436)) ; Statement: r34 = (org.hibernate.engine.spi.SessionFactoryImplementor) $r23 
(define-const var1751 var1259 (var384_getTypeResolver/-73977883 var3371)) ; Statement: $r26 = interfaceinvoke r34.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.type.TypeResolver getTypeResolver()>() 
(assert true)
(define-const var3983 ClassObject (getParameterType/922123897 var417)) ; Statement: $r24 = virtualinvoke r33.<org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl: java.lang.Class getParameterType()>() 
(assert true)
(define-const var3484 String (getName/-1958580599 var3983)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2247 var1680 (heuristicType/653904078 var1751 var3484)) ; Statement: r35 = virtualinvoke $r26.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r25) 
(assert true)
(define-const var2882 String (append/672562846 var2065!1 "cast(")) ; Statement: $r28 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast(") 
(declare-const var2065!2 String)
(assert (= var2065!2 (str.++ var2065!1 "cast(")))
(assert true)
(define-const var2059 String (render/-905610509 var417 var1453)) ; Statement: $r27 = virtualinvoke r33.<org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5) 
(assert true)
(define-const var2101 String (append/672562846 var2882 var2059)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var2882!1 String)
(assert (= var2882!1 (str.++ var2882 var2059)))
(assert true)
(define-const var3066 String (append/672562846 var2101 " as ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var2101!1 String)
(assert (= var2101!1 (str.++ var2101 " as ")))
(define-const var2689 String (var1680_getName/-1292724027 var2247)) ; Statement: $r30 = interfaceinvoke r35.<org.hibernate.type.Type: java.lang.String getName()>() 
(assert true)
(define-const var3971 String (append/672562846 var3066 var2689)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var3066!1 String)
(assert (= var3066!1 (str.++ var3066 var2689)))
(assert true)
;(assert (append/672562846 var3971 ")")) ; Statement: virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3971!1 String)
(assert (= var3971!1 (str.++ var3971 ")")))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(assert (= (ite var3644 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (append/672562846 var2065!2 " in ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var2065!3 String)
(assert (= var2065!3 (str.++ var2065!2 " in ")))
(assert true)
(define-const var3072 var1893 (getValues/1067036624 var3016)) ; Statement: $r20 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: java.util.List getValues()>() 
(define-const var3504 Int (var1893_size/-959786421 var3072)) ; Statement: $i0 = interfaceinvoke $r20.<java.util.List: int size()>() 
 ; Statement: if $i0 != 1 goto $z6 = 0 
(assert (not (= var3504 1))) ; Cond: $i0 != 1 
(define-const var1664 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z6 == 0 goto $z2 = interfaceinvoke $r20.<java.util.List: boolean isEmpty()>() 
(assert (not (= (ite var1664 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var1996 var3355 (var1893_get/-1216255739 var3072 0)) ; Statement: $r15 = interfaceinvoke $r20.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2566 var2134 (cast-from-var3355-to-var2134 var1996)) ; Statement: $r16 = (org.hibernate.query.criteria.internal.Renderable) $r15 
(define-const var1877 String (var2134_render/-1233042088 var2566 var1453)) ; Statement: $r17 = interfaceinvoke $r16.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5) 
(assert true)
;(assert (append/672562846 var2065!3 var1877)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2065!4 String)
(assert (= var2065!4 (str.++ var2065!3 var1877)))
 ; Statement: goto [?= $r37 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1615 String (toString/-2075883882 var2065!4)) ; Statement: $r37 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getExpression/-1977772026=([org.hibernate.query.criteria.internal.predicate.InPredicate], javax.persistence.criteria.Expression), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var1873-to-var3355=([javax.persistence.criteria.Expression], java.lang.Object), cast-from-var1873-to-var1323=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl), criteriaBuilder/1170171335=([org.hibernate.query.criteria.internal.AbstractNode], org.hibernate.query.criteria.internal.CriteriaBuilderImpl), cast-from-var3853-to-var1553=([org.hibernate.query.criteria.internal.predicate.InPredicate], org.hibernate.query.criteria.internal.AbstractNode), getEntityManagerFactory/-1647005728=([org.hibernate.query.criteria.internal.CriteriaBuilderImpl], org.hibernate.internal.SessionFactoryImpl), unwrap/203390488=([org.hibernate.internal.SessionFactoryImpl, java.lang.Class], java.lang.Object), cast-from-var3355-to-var384=([java.lang.Object], org.hibernate.engine.spi.SessionFactoryImplementor), var384_getTypeResolver/-73977883=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.type.TypeResolver), getParameterType/922123897=([org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), heuristicType/653904078=([org.hibernate.type.TypeResolver, java.lang.String], org.hibernate.type.Type), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), render/-905610509=([org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), var1680_getName/-1292724027=([org.hibernate.type.Type], java.lang.String), getValues/1067036624=([org.hibernate.query.criteria.internal.predicate.InPredicate], java.util.List), var1893_size/-959786421=([java.util.List], int), var1893_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3355-to-var2134=([java.lang.Object], org.hibernate.query.criteria.internal.Renderable), var2134_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3853=org.hibernate.query.criteria.internal.predicate.InPredicate, var3016=r1, var3644=z1, var3801=org.hibernate.query.criteria.internal.compile.RenderingContext, var1453=r5, var2065=$r0, var1873=javax.persistence.criteria.Expression, var2791=r2, var1323=org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl, var349=$r3, var3355=java.lang.Object, var653=$z0, var417=r33, var3385=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var1553=org.hibernate.query.criteria.internal.AbstractNode, var937=$r21, var2241=org.hibernate.internal.SessionFactoryImpl, var3991=$r22, var384=org.hibernate.engine.spi.SessionFactoryImplementor, var3436=$r23, var3371=r34, var1259=org.hibernate.type.TypeResolver, var1751=$r26, var3983=$r24, var3484=$r25, var1680=org.hibernate.type.Type, var2247=r35, var2882=$r28, var2059=$r27, var2101=$r29, var3066=$r31, var2689=$r30, var3971=$r32, var1893=java.util.List, var3072=$r20, var3504=$i0, var1664=$z6, var1996=$r15, var2134=org.hibernate.query.criteria.internal.Renderable, var2566=$r16, var1877=$r17, var1615=$r37}
; {org.hibernate.query.criteria.internal.predicate.InPredicate=var3853, r1=var3016, z1=var3644, org.hibernate.query.criteria.internal.compile.RenderingContext=var3801, r5=var1453, $r0=var2065, javax.persistence.criteria.Expression=var1873, r2=var2791, org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl=var1323, $r3=var349, java.lang.Object=var3355, $z0=var653, r33=var417, org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var3385, org.hibernate.query.criteria.internal.AbstractNode=var1553, $r21=var937, org.hibernate.internal.SessionFactoryImpl=var2241, $r22=var3991, org.hibernate.engine.spi.SessionFactoryImplementor=var384, $r23=var3436, r34=var3371, org.hibernate.type.TypeResolver=var1259, $r26=var1751, $r24=var3983, $r25=var3484, org.hibernate.type.Type=var1680, r35=var2247, $r28=var2882, $r27=var2059, $r29=var2101, $r31=var3066, $r30=var2689, $r32=var3971, java.util.List=var1893, $r20=var3072, $i0=var3504, $z6=var1664, $r15=var1996, org.hibernate.query.criteria.internal.Renderable=var2134, $r16=var2566, $r17=var1877, $r37=var1615}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.InPredicate;	z1 := @parameter0: boolean;	r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: javax.persistence.criteria.Expression getExpression()>();	$r3 = class "Lorg/hibernate/query/criteria/internal/expression/ParameterExpressionImpl;";	$z0 = virtualinvoke $r3.<java.lang.Class: boolean isInstance(java.lang.Object)>(r2);	if $z0 == 0 goto $r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: javax.persistence.criteria.Expression getExpression()>();	r33 = (org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl) r2;	$r21 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder()>();	$r22 = virtualinvoke $r21.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>();	$r23 = virtualinvoke $r22.<org.hibernate.internal.SessionFactoryImpl: java.lang.Object unwrap(java.lang.Class)>(class "Lorg/hibernate/engine/spi/SessionFactoryImplementor;");	r34 = (org.hibernate.engine.spi.SessionFactoryImplementor) $r23;	$r26 = interfaceinvoke r34.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.type.TypeResolver getTypeResolver()>();	$r24 = virtualinvoke r33.<org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl: java.lang.Class getParameterType()>();	$r25 = virtualinvoke $r24.<java.lang.Class: java.lang.String getName()>();	r35 = virtualinvoke $r26.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r25);	$r28 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast(");	$r27 = virtualinvoke r33.<org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r30 = interfaceinvoke r35.<org.hibernate.type.Type: java.lang.String getName()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	goto [?= (branch)];	if z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	$r20 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: java.util.List getValues()>();	$i0 = interfaceinvoke $r20.<java.util.List: int size()>();	if $i0 != 1 goto $z6 = 0;	$z6 = 0;	if $z6 == 0 goto $z2 = interfaceinvoke $r20.<java.util.List: boolean isEmpty()>();	$r15 = interfaceinvoke $r20.<java.util.List: java.lang.Object get(int)>(0);	$r16 = (org.hibernate.query.criteria.internal.Renderable) $r15;	$r17 = interfaceinvoke $r16.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	goto [?= $r37 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r37 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r37
;block_num 8