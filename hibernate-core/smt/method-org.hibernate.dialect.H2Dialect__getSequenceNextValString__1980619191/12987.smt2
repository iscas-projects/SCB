(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1607 0)
(declare-sort var2385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1607 var1607)
(declare-const null-String String)
(declare-const var2795 var1607) ; Statement: r5 := @this: org.hibernate.dialect.H2Dialect 
(assert (not (= var2795 null-var1607)))
(declare-const var1331 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1331 null-String)))
(define-const var1590 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1590)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1590!1 String)
(assert (= var1590!1 ""))
(assert true)
(define-const var1096 String (append/672562846 var1590!1 "call next value for ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("call next value for ") 
(declare-const var1590!2 String)
(assert (= var1590!2 (str.++ var1590!1 "call next value for ")))
(assert true)
(define-const var1065 String (append/672562846 var1096 var1331)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1096!1 String)
(assert (= var1096!1 (str.++ var1096 var1331)))
(assert true)
(define-const var2207 String (toString/-2075883882 var1065)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1607=org.hibernate.dialect.H2Dialect, var2795=r5, var1331=r1, var2385=null_type, var1590=$r0, var1096=$r2, var1065=$r3, var2207=$r4}
; {org.hibernate.dialect.H2Dialect=var1607, r5=var2795, r1=var1331, null_type=var2385, $r0=var1590, $r2=var1096, $r3=var1065, $r4=var2207}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.H2Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("call next value for ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1