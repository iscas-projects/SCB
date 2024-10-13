(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3937 0)
(declare-sort var2274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3937_isOutputLanguageJava/1735442213 () Bool)
(declare-fun var3937_getOutputLanguage/-1523304050 () String)
(declare-fun var2274-init () var2274)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2274 String) void)
(define-const var3932 Bool var3937_isOutputLanguageJava/1735442213) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
 ; Statement: if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert (= (ite var3932 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1243 String var3937_getOutputLanguage/-1523304050) ; Statement: $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var2196 Bool (= var1243 "c++")) ; Statement: $z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++") 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.RuntimeException 
(assert (= (ite var2196 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2547 var2274 var2274-init) ; Statement: $r1 = new java.lang.RuntimeException 
(define-const var397 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var397)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var397!1 String)
(assert (= var397!1 ""))
(assert true)
(define-const var750 String (append/672562846 var397!1 "Output language type not fully implemented : ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output language type not fully implemented : ") 
(declare-const var397!2 String)
(assert (= var397!2 (str.++ var397!1 "Output language type not fully implemented : ")))
(define-const var2291 String var3937_getOutputLanguage/-1523304050) ; Statement: $r3 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var2390 String (append/672562846 var750 var2291)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var750!1 String)
(assert (= var750!1 (str.++ var750 var2291)))
(assert true)
(define-const var1364 String (toString/-2075883882 var2390)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2547 var1364)) ; Statement: specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var2547!1 var2274)
(declare-const var1364!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3937_isOutputLanguageJava/1735442213=([], boolean), var3937_getOutputLanguage/-1523304050=([], java.lang.String), var2274-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3937=org.javacc.parser.Options, var3932=$z0, var1243=$r0, var2196=$z1, var2274=java.lang.RuntimeException, var2547=$r1, var397=$r2, var750=$r4, var2291=$r3, var2390=$r5, var1364=$r6}
; {org.javacc.parser.Options=var3937, $z0=var3932, $r0=var1243, $z1=var2196, java.lang.RuntimeException=var2274, $r1=var2547, $r2=var397, $r4=var750, $r3=var2291, $r5=var2390, $r6=var1364}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++");	if $z1 == 0 goto $r1 = new java.lang.RuntimeException;	$r1 = new java.lang.RuntimeException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output language type not fully implemented : ");	$r3 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3