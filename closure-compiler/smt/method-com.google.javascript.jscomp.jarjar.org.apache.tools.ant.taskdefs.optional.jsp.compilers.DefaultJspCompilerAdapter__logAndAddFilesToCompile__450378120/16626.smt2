(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var381 0)
(declare-sort var1990 0)
(declare-sort var2657 0)
(declare-sort var396 0)
(declare-sort var1311 0)
(declare-sort var3272 0)
(declare-sort var831 0)
(declare-sort var1374 0)
(declare-sort var730 0)
(declare-sort var3983 0)
(declare-sort var3700 0)
(declare-sort var3002 0)
(declare-sort var2603 0)
(declare-sort var1928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun describeJavaCommand/-990610805 (var396) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1311 String Int) void)
(declare-fun cast-from-var1990-to-var1311 (var1990) var1311)
(declare-fun stream/-1288525013 (var831) var3272)
(declare-fun cast-from-var2657-to-var831 (var2657) var831)
(declare-fun var730_bootstrap$/-1385992670 (var396) var1374)
(declare-fun var3272_peek/-1564289730 (var3272 var1374) var3272)
(declare-fun var3700_bootstrap$/-1597737225 () var3983)
(declare-fun var3272_map/130902797 (var3272 var3983) var3272)
(declare-fun var2603_joining/-1302177485 (String) var3002)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3272_collect/-2050842585 (var3272 var3002) var1928)
(declare-fun cast-from-var1928-to-String (var1928) String)
(declare-fun arr-var1928-init () (Array Int var1928))
(declare-fun size/-1825798970 (var2657) Int)
(declare-fun cast-from-String-to-var1928 (String) var1928)
(declare-fun String_format/1339386452 (String (Array Int var1928)) String)
(declare-const null-var381 var381)
(declare-const null-var1990 var1990)
(declare-const null-var2657 var2657)
(declare-const null-var396 var396)
(declare-const null-__Array__Int__var1928__ (Array Int var1928))
(declare-const var768 var381) ; Statement: r18 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter 
(assert (not (= var768 null-var381)))
(declare-const var3961 var1990) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC 
(assert (not (= var3961 null-var1990)))
(declare-const var3421 var2657) ; Statement: r7 := @parameter1: java.util.Vector 
(assert (not (= var3421 null-var2657)))
(declare-const var2515 var396) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava 
(assert (not (= var2515 null-var396)))
(define-const var1080 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1080)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1080!1 String)
(assert (= var1080!1 ""))
(assert true)
(define-const var3021 String (append/672562846 var1080!1 "Compilation ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ") 
(declare-const var1080!2 String)
(assert (= var1080!2 (str.++ var1080!1 "Compilation ")))
(assert true)
(define-const var1349 String (describeJavaCommand/-990610805 var2515)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: java.lang.String describeJavaCommand()>() 
(assert true)
(define-const var1494 String (append/672562846 var3021 var1349)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3021!1 String)
(assert (= var3021!1 (str.++ var3021 var1349)))
(assert true)
(define-const var750 String (toString/-2075883882 var1494)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1990-to-var1311 var3961) var750 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: void log(java.lang.String,int)>($r6, 3) 

(declare-const var3961!1 var1990)
(declare-const var750!1 String)
(declare-const var205 Int)
(assert true)
(define-const var1849 var3272 (stream/-1288525013 (cast-from-var2657-to-var831 var3421))) ; Statement: $r9 = virtualinvoke r7.<java.util.Vector: java.util.stream.Stream stream()>() 
(define-const var43 var1374 (var730_bootstrap$/-1385992670 var2515)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_0__331: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava)>(r2) 
(define-const var2385 var3272 (var3272_peek/-1564289730 var1849 var43)) ; Statement: $r11 = interfaceinvoke $r9.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r8) 
(define-const var3954 var3983 var3700_bootstrap$/-1597737225) ; Statement: $r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_1__332: java.util.function.Function bootstrap$()>() 
(define-const var3576 var3272 (var3272_map/130902797 var2385 var3954)) ; Statement: $r13 = interfaceinvoke $r11.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r10) 
(define-const var1832 var3002 (var2603_joining/-1302177485 (cast-from-String-to-String ""))) ; Statement: $r12 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("") 
(define-const var1505 var1928 (var3272_collect/-2050842585 var3576 var1832)) ; Statement: $r14 = interfaceinvoke $r13.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r12) 
(define-const var2187 String (cast-from-var1928-to-String var1505)) ; Statement: r15 = (java.lang.String) $r14 
(define-const var2960 (Array Int var1928) arr-var1928-init) ; Statement: $r16 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var424 Int (size/-1825798970 var3421)) ; Statement: $i0 = virtualinvoke r7.<java.util.Vector: int size()>() 
 ; Statement: if $i0 != 1 goto $r19 = "s" 
(assert (not (not (= var424 1)))) ; Negate: Cond: $i0 != 1  
(define-const var950 String "") ; Statement: $r19 = "" 
 ; Statement: goto [?= $r16[0] = $r19] 
(assert true) ; Non Conditional
(declare-const var2960!1 (Array Int var1928))
(assert (not (= var2960!1 null-__Array__Int__var1928__)))
(assert (= (select var2960!1 0) (cast-from-String-to-var1928 var950))) ; Statement: $r16[0] = $r19 
(declare-const var2960!2 (Array Int var1928))
(assert (not (= var2960!2 null-__Array__Int__var1928__)))
(assert (= (select var2960!2 1) (cast-from-String-to-var1928 var2187))) ; Statement: $r16[1] = r15 
(define-const var3373 String (String_format/1339386452 "File%s to be compiled:%n%s" var2960!2)) ; Statement: $r17 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("File%s to be compiled:%n%s", $r16) 
(assert true)
;(assert (log/456963423 (cast-from-var1990-to-var1311 var3961!1) var3373 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: void log(java.lang.String,int)>($r17, 3) 

(declare-const var3961!2 var1990)
(declare-const var3373!1 String)
(declare-const var205!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), describeJavaCommand/-990610805=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1990-to-var1311=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var2657-to-var831=([java.util.Vector], java.util.Collection), var730_bootstrap$/-1385992670=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava], java.util.function.Consumer), var3272_peek/-1564289730=([java.util.stream.Stream, java.util.function.Consumer], java.util.stream.Stream), var3700_bootstrap$/-1597737225=([], java.util.function.Function), var3272_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var2603_joining/-1302177485=([java.lang.CharSequence], java.util.stream.Collector), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3272_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var1928-to-String=([java.lang.Object], java.lang.String), arr-var1928-init=([], java.lang.Object[]), size/-1825798970=([java.util.Vector], int), cast-from-String-to-var1928=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var381=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter, var768=r18, var1990=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC, var3961=r0, var2657=java.util.Vector, var3421=r7, var396=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava, var2515=r2, var1080=$r1, var3021=$r4, var1349=$r3, var1494=$r5, var750=$r6, var1311=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var205=3, var3272=java.util.stream.Stream, var831=java.util.Collection, var1849=$r9, var1374=java.util.function.Consumer, var730=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_0__331, var43=$r8, var2385=$r11, var3983=java.util.function.Function, var3700=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_1__332, var3954=$r10, var3576=$r13, var3002=java.util.stream.Collector, var2603=java.util.stream.Collectors, var1832=$r12, var1928=java.lang.Object, var1505=$r14, var2187=r15, var2960=$r16, var424=$i0, var950=$r19, var3373=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter=var381, r18=var768, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC=var1990, r0=var3961, java.util.Vector=var2657, r7=var3421, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava=var396, r2=var2515, $r1=var1080, $r4=var3021, $r3=var1349, $r5=var1494, $r6=var750, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1311, 3=var205, java.util.stream.Stream=var3272, java.util.Collection=var831, $r9=var1849, java.util.function.Consumer=var1374, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_0__331=var730, $r8=var43, $r11=var2385, java.util.function.Function=var3983, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_1__332=var3700, $r10=var3954, $r13=var3576, java.util.stream.Collector=var3002, java.util.stream.Collectors=var2603, $r12=var1832, java.lang.Object=var1928, $r14=var1505, r15=var2187, $r16=var2960, $i0=var424, $r19=var950, $r17=var3373}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r18 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC;	r7 := @parameter1: java.util.Vector;	r2 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: java.lang.String describeJavaCommand()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: void log(java.lang.String,int)>($r6, 3);	$r9 = virtualinvoke r7.<java.util.Vector: java.util.stream.Stream stream()>();	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_0__331: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava)>(r2);	$r11 = interfaceinvoke $r9.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r8);	$r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_1__332: java.util.function.Function bootstrap$()>();	$r13 = interfaceinvoke $r11.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r10);	$r12 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("");	$r14 = interfaceinvoke $r13.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r12);	r15 = (java.lang.String) $r14;	$r16 = newarray (java.lang.Object)[2];	$i0 = virtualinvoke r7.<java.util.Vector: int size()>();	if $i0 != 1 goto $r19 = "s";	$r19 = "";	goto [?= $r16[0] = $r19];	$r16[0] = $r19;	$r16[1] = r15;	$r17 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("File%s to be compiled:%n%s", $r16);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: void log(java.lang.String,int)>($r17, 3);	return
;block_num 3