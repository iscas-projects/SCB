(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2314 0)
(declare-sort var2404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2314 var2314)
(declare-const null-String String)
(declare-const var312 var2314) ; Statement: r5 := @this: org.hibernate.dialect.FirebirdDialect 
(assert (not (= var312 null-var2314)))
(declare-const var3865 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3865 null-String)))
(define-const var3480 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3480)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3480!1 String)
(assert (= var3480!1 ""))
(assert true)
(define-const var347 String (append/672562846 var3480!1 "drop generator ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop generator ") 
(declare-const var3480!2 String)
(assert (= var3480!2 (str.++ var3480!1 "drop generator ")))
(assert true)
(define-const var193 String (append/672562846 var347 var3865)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var347!1 String)
(assert (= var347!1 (str.++ var347 var3865)))
(assert true)
(define-const var727 String (toString/-2075883882 var193)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2314=org.hibernate.dialect.FirebirdDialect, var312=r5, var3865=r1, var2404=null_type, var3480=$r0, var347=$r2, var193=$r3, var727=$r4}
; {org.hibernate.dialect.FirebirdDialect=var2314, r5=var312, r1=var3865, null_type=var2404, $r0=var3480, $r2=var347, $r3=var193, $r4=var727}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.FirebirdDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop generator ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1