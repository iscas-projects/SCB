(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2372 0)
(declare-sort var2112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2372 var2372)
(declare-const null-String String)
(declare-const var806 var2372) ; Statement: r5 := @this: org.hibernate.dialect.HSQLDialect$4 
(assert (not (= var806 null-var2372)))
(declare-const var3389 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3389 null-String)))
(define-const var2780 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2780)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2780!1 String)
(assert (= var2780!1 ""))
(assert true)
(define-const var720 String (append/672562846 var2780!1 "MODULE.HT_")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MODULE.HT_") 
(declare-const var2780!2 String)
(assert (= var2780!2 (str.++ var2780!1 "MODULE.HT_")))
(assert true)
(define-const var149 String (append/672562846 var720 var3389)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var720!1 String)
(assert (= var720!1 (str.++ var720 var3389)))
(assert true)
(define-const var2324 String (toString/-2075883882 var149)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2372=org.hibernate.dialect.HSQLDialect$4, var806=r5, var3389=r1, var2112=null_type, var2780=$r0, var720=$r2, var149=$r3, var2324=$r4}
; {org.hibernate.dialect.HSQLDialect$4=var2372, r5=var806, r1=var3389, null_type=var2112, $r0=var2780, $r2=var720, $r3=var149, $r4=var2324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.HSQLDialect$4;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MODULE.HT_");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1