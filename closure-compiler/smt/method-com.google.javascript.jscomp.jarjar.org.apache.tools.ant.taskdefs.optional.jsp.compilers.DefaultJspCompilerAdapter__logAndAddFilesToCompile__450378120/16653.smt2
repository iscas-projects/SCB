(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var866 0)
(declare-sort var1083 0)
(declare-sort var3638 0)
(declare-sort var811 0)
(declare-sort var1312 0)
(declare-sort var1616 0)
(declare-sort var893 0)
(declare-sort var3582 0)
(declare-sort var2834 0)
(declare-sort var2651 0)
(declare-sort var3909 0)
(declare-sort var997 0)
(declare-sort var699 0)
(declare-sort var300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun describeJavaCommand/-990610805 (var811) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1312 String Int) void)
(declare-fun cast-from-var1083-to-var1312 (var1083) var1312)
(declare-fun stream/-1288525013 (var893) var1616)
(declare-fun cast-from-var3638-to-var893 (var3638) var893)
(declare-fun var2834_bootstrap$/-1385992670 (var811) var3582)
(declare-fun var1616_peek/-1564289730 (var1616 var3582) var1616)
(declare-fun var3909_bootstrap$/-1597737225 () var2651)
(declare-fun var1616_map/130902797 (var1616 var2651) var1616)
(declare-fun var699_joining/-1302177485 (String) var997)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1616_collect/-2050842585 (var1616 var997) var300)
(declare-fun cast-from-var300-to-String (var300) String)
(declare-fun arr-var300-init () (Array Int var300))
(declare-fun size/-1825798970 (var3638) Int)
(declare-fun cast-from-String-to-var300 (String) var300)
(declare-fun String_format/1339386452 (String (Array Int var300)) String)
(declare-const null-var866 var866)
(declare-const null-var1083 var1083)
(declare-const null-var3638 var3638)
(declare-const null-var811 var811)
(declare-const null-__Array__Int__var300__ (Array Int var300))
(declare-const var2502 var866) ; Statement: r18 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter 
(assert (not (= var2502 null-var866)))
(declare-const var2810 var1083) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC 
(assert (not (= var2810 null-var1083)))
(declare-const var3892 var3638) ; Statement: r7 := @parameter1: java.util.Vector 
(assert (not (= var3892 null-var3638)))
(declare-const var169 var811) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava 
(assert (not (= var169 null-var811)))
(define-const var1936 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1936)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1936!1 String)
(assert (= var1936!1 ""))
(assert true)
(define-const var2080 String (append/672562846 var1936!1 "Compilation ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ") 
(declare-const var1936!2 String)
(assert (= var1936!2 (str.++ var1936!1 "Compilation ")))
(assert true)
(define-const var382 String (describeJavaCommand/-990610805 var169)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: java.lang.String describeJavaCommand()>() 
(assert true)
(define-const var1638 String (append/672562846 var2080 var382)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2080!1 String)
(assert (= var2080!1 (str.++ var2080 var382)))
(assert true)
(define-const var1630 String (toString/-2075883882 var1638)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1083-to-var1312 var2810) var1630 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: void log(java.lang.String,int)>($r6, 3) 

(declare-const var2810!1 var1083)
(declare-const var1630!1 String)
(declare-const var2923 Int)
(assert true)
(define-const var1701 var1616 (stream/-1288525013 (cast-from-var3638-to-var893 var3892))) ; Statement: $r9 = virtualinvoke r7.<java.util.Vector: java.util.stream.Stream stream()>() 
(define-const var2107 var3582 (var2834_bootstrap$/-1385992670 var169)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_0__331: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava)>(r2) 
(define-const var864 var1616 (var1616_peek/-1564289730 var1701 var2107)) ; Statement: $r11 = interfaceinvoke $r9.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r8) 
(define-const var2366 var2651 var3909_bootstrap$/-1597737225) ; Statement: $r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_1__332: java.util.function.Function bootstrap$()>() 
(define-const var2824 var1616 (var1616_map/130902797 var864 var2366)) ; Statement: $r13 = interfaceinvoke $r11.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r10) 
(define-const var2647 var997 (var699_joining/-1302177485 (cast-from-String-to-String ""))) ; Statement: $r12 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("") 
(define-const var3042 var300 (var1616_collect/-2050842585 var2824 var2647)) ; Statement: $r14 = interfaceinvoke $r13.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r12) 
(define-const var2193 String (cast-from-var300-to-String var3042)) ; Statement: r15 = (java.lang.String) $r14 
(define-const var72 (Array Int var300) arr-var300-init) ; Statement: $r16 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var2998 Int (size/-1825798970 var3892)) ; Statement: $i0 = virtualinvoke r7.<java.util.Vector: int size()>() 
 ; Statement: if $i0 != 1 goto $r19 = "s" 
(assert (not (= var2998 1))) ; Cond: $i0 != 1 
(define-const var1440 String "s") ; Statement: $r19 = "s" 
(assert true) ; Non Conditional
(declare-const var72!1 (Array Int var300))
(assert (not (= var72!1 null-__Array__Int__var300__)))
(assert (= (select var72!1 0) (cast-from-String-to-var300 var1440))) ; Statement: $r16[0] = $r19 
(declare-const var72!2 (Array Int var300))
(assert (not (= var72!2 null-__Array__Int__var300__)))
(assert (= (select var72!2 1) (cast-from-String-to-var300 var2193))) ; Statement: $r16[1] = r15 
(define-const var3224 String (String_format/1339386452 "File%s to be compiled:%n%s" var72!2)) ; Statement: $r17 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("File%s to be compiled:%n%s", $r16) 
(assert true)
;(assert (log/456963423 (cast-from-var1083-to-var1312 var2810!1) var3224 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: void log(java.lang.String,int)>($r17, 3) 

(declare-const var2810!2 var1083)
(declare-const var3224!1 String)
(declare-const var2923!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), describeJavaCommand/-990610805=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1083-to-var1312=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var3638-to-var893=([java.util.Vector], java.util.Collection), var2834_bootstrap$/-1385992670=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava], java.util.function.Consumer), var1616_peek/-1564289730=([java.util.stream.Stream, java.util.function.Consumer], java.util.stream.Stream), var3909_bootstrap$/-1597737225=([], java.util.function.Function), var1616_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var699_joining/-1302177485=([java.lang.CharSequence], java.util.stream.Collector), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1616_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var300-to-String=([java.lang.Object], java.lang.String), arr-var300-init=([], java.lang.Object[]), size/-1825798970=([java.util.Vector], int), cast-from-String-to-var300=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var866=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter, var2502=r18, var1083=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC, var2810=r0, var3638=java.util.Vector, var3892=r7, var811=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava, var169=r2, var1936=$r1, var2080=$r4, var382=$r3, var1638=$r5, var1630=$r6, var1312=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2923=3, var1616=java.util.stream.Stream, var893=java.util.Collection, var1701=$r9, var3582=java.util.function.Consumer, var2834=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_0__331, var2107=$r8, var864=$r11, var2651=java.util.function.Function, var3909=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_1__332, var2366=$r10, var2824=$r13, var997=java.util.stream.Collector, var699=java.util.stream.Collectors, var2647=$r12, var300=java.lang.Object, var3042=$r14, var2193=r15, var72=$r16, var2998=$i0, var1440=$r19, var3224=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter=var866, r18=var2502, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC=var1083, r0=var2810, java.util.Vector=var3638, r7=var3892, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava=var811, r2=var169, $r1=var1936, $r4=var2080, $r3=var382, $r5=var1638, $r6=var1630, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1312, 3=var2923, java.util.stream.Stream=var1616, java.util.Collection=var893, $r9=var1701, java.util.function.Consumer=var3582, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_0__331=var2834, $r8=var2107, $r11=var864, java.util.function.Function=var2651, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_1__332=var3909, $r10=var2366, $r13=var2824, java.util.stream.Collector=var997, java.util.stream.Collectors=var699, $r12=var2647, java.lang.Object=var300, $r14=var3042, r15=var2193, $r16=var72, $i0=var2998, $r19=var1440, $r17=var3224}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r18 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC;	r7 := @parameter1: java.util.Vector;	r2 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: java.lang.String describeJavaCommand()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: void log(java.lang.String,int)>($r6, 3);	$r9 = virtualinvoke r7.<java.util.Vector: java.util.stream.Stream stream()>();	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_0__331: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava)>(r2);	$r11 = interfaceinvoke $r9.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r8);	$r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.DefaultJspCompilerAdapter$lambda_logAndAddFilesToCompile_1__332: java.util.function.Function bootstrap$()>();	$r13 = interfaceinvoke $r11.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r10);	$r12 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("");	$r14 = interfaceinvoke $r13.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r12);	r15 = (java.lang.String) $r14;	$r16 = newarray (java.lang.Object)[2];	$i0 = virtualinvoke r7.<java.util.Vector: int size()>();	if $i0 != 1 goto $r19 = "s";	$r19 = "s";	$r16[0] = $r19;	$r16[1] = r15;	$r17 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("File%s to be compiled:%n%s", $r16);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: void log(java.lang.String,int)>($r17, 3);	return
;block_num 3