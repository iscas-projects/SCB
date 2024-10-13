(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3708 0)
(declare-sort var1952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/2020232165 (var3708 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3708 var3708)
(declare-const null-String String)
(declare-const var1122 var3708) ; Statement: r1 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var1122 null-var3708)))
(declare-const var271 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var271 null-String)))
(define-const var3635 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3635)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3635!1 String)
(assert (= var3635!1 ""))
(assert true)
(define-const var1593 String (getForUpdateString/2020232165 var1122 var271)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getForUpdateString(java.lang.String)>(r2) 
(assert true)
(define-const var3206 String (append/672562846 var3635!1 var1593)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3635!2 String)
(assert (= var3635!2 (str.++ var3635!1 var1593)))
(assert true)
(define-const var2202 String (append/672562846 var3206 " nowait ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ") 
(declare-const var3206!1 String)
(assert (= var3206!1 (str.++ var3206 " nowait ")))
(assert true)
(define-const var3492 String (toString/-2075883882 var2202)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/2020232165=([org.hibernate.dialect.CockroachDB192Dialect, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3708=org.hibernate.dialect.CockroachDB192Dialect, var1122=r1, var271=r2, var1952=null_type, var3635=$r0, var1593=$r3, var3206=$r4, var2202=$r5, var3492=$r6}
; {org.hibernate.dialect.CockroachDB192Dialect=var3708, r1=var1122, r2=var271, null_type=var1952, $r0=var3635, $r3=var1593, $r4=var3206, $r5=var2202, $r6=var3492}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getForUpdateString(java.lang.String)>(r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1