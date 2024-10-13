(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var372 0)
(declare-sort var1878 0)
(declare-sort var1661 0)
(declare-sort var878 0)
(declare-sort var1813 0)
(declare-sort var3951 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var878) void)
(declare-fun cast-from-var372-to-var878 (var372) var878)
(declare-fun toolName/-884741558 (var372) String)
(declare-fun needToWrite/-884741558 (var372) Bool)
(declare-fun file/-884741558 (var372) var1878)
(declare-fun compatibleVersion/-884741558 (var372) String)
(declare-fun options/-884741558 (var372) (Array Int String))
(declare-fun exists/1072868559 (var1878) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1128186653 (var1878) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1813 String) void)
(declare-const null-var372 var372)
(declare-const null-var1878 var1878)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3951-out var1813)
(declare-const var2828 var372) ; Statement: r0 := @this: org.javacc.parser.OutputFile 
(assert (not (= var2828 null-var372)))
(declare-const var1552 var1878) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var1552 null-var1878)))
(declare-const var144 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var144 null-String)))
(declare-const var2085 (Array Int String)) ; Statement: r3 := @parameter2: java.lang.String[] 
(assert (not (= var2085 null-__Array__Int__String__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var372-to-var878 var2828))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2828!1 var372)
(declare-const var2828!2 var372)
(assert (not (= var2828!2 null-var372)))
(assert (= (toolName/-884741558 var2828!2) "JavaCC")) ; Statement: r0.<org.javacc.parser.OutputFile: java.lang.String toolName> = "JavaCC" 
(declare-const var2828!3 var372)
(assert (not (= var2828!3 null-var372)))
(assert (= (needToWrite/-884741558 var2828!3) (ite (= 1 1) true false))) ; Statement: r0.<org.javacc.parser.OutputFile: boolean needToWrite> = 1 
(declare-const var2828!4 var372)
(assert (not (= var2828!4 null-var372)))
(assert (= (file/-884741558 var2828!4) var1552)) ; Statement: r0.<org.javacc.parser.OutputFile: java.io.File file> = r1 
(declare-const var2828!5 var372)
(assert (not (= var2828!5 null-var372)))
(assert (= (compatibleVersion/-884741558 var2828!5) var144)) ; Statement: r0.<org.javacc.parser.OutputFile: java.lang.String compatibleVersion> = r2 
(declare-const var2828!6 var372)
(assert (not (= var2828!6 null-var372)))
(assert (= (options/-884741558 var2828!6) var2085)) ; Statement: r0.<org.javacc.parser.OutputFile: java.lang.String[] options> = r3 
(assert true)
(define-const var994 Bool (exists/1072868559 var1552)) ; Statement: $z0 = virtualinvoke r1.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r5 = <java.lang.System: java.io.PrintStream out> 
(assert (= (ite var994 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2441 var1813 var3951-out) ; Statement: $r5 = <java.lang.System: java.io.PrintStream out> 
(define-const var115 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var115)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var115!1 String)
(assert (= var115!1 ""))
(assert true)
(define-const var318 String (append/672562846 var115!1 "File \u0022")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File \"") 
(declare-const var115!2 String)
(assert (= var115!2 (str.++ var115!1 "File \u0022")))
(assert true)
(define-const var263 String (getName/1128186653 var1552)) ; Statement: $r6 = virtualinvoke r1.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1731 String (append/672562846 var318 var263)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var318!1 String)
(assert (= var318!1 (str.++ var318 var263)))
(assert true)
(define-const var3174 String (append/672562846 var1731 "\u0022 does not exist.  Will create one.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" does not exist.  Will create one.") 
(declare-const var1731!1 String)
(assert (= var1731!1 (str.++ var1731 "\u0022 does not exist.  Will create one.")))
(assert true)
(define-const var896 String (toString/-2075883882 var3174)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2441 var896)) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r10) 

(declare-const var2441!1 var1813)
(declare-const var896!1 String)
(declare-const var2828!7 var372)
(assert (not (= var2828!7 null-var372)))
(assert (= (needToWrite/-884741558 var2828!7) (ite (= 1 1) true false))) ; Statement: r0.<org.javacc.parser.OutputFile: boolean needToWrite> = 1 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var372-to-var878=([org.javacc.parser.OutputFile], java.lang.Object), toolName/-884741558=([org.javacc.parser.OutputFile], java.lang.String), needToWrite/-884741558=([org.javacc.parser.OutputFile], boolean), file/-884741558=([org.javacc.parser.OutputFile], java.io.File), compatibleVersion/-884741558=([org.javacc.parser.OutputFile], java.lang.String), options/-884741558=([org.javacc.parser.OutputFile], java.lang.String[]), exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1128186653=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var372=org.javacc.parser.OutputFile, var2828=r0, var1878=java.io.File, var1552=r1, var144=r2, var1661=null_type, var2085=r3, var878=java.lang.Object, var994=$z0, var1813=java.io.PrintStream, var3951=java.lang.System, var2441=$r5, var115=$r4, var318=$r7, var263=$r6, var1731=$r8, var3174=$r9, var896=$r10}
; {org.javacc.parser.OutputFile=var372, r0=var2828, java.io.File=var1878, r1=var1552, r2=var144, null_type=var1661, r3=var2085, java.lang.Object=var878, $z0=var994, java.io.PrintStream=var1813, java.lang.System=var3951, $r5=var2441, $r4=var115, $r7=var318, $r6=var263, $r8=var1731, $r9=var3174, $r10=var896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.OutputFile;	r1 := @parameter0: java.io.File;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String[];	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.javacc.parser.OutputFile: java.lang.String toolName> = "JavaCC";	r0.<org.javacc.parser.OutputFile: boolean needToWrite> = 1;	r0.<org.javacc.parser.OutputFile: java.io.File file> = r1;	r0.<org.javacc.parser.OutputFile: java.lang.String compatibleVersion> = r2;	r0.<org.javacc.parser.OutputFile: java.lang.String[] options> = r3;	$z0 = virtualinvoke r1.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r5 = <java.lang.System: java.io.PrintStream out>;	$r5 = <java.lang.System: java.io.PrintStream out>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File \"");	$r6 = virtualinvoke r1.<java.io.File: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" does not exist.  Will create one.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r10);	r0.<org.javacc.parser.OutputFile: boolean needToWrite> = 1;	return
;block_num 3