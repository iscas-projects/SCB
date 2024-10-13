(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3466 0)
(declare-sort var1973 0)
(declare-sort var1571 0)
(declare-sort var1505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun original/-1890611322 (var3466) var1571)
(declare-fun render/627455273 (var1505 var1973) String)
(declare-fun cast-from-var1571-to-var1505 (var1571) var1505)
(declare-fun treatAsType/-1890611322 (var3466) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3466 var3466)
(declare-const null-var1973 var1973)
(declare-const var205 var3466) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin 
(assert (not (= var205 null-var3466)))
(declare-const var1470 var1973) ; Statement: r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1470 null-var1973)))
(define-const var3614 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3614)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3614!1 String)
(assert (= var3614!1 ""))
(assert true)
(define-const var3967 String (append/672562846 var3614!1 "treat(")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(") 
(declare-const var3614!2 String)
(assert (= var3614!2 (str.++ var3614!1 "treat(")))
(define-const var3419 var1571 (original/-1890611322 var205)) ; Statement: $r3 = r1.<org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin: org.hibernate.query.criteria.internal.path.CollectionAttributeJoin original> 
(assert true)
(define-const var411 String (render/627455273 (cast-from-var1571-to-var1505 var3419) var1470)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.CollectionAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2) 
(assert true)
(define-const var2782 String (append/672562846 var3967 var411)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3967!1 String)
(assert (= var3967!1 (str.++ var3967 var411)))
(assert true)
(define-const var267 String (append/672562846 var2782 " as ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var2782!1 String)
(assert (= var2782!1 (str.++ var2782 " as ")))
(define-const var2083 ClassObject (treatAsType/-1890611322 var205)) ; Statement: $r7 = r1.<org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin: java.lang.Class treatAsType> 
(assert true)
(define-const var3796 String (getName/-1958580599 var2083)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2673 String (append/672562846 var267 var3796)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var267!1 String)
(assert (= var267!1 (str.++ var267 var3796)))
(assert true)
(define-const var1988 String (append/672562846 var2673 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2673!1 String)
(assert (= var2673!1 (str.++ var2673 ")")))
(assert true)
(define-const var968 String (toString/-2075883882 var1988)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), original/-1890611322=([org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin], org.hibernate.query.criteria.internal.path.CollectionAttributeJoin), render/627455273=([org.hibernate.query.criteria.internal.path.AbstractFromImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var1571-to-var1505=([org.hibernate.query.criteria.internal.path.CollectionAttributeJoin], org.hibernate.query.criteria.internal.path.AbstractFromImpl), treatAsType/-1890611322=([org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3466=org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin, var205=r1, var1973=org.hibernate.query.criteria.internal.compile.RenderingContext, var1470=r2, var3614=$r0, var3967=$r5, var1571=org.hibernate.query.criteria.internal.path.CollectionAttributeJoin, var3419=$r3, var1505=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var411=$r4, var2782=$r6, var267=$r9, var2083=$r7, var3796=$r8, var2673=$r10, var1988=$r11, var968=$r12}
; {org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin=var3466, r1=var205, org.hibernate.query.criteria.internal.compile.RenderingContext=var1973, r2=var1470, $r0=var3614, $r5=var3967, org.hibernate.query.criteria.internal.path.CollectionAttributeJoin=var1571, $r3=var3419, org.hibernate.query.criteria.internal.path.AbstractFromImpl=var1505, $r4=var411, $r6=var2782, $r9=var267, $r7=var2083, $r8=var3796, $r10=var2673, $r11=var1988, $r12=var968}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin;	r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(");	$r3 = r1.<org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin: org.hibernate.query.criteria.internal.path.CollectionAttributeJoin original>;	$r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.CollectionAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r7 = r1.<org.hibernate.query.criteria.internal.path.CollectionAttributeJoin$TreatedCollectionAttributeJoin: java.lang.Class treatAsType>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1