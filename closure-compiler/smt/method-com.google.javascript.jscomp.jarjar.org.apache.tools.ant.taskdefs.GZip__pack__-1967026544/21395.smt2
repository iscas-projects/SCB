(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2035 0)
(declare-sort var1136 0)
(declare-sort var3592 0)
(declare-sort var1347 0)
(declare-sort var43 0)
(declare-sort var3591 0)
(declare-sort var332 0)
(declare-sort var440 0)
(declare-sort var3982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1136-init () var1136)
(declare-fun zipFile/-951720587 (var1347) var3592)
(declare-fun cast-from-var2035-to-var1347 (var2035) var1347)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3591) String)
(declare-fun cast-from-var43-to-var3591 (var43) var3591)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var332-init () var332)
(declare-fun getLocation/851674571 (var3982) var440)
(declare-fun cast-from-var2035-to-var3982 (var2035) var3982)
(declare-fun <init>/1933136886 (var332 String var3591 var440) void)
(declare-const null-var2035 var2035)
(declare-const null-var43 var43)
(declare-const var2734 var2035) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GZip 
(assert (not (= var2734 null-var2035)))
(define-const var1721 var1136 var1136-init) ; Statement: $r0 = new java.util.zip.GZIPOutputStream 
(define-const var495 var3592 (zipFile/-951720587 (cast-from-var2035-to-var1347 var2734))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GZip: java.io.File zipFile> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1236 var43) ; Statement: $r7 := @caughtexception 
(assert (not (= var1236 null-var43)))
(define-const var2120 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2120)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2120!1 String)
(assert (= var2120!1 ""))
(assert true)
(define-const var2135 String (append/672562846 var2120!1 "Problem creating gzip ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem creating gzip ") 
(declare-const var2120!2 String)
(assert (= var2120!2 (str.++ var2120!1 "Problem creating gzip ")))
(assert true)
(define-const var3086 String (getMessage/849299655 (cast-from-var43-to-var3591 var1236))) ; Statement: $r9 = virtualinvoke $r7.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var3682 String (append/672562846 var2135 var3086)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2135!1 String)
(assert (= var2135!1 (str.++ var2135 var3086)))
(assert true)
(define-const var1502 String (toString/-2075883882 var3682)) ; Statement: r16 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2673 var332 var332-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var2232 var440 (getLocation/851674571 (cast-from-var2035-to-var3982 var2734))) ; Statement: $r13 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GZip: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var2673 var1502 (cast-from-var43-to-var3591 var1236) var2232)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>(r16, $r7, $r13) 

(declare-const var2673!1 var332)
(declare-const var1502!1 String)
(declare-const var1236!1 var43)
(declare-const var2232!1 var440)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1136-init=([], java.util.zip.GZIPOutputStream), zipFile/-951720587=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack], java.io.File), cast-from-var2035-to-var1347=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GZip], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var43-to-var3591=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var332-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2035-to-var3982=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GZip], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2035=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GZip, var2734=r1, var1136=java.util.zip.GZIPOutputStream, var1721=$r0, var3592=java.io.File, var1347=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack, var495=$r2, var43=java.io.IOException, var1236=$r7, var2120=$r8, var2135=$r10, var3591=java.lang.Throwable, var3086=$r9, var3682=$r11, var1502=r16, var332=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2673=$r12, var440=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3982=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2232=$r13}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GZip=var2035, r1=var2734, java.util.zip.GZIPOutputStream=var1136, $r0=var1721, java.io.File=var3592, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack=var1347, $r2=var495, java.io.IOException=var43, $r7=var1236, $r8=var2120, $r10=var2135, java.lang.Throwable=var3591, $r9=var3086, $r11=var3682, r16=var1502, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var332, $r12=var2673, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var440, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3982, $r13=var2232}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GZip;	$r0 = new java.util.zip.GZIPOutputStream;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GZip: java.io.File zipFile>;	$r7 := @caughtexception;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem creating gzip ");	$r9 = virtualinvoke $r7.<java.io.IOException: java.lang.String getMessage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	r16 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r13 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GZip: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>(r16, $r7, $r13);	throw $r12
;block_num 2