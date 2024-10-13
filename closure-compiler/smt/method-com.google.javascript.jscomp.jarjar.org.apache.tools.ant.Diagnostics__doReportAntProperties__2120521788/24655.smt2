(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2082 0)
(declare-sort var816 0)
(declare-sort var2483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var816-init () var816)
(declare-fun <init>/1766247163 (var816) void)
(declare-fun initProperties/1179971946 (var816) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProperty/-1126216426 (var816 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2082 String) void)
(declare-fun var2483_isApacheHarmony/911347068 () Bool)
(declare-fun var2483_isKaffe/1376613989 () Bool)
(declare-fun var2483_isGij/-239716276 () Bool)
(declare-const null-var2082 var2082)
(declare-const var2172 var2082) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var2172 null-var2082)))
(define-const var1982 var816 var816-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert true)
;(assert (<init>/1766247163 var1982)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>() 

(declare-const var1982!1 var816)
(assert true)
;(assert (initProperties/1179971946 var1982!1)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void initProperties()>() 

(declare-const var1982!2 var816)
(define-const var332 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var332)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var332!1 String)
(assert (= var332!1 ""))
(assert true)
(define-const var1096 String (append/672562846 var332!1 "ant.version: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.version: ") 
(declare-const var332!2 String)
(assert (= var332!2 (str.++ var332!1 "ant.version: ")))
(assert true)
(define-const var1533 String (getProperty/-1126216426 var1982!2 "ant.version")) ; Statement: $r3 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version") 
(assert true)
(define-const var3699 String (append/672562846 var1096 var1533)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1096!1 String)
(assert (= var1096!1 (str.++ var1096 var1533)))
(assert true)
(define-const var3827 String (toString/-2075883882 var3699)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2172 var3827)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var2172!1 var2082)
(declare-const var3827!1 String)
(define-const var824 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var824)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var824!1 String)
(assert (= var824!1 ""))
(assert true)
(define-const var2941 String (append/672562846 var824!1 "ant.java.version: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.java.version: ") 
(declare-const var824!2 String)
(assert (= var824!2 (str.++ var824!1 "ant.java.version: ")))
(assert true)
(define-const var1216 String (getProperty/-1126216426 var1982!2 "ant.java.version")) ; Statement: $r8 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.java.version") 
(assert true)
(define-const var1691 String (append/672562846 var2941 var1216)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2941!1 String)
(assert (= var2941!1 (str.++ var2941 var1216)))
(assert true)
(define-const var790 String (toString/-2075883882 var1691)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2172!1 var790)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r11) 

(declare-const var2172!2 var2082)
(declare-const var790!1 String)
(define-const var2664 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2664)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2664!1 String)
(assert (= var2664!1 ""))
(assert true)
(define-const var1130 String (append/672562846 var2664!1 "Is this the Apache Harmony VM? ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Apache Harmony VM? ") 
(declare-const var2664!2 String)
(assert (= var2664!2 (str.++ var2664!1 "Is this the Apache Harmony VM? ")))
(define-const var2643 Bool var2483_isApacheHarmony/911347068) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isApacheHarmony()>() 
 ; Statement: if $z0 == 0 goto $r34 = "no" 
(assert (= (ite var2643 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1617 String "no") ; Statement: $r34 = "no" 
(assert true) ; Non Conditional
(assert true)
(define-const var1966 String (append/672562846 var1130 var1617)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var1130!1 String)
(assert (= var1130!1 (str.++ var1130 var1617)))
(assert true)
(define-const var3810 String (toString/-2075883882 var1966)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2172!2 var3810)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var2172!3 var2082)
(declare-const var3810!1 String)
(define-const var1977 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1977)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1977!1 String)
(assert (= var1977!1 ""))
(assert true)
(define-const var2861 String (append/672562846 var1977!1 "Is this the Kaffe VM? ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Kaffe VM? ") 
(declare-const var1977!2 String)
(assert (= var1977!2 (str.++ var1977!1 "Is this the Kaffe VM? ")))
(define-const var3097 Bool var2483_isKaffe/1376613989) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>() 
 ; Statement: if $z1 == 0 goto $r35 = "no" 
(assert (not (= (ite var3097 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3948 String "yes") ; Statement: $r35 = "yes" 
 ; Statement: goto [?= $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2065 String (append/672562846 var2861 var3948)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var2861!1 String)
(assert (= var2861!1 (str.++ var2861 var3948)))
(assert true)
(define-const var968 String (toString/-2075883882 var2065)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2172!3 var968)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r19) 

(declare-const var2172!4 var2082)
(declare-const var968!1 String)
(define-const var2072 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2072)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2072!1 String)
(assert (= var2072!1 ""))
(assert true)
(define-const var2083 String (append/672562846 var2072!1 "Is this gij/gcj? ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this gij/gcj? ") 
(declare-const var2072!2 String)
(assert (= var2072!2 (str.++ var2072!1 "Is this gij/gcj? ")))
(define-const var3104 Bool var2483_isGij/-239716276) ; Statement: $z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>() 
 ; Statement: if $z2 == 0 goto $r36 = "no" 
(assert (not (= (ite var3104 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3065 String "yes") ; Statement: $r36 = "yes" 
 ; Statement: goto [?= $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1307 String (append/672562846 var2083 var3065)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var2083!1 String)
(assert (= var2083!1 (str.++ var2083 var3065)))
(assert true)
(define-const var1829 String (toString/-2075883882 var1307)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2172!4 var1829)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r23) 

(declare-const var2172!5 var2082)
(declare-const var1829!1 String)
(define-const var3045 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3045)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3045!1 String)
(assert (= var3045!1 ""))
(assert true)
(define-const var2869 String (append/672562846 var3045!1 "ant.core.lib: ")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.core.lib: ") 
(declare-const var3045!2 String)
(assert (= var3045!2 (str.++ var3045!1 "ant.core.lib: ")))
(assert true)
(define-const var573 String (getProperty/-1126216426 var1982!2 "ant.core.lib")) ; Statement: $r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.core.lib") 
(assert true)
(define-const var1934 String (append/672562846 var2869 var573)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2869!1 String)
(assert (= var2869!1 (str.++ var2869 var573)))
(assert true)
(define-const var1401 String (toString/-2075883882 var1934)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2172!5 var1401)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r28) 

(declare-const var2172!6 var2082)
(declare-const var1401!1 String)
(define-const var2224 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2224)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2224!1 String)
(assert (= var2224!1 ""))
(assert true)
(define-const var598 String (append/672562846 var2224!1 "ant.home: ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ") 
(declare-const var2224!2 String)
(assert (= var2224!2 (str.++ var2224!1 "ant.home: ")))
(assert true)
(define-const var3754 String (getProperty/-1126216426 var1982!2 "ant.home")) ; Statement: $r30 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.home") 
(assert true)
(define-const var2876 String (append/672562846 var598 var3754)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var598!1 String)
(assert (= var598!1 (str.++ var598 var3754)))
(assert true)
(define-const var2634 String (toString/-2075883882 var2876)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2172!6 var2634)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r33) 

(declare-const var2172!7 var2082)
(declare-const var2634!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var816-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), <init>/1766247163=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), initProperties/1179971946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2483_isApacheHarmony/911347068=([], boolean), var2483_isKaffe/1376613989=([], boolean), var2483_isGij/-239716276=([], boolean)}
; {var2082=java.io.PrintStream, var2172=r1, var816=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1982=$r0, var332=$r2, var1096=$r4, var1533=$r3, var3699=$r5, var3827=$r6, var824=$r7, var2941=$r9, var1216=$r8, var1691=$r10, var790=$r11, var2664=$r12, var1130=$r13, var2483=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var2643=$z0, var1617=$r34, var1966=$r14, var3810=$r15, var1977=$r16, var2861=$r17, var3097=$z1, var3948=$r35, var2065=$r18, var968=$r19, var2072=$r20, var2083=$r21, var3104=$z2, var3065=$r36, var1307=$r22, var1829=$r23, var3045=$r24, var2869=$r26, var573=$r25, var1934=$r27, var1401=$r28, var2224=$r29, var598=$r31, var3754=$r30, var2876=$r32, var2634=$r33}
; {java.io.PrintStream=var2082, r1=var2172, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var816, $r0=var1982, $r2=var332, $r4=var1096, $r3=var1533, $r5=var3699, $r6=var3827, $r7=var824, $r9=var2941, $r8=var1216, $r10=var1691, $r11=var790, $r12=var2664, $r13=var1130, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var2483, $z0=var2643, $r34=var1617, $r14=var1966, $r15=var3810, $r16=var1977, $r17=var2861, $z1=var3097, $r35=var3948, $r18=var2065, $r19=var968, $r20=var2072, $r21=var2083, $z2=var3104, $r36=var3065, $r22=var1307, $r23=var1829, $r24=var3045, $r26=var2869, $r25=var573, $r27=var1934, $r28=var1401, $r29=var2224, $r31=var598, $r30=var3754, $r32=var2876, $r33=var2634}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 14,"<java.lang.StringBuilder: java.lang.String toString()>": 7}
;stmts r1 := @parameter0: java.io.PrintStream;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void initProperties()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.version: ");	$r3 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.java.version: ");	$r8 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.java.version");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Apache Harmony VM? ");	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isApacheHarmony()>();	if $z0 == 0 goto $r34 = "no";	$r34 = "no";	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r15);	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Kaffe VM? ");	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>();	if $z1 == 0 goto $r35 = "no";	$r35 = "yes";	goto [?= $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35)];	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r19);	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this gij/gcj? ");	$z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>();	if $z2 == 0 goto $r36 = "no";	$r36 = "yes";	goto [?= $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36)];	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r23);	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.core.lib: ");	$r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.core.lib");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r28);	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ");	$r30 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.home");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r33);	return
;block_num 7