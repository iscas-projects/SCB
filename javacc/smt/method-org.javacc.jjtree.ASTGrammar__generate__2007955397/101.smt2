(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2317 0)
(declare-sort var2129 0)
(declare-sort var1937 0)
(declare-sort var2673 0)
(declare-sort var2034 0)
(declare-sort var936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2034_getOutputLanguage/-1523304050 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1937 String) void)
(declare-fun var2034_isOutputLanguageJava/1735442213 () Bool)
(declare-fun var936-init () var936)
(declare-fun <init>/-1084991535 (var936 String) void)
(declare-const null-var2317 var2317)
(declare-const null-var2129 var2129)
(declare-const var2673-out var1937)
(declare-const var2356 var2317) ; Statement: r14 := @this: org.javacc.jjtree.ASTGrammar 
(assert (not (= var2356 null-var2317)))
(declare-const var1831 var2129) ; Statement: r15 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var1831 null-var2129)))
(define-const var3155 var1937 var2673-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1187 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1187)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1187!1 String)
(assert (= var1187!1 ""))
(assert true)
(define-const var249 String (append/672562846 var1187!1 "opt:")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("opt:") 
(declare-const var1187!2 String)
(assert (= var1187!2 (str.++ var1187!1 "opt:")))
(define-const var314 String var2034_getOutputLanguage/-1523304050) ; Statement: $r2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var2888 String (append/672562846 var249 var314)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var249!1 String)
(assert (= var249!1 (str.++ var249 var314)))
(assert true)
(define-const var3524 String (toString/-2075883882 var2888)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3155 var3524)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var3155!1 var1937)
(declare-const var3524!1 String)
(define-const var952 Bool var2034_isOutputLanguageJava/1735442213) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean isOutputLanguageJava()>() 
 ; Statement: if $z0 == 0 goto $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>() 
(assert (= (ite var952 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3667 String var2034_getOutputLanguage/-1523304050) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var3814 Bool (= var3667 "c++")) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("c++") 
 ; Statement: if $z1 == 0 goto $r7 = new java.lang.RuntimeException 
(assert (= (ite var3814 1 0) 0)) ; Cond: $z1 == 0 
(define-const var501 var936 var936-init) ; Statement: $r7 = new java.lang.RuntimeException 
(define-const var3817 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3817)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3817!1 String)
(assert (= var3817!1 ""))
(assert true)
(define-const var232 String (append/672562846 var3817!1 "Language type not supported for JJTree : ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Language type not supported for JJTree : ") 
(declare-const var3817!2 String)
(assert (= var3817!2 (str.++ var3817!1 "Language type not supported for JJTree : ")))
(define-const var3293 String var2034_getOutputLanguage/-1523304050) ; Statement: $r9 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var1644 String (append/672562846 var232 var3293)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var232!1 String)
(assert (= var232!1 (str.++ var232 var3293)))
(assert true)
(define-const var3919 String (toString/-2075883882 var1644)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var501 var3919)) ; Statement: specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12) 

(declare-const var501!1 var936)
(declare-const var3919!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2034_getOutputLanguage/-1523304050=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2034_isOutputLanguageJava/1735442213=([], boolean), var936-init=([], java.lang.RuntimeException), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2317=org.javacc.jjtree.ASTGrammar, var2356=r14, var2129=org.javacc.jjtree.IO, var1831=r15, var1937=java.io.PrintStream, var2673=java.lang.System, var3155=$r1, var1187=$r0, var249=$r3, var2034=org.javacc.parser.Options, var314=$r2, var2888=$r4, var3524=$r5, var952=$z0, var3667=$r6, var3814=$z1, var936=java.lang.RuntimeException, var501=$r7, var3817=$r8, var232=$r10, var3293=$r9, var1644=$r11, var3919=$r12}
; {org.javacc.jjtree.ASTGrammar=var2317, r14=var2356, org.javacc.jjtree.IO=var2129, r15=var1831, java.io.PrintStream=var1937, java.lang.System=var2673, $r1=var3155, $r0=var1187, $r3=var249, org.javacc.parser.Options=var2034, $r2=var314, $r4=var2888, $r5=var3524, $z0=var952, $r6=var3667, $z1=var3814, java.lang.RuntimeException=var936, $r7=var501, $r8=var3817, $r10=var232, $r9=var3293, $r11=var1644, $r12=var3919}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r14 := @this: org.javacc.jjtree.ASTGrammar;	r15 := @parameter0: org.javacc.jjtree.IO;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("opt:");	$r2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean isOutputLanguageJava()>();	if $z0 == 0 goto $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>();	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("c++");	if $z1 == 0 goto $r7 = new java.lang.RuntimeException;	$r7 = new java.lang.RuntimeException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Language type not supported for JJTree : ");	$r9 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 3