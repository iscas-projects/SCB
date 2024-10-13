(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var367 0)
(declare-sort var1853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var367 var367)
(declare-const null-String String)
(declare-const var565 var367) ; Statement: r6 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var565 null-var367)))
(declare-const var533 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var533 null-String)))
(define-const var773 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var773)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var773!1 String)
(assert (= var773!1 ""))
(assert true)
(define-const var2364 String (append/672562846 var773!1 "nextval (\u0027")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nextval (\'") 
(declare-const var773!2 String)
(assert (= var773!2 (str.++ var773!1 "nextval (\u0027")))
(assert true)
(define-const var3137 String (append/672562846 var2364 var533)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2364!1 String)
(assert (= var2364!1 (str.++ var2364 var533)))
(assert true)
(define-const var805 String (append/672562846 var3137 "\u0027)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')") 
(declare-const var3137!1 String)
(assert (= var3137!1 (str.++ var3137 "\u0027)")))
(assert true)
(define-const var2516 String (toString/-2075883882 var805)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var367=org.hibernate.dialect.PostgreSQL81Dialect, var565=r6, var533=r1, var1853=null_type, var773=$r0, var2364=$r2, var3137=$r3, var805=$r4, var2516=$r5}
; {org.hibernate.dialect.PostgreSQL81Dialect=var367, r6=var565, r1=var533, null_type=var1853, $r0=var773, $r2=var2364, $r3=var3137, $r4=var805, $r5=var2516}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nextval (\'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1