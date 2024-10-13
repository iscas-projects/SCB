(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var360 0)
(declare-sort var2213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var360 var360)
(declare-const null-String String)
(declare-const var2212 var360) ; Statement: r5 := @this: org.hibernate.dialect.Oracle9Dialect 
(assert (not (= var2212 null-var360)))
(declare-const var3810 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3810 null-String)))
(define-const var2542 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2542)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2542!1 String)
(assert (= var2542!1 ""))
(assert true)
(define-const var2491 String (append/672562846 var2542!1 "create sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ") 
(declare-const var2542!2 String)
(assert (= var2542!2 (str.++ var2542!1 "create sequence ")))
(assert true)
(define-const var91 String (append/672562846 var2491 var3810)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2491!1 String)
(assert (= var2491!1 (str.++ var2491 var3810)))
(assert true)
(define-const var3246 String (toString/-2075883882 var91)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var360=org.hibernate.dialect.Oracle9Dialect, var2212=r5, var3810=r1, var2213=null_type, var2542=$r0, var2491=$r2, var91=$r3, var3246=$r4}
; {org.hibernate.dialect.Oracle9Dialect=var360, r5=var2212, r1=var3810, null_type=var2213, $r0=var2542, $r2=var2491, $r3=var91, $r4=var3246}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Oracle9Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1