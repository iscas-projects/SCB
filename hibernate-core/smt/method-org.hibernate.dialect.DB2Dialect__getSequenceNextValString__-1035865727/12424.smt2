(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3282 0)
(declare-sort var3492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3282 var3282)
(declare-const null-String String)
(declare-const var2961 var3282) ; Statement: r5 := @this: org.hibernate.dialect.DB2Dialect 
(assert (not (= var2961 null-var3282)))
(declare-const var814 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var814 null-String)))
(define-const var410 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var410)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var410!1 String)
(assert (= var410!1 ""))
(assert true)
(define-const var3458 String (append/672562846 var410!1 "values nextval for ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("values nextval for ") 
(declare-const var410!2 String)
(assert (= var410!2 (str.++ var410!1 "values nextval for ")))
(assert true)
(define-const var136 String (append/672562846 var3458 var814)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3458!1 String)
(assert (= var3458!1 (str.++ var3458 var814)))
(assert true)
(define-const var2916 String (toString/-2075883882 var136)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3282=org.hibernate.dialect.DB2Dialect, var2961=r5, var814=r1, var3492=null_type, var410=$r0, var3458=$r2, var136=$r3, var2916=$r4}
; {org.hibernate.dialect.DB2Dialect=var3282, r5=var2961, r1=var814, null_type=var3492, $r0=var410, $r2=var3458, $r3=var136, $r4=var2916}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.DB2Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("values nextval for ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1