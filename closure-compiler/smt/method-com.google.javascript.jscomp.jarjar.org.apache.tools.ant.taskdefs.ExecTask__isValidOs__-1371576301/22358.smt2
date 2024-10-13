(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1180 0)
(declare-sort var1215 0)
(declare-sort var2949 0)
(declare-sort var3176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun osFamily/-1956698350 (var1180) String)
(declare-fun var2949_getProperty/258823597 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3176 String Int) void)
(declare-fun cast-from-var1180-to-var3176 (var1180) var3176)
(declare-fun os/-1956698350 (var1180) String)
(declare-const null-var1180 var1180)
(declare-const null-String String)
(declare-const var802 var1180) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask 
(assert (not (= var802 null-var1180)))
(define-const var2648 String (osFamily/-1956698350 var802)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: java.lang.String osFamily> 
 ; Statement: if $r1 == null goto $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name") 
(assert (= var2648 null-String)) ; Cond: $r1 == null 
(define-const var570 String (var2949_getProperty/258823597 "os.name")) ; Statement: $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name") 
(define-const var1477 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1477)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1477!1 String)
(assert (= var1477!1 ""))
(assert true)
(define-const var891 String (append/672562846 var1477!1 "Current OS is ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Current OS is ") 
(declare-const var1477!2 String)
(assert (= var1477!2 (str.++ var1477!1 "Current OS is ")))
(assert true)
(define-const var2147 String (append/672562846 var891 var570)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var891!1 String)
(assert (= var891!1 (str.++ var891 var570)))
(assert true)
(define-const var619 String (toString/-2075883882 var2147)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1180-to-var3176 var802) var619 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void log(java.lang.String,int)>($r5, 3) 

(declare-const var802!1 var1180)
(declare-const var619!1 String)
(declare-const var1776 Int)
(define-const var3484 String (os/-1956698350 var802!1)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: java.lang.String os> 
 ; Statement: if $r6 == null goto return 1 
(assert (= var3484 null-String)) ; Cond: $r6 == null 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {osFamily/-1956698350=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask], java.lang.String), var2949_getProperty/258823597=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1180-to-var3176=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), os/-1956698350=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask], java.lang.String)}
; {var1180=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, var802=r0, var2648=$r1, var1215=null_type, var2949=java.lang.System, var570=$r16, var1477=$r2, var891=$r3, var2147=$r4, var619=$r5, var3176=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1776=3, var3484=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask=var1180, r0=var802, $r1=var2648, null_type=var1215, java.lang.System=var2949, $r16=var570, $r2=var1477, $r3=var891, $r4=var2147, $r5=var619, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3176, 3=var1776, $r6=var3484}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: java.lang.String osFamily>;	if $r1 == null goto $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name");	$r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Current OS is ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void log(java.lang.String,int)>($r5, 3);	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: java.lang.String os>;	if $r6 == null goto return 1;	return 1
;block_num 3