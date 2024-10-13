(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3811 0)
(declare-sort var1421 0)
(declare-sort var835 0)
(declare-sort var2357 0)
(declare-sort var1089 0)
(declare-sort var1847 0)
(declare-sort var3846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1847 String) void)
(declare-const null-var3811 var3811)
(declare-const null-var1421 var1421)
(declare-const null-var835 var835)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var1089 var1089)
(declare-const var3846-err var1847)
(declare-const var1915 var3811) ; Statement: r10 := @this: com.github.jknack.handlebars.internal.antlr.ConsoleErrorListener 
(assert (not (= var1915 null-var3811)))
(declare-const var1668 var1421) ; Statement: r11 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer 
(assert (not (= var1668 null-var1421)))
(declare-const var169 var835) ; Statement: r12 := @parameter1: java.lang.Object 
(assert (not (= var169 null-var835)))
(declare-const var713 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var713 null-Int)))
(declare-const var2747 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2747 null-Int)))
(declare-const var384 String) ; Statement: r6 := @parameter4: java.lang.String 
(assert (not (= var384 null-String)))
(declare-const var1243 var1089) ; Statement: r13 := @parameter5: com.github.jknack.handlebars.internal.antlr.RecognitionException 
(assert (not (= var1243 null-var1089)))
(define-const var373 var1847 var3846-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(define-const var3215 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3215)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3215!1 String)
(assert (= var3215!1 ""))
(assert true)
(define-const var3669 String (append/672562846 var3215!1 "line ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("line ") 
(declare-const var3215!2 String)
(assert (= var3215!2 (str.++ var3215!1 "line ")))
(assert true)
(define-const var3374 String (append/-1001720160 var3669 var713)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3669!1 String)
(assert (str.prefixof var3669 var3669!1))
(assert true)
(define-const var3671 String (append/672562846 var3374 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3374!1 String)
(assert (= var3374!1 (str.++ var3374 ":")))
(assert true)
(define-const var240 String (append/-1001720160 var3671 var2747)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3671!1 String)
(assert (str.prefixof var3671 var3671!1))
(assert true)
(define-const var3710 String (append/672562846 var240 " ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var240!1 String)
(assert (= var240!1 (str.++ var240 " ")))
(assert true)
(define-const var1630 String (append/672562846 var3710 var384)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3710!1 String)
(assert (= var3710!1 (str.++ var3710 var384)))
(assert true)
(define-const var2183 String (toString/-2075883882 var1630)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var373 var2183)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var373!1 var1847)
(declare-const var2183!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3811=com.github.jknack.handlebars.internal.antlr.ConsoleErrorListener, var1915=r10, var1421=com.github.jknack.handlebars.internal.antlr.Recognizer, var1668=r11, var835=java.lang.Object, var169=r12, var713=i0, var2747=i1, var384=r6, var2357=null_type, var1089=com.github.jknack.handlebars.internal.antlr.RecognitionException, var1243=r13, var1847=java.io.PrintStream, var3846=java.lang.System, var373=$r1, var3215=$r0, var3669=$r2, var3374=$r3, var3671=$r4, var240=$r5, var3710=$r7, var1630=$r8, var2183=$r9}
; {com.github.jknack.handlebars.internal.antlr.ConsoleErrorListener=var3811, r10=var1915, com.github.jknack.handlebars.internal.antlr.Recognizer=var1421, r11=var1668, java.lang.Object=var835, r12=var169, i0=var713, i1=var2747, r6=var384, null_type=var2357, com.github.jknack.handlebars.internal.antlr.RecognitionException=var1089, r13=var1243, java.io.PrintStream=var1847, java.lang.System=var3846, $r1=var373, $r0=var3215, $r2=var3669, $r3=var3374, $r4=var3671, $r5=var240, $r7=var3710, $r8=var1630, $r9=var2183}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: com.github.jknack.handlebars.internal.antlr.ConsoleErrorListener;	r11 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer;	r12 := @parameter1: java.lang.Object;	i0 := @parameter2: int;	i1 := @parameter3: int;	r6 := @parameter4: java.lang.String;	r13 := @parameter5: com.github.jknack.handlebars.internal.antlr.RecognitionException;	$r1 = <java.lang.System: java.io.PrintStream err>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("line ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r9);	return
;block_num 1