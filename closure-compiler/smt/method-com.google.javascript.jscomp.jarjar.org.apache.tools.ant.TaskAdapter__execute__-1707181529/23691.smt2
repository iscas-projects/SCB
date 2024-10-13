(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3546 0)
(declare-sort var2903 0)
(declare-sort var521 0)
(declare-sort var1105 0)
(declare-sort var2435 0)
(declare-sort var1186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun proxy/-418995093 (var3546) var521)
(declare-fun getClass/1258963082 (var521) ClassObject)
(declare-fun append/-1031950772 (String var521) String)
(declare-fun cast-from-ClassObject-to-var521 (ClassObject) var521)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1105 String Int) void)
(declare-fun cast-from-var3546-to-var1105 (var3546) var1105)
(declare-fun var2435-init () var2435)
(declare-fun <init>/-198444851 (var2435 var1186) void)
(declare-fun cast-from-var2903-to-var1186 (var2903) var1186)
(declare-const null-var3546 var3546)
(declare-const null-var2903 var2903)
(declare-const var543 var3546) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.TaskAdapter 
(assert (not (= var543 null-var3546)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var658 var2903) ; Statement: $r32 := @caughtexception 
(assert (not (= var658 null-var2903)))
(define-const var60 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var60)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var60!1 String)
(assert (= var60!1 ""))
(assert true)
(define-const var644 String (append/672562846 var60!1 "Error setting location in ")) ; Statement: $r36 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error setting location in ") 
(declare-const var60!2 String)
(assert (= var60!2 (str.++ var60!1 "Error setting location in ")))
(define-const var1676 var521 (proxy/-418995093 var543)) ; Statement: $r34 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.TaskAdapter: java.lang.Object proxy> 
(assert true)
(define-const var184 ClassObject (getClass/1258963082 var1676)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var350 String (append/-1031950772 var644 (cast-from-ClassObject-to-var521 var184))) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r35) 
(declare-const var644!1 String)
(assert (str.prefixof var644 var644!1))
(assert true)
(define-const var105 String (toString/-2075883882 var350)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3546-to-var1105 var543) var105 0)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.TaskAdapter: void log(java.lang.String,int)>($r38, 0) 

(declare-const var543!1 var3546)
(declare-const var105!1 String)
(declare-const var1094 Int)
(define-const var2177 var2435 var2435-init) ; Statement: $r39 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-198444851 var2177 (cast-from-var2903-to-var1186 var658))) ; Statement: specialinvoke $r39.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r32) 

(declare-const var2177!1 var2435)
(declare-const var658!1 var2903)
 ; Statement: throw $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), proxy/-418995093=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.TaskAdapter], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var521=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3546-to-var1105=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.TaskAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var2435-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-198444851=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.Throwable], void), cast-from-var2903-to-var1186=([java.lang.Exception], java.lang.Throwable)}
; {var3546=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.TaskAdapter, var543=r0, var2903=java.lang.Exception, var658=$r32, var60=$r33, var644=$r36, var521=java.lang.Object, var1676=$r34, var184=$r35, var350=$r37, var105=$r38, var1105=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1094=0, var2435=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2177=$r39, var1186=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.TaskAdapter=var3546, r0=var543, java.lang.Exception=var2903, $r32=var658, $r33=var60, $r36=var644, java.lang.Object=var521, $r34=var1676, $r35=var184, $r37=var350, $r38=var105, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1105, 0=var1094, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2435, $r39=var2177, java.lang.Throwable=var1186}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.TaskAdapter;	$r32 := @caughtexception;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error setting location in ");	$r34 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.TaskAdapter: java.lang.Object proxy>;	$r35 = virtualinvoke $r34.<java.lang.Object: java.lang.Class getClass()>();	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r35);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.TaskAdapter: void log(java.lang.String,int)>($r38, 0);	$r39 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r39.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r32);	throw $r39
;block_num 2