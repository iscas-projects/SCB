(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3537 0)
(declare-sort var1777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3537 var3537)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var215 var3537) ; Statement: r7 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var215 null-var3537)))
(declare-const var3788 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3788 null-String)))
(declare-const var2506 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2506 null-Int)))
 ; Statement: if i0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= var2506 0))) ; Cond: i0 != 0 
(define-const var2600 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2600)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2600!1 String)
(assert (= var2600!1 ""))
(assert true)
(define-const var2731 String (append/672562846 var2600!1 " for share of ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for share of ") 
(declare-const var2600!2 String)
(assert (= var2600!2 (str.++ var2600!1 " for share of ")))
(assert true)
(define-const var590 String (append/672562846 var2731 var3788)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2731!1 String)
(assert (= var2731!1 (str.++ var2731 var3788)))
(assert true)
(define-const var3504 String (toString/-2075883882 var590)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3537=org.hibernate.dialect.PostgreSQL81Dialect, var215=r7, var3788=r1, var1777=null_type, var2506=i0, var2600=$r0, var2731=$r2, var590=$r3, var3504=$r4}
; {org.hibernate.dialect.PostgreSQL81Dialect=var3537, r7=var215, r1=var3788, null_type=var1777, i0=var2506, $r0=var2600, $r2=var2731, $r3=var590, $r4=var3504}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	if i0 != 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for share of ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2