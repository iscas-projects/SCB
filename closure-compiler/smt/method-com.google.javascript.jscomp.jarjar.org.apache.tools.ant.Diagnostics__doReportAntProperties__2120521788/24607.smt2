(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var355 0)
(declare-sort var3857 0)
(declare-sort var3469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3857-init () var3857)
(declare-fun <init>/1766247163 (var3857) void)
(declare-fun initProperties/1179971946 (var3857) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProperty/-1126216426 (var3857 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var355 String) void)
(declare-fun var3469_isApacheHarmony/911347068 () Bool)
(declare-fun var3469_isKaffe/1376613989 () Bool)
(declare-fun var3469_isGij/-239716276 () Bool)
(declare-const null-var355 var355)
(declare-const var3790 var355) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var3790 null-var355)))
(define-const var1543 var3857 var3857-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert true)
;(assert (<init>/1766247163 var1543)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>() 

(declare-const var1543!1 var3857)
(assert true)
;(assert (initProperties/1179971946 var1543!1)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void initProperties()>() 

(declare-const var1543!2 var3857)
(define-const var3864 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3864)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3864!1 String)
(assert (= var3864!1 ""))
(assert true)
(define-const var3217 String (append/672562846 var3864!1 "ant.version: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.version: ") 
(declare-const var3864!2 String)
(assert (= var3864!2 (str.++ var3864!1 "ant.version: ")))
(assert true)
(define-const var796 String (getProperty/-1126216426 var1543!2 "ant.version")) ; Statement: $r3 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version") 
(assert true)
(define-const var2224 String (append/672562846 var3217 var796)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3217!1 String)
(assert (= var3217!1 (str.++ var3217 var796)))
(assert true)
(define-const var2371 String (toString/-2075883882 var2224)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3790 var2371)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var3790!1 var355)
(declare-const var2371!1 String)
(define-const var1568 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1568)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1568!1 String)
(assert (= var1568!1 ""))
(assert true)
(define-const var2612 String (append/672562846 var1568!1 "ant.java.version: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.java.version: ") 
(declare-const var1568!2 String)
(assert (= var1568!2 (str.++ var1568!1 "ant.java.version: ")))
(assert true)
(define-const var521 String (getProperty/-1126216426 var1543!2 "ant.java.version")) ; Statement: $r8 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.java.version") 
(assert true)
(define-const var125 String (append/672562846 var2612 var521)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2612!1 String)
(assert (= var2612!1 (str.++ var2612 var521)))
(assert true)
(define-const var2788 String (toString/-2075883882 var125)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3790!1 var2788)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r11) 

(declare-const var3790!2 var355)
(declare-const var2788!1 String)
(define-const var1636 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1636)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1636!1 String)
(assert (= var1636!1 ""))
(assert true)
(define-const var2326 String (append/672562846 var1636!1 "Is this the Apache Harmony VM? ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Apache Harmony VM? ") 
(declare-const var1636!2 String)
(assert (= var1636!2 (str.++ var1636!1 "Is this the Apache Harmony VM? ")))
(define-const var2787 Bool var3469_isApacheHarmony/911347068) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isApacheHarmony()>() 
 ; Statement: if $z0 == 0 goto $r34 = "no" 
(assert (not (= (ite var2787 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var715 String "yes") ; Statement: $r34 = "yes" 
 ; Statement: goto [?= $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3562 String (append/672562846 var2326 var715)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var2326!1 String)
(assert (= var2326!1 (str.++ var2326 var715)))
(assert true)
(define-const var2109 String (toString/-2075883882 var3562)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3790!2 var2109)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var3790!3 var355)
(declare-const var2109!1 String)
(define-const var3177 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3177)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3177!1 String)
(assert (= var3177!1 ""))
(assert true)
(define-const var1496 String (append/672562846 var3177!1 "Is this the Kaffe VM? ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Kaffe VM? ") 
(declare-const var3177!2 String)
(assert (= var3177!2 (str.++ var3177!1 "Is this the Kaffe VM? ")))
(define-const var126 Bool var3469_isKaffe/1376613989) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>() 
 ; Statement: if $z1 == 0 goto $r35 = "no" 
(assert (not (= (ite var126 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3534 String "yes") ; Statement: $r35 = "yes" 
 ; Statement: goto [?= $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3595 String (append/672562846 var1496 var3534)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var1496!1 String)
(assert (= var1496!1 (str.++ var1496 var3534)))
(assert true)
(define-const var192 String (toString/-2075883882 var3595)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3790!3 var192)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r19) 

(declare-const var3790!4 var355)
(declare-const var192!1 String)
(define-const var1149 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1149)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1149!1 String)
(assert (= var1149!1 ""))
(assert true)
(define-const var2320 String (append/672562846 var1149!1 "Is this gij/gcj? ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this gij/gcj? ") 
(declare-const var1149!2 String)
(assert (= var1149!2 (str.++ var1149!1 "Is this gij/gcj? ")))
(define-const var2901 Bool var3469_isGij/-239716276) ; Statement: $z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>() 
 ; Statement: if $z2 == 0 goto $r36 = "no" 
(assert (= (ite var2901 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2762 String "no") ; Statement: $r36 = "no" 
(assert true) ; Non Conditional
(assert true)
(define-const var694 String (append/672562846 var2320 var2762)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var2320!1 String)
(assert (= var2320!1 (str.++ var2320 var2762)))
(assert true)
(define-const var3140 String (toString/-2075883882 var694)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3790!4 var3140)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r23) 

(declare-const var3790!5 var355)
(declare-const var3140!1 String)
(define-const var996 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var996)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var996!1 String)
(assert (= var996!1 ""))
(assert true)
(define-const var3683 String (append/672562846 var996!1 "ant.core.lib: ")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.core.lib: ") 
(declare-const var996!2 String)
(assert (= var996!2 (str.++ var996!1 "ant.core.lib: ")))
(assert true)
(define-const var537 String (getProperty/-1126216426 var1543!2 "ant.core.lib")) ; Statement: $r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.core.lib") 
(assert true)
(define-const var1198 String (append/672562846 var3683 var537)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var3683!1 String)
(assert (= var3683!1 (str.++ var3683 var537)))
(assert true)
(define-const var657 String (toString/-2075883882 var1198)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3790!5 var657)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r28) 

(declare-const var3790!6 var355)
(declare-const var657!1 String)
(define-const var2649 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2649)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2649!1 String)
(assert (= var2649!1 ""))
(assert true)
(define-const var399 String (append/672562846 var2649!1 "ant.home: ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ") 
(declare-const var2649!2 String)
(assert (= var2649!2 (str.++ var2649!1 "ant.home: ")))
(assert true)
(define-const var2515 String (getProperty/-1126216426 var1543!2 "ant.home")) ; Statement: $r30 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.home") 
(assert true)
(define-const var2409 String (append/672562846 var399 var2515)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var399!1 String)
(assert (= var399!1 (str.++ var399 var2515)))
(assert true)
(define-const var415 String (toString/-2075883882 var2409)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3790!6 var415)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r33) 

(declare-const var3790!7 var355)
(declare-const var415!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3857-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), <init>/1766247163=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), initProperties/1179971946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var3469_isApacheHarmony/911347068=([], boolean), var3469_isKaffe/1376613989=([], boolean), var3469_isGij/-239716276=([], boolean)}
; {var355=java.io.PrintStream, var3790=r1, var3857=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1543=$r0, var3864=$r2, var3217=$r4, var796=$r3, var2224=$r5, var2371=$r6, var1568=$r7, var2612=$r9, var521=$r8, var125=$r10, var2788=$r11, var1636=$r12, var2326=$r13, var3469=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var2787=$z0, var715=$r34, var3562=$r14, var2109=$r15, var3177=$r16, var1496=$r17, var126=$z1, var3534=$r35, var3595=$r18, var192=$r19, var1149=$r20, var2320=$r21, var2901=$z2, var2762=$r36, var694=$r22, var3140=$r23, var996=$r24, var3683=$r26, var537=$r25, var1198=$r27, var657=$r28, var2649=$r29, var399=$r31, var2515=$r30, var2409=$r32, var415=$r33}
; {java.io.PrintStream=var355, r1=var3790, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3857, $r0=var1543, $r2=var3864, $r4=var3217, $r3=var796, $r5=var2224, $r6=var2371, $r7=var1568, $r9=var2612, $r8=var521, $r10=var125, $r11=var2788, $r12=var1636, $r13=var2326, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var3469, $z0=var2787, $r34=var715, $r14=var3562, $r15=var2109, $r16=var3177, $r17=var1496, $z1=var126, $r35=var3534, $r18=var3595, $r19=var192, $r20=var1149, $r21=var2320, $z2=var2901, $r36=var2762, $r22=var694, $r23=var3140, $r24=var996, $r26=var3683, $r25=var537, $r27=var1198, $r28=var657, $r29=var2649, $r31=var399, $r30=var2515, $r32=var2409, $r33=var415}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 14,"<java.lang.StringBuilder: java.lang.String toString()>": 7}
;stmts r1 := @parameter0: java.io.PrintStream;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void initProperties()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.version: ");	$r3 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.java.version: ");	$r8 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.java.version");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Apache Harmony VM? ");	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isApacheHarmony()>();	if $z0 == 0 goto $r34 = "no";	$r34 = "yes";	goto [?= $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34)];	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r15);	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Kaffe VM? ");	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>();	if $z1 == 0 goto $r35 = "no";	$r35 = "yes";	goto [?= $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35)];	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r19);	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this gij/gcj? ");	$z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>();	if $z2 == 0 goto $r36 = "no";	$r36 = "no";	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r23);	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.core.lib: ");	$r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.core.lib");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r28);	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ");	$r30 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.home");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r33);	return
;block_num 7