(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1378 0)
(declare-sort var295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/1132255594 (var1378) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1378 var1378)
(declare-const null-String String)
(declare-const var553 var1378) ; Statement: r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var553 null-var1378)))
(declare-const var1633 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1633 null-String)))
(define-const var3855 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3855)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3855!1 String)
(assert (= var3855!1 ""))
(assert true)
(define-const var3780 String (getForUpdateString/1132255594 var553)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var1217 String (append/672562846 var3855!1 var3780)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3855!2 String)
(assert (= var3855!2 (str.++ var3855!1 var3780)))
(assert true)
(define-const var2490 String (append/672562846 var1217 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var1217!1 String)
(assert (= var1217!1 (str.++ var1217 " of ")))
(assert true)
(define-const var1797 String (append/672562846 var2490 var1633)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2490!1 String)
(assert (= var2490!1 (str.++ var2490 var1633)))
(assert true)
(define-const var1691 String (toString/-2075883882 var1797)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/1132255594=([org.hibernate.dialect.PostgreSQL81Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1378=org.hibernate.dialect.PostgreSQL81Dialect, var553=r1, var1633=r4, var295=null_type, var3855=$r0, var3780=$r2, var1217=$r3, var2490=$r5, var1797=$r6, var1691=$r7}
; {org.hibernate.dialect.PostgreSQL81Dialect=var1378, r1=var553, r4=var1633, null_type=var295, $r0=var3855, $r2=var3780, $r3=var1217, $r5=var2490, $r6=var1797, $r7=var1691}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1