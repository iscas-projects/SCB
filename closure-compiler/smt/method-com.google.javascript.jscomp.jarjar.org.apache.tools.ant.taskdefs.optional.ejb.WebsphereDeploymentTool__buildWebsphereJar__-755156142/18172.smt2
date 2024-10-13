(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1629 0)
(declare-sort var917 0)
(declare-sort var1894 0)
(declare-sort var3551 0)
(declare-sort var3548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3551-init () var3551)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var3548) String)
(declare-fun cast-from-var1894-to-var3548 (var1894) var3548)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3551 String var3548) void)
(declare-const null-var1629 var1629)
(declare-const null-var917 var917)
(declare-const null-var1894 var1894)
(declare-const var3976 var1629) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var3976 null-var1629)))
(declare-const var2464 var917) ; Statement: r10 := @parameter0: java.io.File 
(assert (not (= var2464 null-var917)))
(declare-const var143 var917) ; Statement: r15 := @parameter1: java.io.File 
(assert (not (= var143 null-var917)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3738 var1894) ; Statement: $r32 := @caughtexception 
(assert (not (= var3738 null-var1894)))
(define-const var1423 var3551 var3551-init) ; Statement: $r33 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2885 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2885)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2885!1 String)
(assert (= var2885!1 ""))
(assert true)
(define-const var2820 String (append/672562846 var2885!1 "Exception while calling ejbdeploy. Details: ")) ; Statement: $r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while calling ejbdeploy. Details: ") 
(declare-const var2885!2 String)
(assert (= var2885!2 (str.++ var2885!1 "Exception while calling ejbdeploy. Details: ")))
(assert true)
(define-const var574 String (toString/-1112415476 (cast-from-var1894-to-var3548 var3738))) ; Statement: $r35 = virtualinvoke $r32.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var2088 String (append/672562846 var2820 var574)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var2820!1 String)
(assert (= var2820!1 (str.++ var2820 var574)))
(assert true)
(define-const var3746 String (toString/-2075883882 var2088)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1423 var3746 (cast-from-var1894-to-var3548 var3738))) ; Statement: specialinvoke $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r38, $r32) 

(declare-const var1423!1 var3551)
(declare-const var3746!1 String)
(declare-const var3738!1 var1894)
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {var3551-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1894-to-var3548=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var1629=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var3976=r0, var917=java.io.File, var2464=r10, var143=r15, var1894=java.lang.Exception, var3738=$r32, var3551=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1423=$r33, var2885=$r34, var2820=$r36, var3548=java.lang.Throwable, var574=$r35, var2088=$r37, var3746=$r38}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var1629, r0=var3976, java.io.File=var917, r10=var2464, r15=var143, java.lang.Exception=var1894, $r32=var3738, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3551, $r33=var1423, $r34=var2885, $r36=var2820, java.lang.Throwable=var3548, $r35=var574, $r37=var2088, $r38=var3746}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r10 := @parameter0: java.io.File;	r15 := @parameter1: java.io.File;	$r32 := @caughtexception;	$r33 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while calling ejbdeploy. Details: ");	$r35 = virtualinvoke $r32.<java.lang.Exception: java.lang.String toString()>();	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r38, $r32);	throw $r33
;block_num 2