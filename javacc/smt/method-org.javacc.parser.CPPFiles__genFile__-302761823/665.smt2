(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var465 0)
(declare-sort var1779 0)
(declare-sort var730 0)
(declare-sort var1970 0)
(declare-sort var1011 0)
(declare-sort var3465 0)
(declare-sort var499 0)
(declare-sort var2294 0)
(declare-sort var1097 0)
(declare-sort var3461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1779-init () var1779)
(declare-fun var730_getOutputDirectory/873146074 () var1779)
(declare-fun <init>/-1833447926 (var1779 var1779 String) void)
(declare-fun var1970-init () var1970)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2294) String)
(declare-fun cast-from-var1779-to-var2294 (var1779) var2294)
(declare-fun cast-from-var1011-to-var2294 (var1011) var2294)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3465 String) void)
(declare-fun var1097_semantic_error/-498493661 (String) void)
(declare-fun var3461-init () var3461)
(declare-fun <init>/1750087229 (var3461) void)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1011 var1011)
(declare-const var499-err var3465)
(declare-const var1761 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1761 null-String)))
(declare-const var3621 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3621 null-String)))
(declare-const var1513 (Array Int String)) ; Statement: r5 := @parameter2: java.lang.String[] 
(assert (not (= var1513 null-__Array__Int__String__)))
(define-const var542 var1779 var1779-init) ; Statement: $r0 = new java.io.File 
(define-const var2529 var1779 var730_getOutputDirectory/873146074) ; Statement: $r2 = staticinvoke <org.javacc.parser.Options: java.io.File getOutputDirectory()>() 
(assert true)
;(assert (<init>/-1833447926 var542 var2529 var1761)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r2, r1) 

(declare-const var542!1 var1779)
(declare-const var2529!1 var1779)
(declare-const var1761!1 String)
(define-const var2905 var1970 var1970-init) ; Statement: $r3 = new org.javacc.parser.OutputFile 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1781 var1011) ; Statement: $r14 := @caughtexception 
(assert (not (= var1781 null-var1011)))
(define-const var2396 var3465 var499-err) ; Statement: $r16 = <java.lang.System: java.io.PrintStream err> 
(define-const var288 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var288)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var288!1 String)
(assert (= var288!1 ""))
(assert true)
(define-const var3516 String (append/672562846 var288!1 "Failed to create file: ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create file: ") 
(declare-const var288!2 String)
(assert (= var288!2 (str.++ var288!1 "Failed to create file: ")))
(assert true)
(define-const var3231 String (append/-1031950772 var3516 (cast-from-var1779-to-var2294 var542!1))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var3516!1 String)
(assert (str.prefixof var3516 var3516!1))
(assert true)
(define-const var3943 String (append/-1031950772 var3231 (cast-from-var1011-to-var2294 var1781))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var3231!1 String)
(assert (str.prefixof var3231 var3231!1))
(assert true)
(define-const var1953 String (toString/-2075883882 var3943)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2396 var1953)) ; Statement: virtualinvoke $r16.<java.io.PrintStream: void println(java.lang.String)>($r20) 

(declare-const var2396!1 var3465)
(declare-const var1953!1 String)
(define-const var1914 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1914)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1914!1 String)
(assert (= var1914!1 ""))
(assert true)
(define-const var1758 String (append/672562846 var1914!1 "Could not open file: ")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file: ") 
(declare-const var1914!2 String)
(assert (= var1914!2 (str.++ var1914!1 "Could not open file: ")))
(assert true)
(define-const var2099 String (append/-1031950772 var1758 (cast-from-var1779-to-var2294 var542!1))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var1758!1 String)
(assert (str.prefixof var1758 var1758!1))
(assert true)
(define-const var1843 String (append/672562846 var2099 " for writing.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.") 
(declare-const var2099!1 String)
(assert (= var2099!1 (str.++ var2099 " for writing.")))
(assert true)
(define-const var2525 String (toString/-2075883882 var1843)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1097_semantic_error/-498493661 var2525)) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r25) 

(declare-const var2525!1 String)
(define-const var731 var3461 var3461-init) ; Statement: $r26 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var731)) ; Statement: specialinvoke $r26.<java.lang.Error: void <init>()>() 

(declare-const var731!1 var3461)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var1779-init=([], java.io.File), var730_getOutputDirectory/873146074=([], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var1970-init=([], org.javacc.parser.OutputFile), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1779-to-var2294=([java.io.File], java.lang.Object), cast-from-var1011-to-var2294=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var1097_semantic_error/-498493661=([java.lang.String], void), var3461-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var1761=r1, var465=null_type, var3621=r4, var1513=r5, var1779=java.io.File, var542=$r0, var730=org.javacc.parser.Options, var2529=$r2, var1970=org.javacc.parser.OutputFile, var2905=$r3, var1011=java.io.IOException, var1781=$r14, var3465=java.io.PrintStream, var499=java.lang.System, var2396=$r16, var288=$r15, var3516=$r17, var2294=java.lang.Object, var3231=$r18, var3943=$r19, var1953=$r20, var1914=$r21, var1758=$r22, var2099=$r23, var1843=$r24, var2525=$r25, var1097=org.javacc.parser.JavaCCErrors, var3461=java.lang.Error, var731=$r26}
; {r1=var1761, null_type=var465, r4=var3621, r5=var1513, java.io.File=var1779, $r0=var542, org.javacc.parser.Options=var730, $r2=var2529, org.javacc.parser.OutputFile=var1970, $r3=var2905, java.io.IOException=var1011, $r14=var1781, java.io.PrintStream=var3465, java.lang.System=var499, $r16=var2396, $r15=var288, $r17=var3516, java.lang.Object=var2294, $r18=var3231, $r19=var3943, $r20=var1953, $r21=var1914, $r22=var1758, $r23=var2099, $r24=var1843, $r25=var2525, org.javacc.parser.JavaCCErrors=var1097, java.lang.Error=var3461, $r26=var731}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String[];	$r0 = new java.io.File;	$r2 = staticinvoke <org.javacc.parser.Options: java.io.File getOutputDirectory()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r2, r1);	$r3 = new org.javacc.parser.OutputFile;	$r14 := @caughtexception;	$r16 = <java.lang.System: java.io.PrintStream err>;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create file: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r16.<java.io.PrintStream: void println(java.lang.String)>($r20);	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file: ");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r25);	$r26 = new java.lang.Error;	specialinvoke $r26.<java.lang.Error: void <init>()>();	throw $r26
;block_num 2