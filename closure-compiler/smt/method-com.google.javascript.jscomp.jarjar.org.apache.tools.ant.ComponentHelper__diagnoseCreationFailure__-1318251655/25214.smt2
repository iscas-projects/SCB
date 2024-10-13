(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3418 0)
(declare-sort var3932 0)
(declare-sort var826 0)
(declare-sort var213 0)
(declare-sort var2764 0)
(declare-sort var2476 0)
(declare-sort var1270 0)
(declare-sort var47 0)
(declare-sort var2482 0)
(declare-sort var1642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var826-init () var826)
(declare-fun <init>/358169345 (var826) void)
(declare-fun var213-init () var213)
(declare-fun <init>/-1864438596 (var213 var2764) void)
(declare-fun cast-from-var826-to-var2764 (var826) var2764)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var213 String) void)
(declare-fun var2476_getProperty/258823597 (String) String)
(declare-fun var1270-init () var1270)
(declare-fun <init>/1056156189 (var1270 String String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun append/-1031950772 (String var2482) String)
(declare-fun cast-from-var1270-to-var2482 (var1270) var2482)
(declare-fun getDefinition/1285700790 (var3418 String) var1642)
(declare-fun printUnknownDefinition/195611935 (var3418 var213 String String) void)
(declare-fun flush/-1073200041 (var213) void)
(declare-fun close/2116439267 (var213) void)
(declare-fun toString/138175384 (var826) String)
(declare-const null-var3418 var3418)
(declare-const null-String String)
(declare-const var47-USER_LIBDIR String)
(declare-const var1270-separatorChar Int)
(declare-const null-var1642 var1642)
(declare-const var3752 var3418) ; Statement: r19 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var3752 null-var3418)))
(declare-const var664 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var664 null-String)))
(declare-const var1032 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1032 null-String)))
(define-const var586 var826 var826-init) ; Statement: $r0 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var586)) ; Statement: specialinvoke $r0.<java.io.StringWriter: void <init>()>() 

(declare-const var586!1 var826)
(define-const var76 var213 var213-init) ; Statement: $r1 = new java.io.PrintWriter 
(assert true)
;(assert (<init>/-1864438596 var76 (cast-from-var826-to-var2764 var586!1))) ; Statement: specialinvoke $r1.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0) 

(declare-const var76!1 var213)
(declare-const var586!2 var826)
(define-const var845 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var845)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var845!1 String)
(assert (= var845!1 ""))
(assert true)
(define-const var554 String (append/672562846 var845!1 "Problem: failed to create ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem: failed to create ") 
(declare-const var845!2 String)
(assert (= var845!2 (str.++ var845!1 "Problem: failed to create ")))
(assert true)
(define-const var3981 String (append/672562846 var554 var1032)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var554!1 String)
(assert (= var554!1 (str.++ var554 var1032)))
(assert true)
(define-const var1837 String (append/672562846 var3981 " ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3981!1 String)
(assert (= var3981!1 (str.++ var3981 " ")))
(assert true)
(define-const var3070 String (append/672562846 var1837 var664)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1837!1 String)
(assert (= var1837!1 (str.++ var1837 var664)))
(assert true)
(define-const var814 String (toString/-2075883882 var3070)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var76!1 var814)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void println(java.lang.String)>($r9) 

(declare-const var76!2 var213)
(declare-const var814!1 String)
(define-const var3231 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var3594 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var1549 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var669 String (var2476_getProperty/258823597 "user.home")) ; Statement: r10 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(define-const var275 var1270 var1270-init) ; Statement: $r11 = new java.io.File 
(define-const var3684 String var47-USER_LIBDIR) ; Statement: $r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR> 
(assert true)
;(assert (<init>/1056156189 var275 var669 var3684)) ; Statement: specialinvoke $r11.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r10, $r12) 

(declare-const var275!1 var1270)
(declare-const var669!1 String)
(declare-const var3684!1 String)
(define-const var1540 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var2030 String (var2476_getProperty/258823597 "ant.home")) ; Statement: r13 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home") 
 ; Statement: if r13 == null goto z7 = 1 
(assert (= var2030 null-String)) ; Cond: r13 == null 
(define-const var1540!1 Bool (ite (= 1 1) true false)) ; Statement: z7 = 1 
(define-const var1178 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1178)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1178!1 String)
(assert (= var1178!1 ""))
(assert true)
(define-const var881 String (append/672562846 var1178!1 "ANT_HOME")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ANT_HOME") 
(declare-const var1178!2 String)
(assert (= var1178!2 (str.++ var1178!1 "ANT_HOME")))
(define-const var3524 Int var1270-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var1948 String (append/-1166366385 var881 var3524)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var881!1 String)
(assert (str.prefixof var881 var881!1))
(assert true)
(define-const var3572 String (append/672562846 var1948 "lib")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lib") 
(declare-const var1948!1 String)
(assert (= var1948!1 (str.++ var1948 "lib")))
(assert true)
(define-const var3279 String (toString/-2075883882 var3572)) ; Statement: r64 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3268 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3268)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3268!1 String)
(assert (= var3268!1 ""))
(assert true)
;(assert (append/672562846 var3268!1 "        -")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(declare-const var3268!2 String)
(assert (= var3268!2 (str.++ var3268!1 "        -")))
(assert true)
;(assert (append/672562846 var3268!2 var3279)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r64) 
(declare-const var3268!3 String)
(assert (= var3268!3 (str.++ var3268!2 var3279)))
(assert true)
;(assert (append/-1166366385 var3268!3 10)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3268!4 String)
(assert (str.prefixof var3268!3 var3268!4))
 ; Statement: if z7 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(assert (= (ite var1540!1 1 0) 0)) ; Cond: z7 == 0 
(assert true)
;(assert (append/672562846 var3268!4 "        -")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(declare-const var3268!5 String)
(assert (= var3268!5 (str.++ var3268!4 "        -")))
(assert true)
;(assert (append/-1031950772 var3268!5 (cast-from-var1270-to-var2482 var275!1))) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var3268!6 String)
(assert (str.prefixof var3268!5 var3268!6))
(assert true)
;(assert (append/-1166366385 var3268!6 10)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3268!7 String)
(assert (str.prefixof var3268!6 var3268!7))
(assert true)
;(assert (append/672562846 var3268!7 "        -")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(declare-const var3268!8 String)
(assert (= var3268!8 (str.++ var3268!7 "        -")))
(assert true)
;(assert (append/672562846 var3268!8 "a directory added on the command line with the -lib argument")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("a directory added on the command line with the -lib argument") 
(declare-const var3268!9 String)
(assert (= var3268!9 (str.++ var3268!8 "a directory added on the command line with the -lib argument")))
(assert true) ; Non Conditional
(assert true)
(define-const var3618 String (toString/-2075883882 var3268!9)) ; Statement: $r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var404 var1642 (getDefinition/1285700790 var3752 var664)) ; Statement: $r28 = virtualinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition getDefinition(java.lang.String)>(r6) 
 ; Statement: if $r28 != null goto r20 = virtualinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getClassName()>() 
(assert (not (not (= var404 null-var1642)))) ; Negate: Cond: $r28 != null  
(assert true)
;(assert (printUnknownDefinition/195611935 var3752 var76!2 var664 var3618)) ; Statement: specialinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void printUnknownDefinition(java.io.PrintWriter,java.lang.String,java.lang.String)>($r1, r6, $r27) 

(declare-const var3752!1 var3418)
(declare-const var76!3 var213)
(declare-const var664!1 String)
(declare-const var3618!1 String)
 ; Statement: goto [?= virtualinvoke $r1.<java.io.PrintWriter: void flush()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (flush/-1073200041 var76!3)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void flush()>() 

(declare-const var76!4 var213)
(assert true)
;(assert (close/2116439267 var76!4)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void close()>() 

(declare-const var76!5 var213)
(assert true)
(define-const var2344 String (toString/138175384 var586!2)) ; Statement: $r66 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>() 
 ; Statement: return $r66 
(check-sat)
(get-model)
(get-unsat-core)
; {var826-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), var213-init=([], java.io.PrintWriter), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), cast-from-var826-to-var2764=([java.io.StringWriter], java.io.Writer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), var2476_getProperty/258823597=([java.lang.String], java.lang.String), var1270-init=([], java.io.File), <init>/1056156189=([java.io.File, java.lang.String, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1270-to-var2482=([java.io.File], java.lang.Object), getDefinition/1285700790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, java.lang.String], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition), printUnknownDefinition/195611935=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, java.io.PrintWriter, java.lang.String, java.lang.String], void), flush/-1073200041=([java.io.PrintWriter], void), close/2116439267=([java.io.PrintWriter], void), toString/138175384=([java.io.StringWriter], java.lang.String)}
; {var3418=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var3752=r19, var664=r6, var3932=null_type, var1032=r3, var826=java.io.StringWriter, var586=$r0, var213=java.io.PrintWriter, var76=$r1, var2764=java.io.Writer, var845=$r2, var554=$r4, var3981=$r5, var1837=$r7, var3070=$r8, var814=$r9, var3231=z4, var3594=z5, var1549=z6, var2476=java.lang.System, var669=r10, var1270=java.io.File, var275=$r11, var47=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher, var3684=$r12, var1540=z7, var2030=r13, var1178=$r14, var881=$r15, var3524=$c0, var1948=$r16, var3572=$r17, var3279=r64, var3268=$r18, var2482=java.lang.Object, var3618=$r27, var1642=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var404=$r28, var2344=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var3418, r19=var3752, r6=var664, null_type=var3932, r3=var1032, java.io.StringWriter=var826, $r0=var586, java.io.PrintWriter=var213, $r1=var76, java.io.Writer=var2764, $r2=var845, $r4=var554, $r5=var3981, $r7=var1837, $r8=var3070, $r9=var814, z4=var3231, z5=var3594, z6=var1549, java.lang.System=var2476, r10=var669, java.io.File=var1270, $r11=var275, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher=var47, $r12=var3684, z7=var1540, r13=var2030, $r14=var1178, $r15=var881, $c0=var3524, $r16=var1948, $r17=var3572, r64=var3279, $r18=var3268, java.lang.Object=var2482, $r27=var3618, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var1642, $r28=var404, $r66=var2344}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.io.StringWriter: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r19 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r6 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.io.StringWriter;	specialinvoke $r0.<java.io.StringWriter: void <init>()>();	$r1 = new java.io.PrintWriter;	specialinvoke $r1.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem: failed to create ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintWriter: void println(java.lang.String)>($r9);	z4 = 0;	z5 = 0;	z6 = 0;	r10 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r11 = new java.io.File;	$r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR>;	specialinvoke $r11.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r10, $r12);	z7 = 0;	r13 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home");	if r13 == null goto z7 = 1;	z7 = 1;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ANT_HOME");	$c0 = <java.io.File: char separatorChar>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lib");	r64 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r64);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	if z7 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("a directory added on the command line with the -lib argument");	$r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = virtualinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition getDefinition(java.lang.String)>(r6);	if $r28 != null goto r20 = virtualinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getClassName()>();	specialinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void printUnknownDefinition(java.io.PrintWriter,java.lang.String,java.lang.String)>($r1, r6, $r27);	goto [?= virtualinvoke $r1.<java.io.PrintWriter: void flush()>()];	virtualinvoke $r1.<java.io.PrintWriter: void flush()>();	virtualinvoke $r1.<java.io.PrintWriter: void close()>();	$r66 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>();	return $r66
;block_num 7