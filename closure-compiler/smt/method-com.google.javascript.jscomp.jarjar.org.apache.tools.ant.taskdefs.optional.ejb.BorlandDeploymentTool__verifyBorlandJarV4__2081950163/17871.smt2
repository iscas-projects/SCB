(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1394 0)
(declare-sort var3993 0)
(declare-sort var3248 0)
(declare-sort var1913 0)
(declare-sort var3530 0)
(declare-sort var1161 0)
(declare-sort var2080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3248) String)
(declare-fun cast-from-var3993-to-var3248 (var3993) var3248)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1006881114 (var1913 String Int) void)
(declare-fun cast-from-var1394-to-var1913 (var1394) var1913)
(declare-fun toString/-1112415476 (var1161) String)
(declare-fun cast-from-var3530-to-var1161 (var3530) var1161)
(declare-fun var2080-init () var2080)
(declare-fun <init>/-191906322 (var2080 String var1161) void)
(declare-const null-var1394 var1394)
(declare-const null-var3993 var3993)
(declare-const null-var3530 var3530)
(declare-const var2071 var1394) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool 
(assert (not (= var2071 null-var1394)))
(declare-const var1045 var3993) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var1045 null-var3993)))
(define-const var1190 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1190)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1190!1 String)
(assert (= var1190!1 ""))
(assert true)
(define-const var2365 String (append/672562846 var1190!1 "verify BAS ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("verify BAS ") 
(declare-const var1190!2 String)
(assert (= var1190!2 (str.++ var1190!1 "verify BAS ")))
(assert true)
(define-const var3766 String (append/-1031950772 var2365 (cast-from-var3993-to-var3248 var1045))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2365!1 String)
(assert (str.prefixof var2365 var2365!1))
(assert true)
(define-const var3429 String (toString/-2075883882 var3766)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var1394-to-var1913 var2071) var3429 2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: void log(java.lang.String,int)>($r5, 2) 

(declare-const var2071!1 var1394)
(declare-const var3429!1 String)
(declare-const var2180 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3390 var3530) ; Statement: $r19 := @caughtexception 
(assert (not (= var3390 null-var3530)))
(define-const var3412 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3412)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3412!1 String)
(assert (= var3412!1 ""))
(assert true)
(define-const var3754 String (append/672562846 var3412!1 "Exception while calling com.inprise.ejb.util.Verify Details: ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while calling com.inprise.ejb.util.Verify Details: ") 
(declare-const var3412!2 String)
(assert (= var3412!2 (str.++ var3412!1 "Exception while calling com.inprise.ejb.util.Verify Details: ")))
(assert true)
(define-const var656 String (toString/-1112415476 (cast-from-var3530-to-var1161 var3390))) ; Statement: $r21 = virtualinvoke $r19.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var2808 String (append/672562846 var3754 var656)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3754!1 String)
(assert (= var3754!1 (str.++ var3754 var656)))
(assert true)
(define-const var2638 String (toString/-2075883882 var2808)) ; Statement: r28 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3009 var2080 var2080-init) ; Statement: $r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-191906322 var3009 var2638 (cast-from-var3530-to-var1161 var3390))) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r28, $r19) 

(declare-const var3009!1 var2080)
(declare-const var2638!1 String)
(declare-const var3390!1 var3530)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3993-to-var3248=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), cast-from-var1394-to-var1913=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var3530-to-var1161=([java.lang.Exception], java.lang.Throwable), var2080-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var1394=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool, var2071=r0, var3993=java.io.File, var1045=r2, var1190=$r1, var2365=$r3, var3248=java.lang.Object, var3766=$r4, var3429=$r5, var1913=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var2180=2, var3530=java.lang.Exception, var3390=$r19, var3412=$r20, var3754=$r22, var1161=java.lang.Throwable, var656=$r21, var2808=$r23, var2638=r28, var2080=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3009=$r24}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool=var1394, r0=var2071, java.io.File=var3993, r2=var1045, $r1=var1190, $r3=var2365, java.lang.Object=var3248, $r4=var3766, $r5=var3429, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var1913, 2=var2180, java.lang.Exception=var3530, $r19=var3390, $r20=var3412, $r22=var3754, java.lang.Throwable=var1161, $r21=var656, $r23=var2808, r28=var2638, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2080, $r24=var3009}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool;	r2 := @parameter0: java.io.File;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("verify BAS ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: void log(java.lang.String,int)>($r5, 2);	$r19 := @caughtexception;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while calling com.inprise.ejb.util.Verify Details: ");	$r21 = virtualinvoke $r19.<java.lang.Exception: java.lang.String toString()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	r28 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r28, $r19);	throw $r24
;block_num 2