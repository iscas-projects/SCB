(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3775 0)
(declare-sort var904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3775 var3775)
(declare-const null-String String)
(declare-const var252 var3775) ; Statement: r6 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var252 null-var3775)))
(declare-const var2362 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2362 null-String)))
(define-const var1634 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1634)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1634!1 String)
(assert (= var1634!1 ""))
(assert true)
(define-const var2511 String (append/672562846 var1634!1 "comment \u0027")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("comment \'") 
(declare-const var1634!2 String)
(assert (= var1634!2 (str.++ var1634!1 "comment \u0027")))
(assert true)
(define-const var2046 String (append/672562846 var2511 var2362)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2511!1 String)
(assert (= var2511!1 (str.++ var2511 var2362)))
(assert true)
(define-const var1618 String (append/672562846 var2046 "\u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2046!1 String)
(assert (= var2046!1 (str.++ var2046 "\u0027")))
(assert true)
(define-const var2903 String (toString/-2075883882 var1618)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3775=org.hibernate.dialect.AbstractHANADialect, var252=r6, var2362=r1, var904=null_type, var1634=$r0, var2511=$r2, var2046=$r3, var1618=$r4, var2903=$r5}
; {org.hibernate.dialect.AbstractHANADialect=var3775, r6=var252, r1=var2362, null_type=var904, $r0=var1634, $r2=var2511, $r3=var2046, $r4=var1618, $r5=var2903}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.AbstractHANADialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("comment \'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1