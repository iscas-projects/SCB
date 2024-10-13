(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var25 0)
(declare-sort var1391 0)
(declare-sort var2243 0)
(declare-sort var1911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMatchExpression/1481233169 (var25) var2243)
(declare-fun cast-from-var2243-to-var1911 (var2243) var1911)
(declare-fun var1911_render/-1233042088 (var1911 var1391) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPattern/163625438 (var25) var2243)
(declare-fun escapeCharacter/1928246907 (var25) var2243)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var25 var25)
(declare-const null-Bool Bool)
(declare-const null-var1391 var1391)
(declare-const null-var2243 var2243)
(declare-const var833 var25) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.LikePredicate 
(assert (not (= var833 null-var25)))
(declare-const var1461 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1461 null-Bool)))
(declare-const var2183 var1391) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2183 null-var1391)))
 ; Statement: if z0 == 0 goto $r17 = " like " 
(assert (not (= (ite var1461 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var87 String " not like ") ; Statement: $r17 = " not like " 
 ; Statement: goto [?= $r0 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var146 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var146)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var146!1 String)
(assert (= var146!1 ""))
(assert true)
(define-const var2599 var2243 (getMatchExpression/1481233169 var833)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression getMatchExpression()>() 
(define-const var180 var1911 (cast-from-var2243-to-var1911 var2599)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var1060 String (var1911_render/-1233042088 var180 var2183)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var3652 String (append/672562846 var146!1 var1060)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var146!2 String)
(assert (= var146!2 (str.++ var146!1 var1060)))
(assert true)
(define-const var767 String (append/672562846 var3652 var87)) ; Statement: $r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3652!1 String)
(assert (= var3652!1 (str.++ var3652 var87)))
(assert true)
(define-const var466 var2243 (getPattern/163625438 var833)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression getPattern()>() 
(define-const var1216 var1911 (cast-from-var2243-to-var1911 var466)) ; Statement: $r8 = (org.hibernate.query.criteria.internal.Renderable) $r7 
(define-const var2591 String (var1911_render/-1233042088 var1216 var2183)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
;(assert (append/672562846 var767 var2591)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var767!1 String)
(assert (= var767!1 (str.++ var767 var2591)))
(define-const var2399 var2243 (escapeCharacter/1928246907 var833)) ; Statement: $r11 = r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression escapeCharacter> 
 ; Statement: if $r11 == null goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2399 null-var2243)) ; Cond: $r11 == null 
(assert true)
(define-const var1533 String (toString/-2075883882 var146!2)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMatchExpression/1481233169=([org.hibernate.query.criteria.internal.predicate.LikePredicate], javax.persistence.criteria.Expression), cast-from-var2243-to-var1911=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var1911_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPattern/163625438=([org.hibernate.query.criteria.internal.predicate.LikePredicate], javax.persistence.criteria.Expression), escapeCharacter/1928246907=([org.hibernate.query.criteria.internal.predicate.LikePredicate], javax.persistence.criteria.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var25=org.hibernate.query.criteria.internal.predicate.LikePredicate, var833=r1, var1461=z0, var1391=org.hibernate.query.criteria.internal.compile.RenderingContext, var2183=r3, var87=$r17, var146=$r0, var2243=javax.persistence.criteria.Expression, var2599=$r2, var1911=org.hibernate.query.criteria.internal.Renderable, var180=$r4, var1060=$r5, var3652=$r6, var767=$r10, var466=$r7, var1216=$r8, var2591=$r9, var2399=$r11, var1533=$r12}
; {org.hibernate.query.criteria.internal.predicate.LikePredicate=var25, r1=var833, z0=var1461, org.hibernate.query.criteria.internal.compile.RenderingContext=var1391, r3=var2183, $r17=var87, $r0=var146, javax.persistence.criteria.Expression=var2243, $r2=var2599, org.hibernate.query.criteria.internal.Renderable=var1911, $r4=var180, $r5=var1060, $r6=var3652, $r10=var767, $r7=var466, $r8=var1216, $r9=var2591, $r11=var2399, $r12=var1533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.LikePredicate;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	if z0 == 0 goto $r17 = " like ";	$r17 = " not like ";	goto [?= $r0 = new java.lang.StringBuilder];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression getMatchExpression()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r7 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression getPattern()>();	$r8 = (org.hibernate.query.criteria.internal.Renderable) $r7;	$r9 = interfaceinvoke $r8.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r11 = r1.<org.hibernate.query.criteria.internal.predicate.LikePredicate: javax.persistence.criteria.Expression escapeCharacter>;	if $r11 == null goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 4