(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2142 0)
(declare-sort var25 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2142 var2142)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1731 var2142) ; Statement: r5 := @this: org.hibernate.dialect.identity.HANAIdentityColumnSupport 
(assert (not (= var1731 null-var2142)))
(declare-const var1651 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1651 null-String)))
(declare-const var547 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var547 null-String)))
(declare-const var3505 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3505 null-Int)))
(define-const var1446 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1446)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1446!1 String)
(assert (= var1446!1 ""))
(assert true)
(define-const var2484 String (append/672562846 var1446!1 "select current_identity_value() from ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select current_identity_value() from ") 
(declare-const var1446!2 String)
(assert (= var1446!2 (str.++ var1446!1 "select current_identity_value() from ")))
(assert true)
(define-const var101 String (append/672562846 var2484 var1651)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2484!1 String)
(assert (= var2484!1 (str.++ var2484 var1651)))
(assert true)
(define-const var1798 String (toString/-2075883882 var101)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2142=org.hibernate.dialect.identity.HANAIdentityColumnSupport, var1731=r5, var1651=r1, var25=null_type, var547=r6, var3505=i0, var1446=$r0, var2484=$r2, var101=$r3, var1798=$r4}
; {org.hibernate.dialect.identity.HANAIdentityColumnSupport=var2142, r5=var1731, r1=var1651, null_type=var25, r6=var547, i0=var3505, $r0=var1446, $r2=var2484, $r3=var101, $r4=var1798}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.identity.HANAIdentityColumnSupport;	r1 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select current_identity_value() from ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1