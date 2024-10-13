(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2965 0)
(declare-sort var2719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2965 var2965)
(declare-const null-String String)
(declare-const var75 var2965) ; Statement: r5 := @this: org.hibernate.dialect.H2Dialect 
(assert (not (= var75 null-var2965)))
(declare-const var2417 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2417 null-String)))
(define-const var2952 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2952)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2952!1 String)
(assert (= var2952!1 ""))
(assert true)
(define-const var3306 String (append/672562846 var2952!1 "next value for ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("next value for ") 
(declare-const var2952!2 String)
(assert (= var2952!2 (str.++ var2952!1 "next value for ")))
(assert true)
(define-const var2674 String (append/672562846 var3306 var2417)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3306!1 String)
(assert (= var3306!1 (str.++ var3306 var2417)))
(assert true)
(define-const var3506 String (toString/-2075883882 var2674)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2965=org.hibernate.dialect.H2Dialect, var75=r5, var2417=r1, var2719=null_type, var2952=$r0, var3306=$r2, var2674=$r3, var3506=$r4}
; {org.hibernate.dialect.H2Dialect=var2965, r5=var75, r1=var2417, null_type=var2719, $r0=var2952, $r2=var3306, $r3=var2674, $r4=var3506}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.H2Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("next value for ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1