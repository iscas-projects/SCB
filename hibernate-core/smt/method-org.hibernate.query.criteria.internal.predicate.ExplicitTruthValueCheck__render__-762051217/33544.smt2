(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1689 0)
(declare-sort var3813 0)
(declare-sort var794 0)
(declare-sort var3764 0)
(declare-sort var3972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getBooleanExpression/-581374944 (var1689) var794)
(declare-fun cast-from-var794-to-var3764 (var794) var3764)
(declare-fun var3764_render/-1233042088 (var3764 var3813) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTruthValue/976638371 (var1689) var3972)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1689 var1689)
(declare-const null-Bool Bool)
(declare-const null-var3813 var3813)
(declare-const var3972-TRUE var3972)
(declare-const var711 var1689) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck 
(assert (not (= var711 null-var1689)))
(declare-const var1573 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1573 null-Bool)))
(declare-const var1663 var3813) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1663 null-var3813)))
(define-const var3519 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3519)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3519!1 String)
(assert (= var3519!1 ""))
(assert true)
(define-const var3887 var794 (getBooleanExpression/-581374944 var711)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: javax.persistence.criteria.Expression getBooleanExpression()>() 
(define-const var1278 var3764 (cast-from-var794-to-var3764 var3887)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var911 String (var3764_render/-1233042088 var1278 var1663)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var1898 String (append/672562846 var3519!1 var911)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3519!2 String)
(assert (= var3519!2 (str.++ var3519!1 var911)))
 ; Statement: if z0 == 0 goto $r12 = " = " 
(assert (= (ite var1573 1 0) 0)) ; Cond: z0 == 0 
(define-const var3630 String " = ") ; Statement: $r12 = " = " 
(assert true) ; Non Conditional
(assert true)
(define-const var1379 String (append/672562846 var1898 var3630)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1898!1 String)
(assert (= var1898!1 (str.++ var1898 var3630)))
(assert true)
(define-const var2001 var3972 (getTruthValue/976638371 var711)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: org.hibernate.query.criteria.internal.predicate.TruthValue getTruthValue()>() 
(define-const var2528 var3972 var3972-TRUE) ; Statement: $r7 = <org.hibernate.query.criteria.internal.predicate.TruthValue: org.hibernate.query.criteria.internal.predicate.TruthValue TRUE> 
 ; Statement: if $r8 != $r7 goto $r13 = "false" 
(assert (not (= var2001 var2528))) ; Cond: $r8 != $r7 
(define-const var3077 String "false") ; Statement: $r13 = "false" 
(assert true) ; Non Conditional
(assert true)
(define-const var3136 String (append/672562846 var1379 var3077)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1379!1 String)
(assert (= var1379!1 (str.++ var1379 var3077)))
(assert true)
(define-const var3413 String (toString/-2075883882 var3136)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getBooleanExpression/-581374944=([org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck], javax.persistence.criteria.Expression), cast-from-var794-to-var3764=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var3764_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTruthValue/976638371=([org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck], org.hibernate.query.criteria.internal.predicate.TruthValue), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1689=org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck, var711=r1, var1573=z0, var3813=org.hibernate.query.criteria.internal.compile.RenderingContext, var1663=r3, var3519=$r0, var794=javax.persistence.criteria.Expression, var3887=$r2, var3764=org.hibernate.query.criteria.internal.Renderable, var1278=$r4, var911=$r5, var1898=$r6, var3630=$r12, var1379=$r9, var3972=org.hibernate.query.criteria.internal.predicate.TruthValue, var2001=$r8, var2528=$r7, var3077=$r13, var3136=$r10, var3413=$r11}
; {org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck=var1689, r1=var711, z0=var1573, org.hibernate.query.criteria.internal.compile.RenderingContext=var3813, r3=var1663, $r0=var3519, javax.persistence.criteria.Expression=var794, $r2=var3887, org.hibernate.query.criteria.internal.Renderable=var3764, $r4=var1278, $r5=var911, $r6=var1898, $r12=var3630, $r9=var1379, org.hibernate.query.criteria.internal.predicate.TruthValue=var3972, $r8=var2001, $r7=var2528, $r13=var3077, $r10=var3136, $r11=var3413}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: javax.persistence.criteria.Expression getBooleanExpression()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	if z0 == 0 goto $r12 = " = ";	$r12 = " = ";	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: org.hibernate.query.criteria.internal.predicate.TruthValue getTruthValue()>();	$r7 = <org.hibernate.query.criteria.internal.predicate.TruthValue: org.hibernate.query.criteria.internal.predicate.TruthValue TRUE>;	if $r8 != $r7 goto $r13 = "false";	$r13 = "false";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5