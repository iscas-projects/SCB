(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3422 0)
(declare-sort var3316 0)
(declare-sort var2863 0)
(declare-sort var655 0)
(declare-sort var1055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getExpression/-73117893 (var3422) var2863)
(declare-fun cast-from-var2863-to-var655 (var2863) var655)
(declare-fun var655_render/-1233042088 (var655 var3316) String)
(declare-fun getWhenClauses/1968428051 (var3422) var1055)
(declare-fun var1055_iterator/-912451715 (var1055) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun getOtherwiseResult/266662166 (var3422) var2863)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3422 var3422)
(declare-const null-var3316 var3316)
(declare-const var3656 var3422) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.SimpleCaseExpression 
(assert (not (= var3656 null-var3422)))
(declare-const var336 var3316) ; Statement: r3 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var336 null-var3316)))
(define-const var339 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var339)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var339!1 String)
(assert (= var339!1 ""))
(assert true)
(define-const var2222 String (append/672562846 var339!1 "case ")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("case ") 
(declare-const var339!2 String)
(assert (= var339!2 (str.++ var339!1 "case ")))
(assert true)
(define-const var653 var2863 (getExpression/-73117893 var3656)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SimpleCaseExpression: javax.persistence.criteria.Expression getExpression()>() 
(define-const var3320 var655 (cast-from-var2863-to-var655 var653)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var2069 String (var655_render/-1233042088 var3320 var336)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
;(assert (append/672562846 var2222 var2069)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2222!1 String)
(assert (= var2222!1 (str.++ var2222 var2069)))
(assert true)
(define-const var420 var1055 (getWhenClauses/1968428051 var3656)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SimpleCaseExpression: java.util.List getWhenClauses()>() 
(define-const var2476 Iterator (var1055_iterator/-912451715 var420)) ; Statement: r8 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3912 Bool (Iterator_hasNext/-1669924200 var2476)) ; Statement: $z0 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" else ") 
(assert (= (ite var3912 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var892 String (append/672562846 var339!2 " else ")) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" else ") 
(declare-const var339!3 String)
(assert (= var339!3 (str.++ var339!2 " else ")))
(assert true)
(define-const var2489 var2863 (getOtherwiseResult/266662166 var3656)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SimpleCaseExpression: javax.persistence.criteria.Expression getOtherwiseResult()>() 
(define-const var3899 var655 (cast-from-var2863-to-var655 var2489)) ; Statement: $r10 = (org.hibernate.query.criteria.internal.Renderable) $r9 
(define-const var150 String (var655_render/-1233042088 var3899 var336)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var1264 String (append/672562846 var892 var150)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var892!1 String)
(assert (= var892!1 (str.++ var892 var150)))
(assert true)
;(assert (append/672562846 var1264 " end")) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end") 
(declare-const var1264!1 String)
(assert (= var1264!1 (str.++ var1264 " end")))
(assert true)
(define-const var763 String (toString/-2075883882 var339!3)) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getExpression/-73117893=([org.hibernate.query.criteria.internal.expression.SimpleCaseExpression], javax.persistence.criteria.Expression), cast-from-var2863-to-var655=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var655_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), getWhenClauses/1968428051=([org.hibernate.query.criteria.internal.expression.SimpleCaseExpression], java.util.List), var1055_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), getOtherwiseResult/266662166=([org.hibernate.query.criteria.internal.expression.SimpleCaseExpression], javax.persistence.criteria.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3422=org.hibernate.query.criteria.internal.expression.SimpleCaseExpression, var3656=r1, var3316=org.hibernate.query.criteria.internal.compile.RenderingContext, var336=r3, var339=$r0, var2222=$r6, var2863=javax.persistence.criteria.Expression, var653=$r2, var655=org.hibernate.query.criteria.internal.Renderable, var3320=$r4, var2069=$r5, var1055=java.util.List, var420=$r7, var2476=r8, var3912=$z0, var892=$r12, var2489=$r9, var3899=$r10, var150=$r11, var1264=$r13, var763=$r14}
; {org.hibernate.query.criteria.internal.expression.SimpleCaseExpression=var3422, r1=var3656, org.hibernate.query.criteria.internal.compile.RenderingContext=var3316, r3=var336, $r0=var339, $r6=var2222, javax.persistence.criteria.Expression=var2863, $r2=var653, org.hibernate.query.criteria.internal.Renderable=var655, $r4=var3320, $r5=var2069, java.util.List=var1055, $r7=var420, r8=var2476, $z0=var3912, $r12=var892, $r9=var2489, $r10=var3899, $r11=var150, $r13=var1264, $r14=var763}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.SimpleCaseExpression;	r3 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("case ");	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SimpleCaseExpression: javax.persistence.criteria.Expression getExpression()>();	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SimpleCaseExpression: java.util.List getWhenClauses()>();	r8 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" else ");	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" else ");	$r9 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SimpleCaseExpression: javax.persistence.criteria.Expression getOtherwiseResult()>();	$r10 = (org.hibernate.query.criteria.internal.Renderable) $r9;	$r11 = interfaceinvoke $r10.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end");	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3