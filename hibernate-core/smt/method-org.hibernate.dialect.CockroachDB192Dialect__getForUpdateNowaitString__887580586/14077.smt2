(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2065 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/1947898048 (var2065) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2065 var2065)
(declare-const var2799 var2065) ; Statement: r1 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var2799 null-var2065)))
(define-const var1725 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1725)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1725!1 String)
(assert (= var1725!1 ""))
(assert true)
(define-const var767 String (getForUpdateString/1947898048 var2799)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var2019 String (append/672562846 var1725!1 var767)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1725!2 String)
(assert (= var1725!2 (str.++ var1725!1 var767)))
(assert true)
(define-const var495 String (append/672562846 var2019 " nowait ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ") 
(declare-const var2019!1 String)
(assert (= var2019!1 (str.++ var2019 " nowait ")))
(assert true)
(define-const var580 String (toString/-2075883882 var495)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/1947898048=([org.hibernate.dialect.CockroachDB192Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2065=org.hibernate.dialect.CockroachDB192Dialect, var2799=r1, var1725=$r0, var767=$r2, var2019=$r3, var495=$r4, var580=$r5}
; {org.hibernate.dialect.CockroachDB192Dialect=var2065, r1=var2799, $r0=var1725, $r2=var767, $r3=var2019, $r4=var495, $r5=var580}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.CockroachDB192Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1