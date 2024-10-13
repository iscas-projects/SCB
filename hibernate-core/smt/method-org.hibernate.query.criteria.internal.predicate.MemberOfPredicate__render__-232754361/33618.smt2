(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2580 0)
(declare-sort var3008 0)
(declare-sort var2050 0)
(declare-sort var218 0)
(declare-sort var1140 0)
(declare-sort var3896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun elementExpression/835253185 (var2580) var2050)
(declare-fun cast-from-var2050-to-var218 (var2050) var218)
(declare-fun var218_render/-1233042088 (var218 var3008) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCollectionPath/-85287273 (var2580) var1140)
(declare-fun render/1530814564 (var3896 var3008) String)
(declare-fun cast-from-var1140-to-var3896 (var1140) var3896)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2580 var2580)
(declare-const null-Bool Bool)
(declare-const null-var3008 var3008)
(declare-const var323 var2580) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.MemberOfPredicate 
(assert (not (= var323 null-var2580)))
(declare-const var3723 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3723 null-Bool)))
(declare-const var1312 var3008) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1312 null-var3008)))
(define-const var1248 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1248)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1248!1 String)
(assert (= var1248!1 ""))
(define-const var2616 var2050 (elementExpression/835253185 var323)) ; Statement: $r2 = r1.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: javax.persistence.criteria.Expression elementExpression> 
(define-const var2004 var218 (cast-from-var2050-to-var218 var2616)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var652 String (var218_render/-1233042088 var2004 var1312)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var359 String (append/672562846 var1248!1 var652)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1248!2 String)
(assert (= var1248!2 (str.++ var1248!1 var652)))
 ; Statement: if z0 == 0 goto $r13 = "" 
(assert (= (ite var3723 1 0) 0)) ; Cond: z0 == 0 
(define-const var3314 String "") ; Statement: $r13 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2889 String (append/672562846 var359 var3314)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var359!1 String)
(assert (= var359!1 (str.++ var359 var3314)))
(assert true)
(define-const var3255 String (append/672562846 var2889 " member of ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" member of ") 
(declare-const var2889!1 String)
(assert (= var2889!1 (str.++ var2889 " member of ")))
(assert true)
(define-const var3141 var1140 (getCollectionPath/-85287273 var323)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: org.hibernate.query.criteria.internal.path.PluralAttributePath getCollectionPath()>() 
(assert true)
(define-const var299 String (render/1530814564 (cast-from-var1140-to-var3896 var3141) var1312)) ; Statement: $r9 = virtualinvoke $r8.<org.hibernate.query.criteria.internal.path.PluralAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var2010 String (append/672562846 var3255 var299)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3255!1 String)
(assert (= var3255!1 (str.++ var3255 var299)))
(assert true)
(define-const var2062 String (toString/-2075883882 var2010)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), elementExpression/835253185=([org.hibernate.query.criteria.internal.predicate.MemberOfPredicate], javax.persistence.criteria.Expression), cast-from-var2050-to-var218=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var218_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCollectionPath/-85287273=([org.hibernate.query.criteria.internal.predicate.MemberOfPredicate], org.hibernate.query.criteria.internal.path.PluralAttributePath), render/1530814564=([org.hibernate.query.criteria.internal.path.AbstractPathImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var1140-to-var3896=([org.hibernate.query.criteria.internal.path.PluralAttributePath], org.hibernate.query.criteria.internal.path.AbstractPathImpl), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2580=org.hibernate.query.criteria.internal.predicate.MemberOfPredicate, var323=r1, var3723=z0, var3008=org.hibernate.query.criteria.internal.compile.RenderingContext, var1312=r3, var1248=$r0, var2050=javax.persistence.criteria.Expression, var2616=$r2, var218=org.hibernate.query.criteria.internal.Renderable, var2004=$r4, var652=$r5, var359=$r6, var3314=$r13, var2889=$r7, var3255=$r10, var1140=org.hibernate.query.criteria.internal.path.PluralAttributePath, var3141=$r8, var3896=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var299=$r9, var2010=$r11, var2062=$r12}
; {org.hibernate.query.criteria.internal.predicate.MemberOfPredicate=var2580, r1=var323, z0=var3723, org.hibernate.query.criteria.internal.compile.RenderingContext=var3008, r3=var1312, $r0=var1248, javax.persistence.criteria.Expression=var2050, $r2=var2616, org.hibernate.query.criteria.internal.Renderable=var218, $r4=var2004, $r5=var652, $r6=var359, $r13=var3314, $r7=var2889, $r10=var3255, org.hibernate.query.criteria.internal.path.PluralAttributePath=var1140, $r8=var3141, org.hibernate.query.criteria.internal.path.AbstractPathImpl=var3896, $r9=var299, $r11=var2010, $r12=var2062}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.MemberOfPredicate;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: javax.persistence.criteria.Expression elementExpression>;	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	if z0 == 0 goto $r13 = "";	$r13 = "";	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" member of ");	$r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: org.hibernate.query.criteria.internal.path.PluralAttributePath getCollectionPath()>();	$r9 = virtualinvoke $r8.<org.hibernate.query.criteria.internal.path.PluralAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 3