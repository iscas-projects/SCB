(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1630 0)
(declare-sort var1758 0)
(declare-sort var2063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1758_getJavaVersion/154691319 () String)
(declare-fun setPropertyInternal/509876573 (var1630 String String) void)
(declare-fun var1758_isAtLeastJavaVersion/882629483 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2063_getProperty/258823597 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var1630 String Int) void)
(declare-const null-var1630 var1630)
(declare-const var1729 var1630) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1729 null-var1630)))
(define-const var2713 String var1758_getJavaVersion/154691319) ; Statement: r0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: java.lang.String getJavaVersion()>() 
(assert true)
;(assert (setPropertyInternal/509876573 var1729 "ant.java.version" var2713)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setPropertyInternal(java.lang.String,java.lang.String)>("ant.java.version", r0) 

(declare-const var1729!1 var1630)
(declare-const var478 String)
(declare-const var2713!1 String)
(define-const var2577 Bool (var1758_isAtLeastJavaVersion/882629483 "1.8")) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isAtLeastJavaVersion(java.lang.String)>("1.8") 
 ; Statement: if $z0 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var2577 1 0) 0))) ; Cond: $z0 != 0 
(define-const var379 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var379)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var379!1 String)
(assert (= var379!1 ""))
(assert true)
(define-const var1072 String (append/672562846 var379!1 "Detected Java version: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detected Java version: ") 
(declare-const var379!2 String)
(assert (= var379!2 (str.++ var379!1 "Detected Java version: ")))
(assert true)
(define-const var1117 String (append/672562846 var1072 var2713!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1072!1 String)
(assert (= var1072!1 (str.++ var1072 var2713!1)))
(assert true)
(define-const var3769 String (append/672562846 var1117 " in: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in: ") 
(declare-const var1117!1 String)
(assert (= var1117!1 (str.++ var1117 " in: ")))
(define-const var3934 String (var2063_getProperty/258823597 "java.home")) ; Statement: $r5 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home") 
(assert true)
(define-const var3181 String (append/672562846 var3769 var3934)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3769!1 String)
(assert (= var3769!1 (str.++ var3769 var3934)))
(assert true)
(define-const var3097 String (toString/-2075883882 var3181)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var1729!1 var3097 3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r8, 3) 

(declare-const var1729!2 var1630)
(declare-const var3097!1 String)
(declare-const var3868 Int)
(define-const var733 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var733)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var733!1 String)
(assert (= var733!1 ""))
(assert true)
(define-const var3738 String (append/672562846 var733!1 "Detected OS: ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detected OS: ") 
(declare-const var733!2 String)
(assert (= var733!2 (str.++ var733!1 "Detected OS: ")))
(define-const var1797 String (var2063_getProperty/258823597 "os.name")) ; Statement: $r10 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name") 
(assert true)
(define-const var1747 String (append/672562846 var3738 var1797)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3738!1 String)
(assert (= var3738!1 (str.++ var3738 var1797)))
(assert true)
(define-const var1872 String (toString/-2075883882 var1747)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var1729!2 var1872 3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r13, 3) 

(declare-const var1729!3 var1630)
(declare-const var1872!1 String)
(declare-const var3868!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1758_getJavaVersion/154691319=([], java.lang.String), setPropertyInternal/509876573=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, java.lang.String], void), var1758_isAtLeastJavaVersion/882629483=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2063_getProperty/258823597=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void)}
; {var1630=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1729=r1, var1758=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var2713=r0, var478="ant.java.version", var2577=$z0, var379=$r2, var1072=$r3, var1117=$r4, var3769=$r6, var2063=java.lang.System, var3934=$r5, var3181=$r7, var3097=$r8, var3868=3, var733=$r9, var3738=$r11, var1797=$r10, var1747=$r12, var1872=$r13}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1630, r1=var1729, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var1758, r0=var2713, "ant.java.version"=var478, $z0=var2577, $r2=var379, $r3=var1072, $r4=var1117, $r6=var3769, java.lang.System=var2063, $r5=var3934, $r7=var3181, $r8=var3097, 3=var3868, $r9=var733, $r11=var3738, $r10=var1797, $r12=var1747, $r13=var1872}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: java.lang.String getJavaVersion()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setPropertyInternal(java.lang.String,java.lang.String)>("ant.java.version", r0);	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isAtLeastJavaVersion(java.lang.String)>("1.8");	if $z0 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detected Java version: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in: ");	$r5 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.home");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r8, 3);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detected OS: ");	$r10 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r13, 3);	return
;block_num 2