(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var240 0)
(declare-sort var2823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var240 var240)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1221 var240) ; Statement: r5 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var1221 null-var240)))
(declare-const var1539 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1539 null-String)))
(declare-const var420 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var420 null-Bool)))
(define-const var534 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var534)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var534!1 String)
(assert (= var534!1 ""))
(assert true)
(define-const var2017 String (append/672562846 var534!1 var1539)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var534!2 String)
(assert (= var534!2 (str.++ var534!1 var1539)))
 ; Statement: if z0 == 0 goto $r6 = " limit ?" 
(assert (= (ite var420 1 0) 0)) ; Cond: z0 == 0 
(define-const var2012 String " limit ?") ; Statement: $r6 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var172 String (append/672562846 var2017 var2012)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2017!1 String)
(assert (= var2017!1 (str.++ var2017 var2012)))
(assert true)
(define-const var1543 String (toString/-2075883882 var172)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var240=org.hibernate.dialect.PostgreSQL81Dialect, var1221=r5, var1539=r1, var2823=null_type, var420=z0, var534=$r0, var2017=$r2, var2012=$r6, var172=$r3, var1543=$r4}
; {org.hibernate.dialect.PostgreSQL81Dialect=var240, r5=var1221, r1=var1539, null_type=var2823, z0=var420, $r0=var534, $r2=var2017, $r6=var2012, $r3=var172, $r4=var1543}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " limit ?";	$r6 = " limit ?";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3