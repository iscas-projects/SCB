(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2110 0)
(declare-sort var2554 0)
(declare-sort var50 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2554_isOutputLanguageJava/1735442213 () Bool)
(declare-fun var2554_getOutputLanguage/-1523304050 () String)
(declare-fun var50-init () var50)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var50 String) void)
(declare-const null-var2110 var2110)
(declare-const var449 var2110) ; Statement: r7 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var449 null-var2110)))
(define-const var3617 Bool var2554_isOutputLanguageJava/1735442213) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
 ; Statement: if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert (= (ite var3617 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1437 String var2554_getOutputLanguage/-1523304050) ; Statement: $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var2724 Bool (= var1437 "c++")) ; Statement: $z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++") 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.RuntimeException 
(assert (= (ite var2724 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1464 var50 var50-init) ; Statement: $r1 = new java.lang.RuntimeException 
(define-const var217 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var217)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var217!1 String)
(assert (= var217!1 ""))
(assert true)
(define-const var1332 String (append/672562846 var217!1 "Output language type not fully implemented : ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output language type not fully implemented : ") 
(declare-const var217!2 String)
(assert (= var217!2 (str.++ var217!1 "Output language type not fully implemented : ")))
(define-const var2143 String var2554_getOutputLanguage/-1523304050) ; Statement: $r3 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var1651 String (append/672562846 var1332 var2143)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1332!1 String)
(assert (= var1332!1 (str.++ var1332 var2143)))
(assert true)
(define-const var2865 String (toString/-2075883882 var1651)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1464 var2865)) ; Statement: specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var1464!1 var50)
(declare-const var2865!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2554_isOutputLanguageJava/1735442213=([], boolean), var2554_getOutputLanguage/-1523304050=([], java.lang.String), var50-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2110=org.javacc.parser.CodeGenerator, var449=r7, var2554=org.javacc.parser.Options, var3617=$z0, var1437=$r0, var2724=$z1, var50=java.lang.RuntimeException, var1464=$r1, var217=$r2, var1332=$r4, var2143=$r3, var1651=$r5, var2865=$r6}
; {org.javacc.parser.CodeGenerator=var2110, r7=var449, org.javacc.parser.Options=var2554, $z0=var3617, $r0=var1437, $z1=var2724, java.lang.RuntimeException=var50, $r1=var1464, $r2=var217, $r4=var1332, $r3=var2143, $r5=var1651, $r6=var2865}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: org.javacc.parser.CodeGenerator;	$z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++");	if $z1 == 0 goto $r1 = new java.lang.RuntimeException;	$r1 = new java.lang.RuntimeException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output language type not fully implemented : ");	$r3 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3