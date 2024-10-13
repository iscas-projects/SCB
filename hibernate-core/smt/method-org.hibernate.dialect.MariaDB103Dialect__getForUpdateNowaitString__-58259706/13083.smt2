(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var440 0)
(declare-sort var3134 0)
(declare-sort var890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/416485500 (var890 String) String)
(declare-fun cast-from-var440-to-var890 (var440) var890)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var440 var440)
(declare-const null-String String)
(declare-const var3607 var440) ; Statement: r1 := @this: org.hibernate.dialect.MariaDB103Dialect 
(assert (not (= var3607 null-var440)))
(declare-const var610 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var610 null-String)))
(define-const var3306 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3306)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3306!1 String)
(assert (= var3306!1 ""))
(assert true)
(define-const var2006 String (getForUpdateString/416485500 (cast-from-var440-to-var890 var3607) var610)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.MariaDB103Dialect: java.lang.String getForUpdateString(java.lang.String)>(r2) 
(assert true)
(define-const var1370 String (append/672562846 var3306!1 var2006)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3306!2 String)
(assert (= var3306!2 (str.++ var3306!1 var2006)))
(assert true)
(define-const var3017 String (append/672562846 var1370 " nowait")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait") 
(declare-const var1370!1 String)
(assert (= var1370!1 (str.++ var1370 " nowait")))
(assert true)
(define-const var1045 String (toString/-2075883882 var3017)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/416485500=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), cast-from-var440-to-var890=([org.hibernate.dialect.MariaDB103Dialect], org.hibernate.dialect.Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var440=org.hibernate.dialect.MariaDB103Dialect, var3607=r1, var610=r2, var3134=null_type, var3306=$r0, var890=org.hibernate.dialect.Dialect, var2006=$r3, var1370=$r4, var3017=$r5, var1045=$r6}
; {org.hibernate.dialect.MariaDB103Dialect=var440, r1=var3607, r2=var610, null_type=var3134, $r0=var3306, org.hibernate.dialect.Dialect=var890, $r3=var2006, $r4=var1370, $r5=var3017, $r6=var1045}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.MariaDB103Dialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.dialect.MariaDB103Dialect: java.lang.String getForUpdateString(java.lang.String)>(r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1