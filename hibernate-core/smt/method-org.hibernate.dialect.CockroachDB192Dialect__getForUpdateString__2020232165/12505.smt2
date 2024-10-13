(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1155 0)
(declare-sort var2921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/1947898048 (var1155) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1155 var1155)
(declare-const null-String String)
(declare-const var2566 var1155) ; Statement: r1 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var2566 null-var1155)))
(declare-const var2293 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2293 null-String)))
(define-const var3654 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3654)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3654!1 String)
(assert (= var3654!1 ""))
(assert true)
(define-const var1435 String (getForUpdateString/1947898048 var2566)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var760 String (append/672562846 var3654!1 var1435)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3654!2 String)
(assert (= var3654!2 (str.++ var3654!1 var1435)))
(assert true)
(define-const var3641 String (append/672562846 var760 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var760!1 String)
(assert (= var760!1 (str.++ var760 " of ")))
(assert true)
(define-const var2541 String (append/672562846 var3641 var2293)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3641!1 String)
(assert (= var3641!1 (str.++ var3641 var2293)))
(assert true)
(define-const var522 String (toString/-2075883882 var2541)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/1947898048=([org.hibernate.dialect.CockroachDB192Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1155=org.hibernate.dialect.CockroachDB192Dialect, var2566=r1, var2293=r4, var2921=null_type, var3654=$r0, var1435=$r2, var760=$r3, var3641=$r5, var2541=$r6, var522=$r7}
; {org.hibernate.dialect.CockroachDB192Dialect=var1155, r1=var2566, r4=var2293, null_type=var2921, $r0=var3654, $r2=var1435, $r3=var760, $r5=var3641, $r6=var2541, $r7=var522}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1