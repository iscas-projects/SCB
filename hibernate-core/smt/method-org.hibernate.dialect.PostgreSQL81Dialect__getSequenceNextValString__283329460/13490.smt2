(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3229 0)
(declare-sort var282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSelectSequenceNextValString/-1605008176 (var3229 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3229 var3229)
(declare-const null-String String)
(declare-const var124 var3229) ; Statement: r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var124 null-var3229)))
(declare-const var2243 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2243 null-String)))
(define-const var1933 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1933)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1933!1 String)
(assert (= var1933!1 ""))
(assert true)
(define-const var1369 String (append/672562846 var1933!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var1933!2 String)
(assert (= var1933!2 (str.++ var1933!1 "select ")))
(assert true)
(define-const var1971 String (getSelectSequenceNextValString/-1605008176 var124 var2243)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2) 
(assert true)
(define-const var2543 String (append/672562846 var1369 var1971)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1369!1 String)
(assert (= var1369!1 (str.++ var1369 var1971)))
(assert true)
(define-const var3961 String (toString/-2075883882 var2543)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSelectSequenceNextValString/-1605008176=([org.hibernate.dialect.PostgreSQL81Dialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3229=org.hibernate.dialect.PostgreSQL81Dialect, var124=r1, var2243=r2, var282=null_type, var1933=$r0, var1369=$r4, var1971=$r3, var2543=$r5, var3961=$r6}
; {org.hibernate.dialect.PostgreSQL81Dialect=var3229, r1=var124, r2=var2243, null_type=var282, $r0=var1933, $r4=var1369, $r3=var1971, $r5=var2543, $r6=var3961}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1