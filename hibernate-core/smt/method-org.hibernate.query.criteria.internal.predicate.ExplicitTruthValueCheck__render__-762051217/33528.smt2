(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2292 0)
(declare-sort var229 0)
(declare-sort var3789 0)
(declare-sort var696 0)
(declare-sort var2574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getBooleanExpression/-581374944 (var2292) var3789)
(declare-fun cast-from-var3789-to-var696 (var3789) var696)
(declare-fun var696_render/-1233042088 (var696 var229) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTruthValue/976638371 (var2292) var2574)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2292 var2292)
(declare-const null-Bool Bool)
(declare-const null-var229 var229)
(declare-const var2574-TRUE var2574)
(declare-const var2906 var2292) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck 
(assert (not (= var2906 null-var2292)))
(declare-const var706 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var706 null-Bool)))
(declare-const var1566 var229) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1566 null-var229)))
(define-const var1964 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1964)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1964!1 String)
(assert (= var1964!1 ""))
(assert true)
(define-const var2955 var3789 (getBooleanExpression/-581374944 var2906)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: javax.persistence.criteria.Expression getBooleanExpression()>() 
(define-const var2859 var696 (cast-from-var3789-to-var696 var2955)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var794 String (var696_render/-1233042088 var2859 var1566)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var3832 String (append/672562846 var1964!1 var794)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1964!2 String)
(assert (= var1964!2 (str.++ var1964!1 var794)))
 ; Statement: if z0 == 0 goto $r12 = " = " 
(assert (not (= (ite var706 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3775 String " <> ") ; Statement: $r12 = " <> " 
 ; Statement: goto [?= $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1490 String (append/672562846 var3832 var3775)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3832!1 String)
(assert (= var3832!1 (str.++ var3832 var3775)))
(assert true)
(define-const var76 var2574 (getTruthValue/976638371 var2906)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: org.hibernate.query.criteria.internal.predicate.TruthValue getTruthValue()>() 
(define-const var3490 var2574 var2574-TRUE) ; Statement: $r7 = <org.hibernate.query.criteria.internal.predicate.TruthValue: org.hibernate.query.criteria.internal.predicate.TruthValue TRUE> 
 ; Statement: if $r8 != $r7 goto $r13 = "false" 
(assert (not (= var76 var3490))) ; Cond: $r8 != $r7 
(define-const var2929 String "false") ; Statement: $r13 = "false" 
(assert true) ; Non Conditional
(assert true)
(define-const var3496 String (append/672562846 var1490 var2929)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1490!1 String)
(assert (= var1490!1 (str.++ var1490 var2929)))
(assert true)
(define-const var727 String (toString/-2075883882 var3496)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getBooleanExpression/-581374944=([org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck], javax.persistence.criteria.Expression), cast-from-var3789-to-var696=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var696_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTruthValue/976638371=([org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck], org.hibernate.query.criteria.internal.predicate.TruthValue), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2292=org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck, var2906=r1, var706=z0, var229=org.hibernate.query.criteria.internal.compile.RenderingContext, var1566=r3, var1964=$r0, var3789=javax.persistence.criteria.Expression, var2955=$r2, var696=org.hibernate.query.criteria.internal.Renderable, var2859=$r4, var794=$r5, var3832=$r6, var3775=$r12, var1490=$r9, var2574=org.hibernate.query.criteria.internal.predicate.TruthValue, var76=$r8, var3490=$r7, var2929=$r13, var3496=$r10, var727=$r11}
; {org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck=var2292, r1=var2906, z0=var706, org.hibernate.query.criteria.internal.compile.RenderingContext=var229, r3=var1566, $r0=var1964, javax.persistence.criteria.Expression=var3789, $r2=var2955, org.hibernate.query.criteria.internal.Renderable=var696, $r4=var2859, $r5=var794, $r6=var3832, $r12=var3775, $r9=var1490, org.hibernate.query.criteria.internal.predicate.TruthValue=var2574, $r8=var76, $r7=var3490, $r13=var2929, $r10=var3496, $r11=var727}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: javax.persistence.criteria.Expression getBooleanExpression()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	if z0 == 0 goto $r12 = " = ";	$r12 = " <> ";	goto [?= $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: org.hibernate.query.criteria.internal.predicate.TruthValue getTruthValue()>();	$r7 = <org.hibernate.query.criteria.internal.predicate.TruthValue: org.hibernate.query.criteria.internal.predicate.TruthValue TRUE>;	if $r8 != $r7 goto $r13 = "false";	$r13 = "false";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5