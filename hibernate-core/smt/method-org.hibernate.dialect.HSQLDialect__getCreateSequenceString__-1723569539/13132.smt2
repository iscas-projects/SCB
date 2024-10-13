(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3664 0)
(declare-sort var2893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3664 var3664)
(declare-const null-String String)
(declare-const var2518 var3664) ; Statement: r6 := @this: org.hibernate.dialect.HSQLDialect 
(assert (not (= var2518 null-var3664)))
(declare-const var1441 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1441 null-String)))
(define-const var3779 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3779)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3779!1 String)
(assert (= var3779!1 ""))
(assert true)
(define-const var3701 String (append/672562846 var3779!1 "create sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ") 
(declare-const var3779!2 String)
(assert (= var3779!2 (str.++ var3779!1 "create sequence ")))
(assert true)
(define-const var3937 String (append/672562846 var3701 var1441)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3701!1 String)
(assert (= var3701!1 (str.++ var3701 var1441)))
(assert true)
(define-const var3006 String (append/672562846 var3937 " start with 1")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" start with 1") 
(declare-const var3937!1 String)
(assert (= var3937!1 (str.++ var3937 " start with 1")))
(assert true)
(define-const var3786 String (toString/-2075883882 var3006)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3664=org.hibernate.dialect.HSQLDialect, var2518=r6, var1441=r1, var2893=null_type, var3779=$r0, var3701=$r2, var3937=$r3, var3006=$r4, var3786=$r5}
; {org.hibernate.dialect.HSQLDialect=var3664, r6=var2518, r1=var1441, null_type=var2893, $r0=var3779, $r2=var3701, $r3=var3937, $r4=var3006, $r5=var3786}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.HSQLDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" start with 1");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1