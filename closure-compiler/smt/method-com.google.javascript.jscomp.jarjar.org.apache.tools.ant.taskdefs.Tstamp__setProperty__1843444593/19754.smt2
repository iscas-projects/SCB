(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3199 0)
(declare-sort var1015 0)
(declare-sort var918 0)
(declare-sort var3812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/416672769 (var3812) var918)
(declare-fun cast-from-var3199-to-var3812 (var3199) var3812)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun prefix/356190251 (var3199) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setNewProperty/-1788468516 (var918 String String) void)
(declare-const null-var3199 var3199)
(declare-const null-String String)
(declare-const var3270 var3199) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp 
(assert (not (= var3270 null-var3199)))
(declare-const var235 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var235 null-String)))
(declare-const var570 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var570 null-String)))
(assert true)
(define-const var1938 var918 (getProject/416672769 (cast-from-var3199-to-var3812 var3270))) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var3593 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3593)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3593!1 String)
(assert (= var3593!1 ""))
(define-const var682 String (prefix/356190251 var3270)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp: java.lang.String prefix> 
(assert true)
(define-const var1766 String (append/672562846 var3593!1 var682)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3593!2 String)
(assert (= var3593!2 (str.++ var3593!1 var682)))
(assert true)
(define-const var1178 String (append/672562846 var1766 var235)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1766!1 String)
(assert (= var1766!1 (str.++ var1766 var235)))
(assert true)
(define-const var1808 String (toString/-2075883882 var1178)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setNewProperty/-1788468516 var1938 var1808 var570)) ; Statement: virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setNewProperty(java.lang.String,java.lang.String)>($r7, r6) 

(declare-const var1938!1 var918)
(declare-const var1808!1 String)
(declare-const var570!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3199-to-var3812=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), prefix/356190251=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setNewProperty/-1788468516=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, java.lang.String], void)}
; {var3199=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp, var3270=r0, var235=r3, var1015=null_type, var570=r6, var918=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3812=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1938=$r8, var3593=$r1, var682=$r2, var1766=$r4, var1178=$r5, var1808=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp=var3199, r0=var3270, r3=var235, null_type=var1015, r6=var570, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var918, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3812, $r8=var1938, $r1=var3593, $r2=var682, $r4=var1766, $r5=var1178, $r7=var1808}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp;	r3 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp: java.lang.String prefix>;	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setNewProperty(java.lang.String,java.lang.String)>($r7, r6);	return
;block_num 1