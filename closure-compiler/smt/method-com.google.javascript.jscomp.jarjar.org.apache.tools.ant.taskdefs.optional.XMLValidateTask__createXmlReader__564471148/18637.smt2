(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2960 0)
(declare-sort var3550 0)
(declare-sort var1024 0)
(declare-sort var2341 0)
(declare-sort var228 0)
(declare-sort var2203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readerClassName/-2132854784 (var2960) String)
(declare-fun classpath/-2132854784 (var2960) var1024)
(declare-fun var228-init () var228)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var228 String var2203) void)
(declare-fun cast-from-var2341-to-var2203 (var2341) var2203)
(declare-const null-var2960 var2960)
(declare-const null-String String)
(declare-const null-var1024 var1024)
(declare-const null-var2341 var2341)
(declare-const var1843 var2960) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask 
(assert (not (= var1843 null-var2960)))
(define-const var1387 String (readerClassName/-2132854784 var1843)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: java.lang.String readerClassName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
(assert (not (= var1387 null-String))) ; Cond: $r1 != null 
(define-const var1413 var1024 (classpath/-2132854784 var1843)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
 ; Statement: if $r2 == null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: java.lang.String readerClassName> 
(assert (not (= var1413 null-var1024))) ; Negate: Cond: $r2 == null  
(declare-const var1222 var2341) ; Statement: $r34 := @caughtexception 
(assert (not (= var1222 null-var2341)))
(define-const var63 var228 var228-init) ; Statement: $r35 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1654 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1654)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1654!1 String)
(assert (= var1654!1 ""))
(assert true)
(define-const var2894 String (append/672562846 var1654!1 "Could not start xml validation: ")) ; Statement: $r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not start xml validation: ") 
(declare-const var1654!2 String)
(assert (= var1654!2 (str.++ var1654!1 "Could not start xml validation: ")))
(define-const var59 String (readerClassName/-2132854784 var1843)) ; Statement: $r37 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: java.lang.String readerClassName> 
(assert true)
(define-const var1054 String (append/672562846 var2894 var59)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37) 
(declare-const var2894!1 String)
(assert (= var2894!1 (str.++ var2894 var59)))
(assert true)
(define-const var42 String (toString/-2075883882 var1054)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var63 var42 (cast-from-var2341-to-var2203 var1222))) ; Statement: specialinvoke $r35.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r34) 

(declare-const var63!1 var228)
(declare-const var42!1 String)
(declare-const var1222!1 var2341)
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {readerClassName/-2132854784=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask], java.lang.String), classpath/-2132854784=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), var228-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var2341-to-var2203=([java.lang.ReflectiveOperationException], java.lang.Throwable)}
; {var2960=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask, var1843=r0, var1387=$r1, var3550=null_type, var1024=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var1413=$r2, var2341=java.lang.ReflectiveOperationException, var1222=$r34, var228=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var63=$r35, var1654=$r36, var2894=$r38, var59=$r37, var1054=$r39, var42=$r40, var2203=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask=var2960, r0=var1843, $r1=var1387, null_type=var3550, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var1024, $r2=var1413, java.lang.ReflectiveOperationException=var2341, $r34=var1222, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var228, $r35=var63, $r36=var1654, $r38=var2894, $r37=var59, $r39=var1054, $r40=var42, java.lang.Throwable=var2203}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: java.lang.String readerClassName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	if $r2 == null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: java.lang.String readerClassName>;	$r34 := @caughtexception;	$r35 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not start xml validation: ");	$r37 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: java.lang.String readerClassName>;	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r35.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r34);	throw $r35
;block_num 3