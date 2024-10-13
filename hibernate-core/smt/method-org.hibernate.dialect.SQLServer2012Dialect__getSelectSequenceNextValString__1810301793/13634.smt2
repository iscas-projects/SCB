(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var671 0)
(declare-sort var3477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var671 var671)
(declare-const null-String String)
(declare-const var1791 var671) ; Statement: r5 := @this: org.hibernate.dialect.SQLServer2012Dialect 
(assert (not (= var1791 null-var671)))
(declare-const var1087 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1087 null-String)))
(define-const var649 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var649)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var649!1 String)
(assert (= var649!1 ""))
(assert true)
(define-const var1583 String (append/672562846 var649!1 "next value for ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("next value for ") 
(declare-const var649!2 String)
(assert (= var649!2 (str.++ var649!1 "next value for ")))
(assert true)
(define-const var1748 String (append/672562846 var1583 var1087)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1583!1 String)
(assert (= var1583!1 (str.++ var1583 var1087)))
(assert true)
(define-const var2597 String (toString/-2075883882 var1748)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var671=org.hibernate.dialect.SQLServer2012Dialect, var1791=r5, var1087=r1, var3477=null_type, var649=$r0, var1583=$r2, var1748=$r3, var2597=$r4}
; {org.hibernate.dialect.SQLServer2012Dialect=var671, r5=var1791, r1=var1087, null_type=var3477, $r0=var649, $r2=var1583, $r3=var1748, $r4=var2597}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.SQLServer2012Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("next value for ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1