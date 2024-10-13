(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1775 0)
(declare-sort var3336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1775 var1775)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1916 var1775) ; Statement: r7 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var1916 null-var1775)))
(declare-const var402 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var402 null-String)))
(declare-const var1905 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1905 null-Int)))
 ; Statement: if i0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= var1905 0))) ; Cond: i0 != 0 
(define-const var785 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var785)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var785!1 String)
(assert (= var785!1 ""))
(assert true)
(define-const var2858 String (append/672562846 var785!1 " for update of ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for update of ") 
(declare-const var785!2 String)
(assert (= var785!2 (str.++ var785!1 " for update of ")))
(assert true)
(define-const var27 String (append/672562846 var2858 var402)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2858!1 String)
(assert (= var2858!1 (str.++ var2858 var402)))
(assert true)
(define-const var1260 String (toString/-2075883882 var27)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1775=org.hibernate.dialect.PostgreSQL81Dialect, var1916=r7, var402=r1, var3336=null_type, var1905=i0, var785=$r0, var2858=$r2, var27=$r3, var1260=$r4}
; {org.hibernate.dialect.PostgreSQL81Dialect=var1775, r7=var1916, r1=var402, null_type=var3336, i0=var1905, $r0=var785, $r2=var2858, $r3=var27, $r4=var1260}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	if i0 != 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for update of ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2