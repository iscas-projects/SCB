(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2185 0)
(declare-sort var565 0)
(declare-sort var3823 0)
(declare-sort var1700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getExpression/-561013851 (var2185) var3823)
(declare-fun cast-from-var3823-to-var1700 (var3823) var1700)
(declare-fun var1700_render/-1233042088 (var1700 var565) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLowerBound/-1348812512 (var2185) var3823)
(declare-fun getUpperBound/128368065 (var2185) var3823)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2185 var2185)
(declare-const null-Bool Bool)
(declare-const null-var565 var565)
(declare-const var2323 var2185) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.BetweenPredicate 
(assert (not (= var2323 null-var2185)))
(declare-const var2203 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2203 null-Bool)))
(declare-const var1854 var565) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1854 null-var565)))
 ; Statement: if z0 == 0 goto $r18 = " between " 
(assert (= (ite var2203 1 0) 0)) ; Cond: z0 == 0 
(define-const var177 String " between ") ; Statement: $r18 = " between " 
(assert true) ; Non Conditional
(define-const var222 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var222)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var222!1 String)
(assert (= var222!1 ""))
(assert true)
(define-const var3204 var3823 (getExpression/-561013851 var2323)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getExpression()>() 
(define-const var252 var1700 (cast-from-var3823-to-var1700 var3204)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var2940 String (var1700_render/-1233042088 var252 var1854)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var922 String (append/672562846 var222!1 var2940)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var222!2 String)
(assert (= var222!2 (str.++ var222!1 var2940)))
(assert true)
(define-const var3903 String (append/672562846 var922 var177)) ; Statement: $r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var922!1 String)
(assert (= var922!1 (str.++ var922 var177)))
(assert true)
(define-const var71 var3823 (getLowerBound/-1348812512 var2323)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getLowerBound()>() 
(define-const var3979 var1700 (cast-from-var3823-to-var1700 var71)) ; Statement: $r8 = (org.hibernate.query.criteria.internal.Renderable) $r7 
(define-const var554 String (var1700_render/-1233042088 var3979 var1854)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var970 String (append/672562846 var3903 var554)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3903!1 String)
(assert (= var3903!1 (str.++ var3903 var554)))
(assert true)
(define-const var806 String (append/672562846 var970 " and ")) ; Statement: $r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var970!1 String)
(assert (= var970!1 (str.++ var970 " and ")))
(assert true)
(define-const var45 var3823 (getUpperBound/128368065 var2323)) ; Statement: $r12 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getUpperBound()>() 
(define-const var507 var1700 (cast-from-var3823-to-var1700 var45)) ; Statement: $r13 = (org.hibernate.query.criteria.internal.Renderable) $r12 
(define-const var944 String (var1700_render/-1233042088 var507 var1854)) ; Statement: $r14 = interfaceinvoke $r13.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var3040 String (append/672562846 var806 var944)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var806!1 String)
(assert (= var806!1 (str.++ var806 var944)))
(assert true)
(define-const var2220 String (toString/-2075883882 var3040)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getExpression/-561013851=([org.hibernate.query.criteria.internal.predicate.BetweenPredicate], javax.persistence.criteria.Expression), cast-from-var3823-to-var1700=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var1700_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLowerBound/-1348812512=([org.hibernate.query.criteria.internal.predicate.BetweenPredicate], javax.persistence.criteria.Expression), getUpperBound/128368065=([org.hibernate.query.criteria.internal.predicate.BetweenPredicate], javax.persistence.criteria.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2185=org.hibernate.query.criteria.internal.predicate.BetweenPredicate, var2323=r1, var2203=z0, var565=org.hibernate.query.criteria.internal.compile.RenderingContext, var1854=r3, var177=$r18, var222=$r0, var3823=javax.persistence.criteria.Expression, var3204=$r2, var1700=org.hibernate.query.criteria.internal.Renderable, var252=$r4, var2940=$r5, var922=$r6, var3903=$r10, var71=$r7, var3979=$r8, var554=$r9, var970=$r11, var806=$r15, var45=$r12, var507=$r13, var944=$r14, var3040=$r16, var2220=$r17}
; {org.hibernate.query.criteria.internal.predicate.BetweenPredicate=var2185, r1=var2323, z0=var2203, org.hibernate.query.criteria.internal.compile.RenderingContext=var565, r3=var1854, $r18=var177, $r0=var222, javax.persistence.criteria.Expression=var3823, $r2=var3204, org.hibernate.query.criteria.internal.Renderable=var1700, $r4=var252, $r5=var2940, $r6=var922, $r10=var3903, $r7=var71, $r8=var3979, $r9=var554, $r11=var970, $r15=var806, $r12=var45, $r13=var507, $r14=var944, $r16=var3040, $r17=var2220}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.BetweenPredicate;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	if z0 == 0 goto $r18 = " between ";	$r18 = " between ";	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getExpression()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r7 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getLowerBound()>();	$r8 = (org.hibernate.query.criteria.internal.Renderable) $r7;	$r9 = interfaceinvoke $r8.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r12 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.BetweenPredicate: javax.persistence.criteria.Expression getUpperBound()>();	$r13 = (org.hibernate.query.criteria.internal.Renderable) $r12;	$r14 = interfaceinvoke $r13.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 3