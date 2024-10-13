(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1831 0)
(declare-sort var1498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1831 var1831)
(declare-const null-String String)
(declare-const var1235 var1831) ; Statement: r5 := @this: org.hibernate.dialect.HSQLDialect 
(assert (not (= var1235 null-var1831)))
(declare-const var440 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var440 null-String)))
(define-const var1409 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1409)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1409!1 String)
(assert (= var1409!1 ""))
(assert true)
(define-const var300 String (append/672562846 var1409!1 "next value for ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("next value for ") 
(declare-const var1409!2 String)
(assert (= var1409!2 (str.++ var1409!1 "next value for ")))
(assert true)
(define-const var1388 String (append/672562846 var300 var440)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var300!1 String)
(assert (= var300!1 (str.++ var300 var440)))
(assert true)
(define-const var3708 String (toString/-2075883882 var1388)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1831=org.hibernate.dialect.HSQLDialect, var1235=r5, var440=r1, var1498=null_type, var1409=$r0, var300=$r2, var1388=$r3, var3708=$r4}
; {org.hibernate.dialect.HSQLDialect=var1831, r5=var1235, r1=var440, null_type=var1498, $r0=var1409, $r2=var300, $r3=var1388, $r4=var3708}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.HSQLDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("next value for ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1