(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var581 0)
(declare-sort var1500 0)
(declare-sort var2767 0)
(declare-sort var1704 0)
(declare-sort var1665 0)
(declare-sort var1567 0)
(declare-sort var853 0)
(declare-sort var294 0)
(declare-sort var3843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2767-init () var2767)
(declare-fun <init>/358169345 (var2767) void)
(declare-fun var1704-init () var1704)
(declare-fun <init>/-1864438596 (var1704 var1665) void)
(declare-fun cast-from-var2767-to-var1665 (var2767) var1665)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var1704 String) void)
(declare-fun var1567_getProperty/258823597 (String) String)
(declare-fun var853-init () var853)
(declare-fun <init>/1056156189 (var853 String String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getDefinition/1285700790 (var581 String) var3843)
(declare-fun printUnknownDefinition/195611935 (var581 var1704 String String) void)
(declare-fun flush/-1073200041 (var1704) void)
(declare-fun close/2116439267 (var1704) void)
(declare-fun toString/138175384 (var2767) String)
(declare-const null-var581 var581)
(declare-const null-String String)
(declare-const var294-USER_LIBDIR String)
(declare-const var853-separatorChar Int)
(declare-const null-var3843 var3843)
(declare-const var1273 var581) ; Statement: r19 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var1273 null-var581)))
(declare-const var2072 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2072 null-String)))
(declare-const var393 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var393 null-String)))
(define-const var3518 var2767 var2767-init) ; Statement: $r0 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var3518)) ; Statement: specialinvoke $r0.<java.io.StringWriter: void <init>()>() 

(declare-const var3518!1 var2767)
(define-const var2464 var1704 var1704-init) ; Statement: $r1 = new java.io.PrintWriter 
(assert true)
;(assert (<init>/-1864438596 var2464 (cast-from-var2767-to-var1665 var3518!1))) ; Statement: specialinvoke $r1.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0) 

(declare-const var2464!1 var1704)
(declare-const var3518!2 var2767)
(define-const var946 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var946)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var946!1 String)
(assert (= var946!1 ""))
(assert true)
(define-const var1984 String (append/672562846 var946!1 "Problem: failed to create ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem: failed to create ") 
(declare-const var946!2 String)
(assert (= var946!2 (str.++ var946!1 "Problem: failed to create ")))
(assert true)
(define-const var1815 String (append/672562846 var1984 var393)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1984!1 String)
(assert (= var1984!1 (str.++ var1984 var393)))
(assert true)
(define-const var2710 String (append/672562846 var1815 " ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1815!1 String)
(assert (= var1815!1 (str.++ var1815 " ")))
(assert true)
(define-const var1916 String (append/672562846 var2710 var2072)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2710!1 String)
(assert (= var2710!1 (str.++ var2710 var2072)))
(assert true)
(define-const var3398 String (toString/-2075883882 var1916)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var2464!1 var3398)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void println(java.lang.String)>($r9) 

(declare-const var2464!2 var1704)
(declare-const var3398!1 String)
(define-const var3274 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var3236 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var3548 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var1308 String (var1567_getProperty/258823597 "user.home")) ; Statement: r10 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(define-const var1951 var853 var853-init) ; Statement: $r11 = new java.io.File 
(define-const var3797 String var294-USER_LIBDIR) ; Statement: $r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR> 
(assert true)
;(assert (<init>/1056156189 var1951 var1308 var3797)) ; Statement: specialinvoke $r11.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r10, $r12) 

(declare-const var1951!1 var853)
(declare-const var1308!1 String)
(declare-const var3797!1 String)
(define-const var1971 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var2371 String (var1567_getProperty/258823597 "ant.home")) ; Statement: r13 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home") 
 ; Statement: if r13 == null goto z7 = 1 
(assert (= var2371 null-String)) ; Cond: r13 == null 
(define-const var1971!1 Bool (ite (= 1 1) true false)) ; Statement: z7 = 1 
(define-const var2573 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2573)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2573!1 String)
(assert (= var2573!1 ""))
(assert true)
(define-const var3037 String (append/672562846 var2573!1 "ANT_HOME")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ANT_HOME") 
(declare-const var2573!2 String)
(assert (= var2573!2 (str.++ var2573!1 "ANT_HOME")))
(define-const var985 Int var853-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var305 String (append/-1166366385 var3037 var985)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var3037!1 String)
(assert (str.prefixof var3037 var3037!1))
(assert true)
(define-const var3379 String (append/672562846 var305 "lib")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lib") 
(declare-const var305!1 String)
(assert (= var305!1 (str.++ var305 "lib")))
(assert true)
(define-const var2471 String (toString/-2075883882 var3379)) ; Statement: r64 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1602 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1602)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1602!1 String)
(assert (= var1602!1 ""))
(assert true)
;(assert (append/672562846 var1602!1 "        -")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(declare-const var1602!2 String)
(assert (= var1602!2 (str.++ var1602!1 "        -")))
(assert true)
;(assert (append/672562846 var1602!2 var2471)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r64) 
(declare-const var1602!3 String)
(assert (= var1602!3 (str.++ var1602!2 var2471)))
(assert true)
;(assert (append/-1166366385 var1602!3 10)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var1602!4 String)
(assert (str.prefixof var1602!3 var1602!4))
 ; Statement: if z7 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(assert (not (= (ite var1971!1 1 0) 0))) ; Negate: Cond: z7 == 0  
(assert true)
;(assert (append/672562846 var1602!4 "        -")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(declare-const var1602!5 String)
(assert (= var1602!5 (str.++ var1602!4 "        -")))
(assert true)
;(assert (append/672562846 var1602!5 "the IDE Ant configuration dialogs")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the IDE Ant configuration dialogs") 
(declare-const var1602!6 String)
(assert (= var1602!6 (str.++ var1602!5 "the IDE Ant configuration dialogs")))
 ; Statement: goto [?= $r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var153 String (toString/-2075883882 var1602!6)) ; Statement: $r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var53 var3843 (getDefinition/1285700790 var1273 var2072)) ; Statement: $r28 = virtualinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition getDefinition(java.lang.String)>(r6) 
 ; Statement: if $r28 != null goto r20 = virtualinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getClassName()>() 
(assert (not (not (= var53 null-var3843)))) ; Negate: Cond: $r28 != null  
(assert true)
;(assert (printUnknownDefinition/195611935 var1273 var2464!2 var2072 var153)) ; Statement: specialinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void printUnknownDefinition(java.io.PrintWriter,java.lang.String,java.lang.String)>($r1, r6, $r27) 

(declare-const var1273!1 var581)
(declare-const var2464!3 var1704)
(declare-const var2072!1 String)
(declare-const var153!1 String)
 ; Statement: goto [?= virtualinvoke $r1.<java.io.PrintWriter: void flush()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (flush/-1073200041 var2464!3)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void flush()>() 

(declare-const var2464!4 var1704)
(assert true)
;(assert (close/2116439267 var2464!4)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void close()>() 

(declare-const var2464!5 var1704)
(assert true)
(define-const var1559 String (toString/138175384 var3518!2)) ; Statement: $r66 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>() 
 ; Statement: return $r66 
(check-sat)
(get-model)
(get-unsat-core)
; {var2767-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), var1704-init=([], java.io.PrintWriter), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), cast-from-var2767-to-var1665=([java.io.StringWriter], java.io.Writer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), var1567_getProperty/258823597=([java.lang.String], java.lang.String), var853-init=([], java.io.File), <init>/1056156189=([java.io.File, java.lang.String, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getDefinition/1285700790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, java.lang.String], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition), printUnknownDefinition/195611935=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, java.io.PrintWriter, java.lang.String, java.lang.String], void), flush/-1073200041=([java.io.PrintWriter], void), close/2116439267=([java.io.PrintWriter], void), toString/138175384=([java.io.StringWriter], java.lang.String)}
; {var581=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var1273=r19, var2072=r6, var1500=null_type, var393=r3, var2767=java.io.StringWriter, var3518=$r0, var1704=java.io.PrintWriter, var2464=$r1, var1665=java.io.Writer, var946=$r2, var1984=$r4, var1815=$r5, var2710=$r7, var1916=$r8, var3398=$r9, var3274=z4, var3236=z5, var3548=z6, var1567=java.lang.System, var1308=r10, var853=java.io.File, var1951=$r11, var294=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher, var3797=$r12, var1971=z7, var2371=r13, var2573=$r14, var3037=$r15, var985=$c0, var305=$r16, var3379=$r17, var2471=r64, var1602=$r18, var153=$r27, var3843=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var53=$r28, var1559=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var581, r19=var1273, r6=var2072, null_type=var1500, r3=var393, java.io.StringWriter=var2767, $r0=var3518, java.io.PrintWriter=var1704, $r1=var2464, java.io.Writer=var1665, $r2=var946, $r4=var1984, $r5=var1815, $r7=var2710, $r8=var1916, $r9=var3398, z4=var3274, z5=var3236, z6=var3548, java.lang.System=var1567, r10=var1308, java.io.File=var853, $r11=var1951, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher=var294, $r12=var3797, z7=var1971, r13=var2371, $r14=var2573, $r15=var3037, $c0=var985, $r16=var305, $r17=var3379, r64=var2471, $r18=var1602, $r27=var153, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var3843, $r28=var53, $r66=var1559}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.io.StringWriter: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r19 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r6 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.io.StringWriter;	specialinvoke $r0.<java.io.StringWriter: void <init>()>();	$r1 = new java.io.PrintWriter;	specialinvoke $r1.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem: failed to create ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintWriter: void println(java.lang.String)>($r9);	z4 = 0;	z5 = 0;	z6 = 0;	r10 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r11 = new java.io.File;	$r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR>;	specialinvoke $r11.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r10, $r12);	z7 = 0;	r13 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home");	if r13 == null goto z7 = 1;	z7 = 1;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ANT_HOME");	$c0 = <java.io.File: char separatorChar>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lib");	r64 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r64);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	if z7 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the IDE Ant configuration dialogs");	goto [?= $r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>()];	$r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = virtualinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition getDefinition(java.lang.String)>(r6);	if $r28 != null goto r20 = virtualinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getClassName()>();	specialinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void printUnknownDefinition(java.io.PrintWriter,java.lang.String,java.lang.String)>($r1, r6, $r27);	goto [?= virtualinvoke $r1.<java.io.PrintWriter: void flush()>()];	virtualinvoke $r1.<java.io.PrintWriter: void flush()>();	virtualinvoke $r1.<java.io.PrintWriter: void close()>();	$r66 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>();	return $r66
;block_num 7