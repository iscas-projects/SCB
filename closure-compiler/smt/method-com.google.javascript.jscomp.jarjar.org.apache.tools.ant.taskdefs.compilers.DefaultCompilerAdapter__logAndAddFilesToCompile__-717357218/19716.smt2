(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1213 0)
(declare-sort var1056 0)
(declare-sort var685 0)
(declare-sort var2098 0)
(declare-sort var1562 0)
(declare-sort var2129 0)
(declare-sort var61 0)
(declare-sort var1415 0)
(declare-sort var3807 0)
(declare-sort var2632 0)
(declare-sort var901 0)
(declare-sort var3829 0)
(declare-sort var3381 0)
(declare-sort var1744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1036098043 (var1213) var685)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun describeArguments/-1721057376 (var1056) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2098 String Int) void)
(declare-fun cast-from-var685-to-var2098 (var685) var2098)
(declare-fun arr-var1562-init () (Array Int var1562))
(declare-fun compileList/-1036098043 (var1213) (Array Int var2129))
(declare-fun getLength-Arr-var2129-1 ((Array Int var2129)) Int)
(declare-fun cast-from-String-to-var1562 (String) var1562)
(declare-fun String_format/1339386452 (String (Array Int var1562)) String)
(declare-fun var61_of/184955601 ((Array Int var1562)) var61)
(declare-fun cast-from-__Array__Int__var2129__-to-__Array__Int__var1562__ ((Array Int var2129)) (Array Int var1562))
(declare-fun var3807_bootstrap$/-345859190 () var1415)
(declare-fun var61_map/130902797 (var61 var1415) var61)
(declare-fun var901_bootstrap$/-1117277010 (var1056) var2632)
(declare-fun var61_peek/-1564289730 (var61 var2632) var61)
(declare-fun var3829_bootstrap$/1297901732 () var1415)
(declare-fun var1744_joining/-1302177485 (String) var3381)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var61_collect/-2050842585 (var61 var3381) var1562)
(declare-fun cast-from-var1562-to-String (var1562) String)
(declare-const null-var1213 var1213)
(declare-const null-var1056 var1056)
(declare-const null-__Array__Int__var1562__ (Array Int var1562))
(declare-const var90 var1213) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter 
(assert (not (= var90 null-var1213)))
(declare-const var207 var1056) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert (not (= var207 null-var1056)))
(define-const var2887 var685 (attributes/-1036098043 var90)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(define-const var1341 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1341)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1341!1 String)
(assert (= var1341!1 ""))
(assert true)
(define-const var1265 String (append/672562846 var1341!1 "Compilation ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ") 
(declare-const var1341!2 String)
(assert (= var1341!2 (str.++ var1341!1 "Compilation ")))
(assert true)
(define-const var753 String (describeArguments/-1721057376 var207)) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeArguments()>() 
(assert true)
(define-const var666 String (append/672562846 var1265 var753)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1265!1 String)
(assert (= var1265!1 (str.++ var1265 var753)))
(assert true)
(define-const var908 String (toString/-2075883882 var666)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var685-to-var2098 var2887) var908 3)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r7, 3) 

(declare-const var2887!1 var685)
(declare-const var908!1 String)
(declare-const var2724 Int)
(define-const var3354 var685 (attributes/-1036098043 var90)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(define-const var3501 (Array Int var1562) arr-var1562-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(define-const var3334 (Array Int var2129) (compileList/-1036098043 var90)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: java.io.File[] compileList> 
(define-const var3936 Int (getLength-Arr-var2129-1 var3334)) ; Statement: $i0 = lengthof $r9 
 ; Statement: if $i0 != 1 goto $r24 = "Files" 
(assert (not (= var3936 1))) ; Cond: $i0 != 1 
(define-const var1470 String "Files") ; Statement: $r24 = "Files" 
(assert true) ; Non Conditional
(declare-const var3501!1 (Array Int var1562))
(assert (not (= var3501!1 null-__Array__Int__var1562__)))
(assert (= (select var3501!1 0) (cast-from-String-to-var1562 var1470))) ; Statement: $r8[0] = $r24 
(define-const var2291 String (String_format/1339386452 "%s to be compiled:" var3501!1)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s to be compiled:", $r8) 
(assert true)
;(assert (log/456963423 (cast-from-var685-to-var2098 var3354) var2291 3)) ; Statement: virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r11, 3) 

(declare-const var3354!1 var685)
(declare-const var2291!1 String)
(declare-const var2724!1 Int)
(define-const var3337 var685 (attributes/-1036098043 var90)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(define-const var624 (Array Int var2129) (compileList/-1036098043 var90)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: java.io.File[] compileList> 
(define-const var1091 var61 (var61_of/184955601 (cast-from-__Array__Int__var2129__-to-__Array__Int__var1562__ var624))) ; Statement: $r15 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r12) 
(define-const var2342 var1415 var3807_bootstrap$/-345859190) ; Statement: $r14 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$getAbsolutePath__466: java.util.function.Function bootstrap$()>() 
(define-const var2206 var61 (var61_map/130902797 var1091 var2342)) ; Statement: $r17 = interfaceinvoke $r15.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r14) 
(define-const var1792 var2632 (var901_bootstrap$/-1117277010 var207)) ; Statement: $r16 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_0__467: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>(r3) 
(define-const var2671 var61 (var61_peek/-1564289730 var2206 var1792)) ; Statement: $r19 = interfaceinvoke $r17.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r16) 
(define-const var973 var1415 var3829_bootstrap$/1297901732) ; Statement: $r18 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_1__469: java.util.function.Function bootstrap$()>() 
(define-const var332 var61 (var61_map/130902797 var2671 var973)) ; Statement: $r21 = interfaceinvoke $r19.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r18) 
(define-const var3894 var3381 (var1744_joining/-1302177485 (cast-from-String-to-String ""))) ; Statement: $r20 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("") 
(define-const var113 var1562 (var61_collect/-2050842585 var332 var3894)) ; Statement: $r22 = interfaceinvoke $r21.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r20) 
(define-const var1943 String (cast-from-var1562-to-String var113)) ; Statement: $r23 = (java.lang.String) $r22 
(assert true)
;(assert (log/456963423 (cast-from-var685-to-var2098 var3337) var1943 3)) ; Statement: virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r23, 3) 

(declare-const var3337!1 var685)
(declare-const var1943!1 String)
(declare-const var2724!2 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), describeArguments/-1721057376=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var685-to-var2098=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), arr-var1562-init=([], java.lang.Object[]), compileList/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], java.io.File[]), getLength-Arr-var2129-1=([java.io.File[]], int), cast-from-String-to-var1562=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var61_of/184955601=([java.lang.Object[]], java.util.stream.Stream), cast-from-__Array__Int__var2129__-to-__Array__Int__var1562__=([java.io.File[]], java.lang.Object[]), var3807_bootstrap$/-345859190=([], java.util.function.Function), var61_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var901_bootstrap$/-1117277010=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.util.function.Consumer), var61_peek/-1564289730=([java.util.stream.Stream, java.util.function.Consumer], java.util.stream.Stream), var3829_bootstrap$/1297901732=([], java.util.function.Function), var1744_joining/-1302177485=([java.lang.CharSequence], java.util.stream.Collector), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var61_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var1562-to-String=([java.lang.Object], java.lang.String)}
; {var1213=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, var90=r0, var1056=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var207=r3, var685=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var2887=$r2, var1341=$r1, var1265=$r5, var753=$r4, var666=$r6, var908=$r7, var2098=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2724=3, var3354=$r10, var1562=java.lang.Object, var3501=$r8, var2129=java.io.File, var3334=$r9, var3936=$i0, var1470=$r24, var2291=$r11, var3337=$r13, var624=$r12, var61=java.util.stream.Stream, var1091=$r15, var1415=java.util.function.Function, var3807=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$getAbsolutePath__466, var2342=$r14, var2206=$r17, var2632=java.util.function.Consumer, var901=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_0__467, var1792=$r16, var2671=$r19, var3829=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_1__469, var973=$r18, var332=$r21, var3381=java.util.stream.Collector, var1744=java.util.stream.Collectors, var3894=$r20, var113=$r22, var1943=$r23}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter=var1213, r0=var90, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var1056, r3=var207, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var685, $r2=var2887, $r1=var1341, $r5=var1265, $r4=var753, $r6=var666, $r7=var908, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2098, 3=var2724, $r10=var3354, java.lang.Object=var1562, $r8=var3501, java.io.File=var2129, $r9=var3334, $i0=var3936, $r24=var1470, $r11=var2291, $r13=var3337, $r12=var624, java.util.stream.Stream=var61, $r15=var1091, java.util.function.Function=var1415, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$getAbsolutePath__466=var3807, $r14=var2342, $r17=var2206, java.util.function.Consumer=var2632, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_0__467=var901, $r16=var1792, $r19=var2671, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_1__469=var3829, $r18=var973, $r21=var332, java.util.stream.Collector=var3381, java.util.stream.Collectors=var1744, $r20=var3894, $r22=var113, $r23=var1943}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ");	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeArguments()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r7, 3);	$r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	$r8 = newarray (java.lang.Object)[1];	$r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: java.io.File[] compileList>;	$i0 = lengthof $r9;	if $i0 != 1 goto $r24 = "Files";	$r24 = "Files";	$r8[0] = $r24;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s to be compiled:", $r8);	virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r11, 3);	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: java.io.File[] compileList>;	$r15 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r12);	$r14 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$getAbsolutePath__466: java.util.function.Function bootstrap$()>();	$r17 = interfaceinvoke $r15.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r14);	$r16 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_0__467: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>(r3);	$r19 = interfaceinvoke $r17.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r16);	$r18 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter$lambda_logAndAddFilesToCompile_1__469: java.util.function.Function bootstrap$()>();	$r21 = interfaceinvoke $r19.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r18);	$r20 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("");	$r22 = interfaceinvoke $r21.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r20);	$r23 = (java.lang.String) $r22;	virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>($r23, 3);	return
;block_num 3