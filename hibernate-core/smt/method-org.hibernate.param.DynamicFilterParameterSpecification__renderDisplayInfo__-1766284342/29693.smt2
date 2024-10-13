(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun filterName/1482838954 (var3701) String)
(declare-fun parameterName/1482838954 (var3701) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3701 var3701)
(declare-const var3434 var3701) ; Statement: r1 := @this: org.hibernate.param.DynamicFilterParameterSpecification 
(assert (not (= var3434 null-var3701)))
(define-const var3606 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3606)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3606!1 String)
(assert (= var3606!1 ""))
(assert true)
(define-const var2337 String (append/672562846 var3606!1 "dynamic-filter={filterName=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dynamic-filter={filterName=") 
(declare-const var3606!2 String)
(assert (= var3606!2 (str.++ var3606!1 "dynamic-filter={filterName=")))
(define-const var2633 String (filterName/1482838954 var3434)) ; Statement: $r2 = r1.<org.hibernate.param.DynamicFilterParameterSpecification: java.lang.String filterName> 
(assert true)
(define-const var359 String (append/672562846 var2337 var2633)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2337!1 String)
(assert (= var2337!1 (str.++ var2337 var2633)))
(assert true)
(define-const var3176 String (append/672562846 var359 ",paramName=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",paramName=") 
(declare-const var359!1 String)
(assert (= var359!1 (str.++ var359 ",paramName=")))
(define-const var1281 String (parameterName/1482838954 var3434)) ; Statement: $r5 = r1.<org.hibernate.param.DynamicFilterParameterSpecification: java.lang.String parameterName> 
(assert true)
(define-const var1035 String (append/672562846 var3176 var1281)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3176!1 String)
(assert (= var3176!1 (str.++ var3176 var1281)))
(assert true)
(define-const var1991 String (append/672562846 var1035 "}")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1035!1 String)
(assert (= var1035!1 (str.++ var1035 "}")))
(assert true)
(define-const var84 String (toString/-2075883882 var1991)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), filterName/1482838954=([org.hibernate.param.DynamicFilterParameterSpecification], java.lang.String), parameterName/1482838954=([org.hibernate.param.DynamicFilterParameterSpecification], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3701=org.hibernate.param.DynamicFilterParameterSpecification, var3434=r1, var3606=$r0, var2337=$r3, var2633=$r2, var359=$r4, var3176=$r6, var1281=$r5, var1035=$r7, var1991=$r8, var84=$r9}
; {org.hibernate.param.DynamicFilterParameterSpecification=var3701, r1=var3434, $r0=var3606, $r3=var2337, $r2=var2633, $r4=var359, $r6=var3176, $r5=var1281, $r7=var1035, $r8=var1991, $r9=var84}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.param.DynamicFilterParameterSpecification;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dynamic-filter={filterName=");	$r2 = r1.<org.hibernate.param.DynamicFilterParameterSpecification: java.lang.String filterName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",paramName=");	$r5 = r1.<org.hibernate.param.DynamicFilterParameterSpecification: java.lang.String parameterName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1