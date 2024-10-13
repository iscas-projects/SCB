(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1985 0)
(declare-sort var2151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1985 var1985)
(declare-const null-String String)
(declare-const var715 var1985) ; Statement: r6 := @this: org.hibernate.dialect.MySQLDialect 
(assert (not (= var715 null-var1985)))
(declare-const var164 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var164 null-String)))
(define-const var1532 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1532)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1532!1 String)
(assert (= var1532!1 ""))
(assert true)
(define-const var664 String (append/672562846 var1532!1 " comment=\u0027")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" comment=\'") 
(declare-const var1532!2 String)
(assert (= var1532!2 (str.++ var1532!1 " comment=\u0027")))
(assert true)
(define-const var1314 String (append/672562846 var664 var164)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var664!1 String)
(assert (= var664!1 (str.++ var664 var164)))
(assert true)
(define-const var1492 String (append/672562846 var1314 "\u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1314!1 String)
(assert (= var1314!1 (str.++ var1314 "\u0027")))
(assert true)
(define-const var90 String (toString/-2075883882 var1492)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1985=org.hibernate.dialect.MySQLDialect, var715=r6, var164=r1, var2151=null_type, var1532=$r0, var664=$r2, var1314=$r3, var1492=$r4, var90=$r5}
; {org.hibernate.dialect.MySQLDialect=var1985, r6=var715, r1=var164, null_type=var2151, $r0=var1532, $r2=var664, $r3=var1314, $r4=var1492, $r5=var90}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.MySQLDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" comment=\'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1