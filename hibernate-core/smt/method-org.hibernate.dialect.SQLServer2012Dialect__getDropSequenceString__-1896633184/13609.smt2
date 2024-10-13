(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3298 0)
(declare-sort var3824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3298 var3298)
(declare-const null-String String)
(declare-const var3687 var3298) ; Statement: r5 := @this: org.hibernate.dialect.SQLServer2012Dialect 
(assert (not (= var3687 null-var3298)))
(declare-const var2041 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2041 null-String)))
(define-const var1287 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1287)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1287!1 String)
(assert (= var1287!1 ""))
(assert true)
(define-const var520 String (append/672562846 var1287!1 "drop sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ") 
(declare-const var1287!2 String)
(assert (= var1287!2 (str.++ var1287!1 "drop sequence ")))
(assert true)
(define-const var1810 String (append/672562846 var520 var2041)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var520!1 String)
(assert (= var520!1 (str.++ var520 var2041)))
(assert true)
(define-const var3902 String (toString/-2075883882 var1810)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3298=org.hibernate.dialect.SQLServer2012Dialect, var3687=r5, var2041=r1, var3824=null_type, var1287=$r0, var520=$r2, var1810=$r3, var3902=$r4}
; {org.hibernate.dialect.SQLServer2012Dialect=var3298, r5=var3687, r1=var2041, null_type=var3824, $r0=var1287, $r2=var520, $r3=var1810, $r4=var3902}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.SQLServer2012Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1