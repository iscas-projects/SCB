(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var425 0)
(declare-sort var3037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var425 var425)
(declare-const null-String String)
(declare-const var727 var425) ; Statement: r6 := @this: org.hibernate.dialect.MySQLDialect 
(assert (not (= var727 null-var425)))
(declare-const var1050 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1050 null-String)))
(define-const var459 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var459)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var459!1 String)
(assert (= var459!1 ""))
(assert true)
(define-const var470 String (append/672562846 var459!1 " comment \u0027")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" comment \'") 
(declare-const var459!2 String)
(assert (= var459!2 (str.++ var459!1 " comment \u0027")))
(assert true)
(define-const var2407 String (append/672562846 var470 var1050)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var470!1 String)
(assert (= var470!1 (str.++ var470 var1050)))
(assert true)
(define-const var3818 String (append/672562846 var2407 "\u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2407!1 String)
(assert (= var2407!1 (str.++ var2407 "\u0027")))
(assert true)
(define-const var2658 String (toString/-2075883882 var3818)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var425=org.hibernate.dialect.MySQLDialect, var727=r6, var1050=r1, var3037=null_type, var459=$r0, var470=$r2, var2407=$r3, var3818=$r4, var2658=$r5}
; {org.hibernate.dialect.MySQLDialect=var425, r6=var727, r1=var1050, null_type=var3037, $r0=var459, $r2=var470, $r3=var2407, $r4=var3818, $r5=var2658}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.MySQLDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" comment \'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1