(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2796 0)
(declare-sort var267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2796 var2796)
(declare-const null-String String)
(declare-const var3650 var2796) ; Statement: r5 := @this: org.hibernate.dialect.HSQLDialect$3 
(assert (not (= var3650 null-var2796)))
(declare-const var1664 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1664 null-String)))
(define-const var2424 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2424)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2424!1 String)
(assert (= var2424!1 ""))
(assert true)
(define-const var941 String (append/672562846 var2424!1 "HT_")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HT_") 
(declare-const var2424!2 String)
(assert (= var2424!2 (str.++ var2424!1 "HT_")))
(assert true)
(define-const var2314 String (append/672562846 var941 var1664)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var941!1 String)
(assert (= var941!1 (str.++ var941 var1664)))
(assert true)
(define-const var2733 String (toString/-2075883882 var2314)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2796=org.hibernate.dialect.HSQLDialect$3, var3650=r5, var1664=r1, var267=null_type, var2424=$r0, var941=$r2, var2314=$r3, var2733=$r4}
; {org.hibernate.dialect.HSQLDialect$3=var2796, r5=var3650, r1=var1664, null_type=var267, $r0=var2424, $r2=var941, $r3=var2314, $r4=var2733}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.HSQLDialect$3;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HT_");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1