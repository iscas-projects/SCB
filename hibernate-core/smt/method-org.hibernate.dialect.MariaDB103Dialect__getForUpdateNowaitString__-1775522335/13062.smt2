(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2647 0)
(declare-sort var1024 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1003225655 (var1024) String)
(declare-fun cast-from-var2647-to-var1024 (var2647) var1024)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2647 var2647)
(declare-const var1272 var2647) ; Statement: r1 := @this: org.hibernate.dialect.MariaDB103Dialect 
(assert (not (= var1272 null-var2647)))
(define-const var2201 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2201)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2201!1 String)
(assert (= var2201!1 ""))
(assert true)
(define-const var890 String (getForUpdateString/-1003225655 (cast-from-var2647-to-var1024 var1272))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.MariaDB103Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var3380 String (append/672562846 var2201!1 var890)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2201!2 String)
(assert (= var2201!2 (str.++ var2201!1 var890)))
(assert true)
(define-const var2022 String (append/672562846 var3380 " nowait")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait") 
(declare-const var3380!1 String)
(assert (= var3380!1 (str.++ var3380 " nowait")))
(assert true)
(define-const var714 String (toString/-2075883882 var2022)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1003225655=([org.hibernate.dialect.MySQLDialect], java.lang.String), cast-from-var2647-to-var1024=([org.hibernate.dialect.MariaDB103Dialect], org.hibernate.dialect.MySQLDialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2647=org.hibernate.dialect.MariaDB103Dialect, var1272=r1, var2201=$r0, var1024=org.hibernate.dialect.MySQLDialect, var890=$r2, var3380=$r3, var2022=$r4, var714=$r5}
; {org.hibernate.dialect.MariaDB103Dialect=var2647, r1=var1272, $r0=var2201, org.hibernate.dialect.MySQLDialect=var1024, $r2=var890, $r3=var3380, $r4=var2022, $r5=var714}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.MariaDB103Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.MariaDB103Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1