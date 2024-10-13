(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3686 0)
(declare-sort var2926 0)
(declare-sort var2580 0)
(declare-sort var1524 0)
(declare-sort var1847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getModifier/-704784533 (var3686) var2580)
(declare-fun rendered/-2142606142 (var2580) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSubquery/89514497 (var3686) var1524)
(declare-fun cast-from-var1524-to-var1847 (var1524) var1847)
(declare-fun var1847_render/-1233042088 (var1847 var2926) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3686 var3686)
(declare-const null-var2926 var2926)
(declare-const var245 var3686) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression 
(assert (not (= var245 null-var3686)))
(declare-const var2595 var2926) ; Statement: r5 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2595 null-var2926)))
(define-const var2852 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2852)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2852!1 String)
(assert (= var2852!1 ""))
(assert true)
(define-const var1305 var2580 (getModifier/-704784533 var245)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression: org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression$Modifier getModifier()>() 
(assert true)
(define-const var2070 String (rendered/-2142606142 var1305)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression$Modifier: java.lang.String rendered()>() 
(assert true)
(define-const var2489 String (append/672562846 var2852!1 var2070)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2852!2 String)
(assert (= var2852!2 (str.++ var2852!1 var2070)))
(assert true)
(define-const var1670 var1524 (getSubquery/89514497 var245)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression: javax.persistence.criteria.Subquery getSubquery()>() 
(define-const var180 var1847 (cast-from-var1524-to-var1847 var1670)) ; Statement: $r6 = (org.hibernate.query.criteria.internal.Renderable) $r4 
(define-const var2750 String (var1847_render/-1233042088 var180 var2595)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5) 
(assert true)
(define-const var3683 String (append/672562846 var2489 var2750)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2489!1 String)
(assert (= var2489!1 (str.++ var2489 var2750)))
(assert true)
(define-const var732 String (toString/-2075883882 var3683)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getModifier/-704784533=([org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression], org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression$Modifier), rendered/-2142606142=([org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression$Modifier], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSubquery/89514497=([org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression], javax.persistence.criteria.Subquery), cast-from-var1524-to-var1847=([javax.persistence.criteria.Subquery], org.hibernate.query.criteria.internal.Renderable), var1847_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3686=org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression, var245=r1, var2926=org.hibernate.query.criteria.internal.compile.RenderingContext, var2595=r5, var2852=$r0, var2580=org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression$Modifier, var1305=$r2, var2070=$r3, var2489=$r8, var1524=javax.persistence.criteria.Subquery, var1670=$r4, var1847=org.hibernate.query.criteria.internal.Renderable, var180=$r6, var2750=$r7, var3683=$r9, var732=$r10}
; {org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression=var3686, r1=var245, org.hibernate.query.criteria.internal.compile.RenderingContext=var2926, r5=var2595, $r0=var2852, org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression$Modifier=var2580, $r2=var1305, $r3=var2070, $r8=var2489, javax.persistence.criteria.Subquery=var1524, $r4=var1670, org.hibernate.query.criteria.internal.Renderable=var1847, $r6=var180, $r7=var2750, $r9=var3683, $r10=var732}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression;	r5 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression: org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression$Modifier getModifier()>();	$r3 = virtualinvoke $r2.<org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression$Modifier: java.lang.String rendered()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SubqueryComparisonModifierExpression: javax.persistence.criteria.Subquery getSubquery()>();	$r6 = (org.hibernate.query.criteria.internal.Renderable) $r4;	$r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1