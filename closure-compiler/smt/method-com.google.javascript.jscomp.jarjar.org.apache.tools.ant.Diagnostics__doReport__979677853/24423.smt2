(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3339 0)
(declare-sort var3286 0)
(declare-sort var2190 0)
(declare-sort var534 0)
(declare-sort var347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3286!class ClassObject)
(declare-fun println/1773605060 (var3339 String) void)
(declare-fun var3286_getAntVersion/5508559 () String)
(declare-fun var2190_header/-493692461 (var3339 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2190_getImplementationVersion/1405463757 (ClassObject) String)
(declare-fun var2190_getClassLocation/143373735 (ClassObject) var534)
(declare-fun append/-1031950772 (String var347) String)
(declare-fun cast-from-var534-to-var347 (var534) var347)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2190_doReportAntProperties/2120521788 (var3339) void)
(declare-fun var2190_doReportAntHomeLibraries/1173211981 (var3339) void)
(declare-fun var2190_doReportUserHomeLibraries/1231233137 (var3339) void)
(declare-fun var2190_doReportTasksAvailability/-1891392885 (var3339) void)
(declare-fun var2190_doReportWhich/920292255 (var3339) void)
(declare-fun var2190_doReportParserInfo/886138983 (var3339) void)
(declare-fun var2190_doReportXSLTProcessorInfo/-1328528641 (var3339) void)
(declare-fun var2190_doReportSystemProperties/-1741595396 (var3339) void)
(declare-fun var2190_doReportTempDir/-1328376933 (var3339) void)
(declare-fun var2190_doReportLocale/1359923092 (var3339) void)
(declare-fun var2190_doReportProxy/1789790512 (var3339) void)
(declare-fun println/-898436193 (var3339) void)
(declare-const null-var3339 var3339)
(declare-const null-Int Int)
(declare-const var2277 var3339) ; Statement: r0 := @parameter0: java.io.PrintStream 
(assert (not (= var2277 null-var3339)))
(declare-const var2462 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2462 null-Int)))
(assert true)
;(assert (println/1773605060 var2277 "------- Ant diagnostics report -------")) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>("------- Ant diagnostics report -------") 

(declare-const var2277!1 var3339)
(declare-const var2118 String)
(define-const var3434 String var3286_getAntVersion/5508559) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.lang.String getAntVersion()>() 
(assert true)
;(assert (println/1773605060 var2277!1 var3434)) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r1) 

(declare-const var2277!2 var3339)
(declare-const var3434!1 String)
;(assert (var2190_header/-493692461 var2277!2 "Implementation Version")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "Implementation Version") 

(declare-const var2277!3 var3339)
(declare-const var3714 String)
(define-const var409 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var409)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var409!1 String)
(assert (= var409!1 ""))
(assert true)
(define-const var310 String (append/672562846 var409!1 "core tasks     : ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("core tasks     : ") 
(declare-const var409!2 String)
(assert (= var409!2 (str.++ var409!1 "core tasks     : ")))
(define-const var809 String (var2190_getImplementationVersion/1405463757 var3286!class)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: java.lang.String getImplementationVersion(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/Main;") 
(assert true)
(define-const var2631 String (append/672562846 var310 var809)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var310!1 String)
(assert (= var310!1 (str.++ var310 var809)))
(assert true)
(define-const var845 String (append/672562846 var2631 " in ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var2631!1 String)
(assert (= var2631!1 (str.++ var2631 " in ")))
(define-const var2450 var534 (var2190_getClassLocation/143373735 var3286!class)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: java.net.URL getClassLocation(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/Main;") 
(assert true)
(define-const var3881 String (append/-1031950772 var845 (cast-from-var534-to-var347 var2450))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var845!1 String)
(assert (str.prefixof var845 var845!1))
(assert true)
(define-const var1446 String (toString/-2075883882 var3881)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2277!3 var1446)) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var2277!4 var3339)
(declare-const var1446!1 String)
;(assert (var2190_header/-493692461 var2277!4 "ANT PROPERTIES")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "ANT PROPERTIES") 

(declare-const var2277!5 var3339)
(declare-const var2330 String)
;(assert (var2190_doReportAntProperties/2120521788 var2277!5)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportAntProperties(java.io.PrintStream)>(r0) 

(declare-const var2277!6 var3339)
;(assert (var2190_header/-493692461 var2277!6 "ANT_HOME/lib jar listing")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "ANT_HOME/lib jar listing") 

(declare-const var2277!7 var3339)
(declare-const var735 String)
;(assert (var2190_doReportAntHomeLibraries/1173211981 var2277!7)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportAntHomeLibraries(java.io.PrintStream)>(r0) 

(declare-const var2277!8 var3339)
;(assert (var2190_header/-493692461 var2277!8 "USER_HOME/.ant/lib jar listing")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "USER_HOME/.ant/lib jar listing") 

(declare-const var2277!9 var3339)
(declare-const var1397 String)
;(assert (var2190_doReportUserHomeLibraries/1231233137 var2277!9)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportUserHomeLibraries(java.io.PrintStream)>(r0) 

(declare-const var2277!10 var3339)
;(assert (var2190_header/-493692461 var2277!10 "Tasks availability")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "Tasks availability") 

(declare-const var2277!11 var3339)
(declare-const var3090 String)
;(assert (var2190_doReportTasksAvailability/-1891392885 var2277!11)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportTasksAvailability(java.io.PrintStream)>(r0) 

(declare-const var2277!12 var3339)
;(assert (var2190_header/-493692461 var2277!12 "org.apache.env.Which diagnostics")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "org.apache.env.Which diagnostics") 

(declare-const var2277!13 var3339)
(declare-const var321 String)
;(assert (var2190_doReportWhich/920292255 var2277!13)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportWhich(java.io.PrintStream)>(r0) 

(declare-const var2277!14 var3339)
;(assert (var2190_header/-493692461 var2277!14 "XML Parser information")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "XML Parser information") 

(declare-const var2277!15 var3339)
(declare-const var2455 String)
;(assert (var2190_doReportParserInfo/886138983 var2277!15)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportParserInfo(java.io.PrintStream)>(r0) 

(declare-const var2277!16 var3339)
;(assert (var2190_header/-493692461 var2277!16 "XSLT Processor information")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "XSLT Processor information") 

(declare-const var2277!17 var3339)
(declare-const var979 String)
;(assert (var2190_doReportXSLTProcessorInfo/-1328528641 var2277!17)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportXSLTProcessorInfo(java.io.PrintStream)>(r0) 

(declare-const var2277!18 var3339)
;(assert (var2190_header/-493692461 var2277!18 "System properties")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "System properties") 

(declare-const var2277!19 var3339)
(declare-const var1520 String)
;(assert (var2190_doReportSystemProperties/-1741595396 var2277!19)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportSystemProperties(java.io.PrintStream)>(r0) 

(declare-const var2277!20 var3339)
;(assert (var2190_header/-493692461 var2277!20 "Temp dir")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "Temp dir") 

(declare-const var2277!21 var3339)
(declare-const var2962 String)
;(assert (var2190_doReportTempDir/-1328376933 var2277!21)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportTempDir(java.io.PrintStream)>(r0) 

(declare-const var2277!22 var3339)
;(assert (var2190_header/-493692461 var2277!22 "Locale information")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "Locale information") 

(declare-const var2277!23 var3339)
(declare-const var539 String)
;(assert (var2190_doReportLocale/1359923092 var2277!23)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportLocale(java.io.PrintStream)>(r0) 

(declare-const var2277!24 var3339)
;(assert (var2190_header/-493692461 var2277!24 "Proxy information")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "Proxy information") 

(declare-const var2277!25 var3339)
(declare-const var1417 String)
;(assert (var2190_doReportProxy/1789790512 var2277!25)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportProxy(java.io.PrintStream)>(r0) 

(declare-const var2277!26 var3339)
(assert true)
;(assert (println/-898436193 var2277!26)) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println()>() 

(declare-const var2277!27 var3339)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), var3286_getAntVersion/5508559=([], java.lang.String), var2190_header/-493692461=([java.io.PrintStream, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2190_getImplementationVersion/1405463757=([java.lang.Class], java.lang.String), var2190_getClassLocation/143373735=([java.lang.Class], java.net.URL), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var534-to-var347=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2190_doReportAntProperties/2120521788=([java.io.PrintStream], void), var2190_doReportAntHomeLibraries/1173211981=([java.io.PrintStream], void), var2190_doReportUserHomeLibraries/1231233137=([java.io.PrintStream], void), var2190_doReportTasksAvailability/-1891392885=([java.io.PrintStream], void), var2190_doReportWhich/920292255=([java.io.PrintStream], void), var2190_doReportParserInfo/886138983=([java.io.PrintStream], void), var2190_doReportXSLTProcessorInfo/-1328528641=([java.io.PrintStream], void), var2190_doReportSystemProperties/-1741595396=([java.io.PrintStream], void), var2190_doReportTempDir/-1328376933=([java.io.PrintStream], void), var2190_doReportLocale/1359923092=([java.io.PrintStream], void), var2190_doReportProxy/1789790512=([java.io.PrintStream], void), println/-898436193=([java.io.PrintStream], void)}
; {var3339=java.io.PrintStream, var2277=r0, var2462=i0, var2118="------- Ant diagnostics report -------", var3286=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main, var3434=$r1, var2190=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics, var3714="Implementation Version", var409=$r2, var310=$r4, var809=$r3, var2631=$r5, var845=$r7, var534=java.net.URL, var2450=$r6, var347=java.lang.Object, var3881=$r8, var1446=$r9, var2330="ANT PROPERTIES", var735="ANT_HOME/lib jar listing", var1397="USER_HOME/.ant/lib jar listing", var3090="Tasks availability", var321="org.apache.env.Which diagnostics", var2455="XML Parser information", var979="XSLT Processor information", var1520="System properties", var2962="Temp dir", var539="Locale information", var1417="Proxy information"}
; {java.io.PrintStream=var3339, r0=var2277, i0=var2462, "------- Ant diagnostics report -------"=var2118, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main=var3286, $r1=var3434, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics=var2190, "Implementation Version"=var3714, $r2=var409, $r4=var310, $r3=var809, $r5=var2631, $r7=var845, java.net.URL=var534, $r6=var2450, java.lang.Object=var347, $r8=var3881, $r9=var1446, "ANT PROPERTIES"=var2330, "ANT_HOME/lib jar listing"=var735, "USER_HOME/.ant/lib jar listing"=var1397, "Tasks availability"=var3090, "org.apache.env.Which diagnostics"=var321, "XML Parser information"=var2455, "XSLT Processor information"=var979, "System properties"=var1520, "Temp dir"=var2962, "Locale information"=var539, "Proxy information"=var1417}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.PrintStream;	i0 := @parameter1: int;	virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>("------- Ant diagnostics report -------");	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.lang.String getAntVersion()>();	virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r1);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "Implementation Version");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("core tasks     : ");	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: java.lang.String getImplementationVersion(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/Main;");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: java.net.URL getClassLocation(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/Main;");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r9);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "ANT PROPERTIES");	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportAntProperties(java.io.PrintStream)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "ANT_HOME/lib jar listing");	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportAntHomeLibraries(java.io.PrintStream)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "USER_HOME/.ant/lib jar listing");	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportUserHomeLibraries(java.io.PrintStream)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "Tasks availability");	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportTasksAvailability(java.io.PrintStream)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "org.apache.env.Which diagnostics");	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportWhich(java.io.PrintStream)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "XML Parser information");	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportParserInfo(java.io.PrintStream)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "XSLT Processor information");	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportXSLTProcessorInfo(java.io.PrintStream)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "System properties");	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportSystemProperties(java.io.PrintStream)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "Temp dir");	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportTempDir(java.io.PrintStream)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "Locale information");	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportLocale(java.io.PrintStream)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void header(java.io.PrintStream,java.lang.String)>(r0, "Proxy information");	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void doReportProxy(java.io.PrintStream)>(r0);	virtualinvoke r0.<java.io.PrintStream: void println()>();	return
;block_num 1