(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var963 0)
(declare-sort var3395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSelectSequenceNextValString/1467633302 (var963 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var963 var963)
(declare-const null-String String)
(declare-const var1214 var963) ; Statement: r1 := @this: org.hibernate.dialect.Oracle9Dialect 
(assert (not (= var1214 null-var963)))
(declare-const var1947 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1947 null-String)))
(define-const var2351 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2351)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2351!1 String)
(assert (= var2351!1 ""))
(assert true)
(define-const var1677 String (append/672562846 var2351!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var2351!2 String)
(assert (= var2351!2 (str.++ var2351!1 "select ")))
(assert true)
(define-const var3105 String (getSelectSequenceNextValString/1467633302 var1214 var1947)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.Oracle9Dialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2) 
(assert true)
(define-const var3865 String (append/672562846 var1677 var3105)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1677!1 String)
(assert (= var1677!1 (str.++ var1677 var3105)))
(assert true)
(define-const var3257 String (append/672562846 var3865 " from dual")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from dual") 
(declare-const var3865!1 String)
(assert (= var3865!1 (str.++ var3865 " from dual")))
(assert true)
(define-const var1667 String (toString/-2075883882 var3257)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSelectSequenceNextValString/1467633302=([org.hibernate.dialect.Oracle9Dialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var963=org.hibernate.dialect.Oracle9Dialect, var1214=r1, var1947=r2, var3395=null_type, var2351=$r0, var1677=$r4, var3105=$r3, var3865=$r5, var3257=$r6, var1667=$r7}
; {org.hibernate.dialect.Oracle9Dialect=var963, r1=var1214, r2=var1947, null_type=var3395, $r0=var2351, $r4=var1677, $r3=var3105, $r5=var3865, $r6=var3257, $r7=var1667}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.Oracle9Dialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.Oracle9Dialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from dual");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1