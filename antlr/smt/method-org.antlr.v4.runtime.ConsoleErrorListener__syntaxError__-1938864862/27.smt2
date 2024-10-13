(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3518 0)
(declare-sort var3160 0)
(declare-sort var1908 0)
(declare-sort var3283 0)
(declare-sort var1767 0)
(declare-sort var58 0)
(declare-sort var280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var58 String) void)
(declare-const null-var3518 var3518)
(declare-const null-var3160 var3160)
(declare-const null-var1908 var1908)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var1767 var1767)
(declare-const var280-err var58)
(declare-const var1828 var3518) ; Statement: r10 := @this: org.antlr.v4.runtime.ConsoleErrorListener 
(assert (not (= var1828 null-var3518)))
(declare-const var2882 var3160) ; Statement: r11 := @parameter0: org.antlr.v4.runtime.Recognizer 
(assert (not (= var2882 null-var3160)))
(declare-const var2562 var1908) ; Statement: r12 := @parameter1: java.lang.Object 
(assert (not (= var2562 null-var1908)))
(declare-const var3443 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3443 null-Int)))
(declare-const var3935 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3935 null-Int)))
(declare-const var2483 String) ; Statement: r6 := @parameter4: java.lang.String 
(assert (not (= var2483 null-String)))
(declare-const var1072 var1767) ; Statement: r13 := @parameter5: org.antlr.v4.runtime.RecognitionException 
(assert (not (= var1072 null-var1767)))
(define-const var776 var58 var280-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(define-const var817 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var817)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var817!1 String)
(assert (= var817!1 ""))
(assert true)
(define-const var1546 String (append/672562846 var817!1 "line ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("line ") 
(declare-const var817!2 String)
(assert (= var817!2 (str.++ var817!1 "line ")))
(assert true)
(define-const var3864 String (append/-1001720160 var1546 var3443)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1546!1 String)
(assert (str.prefixof var1546 var1546!1))
(assert true)
(define-const var1278 String (append/672562846 var3864 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3864!1 String)
(assert (= var3864!1 (str.++ var3864 ":")))
(assert true)
(define-const var1256 String (append/-1001720160 var1278 var3935)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1278!1 String)
(assert (str.prefixof var1278 var1278!1))
(assert true)
(define-const var631 String (append/672562846 var1256 " ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1256!1 String)
(assert (= var1256!1 (str.++ var1256 " ")))
(assert true)
(define-const var3420 String (append/672562846 var631 var2483)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var631!1 String)
(assert (= var631!1 (str.++ var631 var2483)))
(assert true)
(define-const var2724 String (toString/-2075883882 var3420)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var776 var2724)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var776!1 var58)
(declare-const var2724!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3518=org.antlr.v4.runtime.ConsoleErrorListener, var1828=r10, var3160=org.antlr.v4.runtime.Recognizer, var2882=r11, var1908=java.lang.Object, var2562=r12, var3443=i0, var3935=i1, var2483=r6, var3283=null_type, var1767=org.antlr.v4.runtime.RecognitionException, var1072=r13, var58=java.io.PrintStream, var280=java.lang.System, var776=$r1, var817=$r0, var1546=$r2, var3864=$r3, var1278=$r4, var1256=$r5, var631=$r7, var3420=$r8, var2724=$r9}
; {org.antlr.v4.runtime.ConsoleErrorListener=var3518, r10=var1828, org.antlr.v4.runtime.Recognizer=var3160, r11=var2882, java.lang.Object=var1908, r12=var2562, i0=var3443, i1=var3935, r6=var2483, null_type=var3283, org.antlr.v4.runtime.RecognitionException=var1767, r13=var1072, java.io.PrintStream=var58, java.lang.System=var280, $r1=var776, $r0=var817, $r2=var1546, $r3=var3864, $r4=var1278, $r5=var1256, $r7=var631, $r8=var3420, $r9=var2724}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.antlr.v4.runtime.ConsoleErrorListener;	r11 := @parameter0: org.antlr.v4.runtime.Recognizer;	r12 := @parameter1: java.lang.Object;	i0 := @parameter2: int;	i1 := @parameter3: int;	r6 := @parameter4: java.lang.String;	r13 := @parameter5: org.antlr.v4.runtime.RecognitionException;	$r1 = <java.lang.System: java.io.PrintStream err>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("line ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r9);	return
;block_num 1