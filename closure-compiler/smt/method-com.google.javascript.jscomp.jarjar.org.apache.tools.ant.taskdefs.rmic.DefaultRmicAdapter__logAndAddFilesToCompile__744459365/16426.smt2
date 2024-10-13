(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2290 0)
(declare-sort var2643 0)
(declare-sort var1331 0)
(declare-sort var3440 0)
(declare-sort var97 0)
(declare-sort var1179 0)
(declare-sort var2189 0)
(declare-sort var1235 0)
(declare-sort var258 0)
(declare-sort var1497 0)
(declare-sort var2499 0)
(declare-sort var1885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1982899882 (var2290) var1331)
(declare-fun getCompileList/-981817416 (var1331) var3440)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun describeArguments/-1721057376 (var2643) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var97 String Int) void)
(declare-fun cast-from-var1331-to-var97 (var1331) var97)
(declare-fun size/-1825798970 (var3440) Int)
(declare-fun stream/-1288525013 (var2189) var1179)
(declare-fun cast-from-var3440-to-var2189 (var3440) var2189)
(declare-fun var258_bootstrap$/-878275598 (var2643) var1235)
(declare-fun var1179_peek/-1564289730 (var1179 var1235) var1179)
(declare-fun var2499_joining/-1302177485 (String) var1497)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1179_collect/-2050842585 (var1179 var1497) var1885)
(declare-fun cast-from-var1885-to-String (var1885) String)
(declare-const null-var2290 var2290)
(declare-const null-var2643 var2643)
(declare-const var3562 var2290) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter 
(assert (not (= var3562 null-var2290)))
(declare-const var582 var2643) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert (not (= var582 null-var2643)))
(define-const var2364 var1331 (attributes/-1982899882 var3562)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes> 
(assert true)
(define-const var840 var3440 (getCompileList/-981817416 var2364)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: java.util.Vector getCompileList()>() 
(define-const var2827 var1331 (attributes/-1982899882 var3562)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes> 
(define-const var3454 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3454)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3454!1 String)
(assert (= var3454!1 ""))
(assert true)
(define-const var3714 String (append/672562846 var3454!1 "Compilation ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ") 
(declare-const var3454!2 String)
(assert (= var3454!2 (str.++ var3454!1 "Compilation ")))
(assert true)
(define-const var3496 String (describeArguments/-1721057376 var582)) ; Statement: $r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeArguments()>() 
(assert true)
(define-const var2919 String (append/672562846 var3714 var3496)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3714!1 String)
(assert (= var3714!1 (str.++ var3714 var3496)))
(assert true)
(define-const var1084 String (toString/-2075883882 var2919)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1331-to-var97 var2827) var1084 3)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r9, 3) 

(declare-const var2827!1 var1331)
(declare-const var1084!1 String)
(declare-const var305 Int)
(define-const var3546 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3546)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3546!1 String)
(assert (= var3546!1 ""))
(assert true)
(define-const var3636 Int (size/-1825798970 var840)) ; Statement: $i0 = virtualinvoke r2.<java.util.Vector: int size()>() 
 ; Statement: if $i0 != 1 goto $r22 = "Files" 
(assert (not (= var3636 1))) ; Cond: $i0 != 1 
(define-const var720 String "Files") ; Statement: $r22 = "Files" 
(assert true) ; Non Conditional
(assert true)
(define-const var2864 String (append/672562846 var3546!1 var720)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3546!2 String)
(assert (= var3546!2 (str.++ var3546!1 var720)))
(assert true)
(define-const var978 String (append/672562846 var2864 " to be compiled:")) ; Statement: $r18 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to be compiled:") 
(declare-const var2864!1 String)
(assert (= var2864!1 (str.++ var2864 " to be compiled:")))
(assert true)
(define-const var678 var1179 (stream/-1288525013 (cast-from-var3440-to-var2189 var840))) ; Statement: $r13 = virtualinvoke r2.<java.util.Vector: java.util.stream.Stream stream()>() 
(define-const var3045 var1235 (var258_bootstrap$/-878275598 var582)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter$lambda_logAndAddFilesToCompile_0__316: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>(r5) 
(define-const var3560 var1179 (var1179_peek/-1564289730 var678 var3045)) ; Statement: $r15 = interfaceinvoke $r13.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r12) 
(define-const var3165 var1497 (var2499_joining/-1302177485 (cast-from-String-to-String "    "))) ; Statement: $r14 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("    ") 
(define-const var2609 var1885 (var1179_collect/-2050842585 var3560 var3165)) ; Statement: $r16 = interfaceinvoke $r15.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r14) 
(define-const var42 String (cast-from-var1885-to-String var2609)) ; Statement: $r17 = (java.lang.String) $r16 
(assert true)
(define-const var3633 String (append/672562846 var978 var42)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var978!1 String)
(assert (= var978!1 (str.++ var978 var42)))
(assert true)
(define-const var208 String (toString/-2075883882 var3633)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2920 var1331 (attributes/-1982899882 var3562)) ; Statement: $r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes> 
(assert true)
;(assert (log/456963423 (cast-from-var1331-to-var97 var2920) var208 3)) ; Statement: virtualinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r21, 3) 

(declare-const var2920!1 var1331)
(declare-const var208!1 String)
(declare-const var305!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1982899882=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic), getCompileList/-981817416=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic], java.util.Vector), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), describeArguments/-1721057376=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1331-to-var97=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), size/-1825798970=([java.util.Vector], int), stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var3440-to-var2189=([java.util.Vector], java.util.Collection), var258_bootstrap$/-878275598=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.util.function.Consumer), var1179_peek/-1564289730=([java.util.stream.Stream, java.util.function.Consumer], java.util.stream.Stream), var2499_joining/-1302177485=([java.lang.CharSequence], java.util.stream.Collector), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1179_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var1885-to-String=([java.lang.Object], java.lang.String)}
; {var2290=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter, var3562=r0, var2643=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var582=r5, var1331=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic, var2364=$r1, var3440=java.util.Vector, var840=r2, var2827=$r4, var3454=$r3, var3714=$r7, var3496=$r6, var2919=$r8, var1084=$r9, var97=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var305=3, var3546=$r10, var3636=$i0, var720=$r22, var2864=$r11, var978=$r18, var1179=java.util.stream.Stream, var2189=java.util.Collection, var678=$r13, var1235=java.util.function.Consumer, var258=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter$lambda_logAndAddFilesToCompile_0__316, var3045=$r12, var3560=$r15, var1497=java.util.stream.Collector, var2499=java.util.stream.Collectors, var3165=$r14, var1885=java.lang.Object, var2609=$r16, var42=$r17, var3633=$r19, var208=$r21, var2920=$r20}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter=var2290, r0=var3562, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var2643, r5=var582, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic=var1331, $r1=var2364, java.util.Vector=var3440, r2=var840, $r4=var2827, $r3=var3454, $r7=var3714, $r6=var3496, $r8=var2919, $r9=var1084, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var97, 3=var305, $r10=var3546, $i0=var3636, $r22=var720, $r11=var2864, $r18=var978, java.util.stream.Stream=var1179, java.util.Collection=var2189, $r13=var678, java.util.function.Consumer=var1235, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter$lambda_logAndAddFilesToCompile_0__316=var258, $r12=var3045, $r15=var3560, java.util.stream.Collector=var1497, java.util.stream.Collectors=var2499, $r14=var3165, java.lang.Object=var1885, $r16=var2609, $r17=var42, $r19=var3633, $r21=var208, $r20=var2920}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter;	r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: java.util.Vector getCompileList()>();	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ");	$r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeArguments()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r9, 3);	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r2.<java.util.Vector: int size()>();	if $i0 != 1 goto $r22 = "Files";	$r22 = "Files";	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r18 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to be compiled:");	$r13 = virtualinvoke r2.<java.util.Vector: java.util.stream.Stream stream()>();	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter$lambda_logAndAddFilesToCompile_0__316: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>(r5);	$r15 = interfaceinvoke $r13.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r12);	$r14 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("    ");	$r16 = interfaceinvoke $r15.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r14);	$r17 = (java.lang.String) $r16;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes>;	virtualinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r21, 3);	return
;block_num 3