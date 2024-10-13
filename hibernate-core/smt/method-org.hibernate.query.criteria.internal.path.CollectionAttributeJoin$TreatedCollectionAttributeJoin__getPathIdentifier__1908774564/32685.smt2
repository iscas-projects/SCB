(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAlias/1069657784 (var997) String)
(declare-fun treatAsType/-1890611322 (var997) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var997 var997)
(declare-const var1376 var997) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin 
(assert (not (= var1376 null-var997)))
(define-const var1445 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1445)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1445!1 String)
(assert (= var1445!1 ""))
(assert true)
(define-const var629 String (append/672562846 var1445!1 "treat(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(") 
(declare-const var1445!2 String)
(assert (= var1445!2 (str.++ var1445!1 "treat(")))
(assert true)
(define-const var1164 String (getAlias/1069657784 var1376)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin: java.lang.String getAlias()>() 
(assert true)
(define-const var3000 String (append/672562846 var629 var1164)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var629!1 String)
(assert (= var629!1 (str.++ var629 var1164)))
(assert true)
(define-const var3596 String (append/672562846 var3000 " as ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var3000!1 String)
(assert (= var3000!1 (str.++ var3000 " as ")))
(define-const var317 ClassObject (treatAsType/-1890611322 var1376)) ; Statement: $r5 = r1.<org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin: java.lang.Class treatAsType> 
(assert true)
(define-const var3057 String (getName/-1958580599 var317)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2626 String (append/672562846 var3596 var3057)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3596!1 String)
(assert (= var3596!1 (str.++ var3596 var3057)))
(assert true)
(define-const var428 String (append/672562846 var2626 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2626!1 String)
(assert (= var2626!1 (str.++ var2626 ")")))
(assert true)
(define-const var2789 String (toString/-2075883882 var428)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAlias/1069657784=([org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin], java.lang.String), treatAsType/-1890611322=([org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var997=org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin, var1376=r1, var1445=$r0, var629=$r3, var1164=$r2, var3000=$r4, var3596=$r7, var317=$r5, var3057=$r6, var2626=$r8, var428=$r9, var2789=$r10}
; {org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin=var997, r1=var1376, $r0=var1445, $r3=var629, $r2=var1164, $r4=var3000, $r7=var3596, $r5=var317, $r6=var3057, $r8=var2626, $r9=var428, $r10=var2789}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(");	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin: java.lang.String getAlias()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r5 = r1.<org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin: java.lang.Class treatAsType>;	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1