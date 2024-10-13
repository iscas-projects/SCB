(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1187 0)
(declare-sort var3149 0)
(declare-sort var353 0)
(declare-sort var2202 0)
(declare-sort var2500 0)
(declare-sort var2762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3149!class ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2202) String)
(declare-fun cast-from-ClassObject-to-var2202 (ClassObject) var2202)
(declare-fun cast-from-var353-to-var2202 (var353) var2202)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var1187 String Int) void)
(declare-fun var2500-init () var2500)
(declare-fun <init>/-191906322 (var2500 String var2762) void)
(declare-fun cast-from-var353-to-var2762 (var353) var2762)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1187 var1187)
(declare-const null-var353 var353)
(declare-const var3683 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3683 null-ClassObject)))
(declare-const var108 var1187) ; Statement: r11 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var108 null-var1187)))
(define-const var3376 ClassObject var3149!class) ; Statement: $r1 = class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/dispatch/Dispatchable;" 
(assert true)
(define-const var2447 Bool (isAssignableFrom/-1028998700 var3376 var3683)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2447 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var277 var353) ; Statement: $r12 := @caughtexception 
(assert (not (= var277 null-var353)))
(define-const var1918 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1918)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1918!1 String)
(assert (= var1918!1 ""))
(assert true)
(define-const var3942 String (append/672562846 var1918!1 "Could not load ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load ") 
(declare-const var1918!2 String)
(assert (= var1918!2 (str.++ var1918!1 "Could not load ")))
(assert true)
(define-const var320 String (append/-1031950772 var3942 (cast-from-ClassObject-to-var2202 var3683))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3942!1 String)
(assert (str.prefixof var3942 var3942!1))
(assert true)
(define-const var2203 String (append/672562846 var320 ": ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var320!1 String)
(assert (= var320!1 (str.++ var320 ": ")))
(assert true)
(define-const var1167 String (append/-1031950772 var2203 (cast-from-var353-to-var2202 var277))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var2203!1 String)
(assert (str.prefixof var2203 var2203!1))
(assert true)
(define-const var1119 String (toString/-2075883882 var1167)) ; Statement: r27 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var108 var1119 0)) ; Statement: virtualinvoke r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>(r27, 0) 

(declare-const var108!1 var1187)
(declare-const var1119!1 String)
(declare-const var1682 Int)
(define-const var334 var2500 var2500-init) ; Statement: $r18 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-191906322 var334 var1119!1 (cast-from-var353-to-var2762 var277))) ; Statement: specialinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r27, $r12) 

(declare-const var334!1 var2500)
(declare-const var1119!2 String)
(declare-const var277!1 var353)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2202=([java.lang.Class], java.lang.Object), cast-from-var353-to-var2202=([java.lang.LinkageError], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void), var2500-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var353-to-var2762=([java.lang.LinkageError], java.lang.Throwable)}
; {var3683=r0, var1187=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var108=r11, var3149=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.dispatch.Dispatchable, var3376=$r1, var2447=$z0, var353=java.lang.LinkageError, var277=$r12, var1918=$r13, var3942=$r14, var2202=java.lang.Object, var320=$r15, var2203=$r16, var1167=$r17, var1119=r27, var1682=0, var2500=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var334=$r18, var2762=java.lang.Throwable}
; {r0=var3683, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1187, r11=var108, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.dispatch.Dispatchable=var3149, $r1=var3376, $z0=var2447, java.lang.LinkageError=var353, $r12=var277, $r13=var1918, $r14=var3942, java.lang.Object=var2202, $r15=var320, $r16=var2203, $r17=var1167, r27=var1119, 0=var1682, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2500, $r18=var334, java.lang.Throwable=var2762}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r11 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	$r1 = class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/dispatch/Dispatchable;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z0 != 0 goto return;	$r12 := @caughtexception;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	r27 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>(r27, 0);	$r18 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r27, $r12);	throw $r18
;block_num 2