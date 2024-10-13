(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3026 0)
(declare-sort var1545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1545-init () var1545)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1545 String) void)
(declare-const null-String String)
(declare-const var1270 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1270 null-String)))
(define-const var1366 var1545 var1545-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var2901 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2901)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2901!1 String)
(assert (= var2901!1 ""))
(assert true)
(define-const var2493 String (append/672562846 var2901!1 "Invalid jdk.xml.dsig.secureValidationPolicy entry: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid jdk.xml.dsig.secureValidationPolicy entry: ") 
(declare-const var2901!2 String)
(assert (= var2901!2 (str.++ var2901!1 "Invalid jdk.xml.dsig.secureValidationPolicy entry: ")))
(assert true)
(define-const var1120 String (append/672562846 var2493 var1270)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2493!1 String)
(assert (= var2493!1 (str.++ var2493 var1270)))
(assert true)
(define-const var2019 String (toString/-2075883882 var1120)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1366 var2019)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1366!1 var1545)
(declare-const var2019!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1545-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1270=r2, var3026=null_type, var1545=java.lang.IllegalArgumentException, var1366=$r0, var2901=$r1, var2493=$r3, var1120=$r4, var2019=$r5}
; {r2=var1270, null_type=var3026, java.lang.IllegalArgumentException=var1545, $r0=var1366, $r1=var2901, $r3=var2493, $r4=var1120, $r5=var2019}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid jdk.xml.dsig.secureValidationPolicy entry: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 1