(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2183 0)
(declare-sort var1468 0)
(declare-sort var3692 0)
(declare-sort var2195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getExpression/-561013851 (var2183) var3692)
(declare-fun cast-from-var3692-to-var2195 (var3692) var2195)
(declare-fun var2195_render/-1233042088 (var2195 var1468) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLowerBound/-1348812512 (var2183) var3692)
(declare-fun getUpperBound/128368065 (var2183) var3692)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2183 var2183)
(declare-const null-Bool Bool)
(declare-const null-var1468 var1468)
(declare-const var1019 var2183) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.BetweenPredicate 
(assert (not (= var1019 null-var2183)))
(declare-const var1327 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1327 null-Bool)))
(declare-const var243 var1468) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var243 null-var1468)))
 ; Statement: if z0 == 0 goto $r18 = " between " 
(assert (not (= (ite var1327 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1691 String " not between ") ; Statement: $r18 = " not between " 
 ; Statement: goto [?= $r0 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3721 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3721)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3721!1 String)
(assert (= var3721!1 ""))
(assert true)
(define-const var2505 var3692 (getExpression/-561013851 var1019)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getExpression()>() 
(define-const var580 var2195 (cast-from-var3692-to-var2195 var2505)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var2529 String (var2195_render/-1233042088 var580 var243)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var2750 String (append/672562846 var3721!1 var2529)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3721!2 String)
(assert (= var3721!2 (str.++ var3721!1 var2529)))
(assert true)
(define-const var2470 String (append/672562846 var2750 var1691)) ; Statement: $r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2750!1 String)
(assert (= var2750!1 (str.++ var2750 var1691)))
(assert true)
(define-const var3960 var3692 (getLowerBound/-1348812512 var1019)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getLowerBound()>() 
(define-const var2518 var2195 (cast-from-var3692-to-var2195 var3960)) ; Statement: $r8 = (org.hibernate.query.criteria.internal.Renderable) $r7 
(define-const var407 String (var2195_render/-1233042088 var2518 var243)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var1673 String (append/672562846 var2470 var407)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2470!1 String)
(assert (= var2470!1 (str.++ var2470 var407)))
(assert true)
(define-const var3247 String (append/672562846 var1673 " and ")) ; Statement: $r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var1673!1 String)
(assert (= var1673!1 (str.++ var1673 " and ")))
(assert true)
(define-const var2941 var3692 (getUpperBound/128368065 var1019)) ; Statement: $r12 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getUpperBound()>() 
(define-const var629 var2195 (cast-from-var3692-to-var2195 var2941)) ; Statement: $r13 = (org.hibernate.query.criteria.internal.Renderable) $r12 
(define-const var2070 String (var2195_render/-1233042088 var629 var243)) ; Statement: $r14 = interfaceinvoke $r13.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var1430 String (append/672562846 var3247 var2070)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3247!1 String)
(assert (= var3247!1 (str.++ var3247 var2070)))
(assert true)
(define-const var627 String (toString/-2075883882 var1430)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getExpression/-561013851=([org.hibernate.query.criteria.internal.predicate.BetweenPredicate], javax.persistence.criteria.Expression), cast-from-var3692-to-var2195=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var2195_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLowerBound/-1348812512=([org.hibernate.query.criteria.internal.predicate.BetweenPredicate], javax.persistence.criteria.Expression), getUpperBound/128368065=([org.hibernate.query.criteria.internal.predicate.BetweenPredicate], javax.persistence.criteria.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2183=org.hibernate.query.criteria.internal.predicate.BetweenPredicate, var1019=r1, var1327=z0, var1468=org.hibernate.query.criteria.internal.compile.RenderingContext, var243=r3, var1691=$r18, var3721=$r0, var3692=javax.persistence.criteria.Expression, var2505=$r2, var2195=org.hibernate.query.criteria.internal.Renderable, var580=$r4, var2529=$r5, var2750=$r6, var2470=$r10, var3960=$r7, var2518=$r8, var407=$r9, var1673=$r11, var3247=$r15, var2941=$r12, var629=$r13, var2070=$r14, var1430=$r16, var627=$r17}
; {org.hibernate.query.criteria.internal.predicate.BetweenPredicate=var2183, r1=var1019, z0=var1327, org.hibernate.query.criteria.internal.compile.RenderingContext=var1468, r3=var243, $r18=var1691, $r0=var3721, javax.persistence.criteria.Expression=var3692, $r2=var2505, org.hibernate.query.criteria.internal.Renderable=var2195, $r4=var580, $r5=var2529, $r6=var2750, $r10=var2470, $r7=var3960, $r8=var2518, $r9=var407, $r11=var1673, $r15=var3247, $r12=var2941, $r13=var629, $r14=var2070, $r16=var1430, $r17=var627}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.BetweenPredicate;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	if z0 == 0 goto $r18 = " between ";	$r18 = " not between ";	goto [?= $r0 = new java.lang.StringBuilder];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getExpression()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r7 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getLowerBound()>();	$r8 = (org.hibernate.query.criteria.internal.Renderable) $r7;	$r9 = interfaceinvoke $r8.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r12 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getUpperBound()>();	$r13 = (org.hibernate.query.criteria.internal.Renderable) $r12;	$r14 = interfaceinvoke $r13.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 3