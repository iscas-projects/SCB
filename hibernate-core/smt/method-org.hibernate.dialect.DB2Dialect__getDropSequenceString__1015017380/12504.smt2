(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3190 0)
(declare-sort var3574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3190 var3190)
(declare-const null-String String)
(declare-const var3948 var3190) ; Statement: r6 := @this: org.hibernate.dialect.DB2Dialect 
(assert (not (= var3948 null-var3190)))
(declare-const var3107 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3107 null-String)))
(define-const var3149 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3149)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3149!1 String)
(assert (= var3149!1 ""))
(assert true)
(define-const var3780 String (append/672562846 var3149!1 "drop sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ") 
(declare-const var3149!2 String)
(assert (= var3149!2 (str.++ var3149!1 "drop sequence ")))
(assert true)
(define-const var2113 String (append/672562846 var3780 var3107)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3780!1 String)
(assert (= var3780!1 (str.++ var3780 var3107)))
(assert true)
(define-const var131 String (append/672562846 var2113 " restrict")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" restrict") 
(declare-const var2113!1 String)
(assert (= var2113!1 (str.++ var2113 " restrict")))
(assert true)
(define-const var1032 String (toString/-2075883882 var131)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3190=org.hibernate.dialect.DB2Dialect, var3948=r6, var3107=r1, var3574=null_type, var3149=$r0, var3780=$r2, var2113=$r3, var131=$r4, var1032=$r5}
; {org.hibernate.dialect.DB2Dialect=var3190, r6=var3948, r1=var3107, null_type=var3574, $r0=var3149, $r2=var3780, $r3=var2113, $r4=var131, $r5=var1032}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.DB2Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" restrict");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1