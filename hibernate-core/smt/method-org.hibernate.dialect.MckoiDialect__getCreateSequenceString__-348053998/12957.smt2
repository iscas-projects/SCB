(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2855 0)
(declare-sort var787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2855 var2855)
(declare-const null-String String)
(declare-const var235 var2855) ; Statement: r5 := @this: org.hibernate.dialect.MckoiDialect 
(assert (not (= var235 null-var2855)))
(declare-const var2295 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2295 null-String)))
(define-const var1537 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1537)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1537!1 String)
(assert (= var1537!1 ""))
(assert true)
(define-const var3521 String (append/672562846 var1537!1 "create sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ") 
(declare-const var1537!2 String)
(assert (= var1537!2 (str.++ var1537!1 "create sequence ")))
(assert true)
(define-const var1972 String (append/672562846 var3521 var2295)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3521!1 String)
(assert (= var3521!1 (str.++ var3521 var2295)))
(assert true)
(define-const var3249 String (toString/-2075883882 var1972)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2855=org.hibernate.dialect.MckoiDialect, var235=r5, var2295=r1, var787=null_type, var1537=$r0, var3521=$r2, var1972=$r3, var3249=$r4}
; {org.hibernate.dialect.MckoiDialect=var2855, r5=var235, r1=var2295, null_type=var787, $r0=var1537, $r2=var3521, $r3=var1972, $r4=var3249}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.MckoiDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1