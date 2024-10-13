(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3309 0)
(declare-sort var3841 0)
(declare-sort var3011 0)
(declare-sort var2809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPluralAttributePath/1137650442 (var3309) var3011)
(declare-fun render/1530814564 (var2809 var3841) String)
(declare-fun cast-from-var3011-to-var2809 (var3011) var2809)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3309 var3309)
(declare-const null-var3841 var3841)
(declare-const var2525 var3309) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.SizeOfPluralAttributeExpression 
(assert (not (= var2525 null-var3309)))
(declare-const var2552 var3841) ; Statement: r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2552 null-var3841)))
(define-const var3818 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3818)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3818!1 String)
(assert (= var3818!1 ""))
(assert true)
(define-const var1395 String (append/672562846 var3818!1 "size(")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("size(") 
(declare-const var3818!2 String)
(assert (= var3818!2 (str.++ var3818!1 "size(")))
(assert true)
(define-const var3600 var3011 (getPluralAttributePath/1137650442 var2525)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SizeOfPluralAttributeExpression: org.hibernate.query.criteria.internal.path.PluralAttributePath getPluralAttributePath()>() 
(assert true)
(define-const var2466 String (render/1530814564 (cast-from-var3011-to-var2809 var3600) var2552)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.PluralAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2) 
(assert true)
(define-const var1441 String (append/672562846 var1395 var2466)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1395!1 String)
(assert (= var1395!1 (str.++ var1395 var2466)))
(assert true)
(define-const var2507 String (append/672562846 var1441 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1441!1 String)
(assert (= var1441!1 (str.++ var1441 ")")))
(assert true)
(define-const var3112 String (toString/-2075883882 var2507)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPluralAttributePath/1137650442=([org.hibernate.query.criteria.internal.expression.SizeOfPluralAttributeExpression], org.hibernate.query.criteria.internal.path.PluralAttributePath), render/1530814564=([org.hibernate.query.criteria.internal.path.AbstractPathImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var3011-to-var2809=([org.hibernate.query.criteria.internal.path.PluralAttributePath], org.hibernate.query.criteria.internal.path.AbstractPathImpl), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3309=org.hibernate.query.criteria.internal.expression.SizeOfPluralAttributeExpression, var2525=r1, var3841=org.hibernate.query.criteria.internal.compile.RenderingContext, var2552=r2, var3818=$r0, var1395=$r5, var3011=org.hibernate.query.criteria.internal.path.PluralAttributePath, var3600=$r3, var2809=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var2466=$r4, var1441=$r6, var2507=$r7, var3112=$r8}
; {org.hibernate.query.criteria.internal.expression.SizeOfPluralAttributeExpression=var3309, r1=var2525, org.hibernate.query.criteria.internal.compile.RenderingContext=var3841, r2=var2552, $r0=var3818, $r5=var1395, org.hibernate.query.criteria.internal.path.PluralAttributePath=var3011, $r3=var3600, org.hibernate.query.criteria.internal.path.AbstractPathImpl=var2809, $r4=var2466, $r6=var1441, $r7=var2507, $r8=var3112}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.SizeOfPluralAttributeExpression;	r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("size(");	$r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SizeOfPluralAttributeExpression: org.hibernate.query.criteria.internal.path.PluralAttributePath getPluralAttributePath()>();	$r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.PluralAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1