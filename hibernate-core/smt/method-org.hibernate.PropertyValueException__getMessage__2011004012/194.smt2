(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2689 0)
(declare-sort var3472 0)
(declare-sort var1261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/918716458 (var3472) String)
(declare-fun cast-from-var2689-to-var3472 (var2689) var3472)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityName/181642777 (var2689) String)
(declare-fun propertyName/181642777 (var2689) String)
(declare-fun var1261_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2689 var2689)
(declare-const var1630 var2689) ; Statement: r1 := @this: org.hibernate.PropertyValueException 
(assert (not (= var1630 null-var2689)))
(define-const var569 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var569)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var569!1 String)
(assert (= var569!1 ""))
(assert true)
(define-const var150 String (getMessage/918716458 (cast-from-var2689-to-var3472 var1630))) ; Statement: $r2 = specialinvoke r1.<org.hibernate.HibernateException: java.lang.String getMessage()>() 
(assert true)
(define-const var2513 String (append/672562846 var569!1 var150)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var569!2 String)
(assert (= var569!2 (str.++ var569!1 var150)))
(assert true)
(define-const var2847 String (append/672562846 var2513 " : ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var2513!1 String)
(assert (= var2513!1 (str.++ var2513 " : ")))
(define-const var2583 String (entityName/181642777 var1630)) ; Statement: $r5 = r1.<org.hibernate.PropertyValueException: java.lang.String entityName> 
(define-const var2407 String (propertyName/181642777 var1630)) ; Statement: $r4 = r1.<org.hibernate.PropertyValueException: java.lang.String propertyName> 
(define-const var1948 String (var1261_qualify/-1563731603 var2583 var2407)) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r5, $r4) 
(assert true)
(define-const var1306 String (append/672562846 var2847 var1948)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2847!1 String)
(assert (= var2847!1 (str.++ var2847 var1948)))
(assert true)
(define-const var3161 String (toString/-2075883882 var1306)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/918716458=([javax.persistence.PersistenceException], java.lang.String), cast-from-var2689-to-var3472=([org.hibernate.PropertyValueException], javax.persistence.PersistenceException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityName/181642777=([org.hibernate.PropertyValueException], java.lang.String), propertyName/181642777=([org.hibernate.PropertyValueException], java.lang.String), var1261_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2689=org.hibernate.PropertyValueException, var1630=r1, var569=$r0, var3472=javax.persistence.PersistenceException, var150=$r2, var2513=$r3, var2847=$r7, var2583=$r5, var2407=$r4, var1261=org.hibernate.internal.util.StringHelper, var1948=$r6, var1306=$r8, var3161=$r9}
; {org.hibernate.PropertyValueException=var2689, r1=var1630, $r0=var569, javax.persistence.PersistenceException=var3472, $r2=var150, $r3=var2513, $r7=var2847, $r5=var2583, $r4=var2407, org.hibernate.internal.util.StringHelper=var1261, $r6=var1948, $r8=var1306, $r9=var3161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.PropertyValueException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.hibernate.HibernateException: java.lang.String getMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	$r5 = r1.<org.hibernate.PropertyValueException: java.lang.String entityName>;	$r4 = r1.<org.hibernate.PropertyValueException: java.lang.String propertyName>;	$r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r5, $r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1