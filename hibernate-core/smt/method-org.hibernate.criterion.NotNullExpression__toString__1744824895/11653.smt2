(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/-1993715745 (var1922) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1922 var1922)
(declare-const var39 var1922) ; Statement: r1 := @this: org.hibernate.criterion.NotNullExpression 
(assert (not (= var39 null-var1922)))
(define-const var3348 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3348)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3348!1 String)
(assert (= var3348!1 ""))
(define-const var160 String (propertyName/-1993715745 var39)) ; Statement: $r2 = r1.<org.hibernate.criterion.NotNullExpression: java.lang.String propertyName> 
(assert true)
(define-const var139 String (append/672562846 var3348!1 var160)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3348!2 String)
(assert (= var3348!2 (str.++ var3348!1 var160)))
(assert true)
(define-const var3569 String (append/672562846 var139 " is not null")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not null") 
(declare-const var139!1 String)
(assert (= var139!1 (str.++ var139 " is not null")))
(assert true)
(define-const var2993 String (toString/-2075883882 var3569)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/-1993715745=([org.hibernate.criterion.NotNullExpression], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1922=org.hibernate.criterion.NotNullExpression, var39=r1, var3348=$r0, var160=$r2, var139=$r3, var3569=$r4, var2993=$r5}
; {org.hibernate.criterion.NotNullExpression=var1922, r1=var39, $r0=var3348, $r2=var160, $r3=var139, $r4=var3569, $r5=var2993}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.NotNullExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.NotNullExpression: java.lang.String propertyName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not null");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1