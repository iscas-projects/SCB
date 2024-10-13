(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var324 0)
(declare-sort var100 0)
(declare-sort var2 0)
(declare-sort var1800 0)
(declare-sort var1665 0)
(declare-sort var731 0)
(declare-sort var307 0)
(declare-sort var1843 0)
(declare-sort var1662 0)
(declare-sort var2342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun eolStr/1258177498 (var324) String)
(declare-fun line/1258177498 (var324) String)
(declare-fun reader/1258177498 (var324) var100)
(declare-fun var1800-init () var1800)
(define-fun <init>/1968657023 () String "")
(declare-fun srcFile/1258177498 (var324) var1665)
(declare-fun append/-1031950772 (String var731) String)
(declare-fun cast-from-var1665-to-var731 (var1665) var731)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var307) String)
(declare-fun cast-from-var2-to-var307 (var2) var307)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun this$0/1258177498 (var324) var1843)
(declare-fun getLocation/851674571 (var2342) var1662)
(declare-fun cast-from-var1843-to-var2342 (var1843) var2342)
(declare-fun <init>/1933136886 (var1800 String var307 var1662) void)
(declare-const null-var324 var324)
(declare-const null-var2 var2)
(declare-const var825 var324) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner 
(assert (not (= var825 null-var324)))
(define-const var2019 Int 0) ; Statement: b9 = 0 
(define-const var1154 String String-init) ; Statement: $r36 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1154)) ; Statement: specialinvoke $r36.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1154!1 String)
(declare-const var825!1 var324)
(assert (not (= var825!1 null-var324)))
(assert (= (eolStr/1258177498 var825!1) var1154!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eolStr> = $r36 
(define-const var1097 String String-init) ; Statement: $r37 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1097)) ; Statement: specialinvoke $r37.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1097!1 String)
(declare-const var825!2 var324)
(assert (not (= var825!2 null-var324)))
(assert (= (line/1258177498 var825!2) var1097!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer line> = $r37 
(define-const var1735 var100 (reader/1258177498 var825!2)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.io.BufferedReader reader> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3227 var2) ; Statement: $r25 := @caughtexception 
(assert (not (= var3227 null-var2)))
(define-const var503 var1800 var1800-init) ; Statement: $r39 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1734 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1734)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1734!1 String)
(assert (= var1734!1 ""))
(define-const var1649 var1665 (srcFile/1258177498 var825!2)) ; Statement: $r28 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.io.File srcFile> 
(assert true)
(define-const var1657 String (append/-1031950772 var1734!1 (cast-from-var1665-to-var731 var1649))) ; Statement: $r29 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28) 
(declare-const var1734!2 String)
(assert (str.prefixof var1734!1 var1734!2))
(assert true)
(define-const var3021 String (append/672562846 var1657 ": ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1657!1 String)
(assert (= var1657!1 (str.++ var1657 ": ")))
(assert true)
(define-const var280 String (getMessage/849299655 (cast-from-var2-to-var307 var3227))) ; Statement: $r30 = virtualinvoke $r25.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var3909 String (append/672562846 var3021 var280)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var3021!1 String)
(assert (= var3021!1 (str.++ var3021 var280)))
(assert true)
(define-const var989 String (toString/-2075883882 var3909)) ; Statement: $r35 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1353 var1843 (this$0/1258177498 var825!2)) ; Statement: $r33 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF this$0> 
(assert true)
(define-const var3471 var1662 (getLocation/851674571 (cast-from-var1843-to-var2342 var1353))) ; Statement: $r34 = virtualinvoke $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var503 var989 (cast-from-var2-to-var307 var3227) var3471)) ; Statement: specialinvoke $r39.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r35, $r25, $r34) 

(declare-const var503!1 var1800)
(declare-const var989!1 String)
(declare-const var3227!1 var2)
(declare-const var3471!1 var1662)
 ; Statement: throw $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), eolStr/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.StringBuffer), line/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.StringBuffer), reader/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.io.BufferedReader), var1800-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1968657023=([java.lang.StringBuilder], void), srcFile/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1665-to-var731=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2-to-var307=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), this$0/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1843-to-var2342=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var324=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner, var825=r0, var2019=b9, var1154=$r36, var1097=$r37, var100=java.io.BufferedReader, var1735=$r3, var2=java.io.IOException, var3227=$r25, var1800=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var503=$r39, var1734=$r38, var1665=java.io.File, var1649=$r28, var731=java.lang.Object, var1657=$r29, var3021=$r31, var307=java.lang.Throwable, var280=$r30, var3909=$r32, var989=$r35, var1843=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF, var1353=$r33, var1662=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2342=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3471=$r34}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner=var324, r0=var825, b9=var2019, $r36=var1154, $r37=var1097, java.io.BufferedReader=var100, $r3=var1735, java.io.IOException=var2, $r25=var3227, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1800, $r39=var503, $r38=var1734, java.io.File=var1665, $r28=var1649, java.lang.Object=var731, $r29=var1657, $r31=var3021, java.lang.Throwable=var307, $r30=var280, $r32=var3909, $r35=var989, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF=var1843, $r33=var1353, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1662, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2342, $r34=var3471}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner;	b9 = 0;	$r36 = new java.lang.StringBuffer;	specialinvoke $r36.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eolStr> = $r36;	$r37 = new java.lang.StringBuffer;	specialinvoke $r37.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer line> = $r37;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.io.BufferedReader reader>;	$r25 := @caughtexception;	$r39 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r28 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.io.File srcFile>;	$r29 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28);	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r30 = virtualinvoke $r25.<java.io.IOException: java.lang.String getMessage()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r35 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r33 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF this$0>;	$r34 = virtualinvoke $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r39.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r35, $r25, $r34);	throw $r39
;block_num 2