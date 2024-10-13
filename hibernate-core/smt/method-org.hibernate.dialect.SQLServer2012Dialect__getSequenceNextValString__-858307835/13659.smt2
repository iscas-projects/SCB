(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1874 0)
(declare-sort var1229 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSelectSequenceNextValString/1810301793 (var1874 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1874 var1874)
(declare-const null-String String)
(declare-const var659 var1874) ; Statement: r1 := @this: org.hibernate.dialect.SQLServer2012Dialect 
(assert (not (= var659 null-var1874)))
(declare-const var2457 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2457 null-String)))
(define-const var3435 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3435)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3435!1 String)
(assert (= var3435!1 ""))
(assert true)
(define-const var3327 String (append/672562846 var3435!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3435!2 String)
(assert (= var3435!2 (str.++ var3435!1 "select ")))
(assert true)
(define-const var2833 String (getSelectSequenceNextValString/1810301793 var659 var2457)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.SQLServer2012Dialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2) 
(assert true)
(define-const var3222 String (append/672562846 var3327 var2833)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3327!1 String)
(assert (= var3327!1 (str.++ var3327 var2833)))
(assert true)
(define-const var3485 String (toString/-2075883882 var3222)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSelectSequenceNextValString/1810301793=([org.hibernate.dialect.SQLServer2012Dialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1874=org.hibernate.dialect.SQLServer2012Dialect, var659=r1, var2457=r2, var1229=null_type, var3435=$r0, var3327=$r4, var2833=$r3, var3222=$r5, var3485=$r6}
; {org.hibernate.dialect.SQLServer2012Dialect=var1874, r1=var659, r2=var2457, null_type=var1229, $r0=var3435, $r4=var3327, $r3=var2833, $r5=var3222, $r6=var3485}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.SQLServer2012Dialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.SQLServer2012Dialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1