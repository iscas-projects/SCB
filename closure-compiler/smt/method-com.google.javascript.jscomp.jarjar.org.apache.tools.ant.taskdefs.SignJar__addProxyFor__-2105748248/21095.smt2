(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var98 0)
(declare-sort var3815 0)
(declare-sort var3109 0)
(declare-sort var2466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tsaproxyhost/1266515522 (var98) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addValue/1441305810 (var2466 var3815 String) void)
(declare-fun cast-from-var98-to-var2466 (var98) var2466)
(declare-fun tsaproxyport/1266515522 (var98) String)
(declare-const null-var98 var98)
(declare-const null-var3815 var3815)
(declare-const null-String String)
(declare-const var1376 var98) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar 
(assert (not (= var1376 null-var98)))
(declare-const var526 var3815) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask 
(assert (not (= var526 null-var3815)))
(declare-const var3848 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3848 null-String)))
(define-const var3718 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3718)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3718!1 String)
(assert (= var3718!1 ""))
(assert true)
(define-const var463 String (append/672562846 var3718!1 "-J-D")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-J-D") 
(declare-const var3718!2 String)
(assert (= var3718!2 (str.++ var3718!1 "-J-D")))
(assert true)
(define-const var1464 String (append/672562846 var463 var3848)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var463!1 String)
(assert (= var463!1 (str.++ var463 var3848)))
(assert true)
(define-const var2470 String (append/672562846 var1464 ".proxyHost=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".proxyHost=") 
(declare-const var1464!1 String)
(assert (= var1464!1 (str.++ var1464 ".proxyHost=")))
(define-const var3775 String (tsaproxyhost/1266515522 var1376)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar: java.lang.String tsaproxyhost> 
(assert true)
(define-const var1153 String (append/672562846 var2470 var3775)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2470!1 String)
(assert (= var2470!1 (str.++ var2470 var3775)))
(assert true)
(define-const var529 String (toString/-2075883882 var1153)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addValue/1441305810 (cast-from-var98-to-var2466 var1376) var526 var529)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar: void addValue(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask,java.lang.String)>(r1, $r9) 

(declare-const var1376!1 var98)
(declare-const var526!1 var3815)
(declare-const var529!1 String)
(define-const var1070 String (tsaproxyport/1266515522 var1376!1)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar: java.lang.String tsaproxyport> 
 ; Statement: if $r10 == null goto return 
(assert (= var1070 null-String)) ; Cond: $r10 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tsaproxyhost/1266515522=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addValue/1441305810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractJarSignerTask, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, java.lang.String], void), cast-from-var98-to-var2466=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractJarSignerTask), tsaproxyport/1266515522=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar], java.lang.String)}
; {var98=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar, var1376=r0, var3815=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, var526=r1, var3848=r3, var3109=null_type, var3718=$r2, var463=$r4, var1464=$r5, var2470=$r7, var3775=$r6, var1153=$r8, var529=$r9, var2466=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractJarSignerTask, var1070=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar=var98, r0=var1376, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask=var3815, r1=var526, r3=var3848, null_type=var3109, $r2=var3718, $r4=var463, $r5=var1464, $r7=var2470, $r6=var3775, $r8=var1153, $r9=var529, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractJarSignerTask=var2466, $r10=var1070}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask;	r3 := @parameter1: java.lang.String;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-J-D");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".proxyHost=");	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar: java.lang.String tsaproxyhost>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar: void addValue(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask,java.lang.String)>(r1, $r9);	$r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SignJar: java.lang.String tsaproxyport>;	if $r10 == null goto return;	return
;block_num 2