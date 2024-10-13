(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1562 0)
(declare-sort var2930 0)
(declare-sort var484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1674222761 (var484) String)
(declare-fun cast-from-var1562-to-var484 (var1562) var484)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1562 var1562)
(declare-const null-String String)
(declare-const var423 var1562) ; Statement: r1 := @this: org.hibernate.dialect.Oracle9Dialect 
(assert (not (= var423 null-var1562)))
(declare-const var996 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var996 null-String)))
(define-const var3218 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3218)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3218!1 String)
(assert (= var3218!1 ""))
(assert true)
(define-const var1903 String (getForUpdateString/-1674222761 (cast-from-var1562-to-var484 var423))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.Oracle9Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var232 String (append/672562846 var3218!1 var1903)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3218!2 String)
(assert (= var3218!2 (str.++ var3218!1 var1903)))
(assert true)
(define-const var2143 String (append/672562846 var232 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var232!1 String)
(assert (= var232!1 (str.++ var232 " of ")))
(assert true)
(define-const var2876 String (append/672562846 var2143 var996)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2143!1 String)
(assert (= var2143!1 (str.++ var2143 var996)))
(assert true)
(define-const var3358 String (append/672562846 var2876 " nowait")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait") 
(declare-const var2876!1 String)
(assert (= var2876!1 (str.++ var2876 " nowait")))
(assert true)
(define-const var2472 String (toString/-2075883882 var3358)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1674222761=([org.hibernate.dialect.Dialect], java.lang.String), cast-from-var1562-to-var484=([org.hibernate.dialect.Oracle9Dialect], org.hibernate.dialect.Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1562=org.hibernate.dialect.Oracle9Dialect, var423=r1, var996=r4, var2930=null_type, var3218=$r0, var484=org.hibernate.dialect.Dialect, var1903=$r2, var232=$r3, var2143=$r5, var2876=$r6, var3358=$r7, var2472=$r8}
; {org.hibernate.dialect.Oracle9Dialect=var1562, r1=var423, r4=var996, null_type=var2930, $r0=var3218, org.hibernate.dialect.Dialect=var484, $r2=var1903, $r3=var232, $r5=var2143, $r6=var2876, $r7=var3358, $r8=var2472}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.Oracle9Dialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.Oracle9Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1