(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var130 0)
(declare-sort var3103 0)
(declare-sort var2796 0)
(declare-sort var3946 0)
(declare-sort var2804 0)
(declare-sort var340 0)
(declare-sort var1088 0)
(declare-sort var1301 0)
(declare-sort var3979 0)
(declare-sort var2006 0)
(declare-sort var1239 0)
(declare-sort var1266 0)
(declare-sort var101 0)
(declare-sort var1047 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1036098043 (var130) var2796)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun describeArguments/-1721057376 (var3103) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3946 String Int) void)
(declare-fun cast-from-var2796-to-var3946 (var2796) var3946)
(declare-fun arr-var2804-init () (Array Int var2804))
(declare-fun compileList/-1036098043 (var130) (Array Int var340))
(declare-fun getLength-Arr-var340-1 ((Array Int var340)) Int)
(declare-fun cast-from-String-to-var2804 (String) var2804)
(declare-fun String_format/1339386452 (String (Array Int var2804)) String)
(declare-fun var1088_of/184955601 ((Array Int var2804)) var1088)
(declare-fun cast-from-__Array__Int__var340__-to-__Array__Int__var2804__ ((Array Int var340)) (Array Int var2804))
(declare-fun var3979_bootstrap$/-345859190 () var1301)
(declare-fun var1088_map/130902797 (var1088 var1301) var1088)
(declare-fun var1239_bootstrap$/-1117277010 (var3103) var2006)
(declare-fun var1088_peek/-1564289730 (var1088 var2006) var1088)
(declare-fun var1266_bootstrap$/1297901732 () var1301)
(declare-fun var1047_joining/-1302177485 (String) var101)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1088_collect/-2050842585 (var1088 var101) var2804)
(declare-fun cast-from-var2804-to-String (var2804) String)
(declare-const null-var130 var130)
(declare-const null-var3103 var3103)
(declare-const null-__Array__Int__var2804__ (Array Int var2804))
(declare-const var2425 var130) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter 
(assert (not (= var2425 null-var130)))
(declare-const var2768 var3103) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert (not (= var2768 null-var3103)))
(define-const var1973 var2796 (attributes/-1036098043 var2425)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(define-const var854 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var854)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var854!1 String)
(assert (= var854!1 ""))
(assert true)
(define-const var1715 String (append/672562846 var854!1 "Compilation ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ") 
(declare-const var854!2 String)
(assert (= var854!2 (str.++ var854!1 "Compilation ")))
(assert true)
(define-const var2060 String (describeArguments/-1721057376 var2768)) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeArguments()>() 
(assert true)
(define-const var3164 String (append/672562846 var1715 var2060)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1715!1 String)
(assert (= var1715!1 (str.++ var1715 var2060)))
(assert true)
(define-const var2863 String (toString/-2075883882 var3164)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var2796-to-var3946 var1973) var2863 3)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r7, 3) 

(declare-const var1973!1 var2796)
(declare-const var2863!1 String)
(declare-const var746 Int)
(define-const var3578 var2796 (attributes/-1036098043 var2425)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(define-const var2657 (Array Int var2804) arr-var2804-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(define-const var2534 (Array Int var340) (compileList/-1036098043 var2425)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: java.io.File[] compileList> 
(define-const var2595 Int (getLength-Arr-var340-1 var2534)) ; Statement: $i0 = lengthof $r9 
 ; Statement: if $i0 != 1 goto $r24 = "Files" 
(assert (not (not (= var2595 1)))) ; Negate: Cond: $i0 != 1  
(define-const var2407 String "File") ; Statement: $r24 = "File" 
 ; Statement: goto [?= $r8[0] = $r24] 
(assert true) ; Non Conditional
(declare-const var2657!1 (Array Int var2804))
(assert (not (= var2657!1 null-__Array__Int__var2804__)))
(assert (= (select var2657!1 0) (cast-from-String-to-var2804 var2407))) ; Statement: $r8[0] = $r24 
(define-const var1882 String (String_format/1339386452 "%s to be compiled:" var2657!1)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s to be compiled:", $r8) 
(assert true)
;(assert (log/456963423 (cast-from-var2796-to-var3946 var3578) var1882 3)) ; Statement: virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r11, 3) 

(declare-const var3578!1 var2796)
(declare-const var1882!1 String)
(declare-const var746!1 Int)
(define-const var3742 var2796 (attributes/-1036098043 var2425)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(define-const var32 (Array Int var340) (compileList/-1036098043 var2425)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: java.io.File[] compileList> 
(define-const var919 var1088 (var1088_of/184955601 (cast-from-__Array__Int__var340__-to-__Array__Int__var2804__ var32))) ; Statement: $r15 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r12) 
(define-const var3591 var1301 var3979_bootstrap$/-345859190) ; Statement: $r14 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$getAbsolutePath__466: java.util.function.Function bootstrap$()>() 
(define-const var948 var1088 (var1088_map/130902797 var919 var3591)) ; Statement: $r17 = interfaceinvoke $r15.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r14) 
(define-const var3646 var2006 (var1239_bootstrap$/-1117277010 var2768)) ; Statement: $r16 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_0__467: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>(r3) 
(define-const var763 var1088 (var1088_peek/-1564289730 var948 var3646)) ; Statement: $r19 = interfaceinvoke $r17.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r16) 
(define-const var2714 var1301 var1266_bootstrap$/1297901732) ; Statement: $r18 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_1__469: java.util.function.Function bootstrap$()>() 
(define-const var3313 var1088 (var1088_map/130902797 var763 var2714)) ; Statement: $r21 = interfaceinvoke $r19.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r18) 
(define-const var3791 var101 (var1047_joining/-1302177485 (cast-from-String-to-String ""))) ; Statement: $r20 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("") 
(define-const var2899 var2804 (var1088_collect/-2050842585 var3313 var3791)) ; Statement: $r22 = interfaceinvoke $r21.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r20) 
(define-const var2959 String (cast-from-var2804-to-String var2899)) ; Statement: $r23 = (java.lang.String) $r22 
(assert true)
;(assert (log/456963423 (cast-from-var2796-to-var3946 var3742) var2959 3)) ; Statement: virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r23, 3) 

(declare-const var3742!1 var2796)
(declare-const var2959!1 String)
(declare-const var746!2 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), describeArguments/-1721057376=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2796-to-var3946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), arr-var2804-init=([], java.lang.Object[]), compileList/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], java.io.File[]), getLength-Arr-var340-1=([java.io.File[]], int), cast-from-String-to-var2804=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var1088_of/184955601=([java.lang.Object[]], java.util.stream.Stream), cast-from-__Array__Int__var340__-to-__Array__Int__var2804__=([java.io.File[]], java.lang.Object[]), var3979_bootstrap$/-345859190=([], java.util.function.Function), var1088_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var1239_bootstrap$/-1117277010=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.util.function.Consumer), var1088_peek/-1564289730=([java.util.stream.Stream, java.util.function.Consumer], java.util.stream.Stream), var1266_bootstrap$/1297901732=([], java.util.function.Function), var1047_joining/-1302177485=([java.lang.CharSequence], java.util.stream.Collector), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1088_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var2804-to-String=([java.lang.Object], java.lang.String)}
; {var130=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, var2425=r0, var3103=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var2768=r3, var2796=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var1973=$r2, var854=$r1, var1715=$r5, var2060=$r4, var3164=$r6, var2863=$r7, var3946=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var746=3, var3578=$r10, var2804=java.lang.Object, var2657=$r8, var340=java.io.File, var2534=$r9, var2595=$i0, var2407=$r24, var1882=$r11, var3742=$r13, var32=$r12, var1088=java.util.stream.Stream, var919=$r15, var1301=java.util.function.Function, var3979=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$getAbsolutePath__466, var3591=$r14, var948=$r17, var2006=java.util.function.Consumer, var1239=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_0__467, var3646=$r16, var763=$r19, var1266=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_1__469, var2714=$r18, var3313=$r21, var101=java.util.stream.Collector, var1047=java.util.stream.Collectors, var3791=$r20, var2899=$r22, var2959=$r23}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter=var130, r0=var2425, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var3103, r3=var2768, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var2796, $r2=var1973, $r1=var854, $r5=var1715, $r4=var2060, $r6=var3164, $r7=var2863, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3946, 3=var746, $r10=var3578, java.lang.Object=var2804, $r8=var2657, java.io.File=var340, $r9=var2534, $i0=var2595, $r24=var2407, $r11=var1882, $r13=var3742, $r12=var32, java.util.stream.Stream=var1088, $r15=var919, java.util.function.Function=var1301, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$getAbsolutePath__466=var3979, $r14=var3591, $r17=var948, java.util.function.Consumer=var2006, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_0__467=var1239, $r16=var3646, $r19=var763, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_1__469=var1266, $r18=var2714, $r21=var3313, java.util.stream.Collector=var101, java.util.stream.Collectors=var1047, $r20=var3791, $r22=var2899, $r23=var2959}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ");	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeArguments()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r7, 3);	$r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	$r8 = newarray (java.lang.Object)[1];	$r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: java.io.File[] compileList>;	$i0 = lengthof $r9;	if $i0 != 1 goto $r24 = "Files";	$r24 = "File";	goto [?= $r8[0] = $r24];	$r8[0] = $r24;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s to be compiled:", $r8);	virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r11, 3);	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: java.io.File[] compileList>;	$r15 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r12);	$r14 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$getAbsolutePath__466: java.util.function.Function bootstrap$()>();	$r17 = interfaceinvoke $r15.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r14);	$r16 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_0__467: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>(r3);	$r19 = interfaceinvoke $r17.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r16);	$r18 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_1__469: java.util.function.Function bootstrap$()>();	$r21 = interfaceinvoke $r19.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r18);	$r20 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("");	$r22 = interfaceinvoke $r21.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r20);	$r23 = (java.lang.String) $r22;	virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r23, 3);	return
;block_num 3