(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2280 0)
(declare-sort var1464 0)
(declare-sort var2600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1674222761 (var2600) String)
(declare-fun cast-from-var2280-to-var2600 (var2280) var2600)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2280 var2280)
(declare-const null-String String)
(declare-const var1971 var2280) ; Statement: r1 := @this: org.hibernate.dialect.Oracle8iDialect 
(assert (not (= var1971 null-var2280)))
(declare-const var138 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var138 null-String)))
(define-const var2844 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2844)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2844!1 String)
(assert (= var2844!1 ""))
(assert true)
(define-const var1598 String (getForUpdateString/-1674222761 (cast-from-var2280-to-var2600 var1971))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.Oracle8iDialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var397 String (append/672562846 var2844!1 var1598)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2844!2 String)
(assert (= var2844!2 (str.++ var2844!1 var1598)))
(assert true)
(define-const var2525 String (append/672562846 var397 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var397!1 String)
(assert (= var397!1 (str.++ var397 " of ")))
(assert true)
(define-const var2728 String (append/672562846 var2525 var138)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2525!1 String)
(assert (= var2525!1 (str.++ var2525 var138)))
(assert true)
(define-const var1267 String (append/672562846 var2728 " nowait")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait") 
(declare-const var2728!1 String)
(assert (= var2728!1 (str.++ var2728 " nowait")))
(assert true)
(define-const var3142 String (toString/-2075883882 var1267)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1674222761=([org.hibernate.dialect.Dialect], java.lang.String), cast-from-var2280-to-var2600=([org.hibernate.dialect.Oracle8iDialect], org.hibernate.dialect.Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2280=org.hibernate.dialect.Oracle8iDialect, var1971=r1, var138=r4, var1464=null_type, var2844=$r0, var2600=org.hibernate.dialect.Dialect, var1598=$r2, var397=$r3, var2525=$r5, var2728=$r6, var1267=$r7, var3142=$r8}
; {org.hibernate.dialect.Oracle8iDialect=var2280, r1=var1971, r4=var138, null_type=var1464, $r0=var2844, org.hibernate.dialect.Dialect=var2600, $r2=var1598, $r3=var397, $r5=var2525, $r6=var2728, $r7=var1267, $r8=var3142}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.Oracle8iDialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.Oracle8iDialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1