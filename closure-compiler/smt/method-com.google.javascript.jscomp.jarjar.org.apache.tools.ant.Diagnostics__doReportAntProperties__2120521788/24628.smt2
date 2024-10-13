(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3169 0)
(declare-sort var304 0)
(declare-sort var2381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var304-init () var304)
(declare-fun <init>/1766247163 (var304) void)
(declare-fun initProperties/1179971946 (var304) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProperty/-1126216426 (var304 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3169 String) void)
(declare-fun var2381_isApacheHarmony/911347068 () Bool)
(declare-fun var2381_isKaffe/1376613989 () Bool)
(declare-fun var2381_isGij/-239716276 () Bool)
(declare-const null-var3169 var3169)
(declare-const var356 var3169) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var356 null-var3169)))
(define-const var2178 var304 var304-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert true)
;(assert (<init>/1766247163 var2178)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>() 

(declare-const var2178!1 var304)
(assert true)
;(assert (initProperties/1179971946 var2178!1)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void initProperties()>() 

(declare-const var2178!2 var304)
(define-const var1408 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1408)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1408!1 String)
(assert (= var1408!1 ""))
(assert true)
(define-const var3120 String (append/672562846 var1408!1 "ant.version: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.version: ") 
(declare-const var1408!2 String)
(assert (= var1408!2 (str.++ var1408!1 "ant.version: ")))
(assert true)
(define-const var3003 String (getProperty/-1126216426 var2178!2 "ant.version")) ; Statement: $r3 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version") 
(assert true)
(define-const var1979 String (append/672562846 var3120 var3003)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3120!1 String)
(assert (= var3120!1 (str.++ var3120 var3003)))
(assert true)
(define-const var3884 String (toString/-2075883882 var1979)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var356 var3884)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var356!1 var3169)
(declare-const var3884!1 String)
(define-const var1937 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1937)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1937!1 String)
(assert (= var1937!1 ""))
(assert true)
(define-const var3224 String (append/672562846 var1937!1 "ant.java.version: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.java.version: ") 
(declare-const var1937!2 String)
(assert (= var1937!2 (str.++ var1937!1 "ant.java.version: ")))
(assert true)
(define-const var2945 String (getProperty/-1126216426 var2178!2 "ant.java.version")) ; Statement: $r8 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.java.version") 
(assert true)
(define-const var147 String (append/672562846 var3224 var2945)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3224!1 String)
(assert (= var3224!1 (str.++ var3224 var2945)))
(assert true)
(define-const var1239 String (toString/-2075883882 var147)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var356!1 var1239)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r11) 

(declare-const var356!2 var3169)
(declare-const var1239!1 String)
(define-const var3573 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3573)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3573!1 String)
(assert (= var3573!1 ""))
(assert true)
(define-const var2273 String (append/672562846 var3573!1 "Is this the Apache Harmony VM? ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Apache Harmony VM? ") 
(declare-const var3573!2 String)
(assert (= var3573!2 (str.++ var3573!1 "Is this the Apache Harmony VM? ")))
(define-const var817 Bool var2381_isApacheHarmony/911347068) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isApacheHarmony()>() 
 ; Statement: if $z0 == 0 goto $r34 = "no" 
(assert (not (= (ite var817 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1000 String "yes") ; Statement: $r34 = "yes" 
 ; Statement: goto [?= $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1111 String (append/672562846 var2273 var1000)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var2273!1 String)
(assert (= var2273!1 (str.++ var2273 var1000)))
(assert true)
(define-const var2802 String (toString/-2075883882 var1111)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var356!2 var2802)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var356!3 var3169)
(declare-const var2802!1 String)
(define-const var2148 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2148)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2148!1 String)
(assert (= var2148!1 ""))
(assert true)
(define-const var1865 String (append/672562846 var2148!1 "Is this the Kaffe VM? ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Kaffe VM? ") 
(declare-const var2148!2 String)
(assert (= var2148!2 (str.++ var2148!1 "Is this the Kaffe VM? ")))
(define-const var794 Bool var2381_isKaffe/1376613989) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>() 
 ; Statement: if $z1 == 0 goto $r35 = "no" 
(assert (= (ite var794 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2590 String "no") ; Statement: $r35 = "no" 
(assert true) ; Non Conditional
(assert true)
(define-const var1054 String (append/672562846 var1865 var2590)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var1865!1 String)
(assert (= var1865!1 (str.++ var1865 var2590)))
(assert true)
(define-const var3812 String (toString/-2075883882 var1054)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var356!3 var3812)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r19) 

(declare-const var356!4 var3169)
(declare-const var3812!1 String)
(define-const var1032 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1032)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1032!1 String)
(assert (= var1032!1 ""))
(assert true)
(define-const var3426 String (append/672562846 var1032!1 "Is this gij/gcj? ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this gij/gcj? ") 
(declare-const var1032!2 String)
(assert (= var1032!2 (str.++ var1032!1 "Is this gij/gcj? ")))
(define-const var266 Bool var2381_isGij/-239716276) ; Statement: $z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>() 
 ; Statement: if $z2 == 0 goto $r36 = "no" 
(assert (not (= (ite var266 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1280 String "yes") ; Statement: $r36 = "yes" 
 ; Statement: goto [?= $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1963 String (append/672562846 var3426 var1280)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var3426!1 String)
(assert (= var3426!1 (str.++ var3426 var1280)))
(assert true)
(define-const var2103 String (toString/-2075883882 var1963)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var356!4 var2103)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r23) 

(declare-const var356!5 var3169)
(declare-const var2103!1 String)
(define-const var608 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var608)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var608!1 String)
(assert (= var608!1 ""))
(assert true)
(define-const var302 String (append/672562846 var608!1 "ant.core.lib: ")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.core.lib: ") 
(declare-const var608!2 String)
(assert (= var608!2 (str.++ var608!1 "ant.core.lib: ")))
(assert true)
(define-const var2661 String (getProperty/-1126216426 var2178!2 "ant.core.lib")) ; Statement: $r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.core.lib") 
(assert true)
(define-const var1640 String (append/672562846 var302 var2661)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var302!1 String)
(assert (= var302!1 (str.++ var302 var2661)))
(assert true)
(define-const var535 String (toString/-2075883882 var1640)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var356!5 var535)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r28) 

(declare-const var356!6 var3169)
(declare-const var535!1 String)
(define-const var234 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var234)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var234!1 String)
(assert (= var234!1 ""))
(assert true)
(define-const var2995 String (append/672562846 var234!1 "ant.home: ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ") 
(declare-const var234!2 String)
(assert (= var234!2 (str.++ var234!1 "ant.home: ")))
(assert true)
(define-const var1402 String (getProperty/-1126216426 var2178!2 "ant.home")) ; Statement: $r30 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.home") 
(assert true)
(define-const var2616 String (append/672562846 var2995 var1402)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var2995!1 String)
(assert (= var2995!1 (str.++ var2995 var1402)))
(assert true)
(define-const var3768 String (toString/-2075883882 var2616)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var356!6 var3768)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r33) 

(declare-const var356!7 var3169)
(declare-const var3768!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var304-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), <init>/1766247163=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), initProperties/1179971946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2381_isApacheHarmony/911347068=([], boolean), var2381_isKaffe/1376613989=([], boolean), var2381_isGij/-239716276=([], boolean)}
; {var3169=java.io.PrintStream, var356=r1, var304=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2178=$r0, var1408=$r2, var3120=$r4, var3003=$r3, var1979=$r5, var3884=$r6, var1937=$r7, var3224=$r9, var2945=$r8, var147=$r10, var1239=$r11, var3573=$r12, var2273=$r13, var2381=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var817=$z0, var1000=$r34, var1111=$r14, var2802=$r15, var2148=$r16, var1865=$r17, var794=$z1, var2590=$r35, var1054=$r18, var3812=$r19, var1032=$r20, var3426=$r21, var266=$z2, var1280=$r36, var1963=$r22, var2103=$r23, var608=$r24, var302=$r26, var2661=$r25, var1640=$r27, var535=$r28, var234=$r29, var2995=$r31, var1402=$r30, var2616=$r32, var3768=$r33}
; {java.io.PrintStream=var3169, r1=var356, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var304, $r0=var2178, $r2=var1408, $r4=var3120, $r3=var3003, $r5=var1979, $r6=var3884, $r7=var1937, $r9=var3224, $r8=var2945, $r10=var147, $r11=var1239, $r12=var3573, $r13=var2273, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var2381, $z0=var817, $r34=var1000, $r14=var1111, $r15=var2802, $r16=var2148, $r17=var1865, $z1=var794, $r35=var2590, $r18=var1054, $r19=var3812, $r20=var1032, $r21=var3426, $z2=var266, $r36=var1280, $r22=var1963, $r23=var2103, $r24=var608, $r26=var302, $r25=var2661, $r27=var1640, $r28=var535, $r29=var234, $r31=var2995, $r30=var1402, $r32=var2616, $r33=var3768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 14,"<java.lang.StringBuilder: java.lang.String toString()>": 7}
;stmts r1 := @parameter0: java.io.PrintStream;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void initProperties()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.version: ");	$r3 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.java.version: ");	$r8 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.java.version");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Apache Harmony VM? ");	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isApacheHarmony()>();	if $z0 == 0 goto $r34 = "no";	$r34 = "yes";	goto [?= $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34)];	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r15);	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Kaffe VM? ");	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>();	if $z1 == 0 goto $r35 = "no";	$r35 = "no";	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r19);	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this gij/gcj? ");	$z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>();	if $z2 == 0 goto $r36 = "no";	$r36 = "yes";	goto [?= $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36)];	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r23);	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.core.lib: ");	$r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.core.lib");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r28);	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ");	$r30 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.home");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r33);	return
;block_num 7