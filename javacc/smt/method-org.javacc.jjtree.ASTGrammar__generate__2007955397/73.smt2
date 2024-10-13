(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var879 0)
(declare-sort var3095 0)
(declare-sort var2607 0)
(declare-sort var2416 0)
(declare-sort var3303 0)
(declare-sort var439 0)
(declare-sort var2722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3303_getOutputLanguage/-1523304050 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2607 String) void)
(declare-fun var3303_isOutputLanguageJava/1735442213 () Bool)
(declare-fun var439-init () var439)
(declare-fun <init>/-1004199521 (var439) void)
(declare-fun visit/-766352297 (var439 var879 var2722) var2722)
(declare-fun cast-from-var3095-to-var2722 (var3095) var2722)
(declare-const null-var879 var879)
(declare-const null-var3095 var3095)
(declare-const var2416-out var2607)
(declare-const var1044 var879) ; Statement: r14 := @this: org.javacc.jjtree.ASTGrammar 
(assert (not (= var1044 null-var879)))
(declare-const var174 var3095) ; Statement: r15 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var174 null-var3095)))
(define-const var1526 var2607 var2416-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3793 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3793)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3793!1 String)
(assert (= var3793!1 ""))
(assert true)
(define-const var3940 String (append/672562846 var3793!1 "opt:")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("opt:") 
(declare-const var3793!2 String)
(assert (= var3793!2 (str.++ var3793!1 "opt:")))
(define-const var1443 String var3303_getOutputLanguage/-1523304050) ; Statement: $r2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var834 String (append/672562846 var3940 var1443)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3940!1 String)
(assert (= var3940!1 (str.++ var3940 var1443)))
(assert true)
(define-const var1708 String (toString/-2075883882 var834)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1526 var1708)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var1526!1 var2607)
(declare-const var1708!1 String)
(define-const var2399 Bool var3303_isOutputLanguageJava/1735442213) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean isOutputLanguageJava()>() 
 ; Statement: if $z0 == 0 goto $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>() 
(assert (not (= (ite var2399 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var509 var439 var439-init) ; Statement: $r16 = new org.javacc.jjtree.JavaCodeGenerator 
(assert true)
;(assert (<init>/-1004199521 var509)) ; Statement: specialinvoke $r16.<org.javacc.jjtree.JavaCodeGenerator: void <init>()>() 

(declare-const var509!1 var439)
(assert true)
;(assert (visit/-766352297 var509!1 var1044 (cast-from-var3095-to-var2722 var174))) ; Statement: virtualinvoke $r16.<org.javacc.jjtree.JavaCodeGenerator: java.lang.Object visit(org.javacc.jjtree.ASTGrammar,java.lang.Object)>(r14, r15) 

(declare-const var509!2 var439)
(declare-const var1044!1 var879)
(declare-const var174!1 var3095)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3303_getOutputLanguage/-1523304050=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var3303_isOutputLanguageJava/1735442213=([], boolean), var439-init=([], org.javacc.jjtree.JavaCodeGenerator), <init>/-1004199521=([org.javacc.jjtree.JavaCodeGenerator], void), visit/-766352297=([org.javacc.jjtree.JavaCodeGenerator, org.javacc.jjtree.ASTGrammar, java.lang.Object], java.lang.Object), cast-from-var3095-to-var2722=([org.javacc.jjtree.IO], java.lang.Object)}
; {var879=org.javacc.jjtree.ASTGrammar, var1044=r14, var3095=org.javacc.jjtree.IO, var174=r15, var2607=java.io.PrintStream, var2416=java.lang.System, var1526=$r1, var3793=$r0, var3940=$r3, var3303=org.javacc.parser.Options, var1443=$r2, var834=$r4, var1708=$r5, var2399=$z0, var439=org.javacc.jjtree.JavaCodeGenerator, var509=$r16, var2722=java.lang.Object}
; {org.javacc.jjtree.ASTGrammar=var879, r14=var1044, org.javacc.jjtree.IO=var3095, r15=var174, java.io.PrintStream=var2607, java.lang.System=var2416, $r1=var1526, $r0=var3793, $r3=var3940, org.javacc.parser.Options=var3303, $r2=var1443, $r4=var834, $r5=var1708, $z0=var2399, org.javacc.jjtree.JavaCodeGenerator=var439, $r16=var509, java.lang.Object=var2722}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: org.javacc.jjtree.ASTGrammar;	r15 := @parameter0: org.javacc.jjtree.IO;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("opt:");	$r2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean isOutputLanguageJava()>();	if $z0 == 0 goto $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputLanguage()>();	$r16 = new org.javacc.jjtree.JavaCodeGenerator;	specialinvoke $r16.<org.javacc.jjtree.JavaCodeGenerator: void <init>()>();	virtualinvoke $r16.<org.javacc.jjtree.JavaCodeGenerator: java.lang.Object visit(org.javacc.jjtree.ASTGrammar,java.lang.Object)>(r14, r15);	goto [?= return];	return
;block_num 3