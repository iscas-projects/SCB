(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2022 0)
(declare-sort var7 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2022 var2022)
(declare-const null-String String)
(declare-const var1439 var2022) ; Statement: r5 := @this: org.hibernate.dialect.Oracle9Dialect 
(assert (not (= var1439 null-var2022)))
(declare-const var245 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var245 null-String)))
(define-const var3028 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3028)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3028!1 String)
(assert (= var3028!1 ""))
(assert true)
(define-const var2165 String (append/672562846 var3028!1 "drop sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ") 
(declare-const var3028!2 String)
(assert (= var3028!2 (str.++ var3028!1 "drop sequence ")))
(assert true)
(define-const var3213 String (append/672562846 var2165 var245)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2165!1 String)
(assert (= var2165!1 (str.++ var2165 var245)))
(assert true)
(define-const var714 String (toString/-2075883882 var3213)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2022=org.hibernate.dialect.Oracle9Dialect, var1439=r5, var245=r1, var7=null_type, var3028=$r0, var2165=$r2, var3213=$r3, var714=$r4}
; {org.hibernate.dialect.Oracle9Dialect=var2022, r5=var1439, r1=var245, null_type=var7, $r0=var3028, $r2=var2165, $r3=var3213, $r4=var714}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Oracle9Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1