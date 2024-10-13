(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAlias/-1587164138 (var1765) String)
(declare-fun treatAsType/-1600356764 (var1765) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1765 var1765)
(declare-const var788 var1765) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin 
(assert (not (= var788 null-var1765)))
(define-const var3244 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3244)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3244!1 String)
(assert (= var3244!1 ""))
(assert true)
(define-const var298 String (append/672562846 var3244!1 "treat(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(") 
(declare-const var3244!2 String)
(assert (= var3244!2 (str.++ var3244!1 "treat(")))
(assert true)
(define-const var3939 String (getAlias/-1587164138 var788)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin: java.lang.String getAlias()>() 
(assert true)
(define-const var1449 String (append/672562846 var298 var3939)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var298!1 String)
(assert (= var298!1 (str.++ var298 var3939)))
(assert true)
(define-const var2828 String (append/672562846 var1449 " as ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var1449!1 String)
(assert (= var1449!1 (str.++ var1449 " as ")))
(define-const var2162 ClassObject (treatAsType/-1600356764 var788)) ; Statement: $r5 = r1.<org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin: java.lang.Class treatAsType> 
(assert true)
(define-const var739 String (getName/-1958580599 var2162)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3668 String (append/672562846 var2828 var739)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2828!1 String)
(assert (= var2828!1 (str.++ var2828 var739)))
(assert true)
(define-const var3936 String (append/672562846 var3668 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3668!1 String)
(assert (= var3668!1 (str.++ var3668 ")")))
(assert true)
(define-const var2422 String (toString/-2075883882 var3936)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAlias/-1587164138=([org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin], java.lang.String), treatAsType/-1600356764=([org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1765=org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin, var788=r1, var3244=$r0, var298=$r3, var3939=$r2, var1449=$r4, var2828=$r7, var2162=$r5, var739=$r6, var3668=$r8, var3936=$r9, var2422=$r10}
; {org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin=var1765, r1=var788, $r0=var3244, $r3=var298, $r2=var3939, $r4=var1449, $r7=var2828, $r5=var2162, $r6=var739, $r8=var3668, $r9=var3936, $r10=var2422}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(");	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin: java.lang.String getAlias()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r5 = r1.<org.hibernate.query.criteria.internal.path.MapAttributeJoin$TreatedMapAttributeJoin: java.lang.Class treatAsType>;	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1