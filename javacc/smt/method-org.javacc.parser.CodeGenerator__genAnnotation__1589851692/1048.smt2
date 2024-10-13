(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1772 0)
(declare-sort var2424 0)
(declare-sort var2670 0)
(declare-sort var126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2670_isOutputLanguageJava/1735442213 () Bool)
(declare-fun var2670_getOutputLanguage/-1523304050 () String)
(declare-fun var126-init () var126)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var126 String) void)
(declare-const null-var1772 var1772)
(declare-const null-String String)
(declare-const var2967 var1772) ; Statement: r7 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var2967 null-var1772)))
(declare-const var2552 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2552 null-String)))
(define-const var1791 Bool var2670_isOutputLanguageJava/1735442213) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
 ; Statement: if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert (= (ite var1791 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1084 String var2670_getOutputLanguage/-1523304050) ; Statement: $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var3831 Bool (= var1084 "c++")) ; Statement: $z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++") 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.RuntimeException 
(assert (= (ite var3831 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2282 var126 var126-init) ; Statement: $r1 = new java.lang.RuntimeException 
(define-const var174 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var174)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var174!1 String)
(assert (= var174!1 ""))
(assert true)
(define-const var2183 String (append/672562846 var174!1 "Unknown language : ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown language : ") 
(declare-const var174!2 String)
(assert (= var174!2 (str.++ var174!1 "Unknown language : ")))
(define-const var559 String var2670_getOutputLanguage/-1523304050) ; Statement: $r3 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var3384 String (append/672562846 var2183 var559)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2183!1 String)
(assert (= var2183!1 (str.++ var2183 var559)))
(assert true)
(define-const var2060 String (toString/-2075883882 var3384)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2282 var2060)) ; Statement: specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var2282!1 var126)
(declare-const var2060!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2670_isOutputLanguageJava/1735442213=([], boolean), var2670_getOutputLanguage/-1523304050=([], java.lang.String), var126-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1772=org.javacc.parser.CodeGenerator, var2967=r7, var2552=r10, var2424=null_type, var2670=org.javacc.parser.Options, var1791=$z0, var1084=$r0, var3831=$z1, var126=java.lang.RuntimeException, var2282=$r1, var174=$r2, var2183=$r4, var559=$r3, var3384=$r5, var2060=$r6}
; {org.javacc.parser.CodeGenerator=var1772, r7=var2967, r10=var2552, null_type=var2424, org.javacc.parser.Options=var2670, $z0=var1791, $r0=var1084, $z1=var3831, java.lang.RuntimeException=var126, $r1=var2282, $r2=var174, $r4=var2183, $r3=var559, $r5=var3384, $r6=var2060}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.javacc.parser.CodeGenerator;	r10 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++");	if $z1 == 0 goto $r1 = new java.lang.RuntimeException;	$r1 = new java.lang.RuntimeException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown language : ");	$r3 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3