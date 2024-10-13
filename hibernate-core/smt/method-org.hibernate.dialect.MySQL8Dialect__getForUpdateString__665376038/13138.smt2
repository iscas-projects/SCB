(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2818 0)
(declare-sort var2846 0)
(declare-sort var2353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1003225655 (var2353) String)
(declare-fun cast-from-var2818-to-var2353 (var2818) var2353)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2818 var2818)
(declare-const null-String String)
(declare-const var2054 var2818) ; Statement: r1 := @this: org.hibernate.dialect.MySQL8Dialect 
(assert (not (= var2054 null-var2818)))
(declare-const var1726 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1726 null-String)))
(define-const var125 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var125)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var125!1 String)
(assert (= var125!1 ""))
(assert true)
(define-const var1649 String (getForUpdateString/-1003225655 (cast-from-var2818-to-var2353 var2054))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.MySQL8Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var2331 String (append/672562846 var125!1 var1649)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var125!2 String)
(assert (= var125!2 (str.++ var125!1 var1649)))
(assert true)
(define-const var3890 String (append/672562846 var2331 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var2331!1 String)
(assert (= var2331!1 (str.++ var2331 " of ")))
(assert true)
(define-const var2011 String (append/672562846 var3890 var1726)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3890!1 String)
(assert (= var3890!1 (str.++ var3890 var1726)))
(assert true)
(define-const var1384 String (toString/-2075883882 var2011)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1003225655=([org.hibernate.dialect.MySQLDialect], java.lang.String), cast-from-var2818-to-var2353=([org.hibernate.dialect.MySQL8Dialect], org.hibernate.dialect.MySQLDialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2818=org.hibernate.dialect.MySQL8Dialect, var2054=r1, var1726=r4, var2846=null_type, var125=$r0, var2353=org.hibernate.dialect.MySQLDialect, var1649=$r2, var2331=$r3, var3890=$r5, var2011=$r6, var1384=$r7}
; {org.hibernate.dialect.MySQL8Dialect=var2818, r1=var2054, r4=var1726, null_type=var2846, $r0=var125, org.hibernate.dialect.MySQLDialect=var2353, $r2=var1649, $r3=var2331, $r5=var3890, $r6=var2011, $r7=var1384}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.MySQL8Dialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.MySQL8Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1