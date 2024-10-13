(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3506 0)
(declare-sort var2345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3506 var3506)
(declare-const null-String String)
(declare-const var988 var3506) ; Statement: r6 := @this: org.hibernate.dialect.InformixDialect 
(assert (not (= var988 null-var3506)))
(declare-const var1259 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1259 null-String)))
(define-const var1595 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1595)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1595!1 String)
(assert (= var1595!1 ""))
(assert true)
(define-const var3700 String (append/672562846 var1595!1 " add constraint primary key constraint ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint primary key constraint ") 
(declare-const var1595!2 String)
(assert (= var1595!2 (str.++ var1595!1 " add constraint primary key constraint ")))
(assert true)
(define-const var2761 String (append/672562846 var3700 var1259)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3700!1 String)
(assert (= var3700!1 (str.++ var3700 var1259)))
(assert true)
(define-const var3876 String (append/672562846 var2761 " ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2761!1 String)
(assert (= var2761!1 (str.++ var2761 " ")))
(assert true)
(define-const var710 String (toString/-2075883882 var3876)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3506=org.hibernate.dialect.InformixDialect, var988=r6, var1259=r1, var2345=null_type, var1595=$r0, var3700=$r2, var2761=$r3, var3876=$r4, var710=$r5}
; {org.hibernate.dialect.InformixDialect=var3506, r6=var988, r1=var1259, null_type=var2345, $r0=var1595, $r2=var3700, $r3=var2761, $r4=var3876, $r5=var710}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.InformixDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint primary key constraint ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1