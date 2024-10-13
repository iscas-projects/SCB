(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var893 0)
(declare-sort var3287 0)
(declare-sort var1392 0)
(declare-sort var1962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSubquery/-421823281 (var893) var1392)
(declare-fun cast-from-var1392-to-var1962 (var1392) var1962)
(declare-fun var1962_render/-1233042088 (var1962 var3287) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var893 var893)
(declare-const null-Bool Bool)
(declare-const null-var3287 var3287)
(declare-const var432 var893) ; Statement: r2 := @this: org.hibernate.query.criteria.internal.predicate.ExistsPredicate 
(assert (not (= var432 null-var893)))
(declare-const var1013 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1013 null-Bool)))
(declare-const var569 var3287) ; Statement: r4 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var569 null-var3287)))
(define-const var1546 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1546)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1546!1 String)
(assert (= var1546!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (= (ite var1013 1 0) 0)) ; Cond: z0 == 0 
(define-const var1599 String "") ; Statement: $r10 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var641 String (append/672562846 var1546!1 var1599)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1546!2 String)
(assert (= var1546!2 (str.++ var1546!1 var1599)))
(assert true)
(define-const var2539 String (append/672562846 var641 "exists ")) ; Statement: $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exists ") 
(declare-const var641!1 String)
(assert (= var641!1 (str.++ var641 "exists ")))
(assert true)
(define-const var3370 var1392 (getSubquery/-421823281 var432)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.predicate.ExistsPredicate: javax.persistence.criteria.Subquery getSubquery()>() 
(define-const var424 var1962 (cast-from-var1392-to-var1962 var3370)) ; Statement: $r5 = (org.hibernate.query.criteria.internal.Renderable) $r3 
(define-const var3319 String (var1962_render/-1233042088 var424 var569)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r4) 
(assert true)
(define-const var2859 String (append/672562846 var2539 var3319)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2539!1 String)
(assert (= var2539!1 (str.++ var2539 var3319)))
(assert true)
(define-const var928 String (toString/-2075883882 var2859)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSubquery/-421823281=([org.hibernate.query.criteria.internal.predicate.ExistsPredicate], javax.persistence.criteria.Subquery), cast-from-var1392-to-var1962=([javax.persistence.criteria.Subquery], org.hibernate.query.criteria.internal.Renderable), var1962_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var893=org.hibernate.query.criteria.internal.predicate.ExistsPredicate, var432=r2, var1013=z0, var3287=org.hibernate.query.criteria.internal.compile.RenderingContext, var569=r4, var1546=$r0, var1599=$r10, var641=$r1, var2539=$r7, var1392=javax.persistence.criteria.Subquery, var3370=$r3, var1962=org.hibernate.query.criteria.internal.Renderable, var424=$r5, var3319=$r6, var2859=$r8, var928=$r9}
; {org.hibernate.query.criteria.internal.predicate.ExistsPredicate=var893, r2=var432, z0=var1013, org.hibernate.query.criteria.internal.compile.RenderingContext=var3287, r4=var569, $r0=var1546, $r10=var1599, $r1=var641, $r7=var2539, javax.persistence.criteria.Subquery=var1392, $r3=var3370, org.hibernate.query.criteria.internal.Renderable=var1962, $r5=var424, $r6=var3319, $r8=var2859, $r9=var928}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.query.criteria.internal.predicate.ExistsPredicate;	z0 := @parameter0: boolean;	r4 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "";	$r10 = "";	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exists ");	$r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.predicate.ExistsPredicate: javax.persistence.criteria.Subquery getSubquery()>();	$r5 = (org.hibernate.query.criteria.internal.Renderable) $r3;	$r6 = interfaceinvoke $r5.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3