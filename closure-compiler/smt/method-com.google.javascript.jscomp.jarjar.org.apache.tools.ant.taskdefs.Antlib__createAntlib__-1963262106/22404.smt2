(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var605 0)
(declare-sort var3651 0)
(declare-sort var3780 0)
(declare-sort var1933 0)
(declare-sort var3227 0)
(declare-sort var3177 0)
(declare-sort var1716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3227-init () var3227)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3177) String)
(declare-fun cast-from-var3651-to-var3177 (var3651) var3177)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3227 String var1716) void)
(declare-fun cast-from-var1933-to-var1716 (var1933) var1716)
(declare-const null-var605 var605)
(declare-const null-var3651 var3651)
(declare-const null-String String)
(declare-const null-var1933 var1933)
(declare-const var3292 var605) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3292 null-var605)))
(declare-const var1 var3651) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var1 null-var3651)))
(declare-const var1232 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1232 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3595 var1933) ; Statement: $r20 := @caughtexception 
(assert (not (= var3595 null-var1933)))
(define-const var2555 var3227 var3227-init) ; Statement: $r21 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1107 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1107)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1107!1 String)
(assert (= var1107!1 ""))
(assert true)
(define-const var2773 String (append/672562846 var1107!1 "Unable to find ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find ") 
(declare-const var1107!2 String)
(assert (= var1107!2 (str.++ var1107!1 "Unable to find ")))
(assert true)
(define-const var3596 String (append/-1031950772 var2773 (cast-from-var3651-to-var3177 var1))) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2773!1 String)
(assert (str.prefixof var2773 var2773!1))
(assert true)
(define-const var29 String (toString/-2075883882 var3596)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2555 var29 (cast-from-var1933-to-var1716 var3595))) ; Statement: specialinvoke $r21.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r20) 

(declare-const var2555!1 var3227)
(declare-const var29!1 String)
(declare-const var3595!1 var1933)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var3227-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3651-to-var3177=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1933-to-var1716=([java.io.IOException], java.lang.Throwable)}
; {var605=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3292=r1, var3651=java.net.URL, var1=r0, var1232=r2, var3780=null_type, var1933=java.io.IOException, var3595=$r20, var3227=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2555=$r21, var1107=$r22, var2773=$r23, var3177=java.lang.Object, var3596=$r24, var29=$r25, var1716=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var605, r1=var3292, java.net.URL=var3651, r0=var1, r2=var1232, null_type=var3780, java.io.IOException=var1933, $r20=var3595, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3227, $r21=var2555, $r22=var1107, $r23=var2773, java.lang.Object=var3177, $r24=var3596, $r25=var29, java.lang.Throwable=var1716}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r0 := @parameter1: java.net.URL;	r2 := @parameter2: java.lang.String;	$r20 := @caughtexception;	$r21 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find ");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r20);	throw $r21
;block_num 2