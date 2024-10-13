(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var453 0)
(declare-sort var2221 0)
(declare-sort var90 0)
(declare-sort var3115 0)
(declare-sort var854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getBooleanExpression/-581374944 (var453) var90)
(declare-fun cast-from-var90-to-var3115 (var90) var3115)
(declare-fun var3115_render/-1233042088 (var3115 var2221) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTruthValue/976638371 (var453) var854)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var453 var453)
(declare-const null-Bool Bool)
(declare-const null-var2221 var2221)
(declare-const var854-TRUE var854)
(declare-const var2761 var453) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck 
(assert (not (= var2761 null-var453)))
(declare-const var2855 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2855 null-Bool)))
(declare-const var2787 var2221) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2787 null-var2221)))
(define-const var3575 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3575)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3575!1 String)
(assert (= var3575!1 ""))
(assert true)
(define-const var1669 var90 (getBooleanExpression/-581374944 var2761)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: javax.persistence.criteria.Expression getBooleanExpression()>() 
(define-const var1884 var3115 (cast-from-var90-to-var3115 var1669)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var770 String (var3115_render/-1233042088 var1884 var2787)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var3380 String (append/672562846 var3575!1 var770)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3575!2 String)
(assert (= var3575!2 (str.++ var3575!1 var770)))
 ; Statement: if z0 == 0 goto $r12 = " = " 
(assert (= (ite var2855 1 0) 0)) ; Cond: z0 == 0 
(define-const var3283 String " = ") ; Statement: $r12 = " = " 
(assert true) ; Non Conditional
(assert true)
(define-const var2021 String (append/672562846 var3380 var3283)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3380!1 String)
(assert (= var3380!1 (str.++ var3380 var3283)))
(assert true)
(define-const var2237 var854 (getTruthValue/976638371 var2761)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: org.hibernate.query.criteria.internal.predicate.TruthValue getTruthValue()>() 
(define-const var3362 var854 var854-TRUE) ; Statement: $r7 = <org.hibernate.query.criteria.internal.predicate.TruthValue: org.hibernate.query.criteria.internal.predicate.TruthValue TRUE> 
 ; Statement: if $r8 != $r7 goto $r13 = "false" 
(assert (not (not (= var2237 var3362)))) ; Negate: Cond: $r8 != $r7  
(define-const var3031 String "true") ; Statement: $r13 = "true" 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2639 String (append/672562846 var2021 var3031)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2021!1 String)
(assert (= var2021!1 (str.++ var2021 var3031)))
(assert true)
(define-const var385 String (toString/-2075883882 var2639)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getBooleanExpression/-581374944=([org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck], javax.persistence.criteria.Expression), cast-from-var90-to-var3115=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var3115_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTruthValue/976638371=([org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck], org.hibernate.query.criteria.internal.predicate.TruthValue), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var453=org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck, var2761=r1, var2855=z0, var2221=org.hibernate.query.criteria.internal.compile.RenderingContext, var2787=r3, var3575=$r0, var90=javax.persistence.criteria.Expression, var1669=$r2, var3115=org.hibernate.query.criteria.internal.Renderable, var1884=$r4, var770=$r5, var3380=$r6, var3283=$r12, var2021=$r9, var854=org.hibernate.query.criteria.internal.predicate.TruthValue, var2237=$r8, var3362=$r7, var3031=$r13, var2639=$r10, var385=$r11}
; {org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck=var453, r1=var2761, z0=var2855, org.hibernate.query.criteria.internal.compile.RenderingContext=var2221, r3=var2787, $r0=var3575, javax.persistence.criteria.Expression=var90, $r2=var1669, org.hibernate.query.criteria.internal.Renderable=var3115, $r4=var1884, $r5=var770, $r6=var3380, $r12=var3283, $r9=var2021, org.hibernate.query.criteria.internal.predicate.TruthValue=var854, $r8=var2237, $r7=var3362, $r13=var3031, $r10=var2639, $r11=var385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: javax.persistence.criteria.Expression getBooleanExpression()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	if z0 == 0 goto $r12 = " = ";	$r12 = " = ";	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.ExplicitTruthValueCheck: org.hibernate.query.criteria.internal.predicate.TruthValue getTruthValue()>();	$r7 = <org.hibernate.query.criteria.internal.predicate.TruthValue: org.hibernate.query.criteria.internal.predicate.TruthValue TRUE>;	if $r8 != $r7 goto $r13 = "false";	$r13 = "true";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5