(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2011 0)
(declare-sort var163 0)
(declare-sort var718 0)
(declare-sort var720 0)
(declare-sort var968 0)
(declare-sort var963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var163) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getProject/416672769 (var968) var720)
(declare-fun cast-from-var2011-to-var968 (var2011) var968)
(declare-fun getBaseDir/-1460223445 (var720) var163)
(declare-fun append/-1031950772 (String var963) String)
(declare-fun cast-from-var163-to-var963 (var163) var963)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2011 var2011)
(declare-const null-var163 var163)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1513 var2011) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc 
(assert (not (= var1513 null-var2011)))
(declare-const var254 var163) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var254 null-var163)))
(declare-const var3715 String) ; Statement: r22 := @parameter1: java.lang.String 
(assert (not (= var3715 null-String)))
(declare-const var3833 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3833 null-Bool)))
(define-const var1684 String ".html") ; Statement: r23 = ".html" 
(define-const var1560 String ".html") ; Statement: r29 = ".html" 
(define-const var1557 String ".html") ; Statement: r28 = ".html" 
(define-const var2030 String ".html") ; Statement: r27 = ".html" 
(define-const var1734 String ".html") ; Statement: r26 = ".html" 
(assert true)
(define-const var3756 String (getAbsolutePath/-802773300 var254)) ; Statement: $r1 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1284 String (replace/1524665721 var3756 92 47)) ; Statement: r24 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var3833 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if r22 == null goto $i2 = virtualinvoke r24.<java.lang.String: int lastIndexOf(int)>(47) 
(assert (not (= var3715 null-String))) ; Negate: Cond: r22 == null  
(assert true)
(define-const var1173 Bool (isEmpty/-1285796103 var3715)) ; Statement: $z2 = virtualinvoke r22.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto r25 = virtualinvoke r22.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
(assert (= (ite var1173 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var1209 String (replace/1524665721 var3715 92 47)) ; Statement: r25 = virtualinvoke r22.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
(assert true) ; Non Conditional
(define-const var623 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var623)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var623!1 String)
(assert (= var623!1 ""))
(assert true)
(define-const var2766 var720 (getProject/416672769 (cast-from-var2011-to-var968 var1513))) ; Statement: $r9 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var2046 var163 (getBaseDir/-1460223445 var2766)) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.io.File getBaseDir()>() 
(assert true)
(define-const var1489 String (append/-1031950772 var623!1 (cast-from-var163-to-var963 var2046))) ; Statement: $r11 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var623!2 String)
(assert (str.prefixof var623!1 var623!2))
(assert true)
(define-const var241 String (append/672562846 var1489 "/")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var1489!1 String)
(assert (= var1489!1 (str.++ var1489 "/")))
(assert true)
(define-const var1040 String (append/672562846 var241 var1209)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25) 
(declare-const var241!1 String)
(assert (= var241!1 (str.++ var241 var1209)))
(assert true)
(define-const var99 String (toString/-2075883882 var1040)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2656 String (replace/1524665721 var99 92 47)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var2011-to-var968=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getBaseDir/-1460223445=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var163-to-var963=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2011=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc, var1513=r8, var163=java.io.File, var254=r0, var3715=r22, var718=null_type, var3833=z0, var1684=r23, var1560=r29, var1557=r28, var2030=r27, var1734=r26, var3756=$r1, var1284=r24, var1173=$z2, var1209=r25, var623=$r33, var720=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var968=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2766=$r9, var2046=$r10, var963=java.lang.Object, var1489=$r11, var241=$r12, var1040=$r13, var99=$r14, var2656=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc=var2011, r8=var1513, java.io.File=var163, r0=var254, r22=var3715, null_type=var718, z0=var3833, r23=var1684, r29=var1560, r28=var1557, r27=var2030, r26=var1734, $r1=var3756, r24=var1284, $z2=var1173, r25=var1209, $r33=var623, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var720, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var968, $r9=var2766, $r10=var2046, java.lang.Object=var963, $r11=var1489, $r12=var241, $r13=var1040, $r14=var99, $r15=var2656}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 3,"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc;	r0 := @parameter0: java.io.File;	r22 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	r23 = ".html";	r29 = ".html";	r28 = ".html";	r27 = ".html";	r26 = ".html";	$r1 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>();	r24 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	if z0 == 0 goto (branch);	if r22 == null goto $i2 = virtualinvoke r24.<java.lang.String: int lastIndexOf(int)>(47);	$z2 = virtualinvoke r22.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto r25 = virtualinvoke r22.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	r25 = virtualinvoke r22.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.io.File getBaseDir()>();	$r11 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r14.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	return $r15
;block_num 5