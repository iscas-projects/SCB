(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var393 0)
(declare-sort var1083 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var393 var393)
(declare-const null-String String)
(declare-const var411 var393) ; Statement: r6 := @this: org.hibernate.dialect.MySQLDialect 
(assert (not (= var411 null-var393)))
(declare-const var801 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var801 null-String)))
(define-const var451 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var451)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var451!1 String)
(assert (= var451!1 ""))
(assert true)
(define-const var2105 String (append/672562846 var451!1 "not (")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not (") 
(declare-const var451!2 String)
(assert (= var451!2 (str.++ var451!1 "not (")))
(assert true)
(define-const var3329 String (append/672562846 var2105 var801)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2105!1 String)
(assert (= var2105!1 (str.++ var2105 var801)))
(assert true)
(define-const var1318 String (append/672562846 var3329 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3329!1 String)
(assert (= var3329!1 (str.++ var3329 ")")))
(assert true)
(define-const var551 String (toString/-2075883882 var1318)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var393=org.hibernate.dialect.MySQLDialect, var411=r6, var801=r1, var1083=null_type, var451=$r0, var2105=$r2, var3329=$r3, var1318=$r4, var551=$r5}
; {org.hibernate.dialect.MySQLDialect=var393, r6=var411, r1=var801, null_type=var1083, $r0=var451, $r2=var2105, $r3=var3329, $r4=var1318, $r5=var551}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.MySQLDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not (");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1