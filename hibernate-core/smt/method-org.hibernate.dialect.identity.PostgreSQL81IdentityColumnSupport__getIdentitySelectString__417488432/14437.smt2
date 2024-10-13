(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var597 0)
(declare-sort var3176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var597 var597)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3138 var597) ; Statement: r9 := @this: org.hibernate.dialect.identity.PostgreSQL81IdentityColumnSupport 
(assert (not (= var3138 null-var597)))
(declare-const var2965 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2965 null-String)))
(declare-const var1835 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1835 null-String)))
(declare-const var3532 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3532 null-Int)))
(define-const var3396 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3396)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3396!1 String)
(assert (= var3396!1 ""))
(assert true)
(define-const var1810 String (append/672562846 var3396!1 "select currval(\u0027")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select currval(\'") 
(declare-const var3396!2 String)
(assert (= var3396!2 (str.++ var3396!1 "select currval(\u0027")))
(assert true)
(define-const var1663 String (append/672562846 var1810 var2965)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1810!1 String)
(assert (= var1810!1 (str.++ var1810 var2965)))
(assert true)
(define-const var1699 String (append/-1166366385 var1663 95)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var1663!1 String)
(assert (str.prefixof var1663 var1663!1))
(assert true)
(define-const var2813 String (append/672562846 var1699 var1835)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1699!1 String)
(assert (= var1699!1 (str.++ var1699 var1835)))
(assert true)
(define-const var1986 String (append/672562846 var2813 "_seq\u0027)")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_seq\')") 
(declare-const var2813!1 String)
(assert (= var2813!1 (str.++ var2813 "_seq\u0027)")))
(assert true)
(define-const var2739 String (toString/-2075883882 var1986)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var597=org.hibernate.dialect.identity.PostgreSQL81IdentityColumnSupport, var3138=r9, var2965=r1, var3176=null_type, var1835=r4, var3532=i0, var3396=$r0, var1810=$r2, var1663=$r3, var1699=$r5, var2813=$r6, var1986=$r7, var2739=$r8}
; {org.hibernate.dialect.identity.PostgreSQL81IdentityColumnSupport=var597, r9=var3138, r1=var2965, null_type=var3176, r4=var1835, i0=var3532, $r0=var3396, $r2=var1810, $r3=var1663, $r5=var1699, $r6=var2813, $r7=var1986, $r8=var2739}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.dialect.identity.PostgreSQL81IdentityColumnSupport;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select currval(\'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_seq\')");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1