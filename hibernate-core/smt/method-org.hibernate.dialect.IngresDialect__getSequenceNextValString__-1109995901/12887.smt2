(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1175 0)
(declare-sort var249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1175 var1175)
(declare-const null-String String)
(declare-const var63 var1175) ; Statement: r5 := @this: org.hibernate.dialect.IngresDialect 
(assert (not (= var63 null-var1175)))
(declare-const var1814 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1814 null-String)))
(define-const var3635 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3635)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3635!1 String)
(assert (= var3635!1 ""))
(assert true)
(define-const var1888 String (append/672562846 var3635!1 "select nextval for ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select nextval for ") 
(declare-const var3635!2 String)
(assert (= var3635!2 (str.++ var3635!1 "select nextval for ")))
(assert true)
(define-const var2043 String (append/672562846 var1888 var1814)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1888!1 String)
(assert (= var1888!1 (str.++ var1888 var1814)))
(assert true)
(define-const var3629 String (toString/-2075883882 var2043)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1175=org.hibernate.dialect.IngresDialect, var63=r5, var1814=r1, var249=null_type, var3635=$r0, var1888=$r2, var2043=$r3, var3629=$r4}
; {org.hibernate.dialect.IngresDialect=var1175, r5=var63, r1=var1814, null_type=var249, $r0=var3635, $r2=var1888, $r3=var2043, $r4=var3629}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.IngresDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select nextval for ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1