(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1608 0)
(declare-sort var1234 0)
(declare-sort var2023 0)
(declare-sort var2041 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getPathSource/-787522163 (var1608) var1234)
(declare-fun var1234_getPathIdentifier/-1280971676 (var1234) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAttribute/-112258107 (var2041) var2023)
(declare-fun cast-from-var1608-to-var2041 (var1608) var2041)
(declare-fun var2023_getName/782728034 (var2023) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1608 var1608)
(declare-const var141 var1608) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.AbstractPathImpl 
(assert (not (= var141 null-var1608)))
(define-const var1850 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1850)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1850!1 String)
(assert (= var1850!1 ""))
(assert true)
(define-const var2961 var1234 (getPathSource/-787522163 var141)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: org.hibernate.query.criteria.internal.PathSource getPathSource()>() 
(define-const var1077 String (var1234_getPathIdentifier/-1280971676 var2961)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.query.criteria.internal.PathSource: java.lang.String getPathIdentifier()>() 
(assert true)
(define-const var3376 String (append/672562846 var1850!1 var1077)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1850!2 String)
(assert (= var1850!2 (str.++ var1850!1 var1077)))
(assert true)
(define-const var1485 String (append/672562846 var3376 ".")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3376!1 String)
(assert (= var3376!1 (str.++ var3376 ".")))
(assert true)
(define-const var2890 var2023 (getAttribute/-112258107 (cast-from-var1608-to-var2041 var141))) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: javax.persistence.metamodel.Attribute getAttribute()>() 
(define-const var3606 String (var2023_getName/782728034 var2890)) ; Statement: $r6 = interfaceinvoke $r5.<javax.persistence.metamodel.Attribute: java.lang.String getName()>() 
(assert true)
(define-const var3632 String (append/672562846 var1485 var3606)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1485!1 String)
(assert (= var1485!1 (str.++ var1485 var3606)))
(assert true)
(define-const var2917 String (toString/-2075883882 var3632)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getPathSource/-787522163=([org.hibernate.query.criteria.internal.path.AbstractPathImpl], org.hibernate.query.criteria.internal.PathSource), var1234_getPathIdentifier/-1280971676=([org.hibernate.query.criteria.internal.PathSource], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAttribute/-112258107=([org.hibernate.query.criteria.internal.PathImplementor], javax.persistence.metamodel.Attribute), cast-from-var1608-to-var2041=([org.hibernate.query.criteria.internal.path.AbstractPathImpl], org.hibernate.query.criteria.internal.PathImplementor), var2023_getName/782728034=([javax.persistence.metamodel.Attribute], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1608=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var141=r1, var1850=$r0, var1234=org.hibernate.query.criteria.internal.PathSource, var2961=$r2, var1077=$r3, var3376=$r4, var1485=$r7, var2023=javax.persistence.metamodel.Attribute, var2041=org.hibernate.query.criteria.internal.PathImplementor, var2890=$r5, var3606=$r6, var3632=$r8, var2917=$r9}
; {org.hibernate.query.criteria.internal.path.AbstractPathImpl=var1608, r1=var141, $r0=var1850, org.hibernate.query.criteria.internal.PathSource=var1234, $r2=var2961, $r3=var1077, $r4=var3376, $r7=var1485, javax.persistence.metamodel.Attribute=var2023, org.hibernate.query.criteria.internal.PathImplementor=var2041, $r5=var2890, $r6=var3606, $r8=var3632, $r9=var2917}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.AbstractPathImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: org.hibernate.query.criteria.internal.PathSource getPathSource()>();	$r3 = interfaceinvoke $r2.<org.hibernate.query.criteria.internal.PathSource: java.lang.String getPathIdentifier()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r5 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: javax.persistence.metamodel.Attribute getAttribute()>();	$r6 = interfaceinvoke $r5.<javax.persistence.metamodel.Attribute: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1