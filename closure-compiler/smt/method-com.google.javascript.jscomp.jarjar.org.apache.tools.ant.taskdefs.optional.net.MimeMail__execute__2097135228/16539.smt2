(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3840 0)
(declare-sort var2359 0)
(declare-sort var3337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTaskName/237633316 (var2359) String)
(declare-fun cast-from-var3840-to-var2359 (var3840) var2359)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1601532580 (var2359 String) void)
(declare-fun execute/1835147511 (var3337) void)
(declare-fun cast-from-var3840-to-var3337 (var3840) var3337)
(declare-const null-var3840 var3840)
(declare-const var2707 var3840) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.MimeMail 
(assert (not (= var2707 null-var3840)))
(define-const var3916 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3916)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3916!1 String)
(assert (= var3916!1 ""))
(assert true)
(define-const var3137 String (append/672562846 var3916!1 "DEPRECATED - The ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DEPRECATED - The ") 
(declare-const var3916!2 String)
(assert (= var3916!2 (str.++ var3916!1 "DEPRECATED - The ")))
(assert true)
(define-const var2184 String (getTaskName/237633316 (cast-from-var3840-to-var2359 var2707))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.MimeMail: java.lang.String getTaskName()>() 
(assert true)
(define-const var1775 String (append/672562846 var3137 var2184)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3137!1 String)
(assert (= var3137!1 (str.++ var3137 var2184)))
(assert true)
(define-const var3126 String (append/672562846 var1775 " task is deprecated. Use the mail task instead.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" task is deprecated. Use the mail task instead.") 
(declare-const var1775!1 String)
(assert (= var1775!1 (str.++ var1775 " task is deprecated. Use the mail task instead.")))
(assert true)
(define-const var1960 String (toString/-2075883882 var3126)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1601532580 (cast-from-var3840-to-var2359 var2707) var1960)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.MimeMail: void log(java.lang.String)>($r6) 

(declare-const var2707!1 var3840)
(declare-const var1960!1 String)
(assert true)
;(assert (execute/1835147511 (cast-from-var3840-to-var3337 var2707!1))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask: void execute()>() 

(declare-const var2707!2 var3840)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTaskName/237633316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var3840-to-var2359=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.MimeMail], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1601532580=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), execute/1835147511=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask], void), cast-from-var3840-to-var3337=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.MimeMail], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask)}
; {var3840=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.MimeMail, var2707=r0, var3916=$r1, var3137=$r3, var2359=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2184=$r2, var1775=$r4, var3126=$r5, var1960=$r6, var3337=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.MimeMail=var3840, r0=var2707, $r1=var3916, $r3=var3137, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2359, $r2=var2184, $r4=var1775, $r5=var3126, $r6=var1960, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask=var3337}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.MimeMail;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DEPRECATED - The ");	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.MimeMail: java.lang.String getTaskName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" task is deprecated. Use the mail task instead.");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.MimeMail: void log(java.lang.String)>($r6);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask: void execute()>();	return
;block_num 1