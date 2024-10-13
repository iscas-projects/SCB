(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var797 0)
(declare-sort var2369 0)
(declare-sort var2579 0)
(declare-sort var2006 0)
(declare-sort var2321 0)
(declare-sort var419 0)
(declare-sort var3034 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2006!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getExpression/-1977772026 (var797) var2579)
(declare-fun isInstance/451912363 (ClassObject var2321) Bool)
(declare-fun cast-from-var2579-to-var2321 (var2579) var2321)
(declare-fun cast-from-var2579-to-var419 (var2579) var419)
(declare-fun var419_render/-1233042088 (var419 var2369) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValues/1067036624 (var797) var3034)
(declare-fun var3034_size/-959786421 (var3034) Int)
(declare-fun var3034_get/-1216255739 (var3034 Int) var2321)
(declare-fun cast-from-var2321-to-var419 (var2321) var419)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var797 var797)
(declare-const null-Bool Bool)
(declare-const null-var2369 var2369)
(declare-const var341 var797) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.InPredicate 
(assert (not (= var341 null-var797)))
(declare-const var2517 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var2517 null-Bool)))
(declare-const var183 var2369) ; Statement: r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var183 null-var2369)))
(define-const var327 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var327)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var327!1 String)
(assert (= var327!1 ""))
(assert true)
(define-const var2897 var2579 (getExpression/-1977772026 var341)) ; Statement: r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: javax.persistence.criteria.Expression getExpression()>() 
(define-const var2030 ClassObject var2006!class) ; Statement: $r3 = class "Lorg/hibernate/query/criteria/internal/expression/ParameterExpressionImpl;" 
(assert true)
(define-const var3137 Bool (isInstance/451912363 var2030 (cast-from-var2579-to-var2321 var2897))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Class: boolean isInstance(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: javax.persistence.criteria.Expression getExpression()>() 
(assert (= (ite var3137 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1861 var2579 (getExpression/-1977772026 var341)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: javax.persistence.criteria.Expression getExpression()>() 
(define-const var489 var419 (cast-from-var2579-to-var419 var1861)) ; Statement: $r6 = (org.hibernate.query.criteria.internal.Renderable) $r4 
(define-const var1609 String (var419_render/-1233042088 var489 var183)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5) 
(assert true)
;(assert (append/672562846 var327!1 var1609)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var327!2 String)
(assert (= var327!2 (str.++ var327!1 var1609)))
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(assert (= (ite var2517 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (append/672562846 var327!2 " in ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var327!3 String)
(assert (= var327!3 (str.++ var327!2 " in ")))
(assert true)
(define-const var3714 var3034 (getValues/1067036624 var341)) ; Statement: $r20 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: java.util.List getValues()>() 
(define-const var1898 Int (var3034_size/-959786421 var3714)) ; Statement: $i0 = interfaceinvoke $r20.<java.util.List: int size()>() 
 ; Statement: if $i0 != 1 goto $z6 = 0 
(assert (not (= var1898 1))) ; Cond: $i0 != 1 
(define-const var1469 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z6 == 0 goto $z2 = interfaceinvoke $r20.<java.util.List: boolean isEmpty()>() 
(assert (not (= (ite var1469 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var3958 var2321 (var3034_get/-1216255739 var3714 0)) ; Statement: $r15 = interfaceinvoke $r20.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var743 var419 (cast-from-var2321-to-var419 var3958)) ; Statement: $r16 = (org.hibernate.query.criteria.internal.Renderable) $r15 
(define-const var284 String (var419_render/-1233042088 var743 var183)) ; Statement: $r17 = interfaceinvoke $r16.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5) 
(assert true)
;(assert (append/672562846 var327!3 var284)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var327!4 String)
(assert (= var327!4 (str.++ var327!3 var284)))
 ; Statement: goto [?= $r37 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2800 String (toString/-2075883882 var327!4)) ; Statement: $r37 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getExpression/-1977772026=([org.hibernate.query.criteria.internal.predicate.InPredicate], javax.persistence.criteria.Expression), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var2579-to-var2321=([javax.persistence.criteria.Expression], java.lang.Object), cast-from-var2579-to-var419=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var419_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValues/1067036624=([org.hibernate.query.criteria.internal.predicate.InPredicate], java.util.List), var3034_size/-959786421=([java.util.List], int), var3034_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2321-to-var419=([java.lang.Object], org.hibernate.query.criteria.internal.Renderable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var797=org.hibernate.query.criteria.internal.predicate.InPredicate, var341=r1, var2517=z1, var2369=org.hibernate.query.criteria.internal.compile.RenderingContext, var183=r5, var327=$r0, var2579=javax.persistence.criteria.Expression, var2897=r2, var2006=org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl, var2030=$r3, var2321=java.lang.Object, var3137=$z0, var1861=$r4, var419=org.hibernate.query.criteria.internal.Renderable, var489=$r6, var1609=$r7, var3034=java.util.List, var3714=$r20, var1898=$i0, var1469=$z6, var3958=$r15, var743=$r16, var284=$r17, var2800=$r37}
; {org.hibernate.query.criteria.internal.predicate.InPredicate=var797, r1=var341, z1=var2517, org.hibernate.query.criteria.internal.compile.RenderingContext=var2369, r5=var183, $r0=var327, javax.persistence.criteria.Expression=var2579, r2=var2897, org.hibernate.query.criteria.internal.expression.ParameterExpressionImpl=var2006, $r3=var2030, java.lang.Object=var2321, $z0=var3137, $r4=var1861, org.hibernate.query.criteria.internal.Renderable=var419, $r6=var489, $r7=var1609, java.util.List=var3034, $r20=var3714, $i0=var1898, $z6=var1469, $r15=var3958, $r16=var743, $r17=var284, $r37=var2800}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.InPredicate;	z1 := @parameter0: boolean;	r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: javax.persistence.criteria.Expression getExpression()>();	$r3 = class "Lorg/hibernate/query/criteria/internal/expression/ParameterExpressionImpl;";	$z0 = virtualinvoke $r3.<java.lang.Class: boolean isInstance(java.lang.Object)>(r2);	if $z0 == 0 goto $r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: javax.persistence.criteria.Expression getExpression()>();	$r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: javax.persistence.criteria.Expression getExpression()>();	$r6 = (org.hibernate.query.criteria.internal.Renderable) $r4;	$r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	if z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	$r20 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.InPredicate: java.util.List getValues()>();	$i0 = interfaceinvoke $r20.<java.util.List: int size()>();	if $i0 != 1 goto $z6 = 0;	$z6 = 0;	if $z6 == 0 goto $z2 = interfaceinvoke $r20.<java.util.List: boolean isEmpty()>();	$r15 = interfaceinvoke $r20.<java.util.List: java.lang.Object get(int)>(0);	$r16 = (org.hibernate.query.criteria.internal.Renderable) $r15;	$r17 = interfaceinvoke $r16.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	goto [?= $r37 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r37 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r37
;block_num 8