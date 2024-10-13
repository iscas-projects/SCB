(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2065 0)
(declare-sort var3103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2065 var2065)
(declare-const null-String String)
(declare-const var3660 var2065) ; Statement: r5 := @this: org.hibernate.dialect.SAPDBDialect 
(assert (not (= var3660 null-var2065)))
(declare-const var817 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var817 null-String)))
(define-const var3495 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3495)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3495!1 String)
(assert (= var3495!1 ""))
(assert true)
(define-const var2447 String (append/672562846 var3495!1 var817)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3495!2 String)
(assert (= var3495!2 (str.++ var3495!1 var817)))
(assert true)
(define-const var2315 String (append/672562846 var2447 ".nextval")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval") 
(declare-const var2447!1 String)
(assert (= var2447!1 (str.++ var2447 ".nextval")))
(assert true)
(define-const var73 String (toString/-2075883882 var2315)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2065=org.hibernate.dialect.SAPDBDialect, var3660=r5, var817=r1, var3103=null_type, var3495=$r0, var2447=$r2, var2315=$r3, var73=$r4}
; {org.hibernate.dialect.SAPDBDialect=var2065, r5=var3660, r1=var817, null_type=var3103, $r0=var3495, $r2=var2447, $r3=var2315, $r4=var73}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.SAPDBDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1