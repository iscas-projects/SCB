(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var184 0)
(declare-sort var367 0)
(declare-sort var3501 0)
(declare-sort var2235 0)
(declare-sort var610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getBooleanExpression/-581374944 (var184) var3501)
(declare-fun cast-from-var3501-to-var2235 (var3501) var2235)
(declare-fun var2235_render/-1233042088 (var2235 var367) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTruthValue/976638371 (var184) var610)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var184 var184)
(declare-const null-Bool Bool)
(declare-const null-var367 var367)
(declare-const var610-TRUE var610)
(declare-const var1976 var184) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck 
(assert (not (= var1976 null-var184)))
(declare-const var734 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var734 null-Bool)))
(declare-const var3503 var367) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3503 null-var367)))
(define-const var593 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var593)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var593!1 String)
(assert (= var593!1 ""))
(assert true)
(define-const var3245 var3501 (getBooleanExpression/-581374944 var1976)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: javax.persistence.criteria.Expression getBooleanExpression()>() 
(define-const var3826 var2235 (cast-from-var3501-to-var2235 var3245)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var1911 String (var2235_render/-1233042088 var3826 var3503)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var1384 String (append/672562846 var593!1 var1911)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var593!2 String)
(assert (= var593!2 (str.++ var593!1 var1911)))
 ; Statement: if z0 == 0 goto $r12 = " = " 
(assert (not (= (ite var734 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var494 String " <> ") ; Statement: $r12 = " <> " 
 ; Statement: goto [?= $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3101 String (append/672562846 var1384 var494)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1384!1 String)
(assert (= var1384!1 (str.++ var1384 var494)))
(assert true)
(define-const var1590 var610 (getTruthValue/976638371 var1976)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: org.hibernate.query.criteria.internal.predicate.TruthValue getTruthValue()>() 
(define-const var2485 var610 var610-TRUE) ; Statement: $r7 = <org.hibernate.query.criteria.internal.predicate.TruthValue: org.hibernate.query.criteria.internal.predicate.TruthValue TRUE> 
 ; Statement: if $r8 != $r7 goto $r13 = "false" 
(assert (not (not (= var1590 var2485)))) ; Negate: Cond: $r8 != $r7  
(define-const var1158 String "true") ; Statement: $r13 = "true" 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3626 String (append/672562846 var3101 var1158)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3101!1 String)
(assert (= var3101!1 (str.++ var3101 var1158)))
(assert true)
(define-const var2071 String (toString/-2075883882 var3626)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getBooleanExpression/-581374944=([org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck], javax.persistence.criteria.Expression), cast-from-var3501-to-var2235=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var2235_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTruthValue/976638371=([org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck], org.hibernate.query.criteria.internal.predicate.TruthValue), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var184=org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck, var1976=r1, var734=z0, var367=org.hibernate.query.criteria.internal.compile.RenderingContext, var3503=r3, var593=$r0, var3501=javax.persistence.criteria.Expression, var3245=$r2, var2235=org.hibernate.query.criteria.internal.Renderable, var3826=$r4, var1911=$r5, var1384=$r6, var494=$r12, var3101=$r9, var610=org.hibernate.query.criteria.internal.predicate.TruthValue, var1590=$r8, var2485=$r7, var1158=$r13, var3626=$r10, var2071=$r11}
; {org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck=var184, r1=var1976, z0=var734, org.hibernate.query.criteria.internal.compile.RenderingContext=var367, r3=var3503, $r0=var593, javax.persistence.criteria.Expression=var3501, $r2=var3245, org.hibernate.query.criteria.internal.Renderable=var2235, $r4=var3826, $r5=var1911, $r6=var1384, $r12=var494, $r9=var3101, org.hibernate.query.criteria.internal.predicate.TruthValue=var610, $r8=var1590, $r7=var2485, $r13=var1158, $r10=var3626, $r11=var2071}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: javax.persistence.criteria.Expression getBooleanExpression()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	if z0 == 0 goto $r12 = " = ";	$r12 = " <> ";	goto [?= $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: org.hibernate.query.criteria.internal.predicate.TruthValue getTruthValue()>();	$r7 = <org.hibernate.query.criteria.internal.predicate.TruthValue: org.hibernate.query.criteria.internal.predicate.TruthValue TRUE>;	if $r8 != $r7 goto $r13 = "false";	$r13 = "true";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5