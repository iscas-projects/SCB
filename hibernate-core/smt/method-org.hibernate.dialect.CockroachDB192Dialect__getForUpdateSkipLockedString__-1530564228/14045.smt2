(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2587 0)
(declare-sort var3746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/1947898048 (var2587) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2587 var2587)
(declare-const null-String String)
(declare-const var3664 var2587) ; Statement: r1 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var3664 null-var2587)))
(declare-const var1731 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1731 null-String)))
(define-const var3526 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3526)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3526!1 String)
(assert (= var3526!1 ""))
(assert true)
(define-const var1400 String (getForUpdateString/1947898048 var3664)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var3391 String (append/672562846 var3526!1 var1400)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3526!2 String)
(assert (= var3526!2 (str.++ var3526!1 var1400)))
(assert true)
(define-const var888 String (append/672562846 var3391 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var3391!1 String)
(assert (= var3391!1 (str.++ var3391 " of ")))
(assert true)
(define-const var1557 String (append/672562846 var888 var1731)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var888!1 String)
(assert (= var888!1 (str.++ var888 var1731)))
(assert true)
(define-const var1166 String (append/672562846 var1557 " skip locked")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" skip locked") 
(declare-const var1557!1 String)
(assert (= var1557!1 (str.++ var1557 " skip locked")))
(assert true)
(define-const var215 String (toString/-2075883882 var1166)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/1947898048=([org.hibernate.dialect.CockroachDB192Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2587=org.hibernate.dialect.CockroachDB192Dialect, var3664=r1, var1731=r4, var3746=null_type, var3526=$r0, var1400=$r2, var3391=$r3, var888=$r5, var1557=$r6, var1166=$r7, var215=$r8}
; {org.hibernate.dialect.CockroachDB192Dialect=var2587, r1=var3664, r4=var1731, null_type=var3746, $r0=var3526, $r2=var1400, $r3=var3391, $r5=var888, $r6=var1557, $r7=var1166, $r8=var215}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" skip locked");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1