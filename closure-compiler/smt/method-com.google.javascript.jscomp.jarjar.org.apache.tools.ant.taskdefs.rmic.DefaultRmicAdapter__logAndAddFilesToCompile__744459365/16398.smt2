(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2592 0)
(declare-sort var3199 0)
(declare-sort var1087 0)
(declare-sort var496 0)
(declare-sort var3506 0)
(declare-sort var563 0)
(declare-sort var1484 0)
(declare-sort var3029 0)
(declare-sort var2389 0)
(declare-sort var2565 0)
(declare-sort var1699 0)
(declare-sort var2042 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1982899882 (var2592) var1087)
(declare-fun getCompileList/-981817416 (var1087) var496)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun describeArguments/-1721057376 (var3199) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3506 String Int) void)
(declare-fun cast-from-var1087-to-var3506 (var1087) var3506)
(declare-fun size/-1825798970 (var496) Int)
(declare-fun stream/-1288525013 (var1484) var563)
(declare-fun cast-from-var496-to-var1484 (var496) var1484)
(declare-fun var2389_bootstrap$/-878275598 (var3199) var3029)
(declare-fun var563_peek/-1564289730 (var563 var3029) var563)
(declare-fun var1699_joining/-1302177485 (String) var2565)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var563_collect/-2050842585 (var563 var2565) var2042)
(declare-fun cast-from-var2042-to-String (var2042) String)
(declare-const null-var2592 var2592)
(declare-const null-var3199 var3199)
(declare-const var3602 var2592) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter 
(assert (not (= var3602 null-var2592)))
(declare-const var1284 var3199) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert (not (= var1284 null-var3199)))
(define-const var2144 var1087 (attributes/-1982899882 var3602)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes> 
(assert true)
(define-const var3818 var496 (getCompileList/-981817416 var2144)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: java.util.Vector getCompileList()>() 
(define-const var553 var1087 (attributes/-1982899882 var3602)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes> 
(define-const var3455 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3455)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3455!1 String)
(assert (= var3455!1 ""))
(assert true)
(define-const var2414 String (append/672562846 var3455!1 "Compilation ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ") 
(declare-const var3455!2 String)
(assert (= var3455!2 (str.++ var3455!1 "Compilation ")))
(assert true)
(define-const var1337 String (describeArguments/-1721057376 var1284)) ; Statement: $r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeArguments()>() 
(assert true)
(define-const var1107 String (append/672562846 var2414 var1337)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 var1337)))
(assert true)
(define-const var850 String (toString/-2075883882 var1107)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1087-to-var3506 var553) var850 3)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r9, 3) 

(declare-const var553!1 var1087)
(declare-const var850!1 String)
(declare-const var3870 Int)
(define-const var381 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var381)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var381!1 String)
(assert (= var381!1 ""))
(assert true)
(define-const var3069 Int (size/-1825798970 var3818)) ; Statement: $i0 = virtualinvoke r2.<java.util.Vector: int size()>() 
 ; Statement: if $i0 != 1 goto $r22 = "Files" 
(assert (not (not (= var3069 1)))) ; Negate: Cond: $i0 != 1  
(define-const var913 String "File") ; Statement: $r22 = "File" 
 ; Statement: goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2058 String (append/672562846 var381!1 var913)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var381!2 String)
(assert (= var381!2 (str.++ var381!1 var913)))
(assert true)
(define-const var1832 String (append/672562846 var2058 " to be compiled:")) ; Statement: $r18 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to be compiled:") 
(declare-const var2058!1 String)
(assert (= var2058!1 (str.++ var2058 " to be compiled:")))
(assert true)
(define-const var3240 var563 (stream/-1288525013 (cast-from-var496-to-var1484 var3818))) ; Statement: $r13 = virtualinvoke r2.<java.util.Vector: java.util.stream.Stream stream()>() 
(define-const var1956 var3029 (var2389_bootstrap$/-878275598 var1284)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter$lambda_logAndAddFilesToCompile_0__316: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>(r5) 
(define-const var13 var563 (var563_peek/-1564289730 var3240 var1956)) ; Statement: $r15 = interfaceinvoke $r13.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r12) 
(define-const var3451 var2565 (var1699_joining/-1302177485 (cast-from-String-to-String "    "))) ; Statement: $r14 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("    ") 
(define-const var3008 var2042 (var563_collect/-2050842585 var13 var3451)) ; Statement: $r16 = interfaceinvoke $r15.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r14) 
(define-const var2227 String (cast-from-var2042-to-String var3008)) ; Statement: $r17 = (java.lang.String) $r16 
(assert true)
(define-const var3894 String (append/672562846 var1832 var2227)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1832!1 String)
(assert (= var1832!1 (str.++ var1832 var2227)))
(assert true)
(define-const var2462 String (toString/-2075883882 var3894)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2222 var1087 (attributes/-1982899882 var3602)) ; Statement: $r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes> 
(assert true)
;(assert (log/456963423 (cast-from-var1087-to-var3506 var2222) var2462 3)) ; Statement: virtualinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r21, 3) 

(declare-const var2222!1 var1087)
(declare-const var2462!1 String)
(declare-const var3870!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1982899882=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic), getCompileList/-981817416=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic], java.util.Vector), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), describeArguments/-1721057376=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1087-to-var3506=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), size/-1825798970=([java.util.Vector], int), stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var496-to-var1484=([java.util.Vector], java.util.Collection), var2389_bootstrap$/-878275598=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.util.function.Consumer), var563_peek/-1564289730=([java.util.stream.Stream, java.util.function.Consumer], java.util.stream.Stream), var1699_joining/-1302177485=([java.lang.CharSequence], java.util.stream.Collector), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var563_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var2042-to-String=([java.lang.Object], java.lang.String)}
; {var2592=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter, var3602=r0, var3199=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var1284=r5, var1087=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic, var2144=$r1, var496=java.util.Vector, var3818=r2, var553=$r4, var3455=$r3, var2414=$r7, var1337=$r6, var1107=$r8, var850=$r9, var3506=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3870=3, var381=$r10, var3069=$i0, var913=$r22, var2058=$r11, var1832=$r18, var563=java.util.stream.Stream, var1484=java.util.Collection, var3240=$r13, var3029=java.util.function.Consumer, var2389=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter$lambda_logAndAddFilesToCompile_0__316, var1956=$r12, var13=$r15, var2565=java.util.stream.Collector, var1699=java.util.stream.Collectors, var3451=$r14, var2042=java.lang.Object, var3008=$r16, var2227=$r17, var3894=$r19, var2462=$r21, var2222=$r20}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter=var2592, r0=var3602, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var3199, r5=var1284, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic=var1087, $r1=var2144, java.util.Vector=var496, r2=var3818, $r4=var553, $r3=var3455, $r7=var2414, $r6=var1337, $r8=var1107, $r9=var850, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3506, 3=var3870, $r10=var381, $i0=var3069, $r22=var913, $r11=var2058, $r18=var1832, java.util.stream.Stream=var563, java.util.Collection=var1484, $r13=var3240, java.util.function.Consumer=var3029, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter$lambda_logAndAddFilesToCompile_0__316=var2389, $r12=var1956, $r15=var13, java.util.stream.Collector=var2565, java.util.stream.Collectors=var1699, $r14=var3451, java.lang.Object=var2042, $r16=var3008, $r17=var2227, $r19=var3894, $r21=var2462, $r20=var2222}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter;	r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: java.util.Vector getCompileList()>();	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ");	$r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeArguments()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r9, 3);	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r2.<java.util.Vector: int size()>();	if $i0 != 1 goto $r22 = "Files";	$r22 = "File";	goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r18 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to be compiled:");	$r13 = virtualinvoke r2.<java.util.Vector: java.util.stream.Stream stream()>();	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter$lambda_logAndAddFilesToCompile_0__316: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>(r5);	$r15 = interfaceinvoke $r13.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r12);	$r14 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("    ");	$r16 = interfaceinvoke $r15.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r14);	$r17 = (java.lang.String) $r16;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic attributes>;	virtualinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r21, 3);	return
;block_num 3