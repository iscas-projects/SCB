(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1324 0)
(declare-sort var923 0)
(declare-sort var2743 0)
(declare-sort var2956 0)
(declare-sort var2992 0)
(declare-sort var1315 0)
(declare-sort var205 0)
(declare-sort var131 0)
(declare-sort var3669 0)
(declare-sort var123 0)
(declare-sort var3275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var205!class ClassObject)
(declare-fun log/-1601532580 (var2743 String) void)
(declare-fun cast-from-var1324-to-var2743 (var1324) var2743)
(declare-fun isWritable/1574931003 (var1324) Bool)
(declare-fun arr-var2956-init () (Array Int var2956))
(declare-fun var1315_getFileAttributeView/1064164394 (var923 ClassObject (Array Int var2956)) var2992)
(declare-fun cast-from-var2992-to-var205 (var2992) var205)
(declare-fun arr-var3669-init () (Array Int var3669))
(declare-fun cast-from-var923-to-var3669 (var923) var3669)
(declare-fun getMessage/849299655 (var123) String)
(declare-fun cast-from-var131-to-var123 (var131) var123)
(declare-fun cast-from-String-to-var3669 (String) var3669)
(declare-fun maybeThrowException/-18768835 (var1324 var3275 String (Array Int var3669)) void)
(declare-fun cast-from-var131-to-var3275 (var131) var3275)
(declare-const null-var1324 var1324)
(declare-const null-var923 var923)
(declare-const null-Bool Bool)
(declare-const null-var205 var205)
(declare-const null-var131 var131)
(declare-const null-__Array__Int__var3669__ (Array Int var3669))
(declare-const var1651 var1324) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions 
(assert (not (= var1651 null-var1324)))
(declare-const var1318 var923) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var1318 null-var923)))
(declare-const var1873 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1873 null-Bool)))
(assert true)
;(assert (log/-1601532580 (cast-from-var1324-to-var2743 var1651) "Falling back to DosFileAttributeView")) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView") 

(declare-const var1651!1 var1324)
(declare-const var3002 String)
(assert true)
(define-const var2759 Bool (isWritable/1574931003 var1651!1)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var2759 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2901 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $r2 = newarray (java.nio.file.LinkOption)[0]] 
(assert true) ; Non Conditional
(define-const var79 (Array Int var2956) arr-var2956-init) ; Statement: $r2 = newarray (java.nio.file.LinkOption)[0] 
(define-const var2959 var2992 (var1315_getFileAttributeView/1064164394 var1318 var205!class var79)) ; Statement: $r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2) 
(define-const var1417 var205 (cast-from-var2992-to-var205 var2959)) ; Statement: $r10 = (java.nio.file.attribute.DosFileAttributeView) $r3 
 ; Statement: if $r10 == null goto $r4 = newarray (java.lang.Object)[1] 
(assert (not (= var1417 null-var205))) ; Negate: Cond: $r10 == null  
(declare-const var3222 var131) ; Statement: $r13 := @caughtexception 
(assert (not (= var3222 null-var131)))
(define-const var3552 (Array Int var3669) arr-var3669-init) ; Statement: $r14 = newarray (java.lang.Object)[2] 
(declare-const var3552!1 (Array Int var3669))
(assert (not (= var3552!1 null-__Array__Int__var3669__)))
(assert (= (select var3552!1 0) (cast-from-var923-to-var3669 var1318))) ; Statement: $r14[0] = r1 
(assert true)
(define-const var1303 String (getMessage/849299655 (cast-from-var131-to-var123 var3222))) ; Statement: $r15 = virtualinvoke $r13.<java.io.IOException: java.lang.String getMessage()>() 
(declare-const var3552!2 (Array Int var3669))
(assert (not (= var3552!2 null-__Array__Int__var3669__)))
(assert (= (select var3552!2 1) (cast-from-String-to-var3669 var1303))) ; Statement: $r14[1] = $r15 
(assert true)
;(assert (maybeThrowException/-18768835 var1651!1 (cast-from-var131-to-var3275 var3222) "Failed to set permissions on \u0027%s\u0027 due to %s" var3552!2)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void maybeThrowException(java.lang.Exception,java.lang.String,java.lang.Object[])>($r13, "Failed to set permissions on \'%s\' due to %s", $r14) 

(declare-const var1651!2 var1324)
(declare-const var3222!1 var131)
(declare-const var3906 String)
(declare-const var3552!3 (Array Int var3669))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1601532580=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), cast-from-var1324-to-var2743=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), isWritable/1574931003=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], boolean), arr-var2956-init=([], java.nio.file.LinkOption[]), var1315_getFileAttributeView/1064164394=([java.nio.file.Path, java.lang.Class, java.nio.file.LinkOption[]], java.nio.file.attribute.FileAttributeView), cast-from-var2992-to-var205=([java.nio.file.attribute.FileAttributeView], java.nio.file.attribute.DosFileAttributeView), arr-var3669-init=([], java.lang.Object[]), cast-from-var923-to-var3669=([java.nio.file.Path], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var131-to-var123=([java.io.IOException], java.lang.Throwable), cast-from-String-to-var3669=([java.lang.String], java.lang.Object), maybeThrowException/-18768835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, java.lang.Exception, java.lang.String, java.lang.Object[]], void), cast-from-var131-to-var3275=([java.io.IOException], java.lang.Exception)}
; {var1324=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, var1651=r0, var923=java.nio.file.Path, var1318=r1, var1873=z1, var2743=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3002="Falling back to DosFileAttributeView", var2759=$z0, var2901=$z2, var2956=java.nio.file.LinkOption, var79=$r2, var2992=java.nio.file.attribute.FileAttributeView, var1315=java.nio.file.Files, var205=java.nio.file.attribute.DosFileAttributeView, var2959=$r3, var1417=$r10, var131=java.io.IOException, var3222=$r13, var3669=java.lang.Object, var3552=$r14, var123=java.lang.Throwable, var1303=$r15, var3275=java.lang.Exception, var3906="Failed to set permissions on \'%s\' due to %s"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions=var1324, r0=var1651, java.nio.file.Path=var923, r1=var1318, z1=var1873, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2743, "Falling back to DosFileAttributeView"=var3002, $z0=var2759, $z2=var2901, java.nio.file.LinkOption=var2956, $r2=var79, java.nio.file.attribute.FileAttributeView=var2992, java.nio.file.Files=var1315, java.nio.file.attribute.DosFileAttributeView=var205, $r3=var2959, $r10=var1417, java.io.IOException=var131, $r13=var3222, java.lang.Object=var3669, $r14=var3552, java.lang.Throwable=var123, $r15=var1303, java.lang.Exception=var3275, "Failed to set permissions on \'%s\' due to %s"=var3906}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions;	r1 := @parameter0: java.nio.file.Path;	z1 := @parameter1: boolean;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView");	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= $r2 = newarray (java.nio.file.LinkOption)[0]];	$r2 = newarray (java.nio.file.LinkOption)[0];	$r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2);	$r10 = (java.nio.file.attribute.DosFileAttributeView) $r3;	if $r10 == null goto $r4 = newarray (java.lang.Object)[1];	$r13 := @caughtexception;	$r14 = newarray (java.lang.Object)[2];	$r14[0] = r1;	$r15 = virtualinvoke $r13.<java.io.IOException: java.lang.String getMessage()>();	$r14[1] = $r15;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void maybeThrowException(java.lang.Exception,java.lang.String,java.lang.Object[])>($r13, "Failed to set permissions on \'%s\' due to %s", $r14);	goto [?= return];	return
;block_num 5