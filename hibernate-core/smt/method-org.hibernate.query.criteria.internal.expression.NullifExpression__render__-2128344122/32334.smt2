(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2603 0)
(declare-sort var616 0)
(declare-sort var2807 0)
(declare-sort var2204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPrimaryExpression/730749963 (var2603) var2807)
(declare-fun cast-from-var2807-to-var2204 (var2807) var2204)
(declare-fun var2204_render/-1233042088 (var2204 var616) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getSecondaryExpression/175568857 (var2603) var2807)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2603 var2603)
(declare-const null-var616 var616)
(declare-const var3530 var2603) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.NullifExpression 
(assert (not (= var3530 null-var2603)))
(declare-const var3150 var616) ; Statement: r3 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3150 null-var616)))
(define-const var2335 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2335)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2335!1 String)
(assert (= var2335!1 ""))
(assert true)
(define-const var753 String (append/672562846 var2335!1 "nullif(")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(") 
(declare-const var2335!2 String)
(assert (= var2335!2 (str.++ var2335!1 "nullif(")))
(assert true)
(define-const var1546 var2807 (getPrimaryExpression/730749963 var3530)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.NullifExpression: javax.persistence.criteria.Expression getPrimaryExpression()>() 
(define-const var3862 var2204 (cast-from-var2807-to-var2204 var1546)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var89 String (var2204_render/-1233042088 var3862 var3150)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var2827 String (append/672562846 var753 var89)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var753!1 String)
(assert (= var753!1 (str.++ var753 var89)))
(assert true)
(define-const var764 String (append/-1166366385 var2827 44)) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var2827!1 String)
(assert (str.prefixof var2827 var2827!1))
(assert true)
(define-const var1422 var2807 (getSecondaryExpression/175568857 var3530)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.NullifExpression: javax.persistence.criteria.Expression getSecondaryExpression()>() 
(define-const var1467 var2204 (cast-from-var2807-to-var2204 var1422)) ; Statement: $r9 = (org.hibernate.query.criteria.internal.Renderable) $r8 
(define-const var2743 String (var2204_render/-1233042088 var1467 var3150)) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var528 String (append/672562846 var764 var2743)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var764!1 String)
(assert (= var764!1 (str.++ var764 var2743)))
(assert true)
(define-const var2776 String (append/672562846 var528 ")")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var528!1 String)
(assert (= var528!1 (str.++ var528 ")")))
(assert true)
(define-const var701 String (toString/-2075883882 var2776)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPrimaryExpression/730749963=([org.hibernate.query.criteria.internal.expression.NullifExpression], javax.persistence.criteria.Expression), cast-from-var2807-to-var2204=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var2204_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getSecondaryExpression/175568857=([org.hibernate.query.criteria.internal.expression.NullifExpression], javax.persistence.criteria.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2603=org.hibernate.query.criteria.internal.expression.NullifExpression, var3530=r1, var616=org.hibernate.query.criteria.internal.compile.RenderingContext, var3150=r3, var2335=$r0, var753=$r6, var2807=javax.persistence.criteria.Expression, var1546=$r2, var2204=org.hibernate.query.criteria.internal.Renderable, var3862=$r4, var89=$r5, var2827=$r7, var764=$r11, var1422=$r8, var1467=$r9, var2743=$r10, var528=$r12, var2776=$r13, var701=$r14}
; {org.hibernate.query.criteria.internal.expression.NullifExpression=var2603, r1=var3530, org.hibernate.query.criteria.internal.compile.RenderingContext=var616, r3=var3150, $r0=var2335, $r6=var753, javax.persistence.criteria.Expression=var2807, $r2=var1546, org.hibernate.query.criteria.internal.Renderable=var2204, $r4=var3862, $r5=var89, $r7=var2827, $r11=var764, $r8=var1422, $r9=var1467, $r10=var2743, $r12=var528, $r13=var2776, $r14=var701}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.NullifExpression;	r3 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(");	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.NullifExpression: javax.persistence.criteria.Expression getPrimaryExpression()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.NullifExpression: javax.persistence.criteria.Expression getSecondaryExpression()>();	$r9 = (org.hibernate.query.criteria.internal.Renderable) $r8;	$r10 = interfaceinvoke $r9.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1