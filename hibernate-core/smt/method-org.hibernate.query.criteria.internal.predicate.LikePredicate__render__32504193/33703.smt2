(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var972 0)
(declare-sort var490 0)
(declare-sort var2991 0)
(declare-sort var1084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMatchExpression/1481233169 (var972) var2991)
(declare-fun cast-from-var2991-to-var1084 (var2991) var1084)
(declare-fun var1084_render/-1233042088 (var1084 var490) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPattern/163625438 (var972) var2991)
(declare-fun escapeCharacter/1928246907 (var972) var2991)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var972 var972)
(declare-const null-Bool Bool)
(declare-const null-var490 var490)
(declare-const null-var2991 var2991)
(declare-const var2455 var972) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.LikePredicate 
(assert (not (= var2455 null-var972)))
(declare-const var1147 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1147 null-Bool)))
(declare-const var2175 var490) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2175 null-var490)))
 ; Statement: if z0 == 0 goto $r17 = " like " 
(assert (= (ite var1147 1 0) 0)) ; Cond: z0 == 0 
(define-const var146 String " like ") ; Statement: $r17 = " like " 
(assert true) ; Non Conditional
(define-const var1468 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1468)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1468!1 String)
(assert (= var1468!1 ""))
(assert true)
(define-const var1248 var2991 (getMatchExpression/1481233169 var2455)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression getMatchExpression()>() 
(define-const var426 var1084 (cast-from-var2991-to-var1084 var1248)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var1906 String (var1084_render/-1233042088 var426 var2175)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var1937 String (append/672562846 var1468!1 var1906)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1468!2 String)
(assert (= var1468!2 (str.++ var1468!1 var1906)))
(assert true)
(define-const var2414 String (append/672562846 var1937 var146)) ; Statement: $r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1937!1 String)
(assert (= var1937!1 (str.++ var1937 var146)))
(assert true)
(define-const var641 var2991 (getPattern/163625438 var2455)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression getPattern()>() 
(define-const var1525 var1084 (cast-from-var2991-to-var1084 var641)) ; Statement: $r8 = (org.hibernate.query.criteria.internal.Renderable) $r7 
(define-const var1140 String (var1084_render/-1233042088 var1525 var2175)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
;(assert (append/672562846 var2414 var1140)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 var1140)))
(define-const var1477 var2991 (escapeCharacter/1928246907 var2455)) ; Statement: $r11 = r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression escapeCharacter> 
 ; Statement: if $r11 == null goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1477 null-var2991)) ; Cond: $r11 == null 
(assert true)
(define-const var3093 String (toString/-2075883882 var1468!2)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMatchExpression/1481233169=([org.hibernate.query.criteria.internal.predicate.LikePredicate], javax.persistence.criteria.Expression), cast-from-var2991-to-var1084=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var1084_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPattern/163625438=([org.hibernate.query.criteria.internal.predicate.LikePredicate], javax.persistence.criteria.Expression), escapeCharacter/1928246907=([org.hibernate.query.criteria.internal.predicate.LikePredicate], javax.persistence.criteria.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var972=org.hibernate.query.criteria.internal.predicate.LikePredicate, var2455=r1, var1147=z0, var490=org.hibernate.query.criteria.internal.compile.RenderingContext, var2175=r3, var146=$r17, var1468=$r0, var2991=javax.persistence.criteria.Expression, var1248=$r2, var1084=org.hibernate.query.criteria.internal.Renderable, var426=$r4, var1906=$r5, var1937=$r6, var2414=$r10, var641=$r7, var1525=$r8, var1140=$r9, var1477=$r11, var3093=$r12}
; {org.hibernate.query.criteria.internal.predicate.LikePredicate=var972, r1=var2455, z0=var1147, org.hibernate.query.criteria.internal.compile.RenderingContext=var490, r3=var2175, $r17=var146, $r0=var1468, javax.persistence.criteria.Expression=var2991, $r2=var1248, org.hibernate.query.criteria.internal.Renderable=var1084, $r4=var426, $r5=var1906, $r6=var1937, $r10=var2414, $r7=var641, $r8=var1525, $r9=var1140, $r11=var1477, $r12=var3093}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.LikePredicate;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	if z0 == 0 goto $r17 = " like ";	$r17 = " like ";	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression getMatchExpression()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r7 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression getPattern()>();	$r8 = (org.hibernate.query.criteria.internal.Renderable) $r7;	$r9 = interfaceinvoke $r8.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r11 = r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression escapeCharacter>;	if $r11 == null goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 4