(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/1398017344 (var443) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getOp/1891624735 (var443) String)
(declare-fun otherPropertyName/1398017344 (var443) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var443 var443)
(declare-const var718 var443) ; Statement: r1 := @this: org.hibernate.criterion.PropertyExpression 
(assert (not (= var718 null-var443)))
(define-const var2494 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2494)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2494!1 String)
(assert (= var2494!1 ""))
(define-const var3947 String (propertyName/1398017344 var718)) ; Statement: $r2 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String propertyName> 
(assert true)
(define-const var3767 String (append/672562846 var2494!1 var3947)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2494!2 String)
(assert (= var2494!2 (str.++ var2494!1 var3947)))
(assert true)
(define-const var3382 String (getOp/1891624735 var718)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.criterion.PropertyExpression: java.lang.String getOp()>() 
(assert true)
(define-const var2564 String (append/672562846 var3767 var3382)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3767!1 String)
(assert (= var3767!1 (str.++ var3767 var3382)))
(define-const var2025 String (otherPropertyName/1398017344 var718)) ; Statement: $r5 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String otherPropertyName> 
(assert true)
(define-const var108 String (append/672562846 var2564 var2025)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2564!1 String)
(assert (= var2564!1 (str.++ var2564 var2025)))
(assert true)
(define-const var3299 String (toString/-2075883882 var108)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/1398017344=([org.hibernate.criterion.PropertyExpression], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getOp/1891624735=([org.hibernate.criterion.PropertyExpression], java.lang.String), otherPropertyName/1398017344=([org.hibernate.criterion.PropertyExpression], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var443=org.hibernate.criterion.PropertyExpression, var718=r1, var2494=$r0, var3947=$r2, var3767=$r4, var3382=$r3, var2564=$r6, var2025=$r5, var108=$r7, var3299=$r8}
; {org.hibernate.criterion.PropertyExpression=var443, r1=var718, $r0=var2494, $r2=var3947, $r4=var3767, $r3=var3382, $r6=var2564, $r5=var2025, $r7=var108, $r8=var3299}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.PropertyExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String propertyName>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = virtualinvoke r1.<org.hibernate.criterion.PropertyExpression: java.lang.String getOp()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String otherPropertyName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1