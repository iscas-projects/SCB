(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var891 0)
(declare-sort var523 0)
(declare-sort var1011 0)
(declare-sort var2993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/416672769 (var2993) var1011)
(declare-fun cast-from-var891-to-var2993 (var891) var2993)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun prefix/-4640814 (var891) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setNewProperty/-1788468516 (var1011 String String) void)
(declare-const null-var891 var891)
(declare-const null-String String)
(declare-const var2787 var891) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo 
(assert (not (= var2787 null-var891)))
(declare-const var3979 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3979 null-String)))
(declare-const var2429 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var2429 null-String)))
(assert true)
(define-const var3269 var1011 (getProject/416672769 (cast-from-var891-to-var2993 var2787))) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var1276 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1276)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1276!1 String)
(assert (= var1276!1 ""))
(define-const var2891 String (prefix/-4640814 var2787)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: java.lang.String prefix> 
(assert true)
(define-const var1565 String (append/672562846 var1276!1 var2891)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1276!2 String)
(assert (= var1276!2 (str.++ var1276!1 var2891)))
(assert true)
(define-const var1644 String (append/672562846 var1565 var3979)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1565!1 String)
(assert (= var1565!1 (str.++ var1565 var3979)))
(assert true)
(define-const var2613 String (toString/-2075883882 var1644)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setNewProperty/-1788468516 var3269 var2613 var2429)) ; Statement: virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setNewProperty(java.lang.String,java.lang.String)>($r7, r6) 

(declare-const var3269!1 var1011)
(declare-const var2613!1 String)
(declare-const var2429!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var891-to-var2993=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), prefix/-4640814=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setNewProperty/-1788468516=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, java.lang.String], void)}
; {var891=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo, var2787=r0, var3979=r3, var523=null_type, var2429=r6, var1011=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2993=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3269=$r8, var1276=$r1, var2891=$r2, var1565=$r4, var1644=$r5, var2613=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo=var891, r0=var2787, r3=var3979, null_type=var523, r6=var2429, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1011, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2993, $r8=var3269, $r1=var1276, $r2=var2891, $r4=var1565, $r5=var1644, $r7=var2613}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo;	r3 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: java.lang.String prefix>;	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setNewProperty(java.lang.String,java.lang.String)>($r7, r6);	return
;block_num 1