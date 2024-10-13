(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1657 0)
(declare-sort var2031 0)
(declare-sort var1315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2031-init () var2031)
(declare-fun <init>/1766247163 (var2031) void)
(declare-fun initProperties/1179971946 (var2031) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProperty/-1126216426 (var2031 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1657 String) void)
(declare-fun var1315_isApacheHarmony/911347068 () Bool)
(declare-fun var1315_isKaffe/1376613989 () Bool)
(declare-fun var1315_isGij/-239716276 () Bool)
(declare-const null-var1657 var1657)
(declare-const var1347 var1657) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var1347 null-var1657)))
(define-const var2467 var2031 var2031-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert true)
;(assert (<init>/1766247163 var2467)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>() 

(declare-const var2467!1 var2031)
(assert true)
;(assert (initProperties/1179971946 var2467!1)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void initProperties()>() 

(declare-const var2467!2 var2031)
(define-const var3143 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3143)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3143!1 String)
(assert (= var3143!1 ""))
(assert true)
(define-const var1527 String (append/672562846 var3143!1 "ant.version: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.version: ") 
(declare-const var3143!2 String)
(assert (= var3143!2 (str.++ var3143!1 "ant.version: ")))
(assert true)
(define-const var1433 String (getProperty/-1126216426 var2467!2 "ant.version")) ; Statement: $r3 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version") 
(assert true)
(define-const var2436 String (append/672562846 var1527 var1433)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1527!1 String)
(assert (= var1527!1 (str.++ var1527 var1433)))
(assert true)
(define-const var279 String (toString/-2075883882 var2436)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1347 var279)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var1347!1 var1657)
(declare-const var279!1 String)
(define-const var2610 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2610)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2610!1 String)
(assert (= var2610!1 ""))
(assert true)
(define-const var2417 String (append/672562846 var2610!1 "ant.java.version: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.java.version: ") 
(declare-const var2610!2 String)
(assert (= var2610!2 (str.++ var2610!1 "ant.java.version: ")))
(assert true)
(define-const var3370 String (getProperty/-1126216426 var2467!2 "ant.java.version")) ; Statement: $r8 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.java.version") 
(assert true)
(define-const var2423 String (append/672562846 var2417 var3370)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2417!1 String)
(assert (= var2417!1 (str.++ var2417 var3370)))
(assert true)
(define-const var470 String (toString/-2075883882 var2423)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1347!1 var470)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r11) 

(declare-const var1347!2 var1657)
(declare-const var470!1 String)
(define-const var1329 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1329)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1329!1 String)
(assert (= var1329!1 ""))
(assert true)
(define-const var3675 String (append/672562846 var1329!1 "Is this the Apache Harmony VM? ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Apache Harmony VM? ") 
(declare-const var1329!2 String)
(assert (= var1329!2 (str.++ var1329!1 "Is this the Apache Harmony VM? ")))
(define-const var2742 Bool var1315_isApacheHarmony/911347068) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isApacheHarmony()>() 
 ; Statement: if $z0 == 0 goto $r34 = "no" 
(assert (not (= (ite var2742 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2690 String "yes") ; Statement: $r34 = "yes" 
 ; Statement: goto [?= $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34)] 
(assert true) ; Non Conditional
(assert true)
(define-const var363 String (append/672562846 var3675 var2690)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var3675!1 String)
(assert (= var3675!1 (str.++ var3675 var2690)))
(assert true)
(define-const var3023 String (toString/-2075883882 var363)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1347!2 var3023)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var1347!3 var1657)
(declare-const var3023!1 String)
(define-const var3781 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3781)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3781!1 String)
(assert (= var3781!1 ""))
(assert true)
(define-const var3567 String (append/672562846 var3781!1 "Is this the Kaffe VM? ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Kaffe VM? ") 
(declare-const var3781!2 String)
(assert (= var3781!2 (str.++ var3781!1 "Is this the Kaffe VM? ")))
(define-const var1571 Bool var1315_isKaffe/1376613989) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>() 
 ; Statement: if $z1 == 0 goto $r35 = "no" 
(assert (= (ite var1571 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1709 String "no") ; Statement: $r35 = "no" 
(assert true) ; Non Conditional
(assert true)
(define-const var1896 String (append/672562846 var3567 var1709)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var3567!1 String)
(assert (= var3567!1 (str.++ var3567 var1709)))
(assert true)
(define-const var1592 String (toString/-2075883882 var1896)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1347!3 var1592)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r19) 

(declare-const var1347!4 var1657)
(declare-const var1592!1 String)
(define-const var1262 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1262)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1262!1 String)
(assert (= var1262!1 ""))
(assert true)
(define-const var2244 String (append/672562846 var1262!1 "Is this gij/gcj? ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this gij/gcj? ") 
(declare-const var1262!2 String)
(assert (= var1262!2 (str.++ var1262!1 "Is this gij/gcj? ")))
(define-const var1664 Bool var1315_isGij/-239716276) ; Statement: $z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>() 
 ; Statement: if $z2 == 0 goto $r36 = "no" 
(assert (= (ite var1664 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3137 String "no") ; Statement: $r36 = "no" 
(assert true) ; Non Conditional
(assert true)
(define-const var2958 String (append/672562846 var2244 var3137)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var2244!1 String)
(assert (= var2244!1 (str.++ var2244 var3137)))
(assert true)
(define-const var3367 String (toString/-2075883882 var2958)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1347!4 var3367)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r23) 

(declare-const var1347!5 var1657)
(declare-const var3367!1 String)
(define-const var1876 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1876)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1876!1 String)
(assert (= var1876!1 ""))
(assert true)
(define-const var3614 String (append/672562846 var1876!1 "ant.core.lib: ")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.core.lib: ") 
(declare-const var1876!2 String)
(assert (= var1876!2 (str.++ var1876!1 "ant.core.lib: ")))
(assert true)
(define-const var3154 String (getProperty/-1126216426 var2467!2 "ant.core.lib")) ; Statement: $r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.core.lib") 
(assert true)
(define-const var2793 String (append/672562846 var3614 var3154)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var3614!1 String)
(assert (= var3614!1 (str.++ var3614 var3154)))
(assert true)
(define-const var3637 String (toString/-2075883882 var2793)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1347!5 var3637)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r28) 

(declare-const var1347!6 var1657)
(declare-const var3637!1 String)
(define-const var2585 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2585)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2585!1 String)
(assert (= var2585!1 ""))
(assert true)
(define-const var617 String (append/672562846 var2585!1 "ant.home: ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ") 
(declare-const var2585!2 String)
(assert (= var2585!2 (str.++ var2585!1 "ant.home: ")))
(assert true)
(define-const var3894 String (getProperty/-1126216426 var2467!2 "ant.home")) ; Statement: $r30 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.home") 
(assert true)
(define-const var2447 String (append/672562846 var617 var3894)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var617!1 String)
(assert (= var617!1 (str.++ var617 var3894)))
(assert true)
(define-const var2115 String (toString/-2075883882 var2447)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1347!6 var2115)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r33) 

(declare-const var1347!7 var1657)
(declare-const var2115!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2031-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), <init>/1766247163=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), initProperties/1179971946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var1315_isApacheHarmony/911347068=([], boolean), var1315_isKaffe/1376613989=([], boolean), var1315_isGij/-239716276=([], boolean)}
; {var1657=java.io.PrintStream, var1347=r1, var2031=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2467=$r0, var3143=$r2, var1527=$r4, var1433=$r3, var2436=$r5, var279=$r6, var2610=$r7, var2417=$r9, var3370=$r8, var2423=$r10, var470=$r11, var1329=$r12, var3675=$r13, var1315=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var2742=$z0, var2690=$r34, var363=$r14, var3023=$r15, var3781=$r16, var3567=$r17, var1571=$z1, var1709=$r35, var1896=$r18, var1592=$r19, var1262=$r20, var2244=$r21, var1664=$z2, var3137=$r36, var2958=$r22, var3367=$r23, var1876=$r24, var3614=$r26, var3154=$r25, var2793=$r27, var3637=$r28, var2585=$r29, var617=$r31, var3894=$r30, var2447=$r32, var2115=$r33}
; {java.io.PrintStream=var1657, r1=var1347, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2031, $r0=var2467, $r2=var3143, $r4=var1527, $r3=var1433, $r5=var2436, $r6=var279, $r7=var2610, $r9=var2417, $r8=var3370, $r10=var2423, $r11=var470, $r12=var1329, $r13=var3675, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var1315, $z0=var2742, $r34=var2690, $r14=var363, $r15=var3023, $r16=var3781, $r17=var3567, $z1=var1571, $r35=var1709, $r18=var1896, $r19=var1592, $r20=var1262, $r21=var2244, $z2=var1664, $r36=var3137, $r22=var2958, $r23=var3367, $r24=var1876, $r26=var3614, $r25=var3154, $r27=var2793, $r28=var3637, $r29=var2585, $r31=var617, $r30=var3894, $r32=var2447, $r33=var2115}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 14,"<java.lang.StringBuilder: java.lang.String toString()>": 7}
;stmts r1 := @parameter0: java.io.PrintStream;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void initProperties()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.version: ");	$r3 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.java.version: ");	$r8 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.java.version");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Apache Harmony VM? ");	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isApacheHarmony()>();	if $z0 == 0 goto $r34 = "no";	$r34 = "yes";	goto [?= $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34)];	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r15);	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this the Kaffe VM? ");	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>();	if $z1 == 0 goto $r35 = "no";	$r35 = "no";	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r19);	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Is this gij/gcj? ");	$z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>();	if $z2 == 0 goto $r36 = "no";	$r36 = "no";	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r23);	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.core.lib: ");	$r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.core.lib");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r28);	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ");	$r30 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.home");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r33);	return
;block_num 7