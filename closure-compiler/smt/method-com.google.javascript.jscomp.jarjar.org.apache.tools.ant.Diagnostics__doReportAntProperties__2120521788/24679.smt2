(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3797 0)
(declare-sort var3546 0)
(declare-sort var387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3546-init () var3546)
(declare-fun <init>/1766247163 (var3546) void)
(declare-fun initProperties/1179971946 (var3546) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProperty/-1126216426 (var3546 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3797 String) void)
(declare-fun var387_isApacheHarmony/911347068 () Bool)
(declare-fun var387_isKaffe/1376613989 () Bool)
(declare-fun var387_isGij/-239716276 () Bool)
(declare-const null-var3797 var3797)
(declare-const var3734 var3797) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var3734 null-var3797)))
(define-const var2542 var3546 var3546-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert true)
;(assert (<init>/1766247163 var2542)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>() 

(declare-const var2542!1 var3546)
(assert true)
;(assert (initProperties/1179971946 var2542!1)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void initProperties()>() 

(declare-const var2542!2 var3546)
(define-const var3609 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3609)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3609!1 String)
(assert (= var3609!1 ""))
(assert true)
(define-const var2477 String (append/672562846 var3609!1 "ant.version: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.version: ") 
(declare-const var3609!2 String)
(assert (= var3609!2 (str.++ var3609!1 "ant.version: ")))
(assert true)
(define-const var3727 String (getProperty/-1126216426 var2542!2 "ant.version")) ; Statement: $r3 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version") 
(assert true)
(define-const var702 String (append/672562846 var2477 var3727)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2477!1 String)
(assert (= var2477!1 (str.++ var2477 var3727)))
(assert true)
(define-const var2951 String (toString/-2075883882 var702)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3734 var2951)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var3734!1 var3797)
(declare-const var2951!1 String)
(define-const var3733 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3733)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3733!1 String)
(assert (= var3733!1 ""))
(assert true)
(define-const var2971 String (append/672562846 var3733!1 "ant.java.version: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.java.version: ") 
(declare-const var3733!2 String)
(assert (= var3733!2 (str.++ var3733!1 "ant.java.version: ")))
(assert true)
(define-const var1470 String (getProperty/-1126216426 var2542!2 "ant.java.version")) ; Statement: $r8 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.java.version") 
(assert true)
(define-const var160 String (append/672562846 var2971 var1470)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2971!1 String)
(assert (= var2971!1 (str.++ var2971 var1470)))
(assert true)
(define-const var37 String (toString/-2075883882 var160)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3734!1 var37)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r11) 

(declare-const var3734!2 var3797)
(declare-const var37!1 String)
(define-const var1336 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1336)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1336!1 String)
(assert (= var1336!1 ""))
(assert true)
(define-const var91 String (append/672562846 var1336!1 "Is this the Apache Harmony VM? ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Apache Harmony VM? ") 
(declare-const var1336!2 String)
(assert (= var1336!2 (str.++ var1336!1 "Is this the Apache Harmony VM? ")))
(define-const var1192 Bool var387_isApacheHarmony/911347068) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isApacheHarmony()>() 
 ; Statement: if $z0 == 0 goto $r34 = "no" 
(assert (= (ite var1192 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2381 String "no") ; Statement: $r34 = "no" 
(assert true) ; Non Conditional
(assert true)
(define-const var234 String (append/672562846 var91 var2381)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var91!1 String)
(assert (= var91!1 (str.++ var91 var2381)))
(assert true)
(define-const var2267 String (toString/-2075883882 var234)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3734!2 var2267)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var3734!3 var3797)
(declare-const var2267!1 String)
(define-const var2276 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2276)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2276!1 String)
(assert (= var2276!1 ""))
(assert true)
(define-const var2660 String (append/672562846 var2276!1 "Is this the Kaffe VM? ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Kaffe VM? ") 
(declare-const var2276!2 String)
(assert (= var2276!2 (str.++ var2276!1 "Is this the Kaffe VM? ")))
(define-const var1598 Bool var387_isKaffe/1376613989) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>() 
 ; Statement: if $z1 == 0 goto $r35 = "no" 
(assert (= (ite var1598 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2086 String "no") ; Statement: $r35 = "no" 
(assert true) ; Non Conditional
(assert true)
(define-const var3179 String (append/672562846 var2660 var2086)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var2660!1 String)
(assert (= var2660!1 (str.++ var2660 var2086)))
(assert true)
(define-const var2577 String (toString/-2075883882 var3179)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3734!3 var2577)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r19) 

(declare-const var3734!4 var3797)
(declare-const var2577!1 String)
(define-const var2293 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2293)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2293!1 String)
(assert (= var2293!1 ""))
(assert true)
(define-const var3352 String (append/672562846 var2293!1 "Is this gij/gcj? ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this gij/gcj? ") 
(declare-const var2293!2 String)
(assert (= var2293!2 (str.++ var2293!1 "Is this gij/gcj? ")))
(define-const var438 Bool var387_isGij/-239716276) ; Statement: $z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>() 
 ; Statement: if $z2 == 0 goto $r36 = "no" 
(assert (not (= (ite var438 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1669 String "yes") ; Statement: $r36 = "yes" 
 ; Statement: goto [?= $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3716 String (append/672562846 var3352 var1669)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var3352!1 String)
(assert (= var3352!1 (str.++ var3352 var1669)))
(assert true)
(define-const var1093 String (toString/-2075883882 var3716)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3734!4 var1093)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r23) 

(declare-const var3734!5 var3797)
(declare-const var1093!1 String)
(define-const var3374 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3374)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3374!1 String)
(assert (= var3374!1 ""))
(assert true)
(define-const var1199 String (append/672562846 var3374!1 "ant.core.lib: ")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.core.lib: ") 
(declare-const var3374!2 String)
(assert (= var3374!2 (str.++ var3374!1 "ant.core.lib: ")))
(assert true)
(define-const var2162 String (getProperty/-1126216426 var2542!2 "ant.core.lib")) ; Statement: $r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.core.lib") 
(assert true)
(define-const var2977 String (append/672562846 var1199 var2162)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var1199!1 String)
(assert (= var1199!1 (str.++ var1199 var2162)))
(assert true)
(define-const var1927 String (toString/-2075883882 var2977)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3734!5 var1927)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r28) 

(declare-const var3734!6 var3797)
(declare-const var1927!1 String)
(define-const var2609 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2609)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2609!1 String)
(assert (= var2609!1 ""))
(assert true)
(define-const var328 String (append/672562846 var2609!1 "ant.home: ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ") 
(declare-const var2609!2 String)
(assert (= var2609!2 (str.++ var2609!1 "ant.home: ")))
(assert true)
(define-const var1250 String (getProperty/-1126216426 var2542!2 "ant.home")) ; Statement: $r30 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.home") 
(assert true)
(define-const var3197 String (append/672562846 var328 var1250)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var328!1 String)
(assert (= var328!1 (str.++ var328 var1250)))
(assert true)
(define-const var2956 String (toString/-2075883882 var3197)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3734!6 var2956)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r33) 

(declare-const var3734!7 var3797)
(declare-const var2956!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3546-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), <init>/1766247163=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), initProperties/1179971946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var387_isApacheHarmony/911347068=([], boolean), var387_isKaffe/1376613989=([], boolean), var387_isGij/-239716276=([], boolean)}
; {var3797=java.io.PrintStream, var3734=r1, var3546=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2542=$r0, var3609=$r2, var2477=$r4, var3727=$r3, var702=$r5, var2951=$r6, var3733=$r7, var2971=$r9, var1470=$r8, var160=$r10, var37=$r11, var1336=$r12, var91=$r13, var387=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var1192=$z0, var2381=$r34, var234=$r14, var2267=$r15, var2276=$r16, var2660=$r17, var1598=$z1, var2086=$r35, var3179=$r18, var2577=$r19, var2293=$r20, var3352=$r21, var438=$z2, var1669=$r36, var3716=$r22, var1093=$r23, var3374=$r24, var1199=$r26, var2162=$r25, var2977=$r27, var1927=$r28, var2609=$r29, var328=$r31, var1250=$r30, var3197=$r32, var2956=$r33}
; {java.io.PrintStream=var3797, r1=var3734, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3546, $r0=var2542, $r2=var3609, $r4=var2477, $r3=var3727, $r5=var702, $r6=var2951, $r7=var3733, $r9=var2971, $r8=var1470, $r10=var160, $r11=var37, $r12=var1336, $r13=var91, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var387, $z0=var1192, $r34=var2381, $r14=var234, $r15=var2267, $r16=var2276, $r17=var2660, $z1=var1598, $r35=var2086, $r18=var3179, $r19=var2577, $r20=var2293, $r21=var3352, $z2=var438, $r36=var1669, $r22=var3716, $r23=var1093, $r24=var3374, $r26=var1199, $r25=var2162, $r27=var2977, $r28=var1927, $r29=var2609, $r31=var328, $r30=var1250, $r32=var3197, $r33=var2956}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 14,"<java.lang.StringBuilder: java.lang.String toString()>": 7}
;stmts r1 := @parameter0: java.io.PrintStream;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void initProperties()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.version: ");	$r3 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.java.version: ");	$r8 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.java.version");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Apache Harmony VM? ");	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isApacheHarmony()>();	if $z0 == 0 goto $r34 = "no";	$r34 = "no";	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r15);	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Kaffe VM? ");	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>();	if $z1 == 0 goto $r35 = "no";	$r35 = "no";	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r19);	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this gij/gcj? ");	$z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>();	if $z2 == 0 goto $r36 = "no";	$r36 = "yes";	goto [?= $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36)];	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r23);	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.core.lib: ");	$r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.core.lib");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r28);	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ");	$r30 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.home");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r33);	return
;block_num 7