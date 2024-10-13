(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/-1122963470 (var595) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var595 var595)
(declare-const var1836 var595) ; Statement: r1 := @this: org.hibernate.criterion.NullExpression 
(assert (not (= var1836 null-var595)))
(define-const var2069 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2069)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2069!1 String)
(assert (= var2069!1 ""))
(define-const var111 String (propertyName/-1122963470 var1836)) ; Statement: $r2 = r1.<org.hibernate.criterion.NullExpression: java.lang.String propertyName> 
(assert true)
(define-const var2625 String (append/672562846 var2069!1 var111)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2069!2 String)
(assert (= var2069!2 (str.++ var2069!1 var111)))
(assert true)
(define-const var1741 String (append/672562846 var2625 " is null")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is null") 
(declare-const var2625!1 String)
(assert (= var2625!1 (str.++ var2625 " is null")))
(assert true)
(define-const var2903 String (toString/-2075883882 var1741)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/-1122963470=([org.hibernate.criterion.NullExpression], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var595=org.hibernate.criterion.NullExpression, var1836=r1, var2069=$r0, var111=$r2, var2625=$r3, var1741=$r4, var2903=$r5}
; {org.hibernate.criterion.NullExpression=var595, r1=var1836, $r0=var2069, $r2=var111, $r3=var2625, $r4=var1741, $r5=var2903}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.NullExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.NullExpression: java.lang.String propertyName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is null");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1