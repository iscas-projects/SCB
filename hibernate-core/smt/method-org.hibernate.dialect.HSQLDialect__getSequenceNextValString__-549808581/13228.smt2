(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2792 0)
(declare-sort var1768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2792 var2792)
(declare-const null-String String)
(declare-const var1080 var2792) ; Statement: r5 := @this: org.hibernate.dialect.HSQLDialect 
(assert (not (= var1080 null-var2792)))
(declare-const var3458 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3458 null-String)))
(define-const var1706 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1706)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1706!1 String)
(assert (= var1706!1 ""))
(assert true)
(define-const var792 String (append/672562846 var1706!1 "call next value for ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("call next value for ") 
(declare-const var1706!2 String)
(assert (= var1706!2 (str.++ var1706!1 "call next value for ")))
(assert true)
(define-const var1554 String (append/672562846 var792 var3458)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var792!1 String)
(assert (= var792!1 (str.++ var792 var3458)))
(assert true)
(define-const var2350 String (toString/-2075883882 var1554)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2792=org.hibernate.dialect.HSQLDialect, var1080=r5, var3458=r1, var1768=null_type, var1706=$r0, var792=$r2, var1554=$r3, var2350=$r4}
; {org.hibernate.dialect.HSQLDialect=var2792, r5=var1080, r1=var3458, null_type=var1768, $r0=var1706, $r2=var792, $r3=var1554, $r4=var2350}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.HSQLDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("call next value for ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1