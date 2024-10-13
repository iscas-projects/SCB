(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3420 0)
(declare-sort var994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3420 var3420)
(declare-const null-String String)
(declare-const var2807 var3420) ; Statement: r5 := @this: org.hibernate.dialect.SQLServer2012Dialect 
(assert (not (= var2807 null-var3420)))
(declare-const var1681 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1681 null-String)))
(define-const var1082 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1082)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1082!1 String)
(assert (= var1082!1 ""))
(assert true)
(define-const var285 String (append/672562846 var1082!1 "create sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ") 
(declare-const var1082!2 String)
(assert (= var1082!2 (str.++ var1082!1 "create sequence ")))
(assert true)
(define-const var978 String (append/672562846 var285 var1681)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var285!1 String)
(assert (= var285!1 (str.++ var285 var1681)))
(assert true)
(define-const var67 String (toString/-2075883882 var978)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3420=org.hibernate.dialect.SQLServer2012Dialect, var2807=r5, var1681=r1, var994=null_type, var1082=$r0, var285=$r2, var978=$r3, var67=$r4}
; {org.hibernate.dialect.SQLServer2012Dialect=var3420, r5=var2807, r1=var1681, null_type=var994, $r0=var1082, $r2=var285, $r3=var978, $r4=var67}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.SQLServer2012Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1