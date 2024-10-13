(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3696 0)
(declare-sort var3638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3696 var3696)
(declare-const null-String String)
(declare-const var2201 var3696) ; Statement: r5 := @this: org.hibernate.dialect.MimerSQLDialect 
(assert (not (= var2201 null-var3696)))
(declare-const var2442 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2442 null-String)))
(define-const var3572 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3572)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3572!1 String)
(assert (= var3572!1 ""))
(assert true)
(define-const var1818 String (append/672562846 var3572!1 "create unique sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create unique sequence ") 
(declare-const var3572!2 String)
(assert (= var3572!2 (str.++ var3572!1 "create unique sequence ")))
(assert true)
(define-const var278 String (append/672562846 var1818 var2442)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1818!1 String)
(assert (= var1818!1 (str.++ var1818 var2442)))
(assert true)
(define-const var1824 String (toString/-2075883882 var278)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3696=org.hibernate.dialect.MimerSQLDialect, var2201=r5, var2442=r1, var3638=null_type, var3572=$r0, var1818=$r2, var278=$r3, var1824=$r4}
; {org.hibernate.dialect.MimerSQLDialect=var3696, r5=var2201, r1=var2442, null_type=var3638, $r0=var3572, $r2=var1818, $r3=var278, $r4=var1824}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.MimerSQLDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create unique sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1