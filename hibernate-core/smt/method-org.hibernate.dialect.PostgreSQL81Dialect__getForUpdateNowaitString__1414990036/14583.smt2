(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/1132255594 (var1554) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1554 var1554)
(declare-const var3513 var1554) ; Statement: r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var3513 null-var1554)))
(define-const var2997 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2997)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2997!1 String)
(assert (= var2997!1 ""))
(assert true)
(define-const var664 String (getForUpdateString/1132255594 var3513)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var1523 String (append/672562846 var2997!1 var664)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2997!2 String)
(assert (= var2997!2 (str.++ var2997!1 var664)))
(assert true)
(define-const var196 String (append/672562846 var1523 " nowait ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ") 
(declare-const var1523!1 String)
(assert (= var1523!1 (str.++ var1523 " nowait ")))
(assert true)
(define-const var2613 String (toString/-2075883882 var196)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/1132255594=([org.hibernate.dialect.PostgreSQL81Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1554=org.hibernate.dialect.PostgreSQL81Dialect, var3513=r1, var2997=$r0, var664=$r2, var1523=$r3, var196=$r4, var2613=$r5}
; {org.hibernate.dialect.PostgreSQL81Dialect=var1554, r1=var3513, $r0=var2997, $r2=var664, $r3=var1523, $r4=var196, $r5=var2613}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1