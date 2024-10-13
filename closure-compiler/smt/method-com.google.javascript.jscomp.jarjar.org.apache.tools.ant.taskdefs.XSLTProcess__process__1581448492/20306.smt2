(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var254 0)
(declare-sort var2420 0)
(declare-sort var2168 0)
(declare-sort var3697 0)
(declare-sort var2477 0)
(declare-sort var789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2477) String)
(declare-fun cast-from-var2420-to-var2477 (var2420) var2477)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var789 String Int) void)
(declare-fun cast-from-var254-to-var789 (var254) var789)
(declare-fun handleTransformationError/-1936681203 (var254 var3697) void)
(declare-const null-var254 var254)
(declare-const null-var2420 var2420)
(declare-const null-var2168 var2168)
(declare-const null-var3697 var3697)
(declare-const var651 var254) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess 
(assert (not (= var651 null-var254)))
(declare-const var3530 var2420) ; Statement: r3 := @parameter0: java.io.File 
(assert (not (= var3530 null-var2420)))
(declare-const var1705 var2420) ; Statement: r10 := @parameter1: java.io.File 
(assert (not (= var1705 null-var2420)))
(declare-const var1911 var2168) ; Statement: r0 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var1911 null-var2168)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var228 var3697) ; Statement: $r31 := @caughtexception 
(assert (not (= var228 null-var3697)))
(define-const var3802 String String-init) ; Statement: $r49 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3802)) ; Statement: specialinvoke $r49.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3802!1 String)
(assert (= var3802!1 ""))
(assert true)
(define-const var3147 String (append/672562846 var3802!1 "Failed to process ")) ; Statement: $r33 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to process ") 
(declare-const var3802!2 String)
(assert (= var3802!2 (str.++ var3802!1 "Failed to process ")))
(assert true)
(define-const var2143 String (append/-1031950772 var3147 (cast-from-var2420-to-var2477 var3530))) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var3147!1 String)
(assert (str.prefixof var3147 var3147!1))
(assert true)
(define-const var3062 String (toString/-2075883882 var2143)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var254-to-var789 var651) var3062 2)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void log(java.lang.String,int)>($r35, 2) 

(declare-const var651!1 var254)
(declare-const var3062!1 String)
(declare-const var142 Int)
 ; Statement: if r10 == null goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void handleTransformationError(java.lang.Exception)>($r31) 
(assert (= var1705 null-var2420)) ; Cond: r10 == null 
(assert true)
;(assert (handleTransformationError/-1936681203 var651!1 var228)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void handleTransformationError(java.lang.Exception)>($r31) 

(declare-const var651!2 var254)
(declare-const var228!1 var3697)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2420-to-var2477=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var254-to-var789=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), handleTransformationError/-1936681203=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, java.lang.Exception], void)}
; {var254=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, var651=r1, var2420=java.io.File, var3530=r3, var1705=r10, var2168=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var1911=r0, var3697=java.lang.Exception, var228=$r31, var3802=$r49, var3147=$r33, var2477=java.lang.Object, var2143=$r34, var3062=$r35, var789=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var142=2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess=var254, r1=var651, java.io.File=var2420, r3=var3530, r10=var1705, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2168, r0=var1911, java.lang.Exception=var3697, $r31=var228, $r49=var3802, $r33=var3147, java.lang.Object=var2477, $r34=var2143, $r35=var3062, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var789, 2=var142}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess;	r3 := @parameter0: java.io.File;	r10 := @parameter1: java.io.File;	r0 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	$r31 := @caughtexception;	$r49 = new java.lang.StringBuilder;	specialinvoke $r49.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to process ");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void log(java.lang.String,int)>($r35, 2);	if r10 == null goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void handleTransformationError(java.lang.Exception)>($r31);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void handleTransformationError(java.lang.Exception)>($r31);	return
;block_num 4