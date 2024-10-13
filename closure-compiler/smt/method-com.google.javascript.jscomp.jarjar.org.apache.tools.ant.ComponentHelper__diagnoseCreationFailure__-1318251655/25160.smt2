(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3628 0)
(declare-sort var3096 0)
(declare-sort var1680 0)
(declare-sort var700 0)
(declare-sort var2276 0)
(declare-sort var798 0)
(declare-sort var1298 0)
(declare-sort var3095 0)
(declare-sort var3183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1680-init () var1680)
(declare-fun <init>/358169345 (var1680) void)
(declare-fun var700-init () var700)
(declare-fun <init>/-1864438596 (var700 var2276) void)
(declare-fun cast-from-var1680-to-var2276 (var1680) var2276)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var700 String) void)
(declare-fun var798_getProperty/258823597 (String) String)
(declare-fun var1298-init () var1298)
(declare-fun <init>/1056156189 (var1298 String String) void)
(declare-fun getAbsolutePath/-802773300 (var1298) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getDefinition/1285700790 (var3628 String) var3183)
(declare-fun printUnknownDefinition/195611935 (var3628 var700 String String) void)
(declare-fun flush/-1073200041 (var700) void)
(declare-fun close/2116439267 (var700) void)
(declare-fun toString/138175384 (var1680) String)
(declare-const null-var3628 var3628)
(declare-const null-String String)
(declare-const var3095-USER_LIBDIR String)
(declare-const null-var3183 var3183)
(declare-const var515 var3628) ; Statement: r19 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var515 null-var3628)))
(declare-const var2349 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2349 null-String)))
(declare-const var3485 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3485 null-String)))
(define-const var3665 var1680 var1680-init) ; Statement: $r0 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var3665)) ; Statement: specialinvoke $r0.<java.io.StringWriter: void <init>()>() 

(declare-const var3665!1 var1680)
(define-const var948 var700 var700-init) ; Statement: $r1 = new java.io.PrintWriter 
(assert true)
;(assert (<init>/-1864438596 var948 (cast-from-var1680-to-var2276 var3665!1))) ; Statement: specialinvoke $r1.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0) 

(declare-const var948!1 var700)
(declare-const var3665!2 var1680)
(define-const var1658 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1658)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1658!1 String)
(assert (= var1658!1 ""))
(assert true)
(define-const var3089 String (append/672562846 var1658!1 "Problem: failed to create ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem: failed to create ") 
(declare-const var1658!2 String)
(assert (= var1658!2 (str.++ var1658!1 "Problem: failed to create ")))
(assert true)
(define-const var1700 String (append/672562846 var3089 var3485)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3089!1 String)
(assert (= var3089!1 (str.++ var3089 var3485)))
(assert true)
(define-const var2483 String (append/672562846 var1700 " ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1700!1 String)
(assert (= var1700!1 (str.++ var1700 " ")))
(assert true)
(define-const var385 String (append/672562846 var2483 var2349)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2483!1 String)
(assert (= var2483!1 (str.++ var2483 var2349)))
(assert true)
(define-const var3196 String (toString/-2075883882 var385)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var948!1 var3196)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void println(java.lang.String)>($r9) 

(declare-const var948!2 var700)
(declare-const var3196!1 String)
(define-const var1448 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var2368 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var584 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var1674 String (var798_getProperty/258823597 "user.home")) ; Statement: r10 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(define-const var2202 var1298 var1298-init) ; Statement: $r11 = new java.io.File 
(define-const var2129 String var3095-USER_LIBDIR) ; Statement: $r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR> 
(assert true)
;(assert (<init>/1056156189 var2202 var1674 var2129)) ; Statement: specialinvoke $r11.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r10, $r12) 

(declare-const var2202!1 var1298)
(declare-const var1674!1 String)
(declare-const var2129!1 String)
(define-const var2132 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var3627 String (var798_getProperty/258823597 "ant.home")) ; Statement: r13 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home") 
 ; Statement: if r13 == null goto z7 = 1 
(assert (not (= var3627 null-String))) ; Negate: Cond: r13 == null  
(define-const var1915 var1298 var1298-init) ; Statement: $r29 = new java.io.File 
(assert true)
;(assert (<init>/1056156189 var1915 var3627 "lib")) ; Statement: specialinvoke $r29.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r13, "lib") 

(declare-const var1915!1 var1298)
(declare-const var3627!1 String)
(declare-const var540 String)
(assert true)
(define-const var2676 String (getAbsolutePath/-802773300 var1915!1)) ; Statement: r64 = virtualinvoke $r29.<java.io.File: java.lang.String getAbsolutePath()>() 
 ; Statement: goto [?= $r18 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3384 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3384)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3384!1 String)
(assert (= var3384!1 ""))
(assert true)
;(assert (append/672562846 var3384!1 "        -")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(declare-const var3384!2 String)
(assert (= var3384!2 (str.++ var3384!1 "        -")))
(assert true)
;(assert (append/672562846 var3384!2 var2676)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r64) 
(declare-const var3384!3 String)
(assert (= var3384!3 (str.++ var3384!2 var2676)))
(assert true)
;(assert (append/-1166366385 var3384!3 10)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3384!4 String)
(assert (str.prefixof var3384!3 var3384!4))
 ; Statement: if z7 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(assert (not (= (ite var2132 1 0) 0))) ; Negate: Cond: z7 == 0  
(assert true)
;(assert (append/672562846 var3384!4 "        -")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -") 
(declare-const var3384!5 String)
(assert (= var3384!5 (str.++ var3384!4 "        -")))
(assert true)
;(assert (append/672562846 var3384!5 "the IDE Ant configuration dialogs")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the IDE Ant configuration dialogs") 
(declare-const var3384!6 String)
(assert (= var3384!6 (str.++ var3384!5 "the IDE Ant configuration dialogs")))
 ; Statement: goto [?= $r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1717 String (toString/-2075883882 var3384!6)) ; Statement: $r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2418 var3183 (getDefinition/1285700790 var515 var2349)) ; Statement: $r28 = virtualinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition getDefinition(java.lang.String)>(r6) 
 ; Statement: if $r28 != null goto r20 = virtualinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getClassName()>() 
(assert (not (not (= var2418 null-var3183)))) ; Negate: Cond: $r28 != null  
(assert true)
;(assert (printUnknownDefinition/195611935 var515 var948!2 var2349 var1717)) ; Statement: specialinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void printUnknownDefinition(java.io.PrintWriter,java.lang.String,java.lang.String)>($r1, r6, $r27) 

(declare-const var515!1 var3628)
(declare-const var948!3 var700)
(declare-const var2349!1 String)
(declare-const var1717!1 String)
 ; Statement: goto [?= virtualinvoke $r1.<java.io.PrintWriter: void flush()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (flush/-1073200041 var948!3)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void flush()>() 

(declare-const var948!4 var700)
(assert true)
;(assert (close/2116439267 var948!4)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void close()>() 

(declare-const var948!5 var700)
(assert true)
(define-const var836 String (toString/138175384 var3665!2)) ; Statement: $r66 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>() 
 ; Statement: return $r66 
(check-sat)
(get-model)
(get-unsat-core)
; {var1680-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), var700-init=([], java.io.PrintWriter), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), cast-from-var1680-to-var2276=([java.io.StringWriter], java.io.Writer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), var798_getProperty/258823597=([java.lang.String], java.lang.String), var1298-init=([], java.io.File), <init>/1056156189=([java.io.File, java.lang.String, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getDefinition/1285700790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, java.lang.String], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition), printUnknownDefinition/195611935=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, java.io.PrintWriter, java.lang.String, java.lang.String], void), flush/-1073200041=([java.io.PrintWriter], void), close/2116439267=([java.io.PrintWriter], void), toString/138175384=([java.io.StringWriter], java.lang.String)}
; {var3628=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var515=r19, var2349=r6, var3096=null_type, var3485=r3, var1680=java.io.StringWriter, var3665=$r0, var700=java.io.PrintWriter, var948=$r1, var2276=java.io.Writer, var1658=$r2, var3089=$r4, var1700=$r5, var2483=$r7, var385=$r8, var3196=$r9, var1448=z4, var2368=z5, var584=z6, var798=java.lang.System, var1674=r10, var1298=java.io.File, var2202=$r11, var3095=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher, var2129=$r12, var2132=z7, var3627=r13, var1915=$r29, var540="lib", var2676=r64, var3384=$r18, var1717=$r27, var3183=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var2418=$r28, var836=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var3628, r19=var515, r6=var2349, null_type=var3096, r3=var3485, java.io.StringWriter=var1680, $r0=var3665, java.io.PrintWriter=var700, $r1=var948, java.io.Writer=var2276, $r2=var1658, $r4=var3089, $r5=var1700, $r7=var2483, $r8=var385, $r9=var3196, z4=var1448, z5=var2368, z6=var584, java.lang.System=var798, r10=var1674, java.io.File=var1298, $r11=var2202, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher=var3095, $r12=var2129, z7=var2132, r13=var3627, $r29=var1915, "lib"=var540, r64=var2676, $r18=var3384, $r27=var1717, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var3183, $r28=var2418, $r66=var836}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.io.StringWriter: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r19 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r6 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.io.StringWriter;	specialinvoke $r0.<java.io.StringWriter: void <init>()>();	$r1 = new java.io.PrintWriter;	specialinvoke $r1.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem: failed to create ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintWriter: void println(java.lang.String)>($r9);	z4 = 0;	z5 = 0;	z6 = 0;	r10 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r11 = new java.io.File;	$r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR>;	specialinvoke $r11.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r10, $r12);	z7 = 0;	r13 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home");	if r13 == null goto z7 = 1;	$r29 = new java.io.File;	specialinvoke $r29.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r13, "lib");	r64 = virtualinvoke $r29.<java.io.File: java.lang.String getAbsolutePath()>();	goto [?= $r18 = new java.lang.StringBuilder];	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r64);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	if z7 == 0 goto virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        -");	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the IDE Ant configuration dialogs");	goto [?= $r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>()];	$r27 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = virtualinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition getDefinition(java.lang.String)>(r6);	if $r28 != null goto r20 = virtualinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getClassName()>();	specialinvoke r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void printUnknownDefinition(java.io.PrintWriter,java.lang.String,java.lang.String)>($r1, r6, $r27);	goto [?= virtualinvoke $r1.<java.io.PrintWriter: void flush()>()];	virtualinvoke $r1.<java.io.PrintWriter: void flush()>();	virtualinvoke $r1.<java.io.PrintWriter: void close()>();	$r66 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>();	return $r66
;block_num 7