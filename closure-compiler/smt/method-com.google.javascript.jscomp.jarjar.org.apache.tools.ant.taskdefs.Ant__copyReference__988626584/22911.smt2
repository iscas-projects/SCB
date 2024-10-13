(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3798 0)
(declare-sort var3165 0)
(declare-sort var1382 0)
(declare-sort var1546 0)
(declare-sort var3624 0)
(declare-sort var2382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/416672769 (var1546) var1382)
(declare-fun cast-from-var3798-to-var1546 (var3798) var1546)
(declare-fun getReference/-1489021156 (var1382 String) var3624)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2382 String Int) void)
(declare-fun cast-from-var3798-to-var2382 (var3798) var2382)
(declare-const null-var3798 var3798)
(declare-const null-String String)
(declare-const null-var3624 var3624)
(declare-const var473 var3798) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant 
(assert (not (= var473 null-var3798)))
(declare-const var3983 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3983 null-String)))
(declare-const var3531 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var3531 null-String)))
(assert true)
(define-const var836 var1382 (getProject/416672769 (cast-from-var3798-to-var1546 var473))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var2966 var3624 (getReference/-1489021156 var836 var3983)) ; Statement: r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.Object getReference(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var2966 null-var3624)))) ; Negate: Cond: r3 != null  
(define-const var2608 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2608)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2608!1 String)
(assert (= var2608!1 ""))
(assert true)
(define-const var2483 String (append/672562846 var2608!1 "No object referenced by ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No object referenced by ") 
(declare-const var2608!2 String)
(assert (= var2608!2 (str.++ var2608!1 "No object referenced by ")))
(assert true)
(define-const var3042 String (append/672562846 var2483 var3983)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2483!1 String)
(assert (= var2483!1 (str.++ var2483 var3983)))
(assert true)
(define-const var1949 String (append/672562846 var3042 ". Can\u0027t copy to ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Can\'t copy to ") 
(declare-const var3042!1 String)
(assert (= var3042!1 (str.++ var3042 ". Can\u0027t copy to ")))
(assert true)
(define-const var2596 String (append/672562846 var1949 var3531)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1949!1 String)
(assert (= var1949!1 (str.++ var1949 var3531)))
(assert true)
(define-const var3877 String (toString/-2075883882 var2596)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3798-to-var2382 var473) var3877 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: void log(java.lang.String,int)>($r22, 1) 

(declare-const var473!1 var3798)
(declare-const var3877!1 String)
(declare-const var2938 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3798-to-var1546=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getReference/-1489021156=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3798-to-var2382=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3798=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant, var473=r0, var3983=r1, var3165=null_type, var3531=r7, var1382=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1546=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var836=$r2, var3624=java.lang.Object, var2966=r3, var2608=$r17, var2483=$r18, var3042=$r19, var1949=$r20, var2596=$r21, var3877=$r22, var2382=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2938=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant=var3798, r0=var473, r1=var3983, null_type=var3165, r7=var3531, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1382, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1546, $r2=var836, java.lang.Object=var3624, r3=var2966, $r17=var2608, $r18=var2483, $r19=var3042, $r20=var1949, $r21=var2596, $r22=var3877, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2382, 1=var2938}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant;	r1 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.Object getReference(java.lang.String)>(r1);	if r3 != null goto r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No object referenced by ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Can\'t copy to ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: void log(java.lang.String,int)>($r22, 1);	return
;block_num 2