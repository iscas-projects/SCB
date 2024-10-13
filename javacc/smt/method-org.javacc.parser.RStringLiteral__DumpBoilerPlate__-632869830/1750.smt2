(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var312 0)
(declare-sort var2924 0)
(declare-sort var711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2924_isOutputLanguageJava/1735442213 () Bool)
(declare-fun var2924_getOutputLanguage/-1523304050 () String)
(declare-fun var711-init () var711)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var711 String) void)
(declare-const null-var312 var312)
(declare-const var3722 var312) ; Statement: r7 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var3722 null-var312)))
(define-const var1246 Bool var2924_isOutputLanguageJava/1735442213) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
 ; Statement: if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert (= (ite var1246 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3806 String var2924_getOutputLanguage/-1523304050) ; Statement: $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var1522 Bool (= var3806 "c++")) ; Statement: $z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++") 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.RuntimeException 
(assert (= (ite var1522 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3465 var711 var711-init) ; Statement: $r1 = new java.lang.RuntimeException 
(define-const var1648 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1648)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1648!1 String)
(assert (= var1648!1 ""))
(assert true)
(define-const var618 String (append/672562846 var1648!1 "Output language type not fully implemented : ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output language type not fully implemented : ") 
(declare-const var1648!2 String)
(assert (= var1648!2 (str.++ var1648!1 "Output language type not fully implemented : ")))
(define-const var1971 String var2924_getOutputLanguage/-1523304050) ; Statement: $r3 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var275 String (append/672562846 var618 var1971)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var618!1 String)
(assert (= var618!1 (str.++ var618 var1971)))
(assert true)
(define-const var2965 String (toString/-2075883882 var275)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3465 var2965)) ; Statement: specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var3465!1 var711)
(declare-const var2965!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2924_isOutputLanguageJava/1735442213=([], boolean), var2924_getOutputLanguage/-1523304050=([], java.lang.String), var711-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var312=org.javacc.parser.CodeGenerator, var3722=r7, var2924=org.javacc.parser.Options, var1246=$z0, var3806=$r0, var1522=$z1, var711=java.lang.RuntimeException, var3465=$r1, var1648=$r2, var618=$r4, var1971=$r3, var275=$r5, var2965=$r6}
; {org.javacc.parser.CodeGenerator=var312, r7=var3722, org.javacc.parser.Options=var2924, $z0=var1246, $r0=var3806, $z1=var1522, java.lang.RuntimeException=var711, $r1=var3465, $r2=var1648, $r4=var618, $r3=var1971, $r5=var275, $r6=var2965}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: org.javacc.parser.CodeGenerator;	$z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++");	if $z1 == 0 goto $r1 = new java.lang.RuntimeException;	$r1 = new java.lang.RuntimeException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output language type not fully implemented : ");	$r3 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3