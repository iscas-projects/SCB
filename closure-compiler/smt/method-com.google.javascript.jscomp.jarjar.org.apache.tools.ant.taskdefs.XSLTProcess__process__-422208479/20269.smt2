(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1396 0)
(declare-sort var3675 0)
(declare-sort var2874 0)
(declare-sort var3172 0)
(declare-sort var648 0)
(declare-sort var3962 0)
(declare-sort var1548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun inFile/1286477936 (var1396) var3675)
(declare-fun append/-1031950772 (String var3962) String)
(declare-fun cast-from-var3675-to-var3962 (var3675) var3962)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1548 String Int) void)
(declare-fun cast-from-var1396-to-var1548 (var1396) var1548)
(declare-fun handleTransformationError/-1936681203 (var1396 var648) void)
(declare-const null-var1396 var1396)
(declare-const null-var3675 var3675)
(declare-const null-String String)
(declare-const null-var3172 var3172)
(declare-const null-var648 var648)
(declare-const var1728 var1396) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess 
(assert (not (= var1728 null-var1396)))
(declare-const var2141 var3675) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var2141 null-var3675)))
(declare-const var3370 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3370 null-String)))
(declare-const var687 var3675) ; Statement: r14 := @parameter2: java.io.File 
(assert (not (= var687 null-var3675)))
(declare-const var2338 var3172) ; Statement: r0 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2338 null-var3172)))
(define-const var1774 var3675 null-var3675) ; Statement: r34 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3799 var648) ; Statement: $r28 := @caughtexception 
(assert (not (= var3799 null-var648)))
(define-const var3883 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3883)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3883!1 String)
(assert (= var3883!1 ""))
(assert true)
(define-const var2276 String (append/672562846 var3883!1 "Failed to process ")) ; Statement: $r31 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to process ") 
(declare-const var3883!2 String)
(assert (= var3883!2 (str.++ var3883!1 "Failed to process ")))
(define-const var1492 var3675 (inFile/1286477936 var1728)) ; Statement: $r30 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.io.File inFile> 
(assert true)
(define-const var324 String (append/-1031950772 var2276 (cast-from-var3675-to-var3962 var1492))) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r30) 
(declare-const var2276!1 String)
(assert (str.prefixof var2276 var2276!1))
(assert true)
(define-const var3054 String (toString/-2075883882 var324)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1396-to-var1548 var1728) var3054 2)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void log(java.lang.String,int)>($r33, 2) 

(declare-const var1728!1 var1396)
(declare-const var3054!1 String)
(declare-const var1882 Int)
 ; Statement: if r34 == null goto virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void handleTransformationError(java.lang.Exception)>($r28) 
(assert (= var1774 null-var3675)) ; Cond: r34 == null 
(assert true)
;(assert (handleTransformationError/-1936681203 var1728!1 var3799)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void handleTransformationError(java.lang.Exception)>($r28) 

(declare-const var1728!2 var1396)
(declare-const var3799!1 var648)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), inFile/1286477936=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3675-to-var3962=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1396-to-var1548=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), handleTransformationError/-1936681203=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, java.lang.Exception], void)}
; {var1396=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, var1728=r4, var3675=java.io.File, var2141=r2, var3370=r3, var2874=null_type, var687=r14, var3172=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2338=r0, var1774=r34, var648=java.lang.Exception, var3799=$r28, var3883=$r51, var2276=$r31, var1492=$r30, var3962=java.lang.Object, var324=$r32, var3054=$r33, var1548=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1882=2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess=var1396, r4=var1728, java.io.File=var3675, r2=var2141, r3=var3370, null_type=var2874, r14=var687, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var3172, r0=var2338, r34=var1774, java.lang.Exception=var648, $r28=var3799, $r51=var3883, $r31=var2276, $r30=var1492, java.lang.Object=var3962, $r32=var324, $r33=var3054, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1548, 2=var1882}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess;	r2 := @parameter0: java.io.File;	r3 := @parameter1: java.lang.String;	r14 := @parameter2: java.io.File;	r0 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r34 = null;	$r28 := @caughtexception;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to process ");	$r30 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.io.File inFile>;	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void log(java.lang.String,int)>($r33, 2);	if r34 == null goto virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void handleTransformationError(java.lang.Exception)>($r28);	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void handleTransformationError(java.lang.Exception)>($r28);	return
;block_num 4