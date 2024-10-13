(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2594 0)
(declare-sort var1181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1003225655 (var1181) String)
(declare-fun cast-from-var2594-to-var1181 (var2594) var1181)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2594 var2594)
(declare-const var991 var2594) ; Statement: r1 := @this: org.hibernate.dialect.MySQL8Dialect 
(assert (not (= var991 null-var2594)))
(define-const var2302 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2302)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2302!1 String)
(assert (= var2302!1 ""))
(assert true)
(define-const var91 String (getForUpdateString/-1003225655 (cast-from-var2594-to-var1181 var991))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.MySQL8Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var1112 String (append/672562846 var2302!1 var91)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2302!2 String)
(assert (= var2302!2 (str.++ var2302!1 var91)))
(assert true)
(define-const var3452 String (append/672562846 var1112 " nowait ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ") 
(declare-const var1112!1 String)
(assert (= var1112!1 (str.++ var1112 " nowait ")))
(assert true)
(define-const var3222 String (toString/-2075883882 var3452)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1003225655=([org.hibernate.dialect.MySQLDialect], java.lang.String), cast-from-var2594-to-var1181=([org.hibernate.dialect.MySQL8Dialect], org.hibernate.dialect.MySQLDialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2594=org.hibernate.dialect.MySQL8Dialect, var991=r1, var2302=$r0, var1181=org.hibernate.dialect.MySQLDialect, var91=$r2, var1112=$r3, var3452=$r4, var3222=$r5}
; {org.hibernate.dialect.MySQL8Dialect=var2594, r1=var991, $r0=var2302, org.hibernate.dialect.MySQLDialect=var1181, $r2=var91, $r3=var1112, $r4=var3452, $r5=var3222}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.MySQL8Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.MySQL8Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1