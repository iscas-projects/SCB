(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var581 0)
(declare-sort var875 0)
(declare-sort var953 0)
(declare-sort var2422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSubquery/-421823281 (var581) var953)
(declare-fun cast-from-var953-to-var2422 (var953) var2422)
(declare-fun var2422_render/-1233042088 (var2422 var875) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var581 var581)
(declare-const null-Bool Bool)
(declare-const null-var875 var875)
(declare-const var892 var581) ; Statement: r2 := @this: org.hibernate.query.criteria.internal.predicate.ExistsPredicate 
(assert (not (= var892 null-var581)))
(declare-const var2374 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2374 null-Bool)))
(declare-const var544 var875) ; Statement: r4 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var544 null-var875)))
(define-const var2981 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2981)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2981!1 String)
(assert (= var2981!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (not (= (ite var2374 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var420 String "not ") ; Statement: $r10 = "not " 
 ; Statement: goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var326 String (append/672562846 var2981!1 var420)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2981!2 String)
(assert (= var2981!2 (str.++ var2981!1 var420)))
(assert true)
(define-const var3847 String (append/672562846 var326 "exists ")) ; Statement: $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exists ") 
(declare-const var326!1 String)
(assert (= var326!1 (str.++ var326 "exists ")))
(assert true)
(define-const var1931 var953 (getSubquery/-421823281 var892)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.predicate.ExistsPredicate: javax.persistence.criteria.Subquery getSubquery()>() 
(define-const var217 var2422 (cast-from-var953-to-var2422 var1931)) ; Statement: $r5 = (org.hibernate.query.criteria.internal.Renderable) $r3 
(define-const var2968 String (var2422_render/-1233042088 var217 var544)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r4) 
(assert true)
(define-const var1155 String (append/672562846 var3847 var2968)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3847!1 String)
(assert (= var3847!1 (str.++ var3847 var2968)))
(assert true)
(define-const var1770 String (toString/-2075883882 var1155)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSubquery/-421823281=([org.hibernate.query.criteria.internal.predicate.ExistsPredicate], javax.persistence.criteria.Subquery), cast-from-var953-to-var2422=([javax.persistence.criteria.Subquery], org.hibernate.query.criteria.internal.Renderable), var2422_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var581=org.hibernate.query.criteria.internal.predicate.ExistsPredicate, var892=r2, var2374=z0, var875=org.hibernate.query.criteria.internal.compile.RenderingContext, var544=r4, var2981=$r0, var420=$r10, var326=$r1, var3847=$r7, var953=javax.persistence.criteria.Subquery, var1931=$r3, var2422=org.hibernate.query.criteria.internal.Renderable, var217=$r5, var2968=$r6, var1155=$r8, var1770=$r9}
; {org.hibernate.query.criteria.internal.predicate.ExistsPredicate=var581, r2=var892, z0=var2374, org.hibernate.query.criteria.internal.compile.RenderingContext=var875, r4=var544, $r0=var2981, $r10=var420, $r1=var326, $r7=var3847, javax.persistence.criteria.Subquery=var953, $r3=var1931, org.hibernate.query.criteria.internal.Renderable=var2422, $r5=var217, $r6=var2968, $r8=var1155, $r9=var1770}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.query.criteria.internal.predicate.ExistsPredicate;	z0 := @parameter0: boolean;	r4 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "";	$r10 = "not ";	goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exists ");	$r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.predicate.ExistsPredicate: javax.persistence.criteria.Subquery getSubquery()>();	$r5 = (org.hibernate.query.criteria.internal.Renderable) $r3;	$r6 = interfaceinvoke $r5.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3