(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1089 0)
(declare-sort var1446 0)
(declare-sort var469 0)
(declare-sort var2328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLiteral/-840472168 (var1089) var469)
(declare-fun getJavaType/565869263 (var2328) ClassObject)
(declare-fun cast-from-var1089-to-var2328 (var1089) var2328)
(declare-fun var1446_registerLiteralParameterBinding/696092621 (var1446 var469 ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1089 var1089)
(declare-const null-var1446 var1446)
(declare-const var3212 var1089) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.LiteralExpression 
(assert (not (= var3212 null-var1089)))
(declare-const var3879 var1446) ; Statement: r0 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3879 null-var1446)))
(assert true)
(define-const var456 var469 (getLiteral/-840472168 var3212)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.LiteralExpression: java.lang.Object getLiteral()>() 
(assert true)
(define-const var634 ClassObject (getJavaType/565869263 (cast-from-var1089-to-var2328 var3212))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.LiteralExpression: java.lang.Class getJavaType()>() 
(define-const var2013 String (var1446_registerLiteralParameterBinding/696092621 var3879 var456 var634)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: java.lang.String registerLiteralParameterBinding(java.lang.Object,java.lang.Class)>($r3, $r2) 
(define-const var2450 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2450)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2450!1 String)
(assert (= var2450!1 ""))
(assert true)
(define-const var1433 String (append/-1166366385 var2450!1 58)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2450!2 String)
(assert (str.prefixof var2450!1 var2450!2))
(assert true)
(define-const var2850 String (append/672562846 var1433 var2013)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1433!1 String)
(assert (= var1433!1 (str.++ var1433 var2013)))
(assert true)
(define-const var561 String (toString/-2075883882 var2850)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getLiteral/-840472168=([org.hibernate.query.criteria.internal.expression.LiteralExpression], java.lang.Object), getJavaType/565869263=([org.hibernate.query.criteria.internal.expression.AbstractTupleElement], java.lang.Class), cast-from-var1089-to-var2328=([org.hibernate.query.criteria.internal.expression.LiteralExpression], org.hibernate.query.criteria.internal.expression.AbstractTupleElement), var1446_registerLiteralParameterBinding/696092621=([org.hibernate.query.criteria.internal.compile.RenderingContext, java.lang.Object, java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1089=org.hibernate.query.criteria.internal.expression.LiteralExpression, var3212=r1, var1446=org.hibernate.query.criteria.internal.compile.RenderingContext, var3879=r0, var469=java.lang.Object, var456=$r3, var2328=org.hibernate.query.criteria.internal.expression.AbstractTupleElement, var634=$r2, var2013=r4, var2450=$r5, var1433=$r6, var2850=$r7, var561=$r8}
; {org.hibernate.query.criteria.internal.expression.LiteralExpression=var1089, r1=var3212, org.hibernate.query.criteria.internal.compile.RenderingContext=var1446, r0=var3879, java.lang.Object=var469, $r3=var456, org.hibernate.query.criteria.internal.expression.AbstractTupleElement=var2328, $r2=var634, r4=var2013, $r5=var2450, $r6=var1433, $r7=var2850, $r8=var561}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.LiteralExpression;	r0 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.LiteralExpression: java.lang.Object getLiteral()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.LiteralExpression: java.lang.Class getJavaType()>();	r4 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: java.lang.String registerLiteralParameterBinding(java.lang.Object,java.lang.Class)>($r3, $r2);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1