(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2170 0)
(declare-sort var3414 0)
(declare-sort var2884 0)
(declare-sort var883 0)
(declare-sort var2749 0)
(declare-sort var1944 0)
(declare-sort var2833 0)
(declare-sort var558 0)
(declare-sort var3057 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-644964275 (var3414) void)
(declare-fun cast-from-var2170-to-var3414 (var2170) var3414)
(declare-fun var2884-init () var2884)
(declare-fun <init>/-1433320631 (var2884) void)
(declare-fun sources/1631858810 (var2170) var2884)
(declare-fun verbose/1631858810 (var2170) Bool)
(declare-fun quiet/1631858810 (var2170) Bool)
(declare-fun useTimestamp/1631858810 (var2170) Bool)
(declare-fun ignoreErrors/1631858810 (var2170) Bool)
(declare-fun uname/1631858810 (var2170) String)
(declare-fun pword/1631858810 (var2170) String)
(declare-fun maxTime/1631858810 (var2170) Int)
(declare-fun numberRetries/1631858810 (var2170) Int)
(declare-fun skipExisting/1631858810 (var2170) Bool)
(declare-fun httpUseCaches/1631858810 (var2170) Bool)
(declare-fun tryGzipEncoding/1631858810 (var2170) Bool)
(declare-fun mapperElement/1631858810 (var2170) var2749)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1944_getShortAntVersion/1658425997 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2833_getProperty/-1659784690 (String String) String)
(declare-fun userAgent/1631858810 (var2170) String)
(declare-fun var558-init () var558)
(declare-fun <init>/-1461814690 (var558) void)
(declare-fun cast-from-var558-to-var3057 (var558) var3057)
(declare-fun headers/1631858810 (var2170) var3057)
(declare-const null-var2170 var2170)
(declare-const null-String String)
(declare-const null-var2749 var2749)
(declare-const var866 var2170) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get 
(assert (not (= var866 null-var2170)))
(assert true)
;(assert (<init>/-644964275 (cast-from-var2170-to-var3414 var866))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: void <init>()>() 

(declare-const var866!1 var2170)
(define-const var1542 var2884 var2884-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources 
(assert true)
;(assert (<init>/-1433320631 var1542)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources: void <init>()>() 

(declare-const var1542!1 var2884)
(declare-const var866!2 var2170)
(assert (not (= var866!2 null-var2170)))
(assert (= (sources/1631858810 var866!2) var1542!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources sources> = $r1 
(declare-const var866!3 var2170)
(assert (not (= var866!3 null-var2170)))
(assert (= (verbose/1631858810 var866!3) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean verbose> = 0 
(declare-const var866!4 var2170)
(assert (not (= var866!4 null-var2170)))
(assert (= (quiet/1631858810 var866!4) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean quiet> = 0 
(declare-const var866!5 var2170)
(assert (not (= var866!5 null-var2170)))
(assert (= (useTimestamp/1631858810 var866!5) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean useTimestamp> = 0 
(declare-const var866!6 var2170)
(assert (not (= var866!6 null-var2170)))
(assert (= (ignoreErrors/1631858810 var866!6) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean ignoreErrors> = 0 
(declare-const var866!7 var2170)
(assert (not (= var866!7 null-var2170)))
(assert (= (uname/1631858810 var866!7) null-String)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String uname> = null 
(declare-const var866!8 var2170)
(assert (not (= var866!8 null-var2170)))
(assert (= (pword/1631858810 var866!8) null-String)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String pword> = null 
(declare-const var866!9 var2170)
(assert (not (= var866!9 null-var2170)))
(assert (= (maxTime/1631858810 var866!9) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: long maxTime> = 0L 
(declare-const var866!10 var2170)
(assert (not (= var866!10 null-var2170)))
(assert (= (numberRetries/1631858810 var866!10) 3)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: int numberRetries> = 3 
(declare-const var866!11 var2170)
(assert (not (= var866!11 null-var2170)))
(assert (= (skipExisting/1631858810 var866!11) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean skipExisting> = 0 
(declare-const var866!12 var2170)
(assert (not (= var866!12 null-var2170)))
(assert (= (httpUseCaches/1631858810 var866!12) (ite (= 1 1) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean httpUseCaches> = 1 
(declare-const var866!13 var2170)
(assert (not (= var866!13 null-var2170)))
(assert (= (tryGzipEncoding/1631858810 var866!13) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean tryGzipEncoding> = 0 
(declare-const var866!14 var2170)
(assert (not (= var866!14 null-var2170)))
(assert (= (mapperElement/1631858810 var866!14) null-var2749)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> = null 
(define-const var118 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var118)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var118!1 String)
(assert (= var118!1 ""))
(assert true)
(define-const var2842 String (append/672562846 var118!1 "Apache Ant/")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Apache Ant/") 
(declare-const var118!2 String)
(assert (= var118!2 (str.++ var118!1 "Apache Ant/")))
(define-const var3703 String var1944_getShortAntVersion/1658425997) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.lang.String getShortAntVersion()>() 
(assert true)
(define-const var2771 String (append/672562846 var2842 var3703)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2842!1 String)
(assert (= var2842!1 (str.++ var2842 var3703)))
(assert true)
(define-const var862 String (toString/-2075883882 var2771)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2296 String (var2833_getProperty/-1659784690 "ant.http.agent" var862)) ; Statement: $r7 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("ant.http.agent", $r6) 
(declare-const var866!15 var2170)
(assert (not (= var866!15 null-var2170)))
(assert (= (userAgent/1631858810 var866!15) var2296)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String userAgent> = $r7 
(define-const var1829 var558 var558-init) ; Statement: $r8 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var1829)) ; Statement: specialinvoke $r8.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var1829!1 var558)
(declare-const var866!16 var2170)
(assert (not (= var866!16 null-var2170)))
(assert (= (headers/1631858810 var866!16) (cast-from-var558-to-var3057 var1829!1))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.util.Map headers> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-644964275=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], void), cast-from-var2170-to-var3414=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var2884-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources), <init>/-1433320631=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources], void), sources/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources), verbose/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean), quiet/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean), useTimestamp/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean), ignoreErrors/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean), uname/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], java.lang.String), pword/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], java.lang.String), maxTime/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], long), numberRetries/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], int), skipExisting/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean), httpUseCaches/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean), tryGzipEncoding/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean), mapperElement/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1944_getShortAntVersion/1658425997=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2833_getProperty/-1659784690=([java.lang.String, java.lang.String], java.lang.String), userAgent/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], java.lang.String), var558-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), cast-from-var558-to-var3057=([java.util.LinkedHashMap], java.util.Map), headers/1631858810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], java.util.Map)}
; {var2170=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get, var866=r0, var3414=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2884=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources, var1542=$r1, var883=null_type, var2749=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper, var118=$r2, var2842=$r4, var1944=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main, var3703=$r3, var2771=$r5, var862=$r6, var2833=java.lang.System, var2296=$r7, var558=java.util.LinkedHashMap, var1829=$r8, var3057=java.util.Map}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get=var2170, r0=var866, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3414, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources=var2884, $r1=var1542, null_type=var883, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper=var2749, $r2=var118, $r4=var2842, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main=var1944, $r3=var3703, $r5=var2771, $r6=var862, java.lang.System=var2833, $r7=var2296, java.util.LinkedHashMap=var558, $r8=var1829, java.util.Map=var3057}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: void <init>()>();	$r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources;	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources sources> = $r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean verbose> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean quiet> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean useTimestamp> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean ignoreErrors> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String uname> = null;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String pword> = null;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: long maxTime> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: int numberRetries> = 3;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean skipExisting> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean httpUseCaches> = 1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean tryGzipEncoding> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> = null;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Apache Ant/");	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.lang.String getShortAntVersion()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("ant.http.agent", $r6);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String userAgent> = $r7;	$r8 = new java.util.LinkedHashMap;	specialinvoke $r8.<java.util.LinkedHashMap: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.util.Map headers> = $r8;	return
;block_num 1