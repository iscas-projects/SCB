(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3102 0)
(declare-sort var1972 0)
(declare-sort var3439 0)
(declare-sort var3651 0)
(declare-sort var1169 0)
(declare-sort var2449 0)
(declare-sort var3582 0)
(declare-sort var2814 0)
(declare-sort var2651 0)
(declare-sort var1902 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3439-init () var3439)
(declare-fun <init>/358169345 (var3439) void)
(declare-fun var3651-init () var3651)
(declare-fun <init>/-1864438596 (var3651 var1169) void)
(declare-fun cast-from-var3439-to-var1169 (var3439) var1169)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var3651 String) void)
(declare-fun var2449_getProperty/258823597 (String) String)
(declare-fun var3582-init () var3582)
(declare-fun <init>/1056156189 (var3582 String String) void)
(declare-fun getAbsolutePath/-802773300 (var3582) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun append/-1031950772 (String var2651) String)
(declare-fun cast-from-var3582-to-var2651 (var3582) var2651)
(declare-fun getDefinition/1285700790 (var3102 String) var1902)
(declare-fun printUnknownDefinition/195611935 (var3102 var3651 String String) void)
(declare-fun flush/-1073200041 (var3651) void)
(declare-fun close/2116439267 (var3651) void)
(declare-fun toString/138175384 (var3439) String)
(declare-const null-var3102 var3102)
(declare-const null-String String)
(declare-const var2814-USER_LIBDIR String)
(declare-const null-var1902 var1902)
(declare-const var717 var3102) ; Statement: r19 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var717 null-var3102)))
(declare-const var121 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var121 null-String)))
(declare-const var2602 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2602 null-String)))
(define-const var1636 var3439 var3439-init) ; Statement: $r0 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var1636)) ; Statement: specialinvoke $r0.<java.io.StringWriter: void <init>()>() 

(declare-const var1636!1 var3439)
(define-const var2229 var3651 var3651-init) ; Statement: $r1 = new java.io.PrintWriter 
(assert true)
;(assert (<init>/-1864438596 var2229 (cast-from-var3439-to-var1169 var1636!1))) ; Statement: specialinvoke $r1.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0) 

(declare-const var2229!1 var3651)
(declare-const var1636!2 var3439)
(define-const var1262 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1262)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1262!1 String)
(assert (= var1262!1 ""))
(assert true)
(define-const var235 String (append/672562846 var1262!1 "Problem: failed to create ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem: failed to create ") 
(declare-const var1262!2 String)
(assert (= var1262!2 (str.++ var1262!1 "Problem: failed to create ")))
(assert true)
(define-const var1047 String (append/672562846 var235 var2602)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var235!1 String)
(assert (= var235!1 (str.++ var235 var2602)))
(assert true)
(define-const var429 String (append/672562846 var1047 " ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1047!1 String)
(assert (= var1047!1 (str.++ var1047 " ")))
(assert true)
(define-const var2123 String (append/672562846 var429 var121)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var429!1 String)
(assert (= var429!1 (str.++ var429 var121)))
(assert true)
(define-const var77 String (toString/-2075883882 var2123)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var2229!1 var77)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void println(java.lang.String)>($r9) 

(declare-const var2229!2 var3651)
(declare-const var77!1 String)
(define-const var3063 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var2683 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var1558 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var3321 String (var2449_getProperty/258823597 "user.home")) ; Statement: r10 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(define-const var1675 var3582 var3582-init) ; Statement: $r11 = new java.io.File 
(define-const var662 String var2814-USER_LIBDIR) ; Statement: $r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR> 
(assert true)
;(assert (<init>/1056156189 var1675 var3321 var662)) ; Statement: specialinvoke $r11.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r10, $r12) 

(declare-const var1675!1 var3582)
(declare-const var3321!1 String)
(declare-const var662!1 String)
(define-const var3149 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var2606 String (var2449_getProperty/258823597 "ant.home")) ; Statement: r13 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home") 
 ; Statement: if r13 == null goto z7 = 1 
(assert (not (= var2606 null-String))) ; Negate: Cond: r13 == null  
(define-const var644 var3582 var3582-init) ; Statement: $r29 = new java.io.File 
(assert true)
;(assert (<init>/1056156189 var644 var2606 "lib")) ; Statement: specialinvoke $r29.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r13, "lib") 

(declare-const var644!1 var3582)
(declare-const var2606!1 String)
(declare-const var3242 String)
(assert true)
(define-const var1390 String (getAbsolutePath/-802773300 var644!1)) ; Statement: r64 = virtualinvoke $r29.<java.io.File: java.lang.String getAbsolutePath()>() 
 ; Statement: goto [?= $r18 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2664 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2664)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2664!1 String)
(assert (= var2664!1 ""))
(assert true)
;(assert (append/672562846 var2664!1 "        -")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(declare-const var2664!2 String)
(assert (= var2664!2 (str.++ var2664!1 "        -")))
(assert true)
;(assert (append/672562846 var2664!2 var1390)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r64) 
(declare-const var2664!3 String)
(assert (= var2664!3 (str.++ var2664!2 var1390)))
(assert true)
;(assert (append/-1166366385 var2664!3 10)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2664!4 String)
(assert (str.prefixof var2664!3 var2664!4))
 ; Statement: if z7 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(assert (= (ite var3149 1 0) 0)) ; Cond: z7 == 0 
(assert true)
;(assert (append/672562846 var2664!4 "        -")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(declare-const var2664!5 String)
(assert (= var2664!5 (str.++ var2664!4 "        -")))
(assert true)
;(assert (append/-1031950772 var2664!5 (cast-from-var3582-to-var2651 var1675!1))) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var2664!6 String)
(assert (str.prefixof var2664!5 var2664!6))
(assert true)
;(assert (append/-1166366385 var2664!6 10)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2664!7 String)
(assert (str.prefixof var2664!6 var2664!7))
(assert true)
;(assert (append/672562846 var2664!7 "        -")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(declare-const var2664!8 String)
(assert (= var2664!8 (str.++ var2664!7 "        -")))
(assert true)
;(assert (append/672562846 var2664!8 "a directory added on the command line with the -lib argument")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("a directory added on the command line with the -lib argument") 
(declare-const var2664!9 String)
(assert (= var2664!9 (str.++ var2664!8 "a directory added on the command line with the -lib argument")))
(assert true) ; Non Conditional
(assert true)
(define-const var794 String (toString/-2075883882 var2664!9)) ; Statement: $r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2827 var1902 (getDefinition/1285700790 var717 var121)) ; Statement: $r28 = virtualinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition getDefinition(java.lang.String)>(r6) 
 ; Statement: if $r28 != null goto r20 = virtualinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getClassName()>() 
(assert (not (not (= var2827 null-var1902)))) ; Negate: Cond: $r28 != null  
(assert true)
;(assert (printUnknownDefinition/195611935 var717 var2229!2 var121 var794)) ; Statement: specialinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void printUnknownDefinition(java.io.PrintWriter,java.lang.String,java.lang.String)>($r1, r6, $r27) 

(declare-const var717!1 var3102)
(declare-const var2229!3 var3651)
(declare-const var121!1 String)
(declare-const var794!1 String)
 ; Statement: goto [?= virtualinvoke $r1.<java.io.PrintWriter: void flush()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (flush/-1073200041 var2229!3)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void flush()>() 

(declare-const var2229!4 var3651)
(assert true)
;(assert (close/2116439267 var2229!4)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void close()>() 

(declare-const var2229!5 var3651)
(assert true)
(define-const var3370 String (toString/138175384 var1636!2)) ; Statement: $r66 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>() 
 ; Statement: return $r66 
(check-sat)
(get-model)
(get-unsat-core)
; {var3439-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), var3651-init=([], java.io.PrintWriter), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), cast-from-var3439-to-var1169=([java.io.StringWriter], java.io.Writer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), var2449_getProperty/258823597=([java.lang.String], java.lang.String), var3582-init=([], java.io.File), <init>/1056156189=([java.io.File, java.lang.String, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3582-to-var2651=([java.io.File], java.lang.Object), getDefinition/1285700790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, java.lang.String], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition), printUnknownDefinition/195611935=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, java.io.PrintWriter, java.lang.String, java.lang.String], void), flush/-1073200041=([java.io.PrintWriter], void), close/2116439267=([java.io.PrintWriter], void), toString/138175384=([java.io.StringWriter], java.lang.String)}
; {var3102=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var717=r19, var121=r6, var1972=null_type, var2602=r3, var3439=java.io.StringWriter, var1636=$r0, var3651=java.io.PrintWriter, var2229=$r1, var1169=java.io.Writer, var1262=$r2, var235=$r4, var1047=$r5, var429=$r7, var2123=$r8, var77=$r9, var3063=z4, var2683=z5, var1558=z6, var2449=java.lang.System, var3321=r10, var3582=java.io.File, var1675=$r11, var2814=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher, var662=$r12, var3149=z7, var2606=r13, var644=$r29, var3242="lib", var1390=r64, var2664=$r18, var2651=java.lang.Object, var794=$r27, var1902=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var2827=$r28, var3370=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var3102, r19=var717, r6=var121, null_type=var1972, r3=var2602, java.io.StringWriter=var3439, $r0=var1636, java.io.PrintWriter=var3651, $r1=var2229, java.io.Writer=var1169, $r2=var1262, $r4=var235, $r5=var1047, $r7=var429, $r8=var2123, $r9=var77, z4=var3063, z5=var2683, z6=var1558, java.lang.System=var2449, r10=var3321, java.io.File=var3582, $r11=var1675, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher=var2814, $r12=var662, z7=var3149, r13=var2606, $r29=var644, "lib"=var3242, r64=var1390, $r18=var2664, java.lang.Object=var2651, $r27=var794, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var1902, $r28=var2827, $r66=var3370}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.io.StringWriter: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r19 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r6 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.io.StringWriter;	specialinvoke $r0.<java.io.StringWriter: void <init>()>();	$r1 = new java.io.PrintWriter;	specialinvoke $r1.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem: failed to create ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintWriter: void println(java.lang.String)>($r9);	z4 = 0;	z5 = 0;	z6 = 0;	r10 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r11 = new java.io.File;	$r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR>;	specialinvoke $r11.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r10, $r12);	z7 = 0;	r13 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home");	if r13 == null goto z7 = 1;	$r29 = new java.io.File;	specialinvoke $r29.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r13, "lib");	r64 = virtualinvoke $r29.<java.io.File: java.lang.String getAbsolutePath()>();	goto [?= $r18 = new java.lang.StringBuilder];	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r64);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	if z7 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("a directory added on the command line with the -lib argument");	$r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = virtualinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition getDefinition(java.lang.String)>(r6);	if $r28 != null goto r20 = virtualinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getClassName()>();	specialinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void printUnknownDefinition(java.io.PrintWriter,java.lang.String,java.lang.String)>($r1, r6, $r27);	goto [?= virtualinvoke $r1.<java.io.PrintWriter: void flush()>()];	virtualinvoke $r1.<java.io.PrintWriter: void flush()>();	virtualinvoke $r1.<java.io.PrintWriter: void close()>();	$r66 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>();	return $r66
;block_num 7