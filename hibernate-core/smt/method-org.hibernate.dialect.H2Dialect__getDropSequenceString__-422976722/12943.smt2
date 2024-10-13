(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3275 0)
(declare-sort var691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3275 var3275)
(declare-const null-String String)
(declare-const var2795 var3275) ; Statement: r5 := @this: org.hibernate.dialect.H2Dialect 
(assert (not (= var2795 null-var3275)))
(declare-const var897 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var897 null-String)))
(define-const var2827 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2827)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2827!1 String)
(assert (= var2827!1 ""))
(assert true)
(define-const var905 String (append/672562846 var2827!1 "drop sequence if exists ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence if exists ") 
(declare-const var2827!2 String)
(assert (= var2827!2 (str.++ var2827!1 "drop sequence if exists ")))
(assert true)
(define-const var3600 String (append/672562846 var905 var897)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var905!1 String)
(assert (= var905!1 (str.++ var905 var897)))
(assert true)
(define-const var710 String (toString/-2075883882 var3600)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3275=org.hibernate.dialect.H2Dialect, var2795=r5, var897=r1, var691=null_type, var2827=$r0, var905=$r2, var3600=$r3, var710=$r4}
; {org.hibernate.dialect.H2Dialect=var3275, r5=var2795, r1=var897, null_type=var691, $r0=var2827, $r2=var905, $r3=var3600, $r4=var710}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.H2Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence if exists ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1