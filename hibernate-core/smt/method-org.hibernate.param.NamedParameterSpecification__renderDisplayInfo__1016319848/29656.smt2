(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3789 0)
(declare-sort var3973 0)
(declare-sort var2683 0)
(declare-sort var2286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/996041164 (var3789) String)
(declare-fun getExpectedType/1604374374 (var2683) var3973)
(declare-fun cast-from-var3789-to-var2683 (var3789) var2683)
(declare-fun append/-1031950772 (String var2286) String)
(declare-fun cast-from-var3973-to-var2286 (var3973) var2286)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3789 var3789)
(declare-const var1405 var3789) ; Statement: r1 := @this: org.hibernate.param.NamedParameterSpecification 
(assert (not (= var1405 null-var3789)))
(define-const var3477 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3477)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3477!1 String)
(assert (= var3477!1 ""))
(assert true)
(define-const var579 String (append/672562846 var3477!1 "name=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name=") 
(declare-const var3477!2 String)
(assert (= var3477!2 (str.++ var3477!1 "name=")))
(define-const var2593 String (name/996041164 var1405)) ; Statement: $r2 = r1.<org.hibernate.param.NamedParameterSpecification: java.lang.String name> 
(assert true)
(define-const var3193 String (append/672562846 var579 var2593)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var579!1 String)
(assert (= var579!1 (str.++ var579 var2593)))
(assert true)
(define-const var2199 String (append/672562846 var3193 ", expectedType=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", expectedType=") 
(declare-const var3193!1 String)
(assert (= var3193!1 (str.++ var3193 ", expectedType=")))
(assert true)
(define-const var2903 var3973 (getExpectedType/1604374374 (cast-from-var3789-to-var2683 var1405))) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.param.NamedParameterSpecification: org.hibernate.type.Type getExpectedType()>() 
(assert true)
(define-const var3776 String (append/-1031950772 var2199 (cast-from-var3973-to-var2286 var2903))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2199!1 String)
(assert (str.prefixof var2199 var2199!1))
(assert true)
(define-const var2449 String (toString/-2075883882 var3776)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/996041164=([org.hibernate.param.NamedParameterSpecification], java.lang.String), getExpectedType/1604374374=([org.hibernate.param.AbstractExplicitParameterSpecification], org.hibernate.type.Type), cast-from-var3789-to-var2683=([org.hibernate.param.NamedParameterSpecification], org.hibernate.param.AbstractExplicitParameterSpecification), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3973-to-var2286=([org.hibernate.type.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3789=org.hibernate.param.NamedParameterSpecification, var1405=r1, var3477=$r0, var579=$r3, var2593=$r2, var3193=$r4, var2199=$r6, var3973=org.hibernate.type.Type, var2683=org.hibernate.param.AbstractExplicitParameterSpecification, var2903=$r5, var2286=java.lang.Object, var3776=$r7, var2449=$r8}
; {org.hibernate.param.NamedParameterSpecification=var3789, r1=var1405, $r0=var3477, $r3=var579, $r2=var2593, $r4=var3193, $r6=var2199, org.hibernate.type.Type=var3973, org.hibernate.param.AbstractExplicitParameterSpecification=var2683, $r5=var2903, java.lang.Object=var2286, $r7=var3776, $r8=var2449}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.param.NamedParameterSpecification;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name=");	$r2 = r1.<org.hibernate.param.NamedParameterSpecification: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", expectedType=");	$r5 = virtualinvoke r1.<org.hibernate.param.NamedParameterSpecification: org.hibernate.type.Type getExpectedType()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1