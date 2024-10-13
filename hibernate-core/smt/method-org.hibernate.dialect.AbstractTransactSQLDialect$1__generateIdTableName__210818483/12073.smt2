(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2084 0)
(declare-sort var3281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2084 var2084)
(declare-const null-String String)
(declare-const var2552 var2084) ; Statement: r5 := @this: org.hibernate.dialect.AbstractTransactSQLDialect$1 
(assert (not (= var2552 null-var2084)))
(declare-const var953 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var953 null-String)))
(define-const var1708 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1708)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1708!1 String)
(assert (= var1708!1 ""))
(assert true)
(define-const var593 String (append/672562846 var1708!1 "#")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1708!2 String)
(assert (= var1708!2 (str.++ var1708!1 "#")))
(assert true)
(define-const var3244 String (append/672562846 var593 var953)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var593!1 String)
(assert (= var593!1 (str.++ var593 var953)))
(assert true)
(define-const var281 String (toString/-2075883882 var3244)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2084=org.hibernate.dialect.AbstractTransactSQLDialect$1, var2552=r5, var953=r1, var3281=null_type, var1708=$r0, var593=$r2, var3244=$r3, var281=$r4}
; {org.hibernate.dialect.AbstractTransactSQLDialect$1=var2084, r5=var2552, r1=var953, null_type=var3281, $r0=var1708, $r2=var593, $r3=var3244, $r4=var281}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.AbstractTransactSQLDialect$1;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1