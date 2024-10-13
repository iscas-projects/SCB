(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var918 0)
(declare-sort var3759 0)
(declare-sort var174 0)
(declare-sort var1693 0)
(declare-sort var382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLeftHandOperand/-287235859 (var918) var174)
(declare-fun cast-from-var174-to-var1693 (var174) var1693)
(declare-fun var1693_render/-1233042088 (var1693 var3759) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getComparisonOperator/1882394739 (var918 Bool) var382)
(declare-fun rendered/-1216182761 (var382) String)
(declare-fun getRightHandOperand/1648535580 (var918) var174)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var918 var918)
(declare-const null-Bool Bool)
(declare-const null-var3759 var3759)
(declare-const var761 var918) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.ComparisonPredicate 
(assert (not (= var761 null-var918)))
(declare-const var516 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var516 null-Bool)))
(declare-const var2199 var3759) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2199 null-var3759)))
(define-const var316 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var316)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var316!1 String)
(assert (= var316!1 ""))
(assert true)
(define-const var3597 var174 (getLeftHandOperand/-287235859 var761)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ComparisonPredicate: javax.persistence.criteria.Expression getLeftHandOperand()>() 
(define-const var1842 var1693 (cast-from-var174-to-var1693 var3597)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var3657 String (var1693_render/-1233042088 var1842 var2199)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var2529 String (append/672562846 var316!1 var3657)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var316!2 String)
(assert (= var316!2 (str.++ var316!1 var3657)))
(assert true)
(define-const var3367 var382 (getComparisonOperator/1882394739 var761 var516)) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ComparisonPredicate: org.hibernate.query.criteria.internal.predicate.ComparisonPredicate$ComparisonOperator getComparisonOperator(boolean)>(z0) 
(assert true)
(define-const var271 String (rendered/-1216182761 var3367)) ; Statement: $r7 = virtualinvoke $r6.<org.hibernate.query.criteria.internal.predicate.ComparisonPredicate$ComparisonOperator: java.lang.String rendered()>() 
(assert true)
(define-const var326 String (append/672562846 var2529 var271)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2529!1 String)
(assert (= var2529!1 (str.++ var2529 var271)))
(assert true)
(define-const var1166 var174 (getRightHandOperand/1648535580 var761)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ComparisonPredicate: javax.persistence.criteria.Expression getRightHandOperand()>() 
(define-const var741 var1693 (cast-from-var174-to-var1693 var1166)) ; Statement: $r10 = (org.hibernate.query.criteria.internal.Renderable) $r9 
(define-const var387 String (var1693_render/-1233042088 var741 var2199)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var2203 String (append/672562846 var326 var387)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var326!1 String)
(assert (= var326!1 (str.++ var326 var387)))
(assert true)
(define-const var1582 String (toString/-2075883882 var2203)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLeftHandOperand/-287235859=([org.hibernate.query.criteria.internal.predicate.ComparisonPredicate], javax.persistence.criteria.Expression), cast-from-var174-to-var1693=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var1693_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getComparisonOperator/1882394739=([org.hibernate.query.criteria.internal.predicate.ComparisonPredicate, boolean], org.hibernate.query.criteria.internal.predicate.ComparisonPredicate$ComparisonOperator), rendered/-1216182761=([org.hibernate.query.criteria.internal.predicate.ComparisonPredicate$ComparisonOperator], java.lang.String), getRightHandOperand/1648535580=([org.hibernate.query.criteria.internal.predicate.ComparisonPredicate], javax.persistence.criteria.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var918=org.hibernate.query.criteria.internal.predicate.ComparisonPredicate, var761=r1, var516=z0, var3759=org.hibernate.query.criteria.internal.compile.RenderingContext, var2199=r3, var316=$r0, var174=javax.persistence.criteria.Expression, var3597=$r2, var1693=org.hibernate.query.criteria.internal.Renderable, var1842=$r4, var3657=$r5, var2529=$r8, var382=org.hibernate.query.criteria.internal.predicate.ComparisonPredicate$ComparisonOperator, var3367=$r6, var271=$r7, var326=$r12, var1166=$r9, var741=$r10, var387=$r11, var2203=$r13, var1582=$r14}
; {org.hibernate.query.criteria.internal.predicate.ComparisonPredicate=var918, r1=var761, z0=var516, org.hibernate.query.criteria.internal.compile.RenderingContext=var3759, r3=var2199, $r0=var316, javax.persistence.criteria.Expression=var174, $r2=var3597, org.hibernate.query.criteria.internal.Renderable=var1693, $r4=var1842, $r5=var3657, $r8=var2529, org.hibernate.query.criteria.internal.predicate.ComparisonPredicate$ComparisonOperator=var382, $r6=var3367, $r7=var271, $r12=var326, $r9=var1166, $r10=var741, $r11=var387, $r13=var2203, $r14=var1582}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.ComparisonPredicate;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ComparisonPredicate: javax.persistence.criteria.Expression getLeftHandOperand()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ComparisonPredicate: org.hibernate.query.criteria.internal.predicate.ComparisonPredicate$ComparisonOperator getComparisonOperator(boolean)>(z0);	$r7 = virtualinvoke $r6.<org.hibernate.query.criteria.internal.predicate.ComparisonPredicate$ComparisonOperator: java.lang.String rendered()>();	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ComparisonPredicate: javax.persistence.criteria.Expression getRightHandOperand()>();	$r10 = (org.hibernate.query.criteria.internal.Renderable) $r9;	$r11 = interfaceinvoke $r10.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1