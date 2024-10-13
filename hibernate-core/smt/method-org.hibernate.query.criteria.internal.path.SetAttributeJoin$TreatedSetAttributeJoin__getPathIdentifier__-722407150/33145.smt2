(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAlias/-56082294 (var2151) String)
(declare-fun treatAsType/-1930529320 (var2151) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2151 var2151)
(declare-const var972 var2151) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin 
(assert (not (= var972 null-var2151)))
(define-const var2891 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2891)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2891!1 String)
(assert (= var2891!1 ""))
(assert true)
(define-const var792 String (append/672562846 var2891!1 "treat(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(") 
(declare-const var2891!2 String)
(assert (= var2891!2 (str.++ var2891!1 "treat(")))
(assert true)
(define-const var1338 String (getAlias/-56082294 var972)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin: java.lang.String getAlias()>() 
(assert true)
(define-const var2431 String (append/672562846 var792 var1338)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var792!1 String)
(assert (= var792!1 (str.++ var792 var1338)))
(assert true)
(define-const var2939 String (append/672562846 var2431 " as ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var2431!1 String)
(assert (= var2431!1 (str.++ var2431 " as ")))
(define-const var3288 ClassObject (treatAsType/-1930529320 var972)) ; Statement: $r5 = r1.<org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin: java.lang.Class treatAsType> 
(assert true)
(define-const var729 String (getName/-1958580599 var3288)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var681 String (append/672562846 var2939 var729)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2939!1 String)
(assert (= var2939!1 (str.++ var2939 var729)))
(assert true)
(define-const var1060 String (append/672562846 var681 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var681!1 String)
(assert (= var681!1 (str.++ var681 ")")))
(assert true)
(define-const var399 String (toString/-2075883882 var1060)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAlias/-56082294=([org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin], java.lang.String), treatAsType/-1930529320=([org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2151=org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin, var972=r1, var2891=$r0, var792=$r3, var1338=$r2, var2431=$r4, var2939=$r7, var3288=$r5, var729=$r6, var681=$r8, var1060=$r9, var399=$r10}
; {org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin=var2151, r1=var972, $r0=var2891, $r3=var792, $r2=var1338, $r4=var2431, $r7=var2939, $r5=var3288, $r6=var729, $r8=var681, $r9=var1060, $r10=var399}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(");	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin: java.lang.String getAlias()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r5 = r1.<org.hibernate.query.criteria.internal.path.SetAttributeJoin$TreatedSetAttributeJoin: java.lang.Class treatAsType>;	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1