(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3130 0)
(declare-sort var3859 0)
(declare-sort var2224 0)
(declare-sort var994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun origin/-1199436508 (var3130) var2224)
(declare-fun var994_getPathIdentifier/-1280971676 (var994) String)
(declare-fun cast-from-var2224-to-var994 (var2224) var994)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3130 var3130)
(declare-const null-var3859 var3859)
(declare-const var1545 var3130) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.ListIndexExpression 
(assert (not (= var1545 null-var3130)))
(declare-const var2146 var3859) ; Statement: r8 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2146 null-var3859)))
(define-const var331 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var331)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var331!1 String)
(assert (= var331!1 ""))
(assert true)
(define-const var454 String (append/672562846 var331!1 "index(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("index(") 
(declare-const var331!2 String)
(assert (= var331!2 (str.++ var331!1 "index(")))
(define-const var3413 var2224 (origin/-1199436508 var1545)) ; Statement: $r2 = r1.<org.hibernate.query.criteria.internal.expression.ListIndexExpression: org.hibernate.query.criteria.internal.PathImplementor origin> 
(define-const var1360 String (var994_getPathIdentifier/-1280971676 (cast-from-var2224-to-var994 var3413))) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.query.criteria.internal.PathImplementor: java.lang.String getPathIdentifier()>() 
(assert true)
(define-const var1022 String (append/672562846 var454 var1360)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var454!1 String)
(assert (= var454!1 (str.++ var454 var1360)))
(assert true)
(define-const var438 String (append/672562846 var1022 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1022!1 String)
(assert (= var1022!1 (str.++ var1022 ")")))
(assert true)
(define-const var2500 String (toString/-2075883882 var438)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), origin/-1199436508=([org.hibernate.query.criteria.internal.expression.ListIndexExpression], org.hibernate.query.criteria.internal.PathImplementor), var994_getPathIdentifier/-1280971676=([org.hibernate.query.criteria.internal.PathSource], java.lang.String), cast-from-var2224-to-var994=([org.hibernate.query.criteria.internal.PathImplementor], org.hibernate.query.criteria.internal.PathSource), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3130=org.hibernate.query.criteria.internal.expression.ListIndexExpression, var1545=r1, var3859=org.hibernate.query.criteria.internal.compile.RenderingContext, var2146=r8, var331=$r0, var454=$r4, var2224=org.hibernate.query.criteria.internal.PathImplementor, var3413=$r2, var994=org.hibernate.query.criteria.internal.PathSource, var1360=$r3, var1022=$r5, var438=$r6, var2500=$r7}
; {org.hibernate.query.criteria.internal.expression.ListIndexExpression=var3130, r1=var1545, org.hibernate.query.criteria.internal.compile.RenderingContext=var3859, r8=var2146, $r0=var331, $r4=var454, org.hibernate.query.criteria.internal.PathImplementor=var2224, $r2=var3413, org.hibernate.query.criteria.internal.PathSource=var994, $r3=var1360, $r5=var1022, $r6=var438, $r7=var2500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.ListIndexExpression;	r8 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("index(");	$r2 = r1.<org.hibernate.query.criteria.internal.expression.ListIndexExpression: org.hibernate.query.criteria.internal.PathImplementor origin>;	$r3 = interfaceinvoke $r2.<org.hibernate.query.criteria.internal.PathImplementor: java.lang.String getPathIdentifier()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1