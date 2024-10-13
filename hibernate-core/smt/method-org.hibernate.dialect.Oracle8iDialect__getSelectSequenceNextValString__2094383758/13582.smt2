(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3675 0)
(declare-sort var1879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3675 var3675)
(declare-const null-String String)
(declare-const var3366 var3675) ; Statement: r5 := @this: org.hibernate.dialect.Oracle8iDialect 
(assert (not (= var3366 null-var3675)))
(declare-const var2341 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2341 null-String)))
(define-const var2278 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2278)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2278!1 String)
(assert (= var2278!1 ""))
(assert true)
(define-const var1409 String (append/672562846 var2278!1 var2341)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2278!2 String)
(assert (= var2278!2 (str.++ var2278!1 var2341)))
(assert true)
(define-const var1751 String (append/672562846 var1409 ".nextval")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval") 
(declare-const var1409!1 String)
(assert (= var1409!1 (str.++ var1409 ".nextval")))
(assert true)
(define-const var3901 String (toString/-2075883882 var1751)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3675=org.hibernate.dialect.Oracle8iDialect, var3366=r5, var2341=r1, var1879=null_type, var2278=$r0, var1409=$r2, var1751=$r3, var3901=$r4}
; {org.hibernate.dialect.Oracle8iDialect=var3675, r5=var3366, r1=var2341, null_type=var1879, $r0=var2278, $r2=var1409, $r3=var1751, $r4=var3901}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Oracle8iDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1