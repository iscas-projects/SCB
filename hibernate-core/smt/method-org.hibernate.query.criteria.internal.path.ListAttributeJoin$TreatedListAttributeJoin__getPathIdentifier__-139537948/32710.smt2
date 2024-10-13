(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAlias/-240333960 (var342) String)
(declare-fun treatAsType/-1324108218 (var342) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var342 var342)
(declare-const var1836 var342) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin 
(assert (not (= var1836 null-var342)))
(define-const var1426 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1426)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1426!1 String)
(assert (= var1426!1 ""))
(assert true)
(define-const var46 String (append/672562846 var1426!1 "treat(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(") 
(declare-const var1426!2 String)
(assert (= var1426!2 (str.++ var1426!1 "treat(")))
(assert true)
(define-const var3622 String (getAlias/-240333960 var1836)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin: java.lang.String getAlias()>() 
(assert true)
(define-const var3340 String (append/672562846 var46 var3622)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var46!1 String)
(assert (= var46!1 (str.++ var46 var3622)))
(assert true)
(define-const var833 String (append/672562846 var3340 " as ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var3340!1 String)
(assert (= var3340!1 (str.++ var3340 " as ")))
(define-const var2885 ClassObject (treatAsType/-1324108218 var1836)) ; Statement: $r5 = r1.<org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin: java.lang.Class treatAsType> 
(assert true)
(define-const var727 String (getName/-1958580599 var2885)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var38 String (append/672562846 var833 var727)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var833!1 String)
(assert (= var833!1 (str.++ var833 var727)))
(assert true)
(define-const var2335 String (append/672562846 var38 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var38!1 String)
(assert (= var38!1 (str.++ var38 ")")))
(assert true)
(define-const var3862 String (toString/-2075883882 var2335)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAlias/-240333960=([org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin], java.lang.String), treatAsType/-1324108218=([org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var342=org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin, var1836=r1, var1426=$r0, var46=$r3, var3622=$r2, var3340=$r4, var833=$r7, var2885=$r5, var727=$r6, var38=$r8, var2335=$r9, var3862=$r10}
; {org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin=var342, r1=var1836, $r0=var1426, $r3=var46, $r2=var3622, $r4=var3340, $r7=var833, $r5=var2885, $r6=var727, $r8=var38, $r9=var2335, $r10=var3862}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(");	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin: java.lang.String getAlias()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r5 = r1.<org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin: java.lang.Class treatAsType>;	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1