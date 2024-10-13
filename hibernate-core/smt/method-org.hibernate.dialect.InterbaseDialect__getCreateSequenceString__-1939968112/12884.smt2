(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var190 0)
(declare-sort var1233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var190 var190)
(declare-const null-String String)
(declare-const var2959 var190) ; Statement: r5 := @this: org.hibernate.dialect.InterbaseDialect 
(assert (not (= var2959 null-var190)))
(declare-const var2880 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2880 null-String)))
(define-const var3344 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3344)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3344!1 String)
(assert (= var3344!1 ""))
(assert true)
(define-const var3814 String (append/672562846 var3344!1 "create generator ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create generator ") 
(declare-const var3344!2 String)
(assert (= var3344!2 (str.++ var3344!1 "create generator ")))
(assert true)
(define-const var2190 String (append/672562846 var3814 var2880)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3814!1 String)
(assert (= var3814!1 (str.++ var3814 var2880)))
(assert true)
(define-const var2019 String (toString/-2075883882 var2190)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var190=org.hibernate.dialect.InterbaseDialect, var2959=r5, var2880=r1, var1233=null_type, var3344=$r0, var3814=$r2, var2190=$r3, var2019=$r4}
; {org.hibernate.dialect.InterbaseDialect=var190, r5=var2959, r1=var2880, null_type=var1233, $r0=var3344, $r2=var3814, $r3=var2190, $r4=var2019}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.InterbaseDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create generator ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1