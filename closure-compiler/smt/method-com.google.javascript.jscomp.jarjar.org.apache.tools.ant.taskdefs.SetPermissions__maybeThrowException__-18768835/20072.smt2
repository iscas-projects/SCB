(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1373 0)
(declare-sort var357 0)
(declare-sort var3438 0)
(declare-sort var1761 0)
(declare-sort var2666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_format/1339386452 (String (Array Int var1761)) String)
(declare-fun failonerror/591965982 (var1373) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2666 String Int) void)
(declare-fun cast-from-var1373-to-var2666 (var1373) var2666)
(declare-const null-var1373 var1373)
(declare-const null-var357 var357)
(declare-const null-String String)
(declare-const null-__Array__Int__var1761__ (Array Int var1761))
(declare-const var915 var1373) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions 
(assert (not (= var915 null-var1373)))
(declare-const var114 var357) ; Statement: r8 := @parameter0: java.lang.Exception 
(assert (not (= var114 null-var357)))
(declare-const var1481 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1481 null-String)))
(declare-const var3034 (Array Int var1761)) ; Statement: r1 := @parameter2: java.lang.Object[] 
(assert (not (= var3034 null-__Array__Int__var1761__)))
(define-const var912 String (String_format/1339386452 var1481 var3034)) ; Statement: r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, r1) 
(define-const var3977 Bool (failonerror/591965982 var915)) ; Statement: $z0 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean failonerror> 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.StringBuilder 
(assert (= (ite var3977 1 0) 0)) ; Cond: $z0 == 0 
(define-const var953 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var953)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var953!1 String)
(assert (= var953!1 ""))
(assert true)
(define-const var811 String (append/672562846 var953!1 "Warning: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Warning: ") 
(declare-const var953!2 String)
(assert (= var953!2 (str.++ var953!1 "Warning: ")))
(assert true)
(define-const var3670 String (append/672562846 var811 var912)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var811!1 String)
(assert (= var811!1 (str.++ var811 var912)))
(assert true)
(define-const var807 String (toString/-2075883882 var3670)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1373-to-var2666 var915) var807 0)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String,int)>($r7, 0) 

(declare-const var915!1 var1373)
(declare-const var807!1 String)
(declare-const var643 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), failonerror/591965982=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1373-to-var2666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1373=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, var915=r3, var357=java.lang.Exception, var114=r8, var1481=r0, var3438=null_type, var1761=java.lang.Object, var3034=r1, var912=r2, var3977=$z0, var953=$r4, var811=$r5, var3670=$r6, var807=$r7, var2666=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var643=0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions=var1373, r3=var915, java.lang.Exception=var357, r8=var114, r0=var1481, null_type=var3438, java.lang.Object=var1761, r1=var3034, r2=var912, $z0=var3977, $r4=var953, $r5=var811, $r6=var3670, $r7=var807, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2666, 0=var643}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions;	r8 := @parameter0: java.lang.Exception;	r0 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Object[];	r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, r1);	$z0 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean failonerror>;	if $z0 == 0 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Warning: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String,int)>($r7, 0);	return
;block_num 2