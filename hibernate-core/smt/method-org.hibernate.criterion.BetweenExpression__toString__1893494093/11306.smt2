(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2977 0)
(declare-sort var2567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/700710765 (var2977) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun low/700710765 (var2977) var2567)
(declare-fun append/-1031950772 (String var2567) String)
(declare-fun high/700710765 (var2977) var2567)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2977 var2977)
(declare-const var2648 var2977) ; Statement: r1 := @this: org.hibernate.criterion.BetweenExpression 
(assert (not (= var2648 null-var2977)))
(define-const var1028 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1028)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1028!1 String)
(assert (= var1028!1 ""))
(define-const var3882 String (propertyName/700710765 var2648)) ; Statement: $r2 = r1.<org.hibernate.criterion.BetweenExpression: java.lang.String propertyName> 
(assert true)
(define-const var3851 String (append/672562846 var1028!1 var3882)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1028!2 String)
(assert (= var1028!2 (str.++ var1028!1 var3882)))
(assert true)
(define-const var3761 String (append/672562846 var3851 " between ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" between ") 
(declare-const var3851!1 String)
(assert (= var3851!1 (str.++ var3851 " between ")))
(define-const var2932 var2567 (low/700710765 var2648)) ; Statement: $r4 = r1.<org.hibernate.criterion.BetweenExpression: java.lang.Object low> 
(assert true)
(define-const var2640 String (append/-1031950772 var3761 var2932)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3761!1 String)
(assert (str.prefixof var3761 var3761!1))
(assert true)
(define-const var3019 String (append/672562846 var2640 " and ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var2640!1 String)
(assert (= var2640!1 (str.++ var2640 " and ")))
(define-const var264 var2567 (high/700710765 var2648)) ; Statement: $r7 = r1.<org.hibernate.criterion.BetweenExpression: java.lang.Object high> 
(assert true)
(define-const var1505 String (append/-1031950772 var3019 var264)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var3019!1 String)
(assert (str.prefixof var3019 var3019!1))
(assert true)
(define-const var2311 String (toString/-2075883882 var1505)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/700710765=([org.hibernate.criterion.BetweenExpression], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), low/700710765=([org.hibernate.criterion.BetweenExpression], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), high/700710765=([org.hibernate.criterion.BetweenExpression], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2977=org.hibernate.criterion.BetweenExpression, var2648=r1, var1028=$r0, var3882=$r2, var3851=$r3, var3761=$r5, var2567=java.lang.Object, var2932=$r4, var2640=$r6, var3019=$r8, var264=$r7, var1505=$r9, var2311=$r10}
; {org.hibernate.criterion.BetweenExpression=var2977, r1=var2648, $r0=var1028, $r2=var3882, $r3=var3851, $r5=var3761, java.lang.Object=var2567, $r4=var2932, $r6=var2640, $r8=var3019, $r7=var264, $r9=var1505, $r10=var2311}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.BetweenExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.BetweenExpression: java.lang.String propertyName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" between ");	$r4 = r1.<org.hibernate.criterion.BetweenExpression: java.lang.Object low>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r7 = r1.<org.hibernate.criterion.BetweenExpression: java.lang.Object high>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1