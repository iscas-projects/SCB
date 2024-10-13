(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3328 0)
(declare-sort var298 0)
(declare-sort var1456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/19152 (var3328) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun values/19152 (var3328) (Array Int var298))
(declare-fun var1456_toString/1760174701 ((Array Int var298)) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3328 var3328)
(declare-const var2068 var3328) ; Statement: r1 := @this: org.hibernate.criterion.InExpression 
(assert (not (= var2068 null-var3328)))
(define-const var2295 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2295)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2295!1 String)
(assert (= var2295!1 ""))
(define-const var66 String (propertyName/19152 var2068)) ; Statement: $r2 = r1.<org.hibernate.criterion.InExpression: java.lang.String propertyName> 
(assert true)
(define-const var1213 String (append/672562846 var2295!1 var66)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2295!2 String)
(assert (= var2295!2 (str.++ var2295!1 var66)))
(assert true)
(define-const var3605 String (append/672562846 var1213 " in (")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in (") 
(declare-const var1213!1 String)
(assert (= var1213!1 (str.++ var1213 " in (")))
(define-const var2902 (Array Int var298) (values/19152 var2068)) ; Statement: $r4 = r1.<org.hibernate.criterion.InExpression: java.lang.Object[] values> 
(define-const var1687 String (var1456_toString/1760174701 var2902)) ; Statement: $r5 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String toString(java.lang.Object[])>($r4) 
(assert true)
(define-const var205 String (append/672562846 var3605 var1687)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3605!1 String)
(assert (= var3605!1 (str.++ var3605 var1687)))
(assert true)
(define-const var3343 String (append/-1166366385 var205 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var205!1 String)
(assert (str.prefixof var205 var205!1))
(assert true)
(define-const var2970 String (toString/-2075883882 var3343)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/19152=([org.hibernate.criterion.InExpression], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), values/19152=([org.hibernate.criterion.InExpression], java.lang.Object[]), var1456_toString/1760174701=([java.lang.Object[]], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3328=org.hibernate.criterion.InExpression, var2068=r1, var2295=$r0, var66=$r2, var1213=$r3, var3605=$r6, var298=java.lang.Object, var2902=$r4, var1456=org.hibernate.internal.util.StringHelper, var1687=$r5, var205=$r7, var3343=$r8, var2970=$r9}
; {org.hibernate.criterion.InExpression=var3328, r1=var2068, $r0=var2295, $r2=var66, $r3=var1213, $r6=var3605, java.lang.Object=var298, $r4=var2902, org.hibernate.internal.util.StringHelper=var1456, $r5=var1687, $r7=var205, $r8=var3343, $r9=var2970}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.internal.util.StringHelper: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.InExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.InExpression: java.lang.String propertyName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in (");	$r4 = r1.<org.hibernate.criterion.InExpression: java.lang.Object[] values>;	$r5 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String toString(java.lang.Object[])>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1