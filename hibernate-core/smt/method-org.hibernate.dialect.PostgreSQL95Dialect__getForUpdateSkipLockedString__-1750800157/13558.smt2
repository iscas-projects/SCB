(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var80 0)
(declare-sort var1432 0)
(declare-sort var2666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/1132255594 (var2666) String)
(declare-fun cast-from-var80-to-var2666 (var80) var2666)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var80 var80)
(declare-const null-String String)
(declare-const var1112 var80) ; Statement: r1 := @this: org.hibernate.dialect.PostgreSQL95Dialect 
(assert (not (= var1112 null-var80)))
(declare-const var3714 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3714 null-String)))
(define-const var642 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var642)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var642!1 String)
(assert (= var642!1 ""))
(assert true)
(define-const var271 String (getForUpdateString/1132255594 (cast-from-var80-to-var2666 var1112))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL95Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var1695 String (append/672562846 var642!1 var271)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var642!2 String)
(assert (= var642!2 (str.++ var642!1 var271)))
(assert true)
(define-const var804 String (append/672562846 var1695 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var1695!1 String)
(assert (= var1695!1 (str.++ var1695 " of ")))
(assert true)
(define-const var1421 String (append/672562846 var804 var3714)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var804!1 String)
(assert (= var804!1 (str.++ var804 var3714)))
(assert true)
(define-const var750 String (append/672562846 var1421 " skip locked")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" skip locked") 
(declare-const var1421!1 String)
(assert (= var1421!1 (str.++ var1421 " skip locked")))
(assert true)
(define-const var3634 String (toString/-2075883882 var750)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/1132255594=([org.hibernate.dialect.PostgreSQL81Dialect], java.lang.String), cast-from-var80-to-var2666=([org.hibernate.dialect.PostgreSQL95Dialect], org.hibernate.dialect.PostgreSQL81Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var80=org.hibernate.dialect.PostgreSQL95Dialect, var1112=r1, var3714=r4, var1432=null_type, var642=$r0, var2666=org.hibernate.dialect.PostgreSQL81Dialect, var271=$r2, var1695=$r3, var804=$r5, var1421=$r6, var750=$r7, var3634=$r8}
; {org.hibernate.dialect.PostgreSQL95Dialect=var80, r1=var1112, r4=var3714, null_type=var1432, $r0=var642, org.hibernate.dialect.PostgreSQL81Dialect=var2666, $r2=var271, $r3=var1695, $r5=var804, $r6=var1421, $r7=var750, $r8=var3634}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.PostgreSQL95Dialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL95Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" skip locked");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1