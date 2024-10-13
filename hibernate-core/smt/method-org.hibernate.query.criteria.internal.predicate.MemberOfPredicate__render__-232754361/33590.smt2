(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3424 0)
(declare-sort var1021 0)
(declare-sort var3227 0)
(declare-sort var1002 0)
(declare-sort var1922 0)
(declare-sort var1652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun elementExpression/835253185 (var3424) var3227)
(declare-fun cast-from-var3227-to-var1002 (var3227) var1002)
(declare-fun var1002_render/-1233042088 (var1002 var1021) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCollectionPath/-85287273 (var3424) var1922)
(declare-fun render/1530814564 (var1652 var1021) String)
(declare-fun cast-from-var1922-to-var1652 (var1922) var1652)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3424 var3424)
(declare-const null-Bool Bool)
(declare-const null-var1021 var1021)
(declare-const var2966 var3424) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.MemberOfPredicate 
(assert (not (= var2966 null-var3424)))
(declare-const var3178 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3178 null-Bool)))
(declare-const var3725 var1021) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3725 null-var1021)))
(define-const var1199 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1199)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1199!1 String)
(assert (= var1199!1 ""))
(define-const var1187 var3227 (elementExpression/835253185 var2966)) ; Statement: $r2 = r1.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: javax.persistence.criteria.Expression elementExpression> 
(define-const var1953 var1002 (cast-from-var3227-to-var1002 var1187)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var1614 String (var1002_render/-1233042088 var1953 var3725)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var1454 String (append/672562846 var1199!1 var1614)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1199!2 String)
(assert (= var1199!2 (str.++ var1199!1 var1614)))
 ; Statement: if z0 == 0 goto $r13 = "" 
(assert (not (= (ite var3178 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2983 String " not") ; Statement: $r13 = " not" 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3306 String (append/672562846 var1454 var2983)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1454!1 String)
(assert (= var1454!1 (str.++ var1454 var2983)))
(assert true)
(define-const var2953 String (append/672562846 var3306 " member of ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" member of ") 
(declare-const var3306!1 String)
(assert (= var3306!1 (str.++ var3306 " member of ")))
(assert true)
(define-const var2896 var1922 (getCollectionPath/-85287273 var2966)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: org.hibernate.query.criteria.internal.path.PluralAttributePath getCollectionPath()>() 
(assert true)
(define-const var299 String (render/1530814564 (cast-from-var1922-to-var1652 var2896) var3725)) ; Statement: $r9 = virtualinvoke $r8.<org.hibernate.query.criteria.internal.path.PluralAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var3055 String (append/672562846 var2953 var299)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2953!1 String)
(assert (= var2953!1 (str.++ var2953 var299)))
(assert true)
(define-const var818 String (toString/-2075883882 var3055)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), elementExpression/835253185=([org.hibernate.query.criteria.internal.predicate.MemberOfPredicate], javax.persistence.criteria.Expression), cast-from-var3227-to-var1002=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var1002_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCollectionPath/-85287273=([org.hibernate.query.criteria.internal.predicate.MemberOfPredicate], org.hibernate.query.criteria.internal.path.PluralAttributePath), render/1530814564=([org.hibernate.query.criteria.internal.path.AbstractPathImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var1922-to-var1652=([org.hibernate.query.criteria.internal.path.PluralAttributePath], org.hibernate.query.criteria.internal.path.AbstractPathImpl), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3424=org.hibernate.query.criteria.internal.predicate.MemberOfPredicate, var2966=r1, var3178=z0, var1021=org.hibernate.query.criteria.internal.compile.RenderingContext, var3725=r3, var1199=$r0, var3227=javax.persistence.criteria.Expression, var1187=$r2, var1002=org.hibernate.query.criteria.internal.Renderable, var1953=$r4, var1614=$r5, var1454=$r6, var2983=$r13, var3306=$r7, var2953=$r10, var1922=org.hibernate.query.criteria.internal.path.PluralAttributePath, var2896=$r8, var1652=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var299=$r9, var3055=$r11, var818=$r12}
; {org.hibernate.query.criteria.internal.predicate.MemberOfPredicate=var3424, r1=var2966, z0=var3178, org.hibernate.query.criteria.internal.compile.RenderingContext=var1021, r3=var3725, $r0=var1199, javax.persistence.criteria.Expression=var3227, $r2=var1187, org.hibernate.query.criteria.internal.Renderable=var1002, $r4=var1953, $r5=var1614, $r6=var1454, $r13=var2983, $r7=var3306, $r10=var2953, org.hibernate.query.criteria.internal.path.PluralAttributePath=var1922, $r8=var2896, org.hibernate.query.criteria.internal.path.AbstractPathImpl=var1652, $r9=var299, $r11=var3055, $r12=var818}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.MemberOfPredicate;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: javax.persistence.criteria.Expression elementExpression>;	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	if z0 == 0 goto $r13 = "";	$r13 = " not";	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" member of ");	$r8 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: org.hibernate.query.criteria.internal.path.PluralAttributePath getCollectionPath()>();	$r9 = virtualinvoke $r8.<org.hibernate.query.criteria.internal.path.PluralAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 3