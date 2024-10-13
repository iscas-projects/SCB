(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1206 0)
(declare-sort var1396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1206 var1206)
(declare-const null-String String)
(declare-const var3648 var1206) ; Statement: r5 := @this: org.hibernate.dialect.identity.AbstractTransactSQLIdentityColumnSupport 
(assert (not (= var3648 null-var1206)))
(declare-const var2942 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2942 null-String)))
(define-const var3040 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3040)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3040!1 String)
(assert (= var3040!1 ""))
(assert true)
(define-const var2012 String (append/672562846 var3040!1 var2942)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3040!2 String)
(assert (= var3040!2 (str.++ var3040!1 var2942)))
(assert true)
(define-const var2033 String (append/672562846 var2012 "\nselect @@identity")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nselect @@identity") 
(declare-const var2012!1 String)
(assert (= var2012!1 (str.++ var2012 "\nselect @@identity")))
(assert true)
(define-const var355 String (toString/-2075883882 var2033)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1206=org.hibernate.dialect.identity.AbstractTransactSQLIdentityColumnSupport, var3648=r5, var2942=r1, var1396=null_type, var3040=$r0, var2012=$r2, var2033=$r3, var355=$r4}
; {org.hibernate.dialect.identity.AbstractTransactSQLIdentityColumnSupport=var1206, r5=var3648, r1=var2942, null_type=var1396, $r0=var3040, $r2=var2012, $r3=var2033, $r4=var355}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.identity.AbstractTransactSQLIdentityColumnSupport;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nselect @@identity");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1