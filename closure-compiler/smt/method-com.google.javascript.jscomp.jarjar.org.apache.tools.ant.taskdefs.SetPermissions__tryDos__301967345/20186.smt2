(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var734 0)
(declare-sort var1327 0)
(declare-sort var1363 0)
(declare-sort var1181 0)
(declare-sort var3755 0)
(declare-sort var415 0)
(declare-sort var557 0)
(declare-sort var1766 0)
(declare-sort var2077 0)
(declare-sort var875 0)
(declare-sort var876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var557!class ClassObject)
(declare-fun log/-1601532580 (var1363 String) void)
(declare-fun cast-from-var734-to-var1363 (var734) var1363)
(declare-fun isWritable/1574931003 (var734) Bool)
(declare-fun arr-var1181-init () (Array Int var1181))
(declare-fun var415_getFileAttributeView/1064164394 (var1327 ClassObject (Array Int var1181)) var3755)
(declare-fun cast-from-var3755-to-var557 (var3755) var557)
(declare-fun arr-var2077-init () (Array Int var2077))
(declare-fun cast-from-var1327-to-var2077 (var1327) var2077)
(declare-fun maybeThrowException/-18768835 (var734 var875 String (Array Int var2077)) void)
(declare-const null-var734 var734)
(declare-const null-var1327 var1327)
(declare-const null-Bool Bool)
(declare-const null-var557 var557)
(declare-const null-var1766 var1766)
(declare-const null-__Array__Int__var2077__ (Array Int var2077))
(declare-const null-NullType var876)
(declare-const null-var875 var875)
(declare-const var3356 var734) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions 
(assert (not (= var3356 null-var734)))
(declare-const var148 var1327) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var148 null-var1327)))
(declare-const var2536 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2536 null-Bool)))
(assert true)
;(assert (log/-1601532580 (cast-from-var734-to-var1363 var3356) "Falling back to DosFileAttributeView")) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView") 

(declare-const var3356!1 var734)
(declare-const var1528 String)
(assert true)
(define-const var1698 Bool (isWritable/1574931003 var3356!1)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var1698 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var731 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $r2 = newarray (java.nio.file.LinkOption)[0]] 
(assert true) ; Non Conditional
(define-const var2985 (Array Int var1181) arr-var1181-init) ; Statement: $r2 = newarray (java.nio.file.LinkOption)[0] 
(define-const var3215 var3755 (var415_getFileAttributeView/1064164394 var148 var557!class var2985)) ; Statement: $r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2) 
(define-const var765 var557 (cast-from-var3755-to-var557 var3215)) ; Statement: $r10 = (java.nio.file.attribute.DosFileAttributeView) $r3 
 ; Statement: if $r10 == null goto $r4 = newarray (java.lang.Object)[1] 
(assert (not (= var765 null-var557))) ; Negate: Cond: $r10 == null  
(declare-const var290 var1766) ; Statement: $r11 := @caughtexception 
(assert (not (= var290 null-var1766)))
(define-const var3480 (Array Int var2077) arr-var2077-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var3480!1 (Array Int var2077))
(assert (not (= var3480!1 null-__Array__Int__var2077__)))
(assert (= (select var3480!1 0) (cast-from-var1327-to-var2077 var148))) ; Statement: $r12[0] = r1 
(assert true)
;(assert (maybeThrowException/-18768835 var3356!1 null-var875 "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \u0027%s\u0027" var3480!1)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void maybeThrowException(java.lang.Exception,java.lang.String,java.lang.Object[])>(null, "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'", $r12) 

(declare-const var3356!2 var734)
(declare-const var1674 var876)
(declare-const var996 String)
(declare-const var3480!2 (Array Int var2077))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1601532580=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), cast-from-var734-to-var1363=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), isWritable/1574931003=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], boolean), arr-var1181-init=([], java.nio.file.LinkOption[]), var415_getFileAttributeView/1064164394=([java.nio.file.Path, java.lang.Class, java.nio.file.LinkOption[]], java.nio.file.attribute.FileAttributeView), cast-from-var3755-to-var557=([java.nio.file.attribute.FileAttributeView], java.nio.file.attribute.DosFileAttributeView), arr-var2077-init=([], java.lang.Object[]), cast-from-var1327-to-var2077=([java.nio.file.Path], java.lang.Object), maybeThrowException/-18768835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, java.lang.Exception, java.lang.String, java.lang.Object[]], void)}
; {var734=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, var3356=r0, var1327=java.nio.file.Path, var148=r1, var2536=z1, var1363=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1528="Falling back to DosFileAttributeView", var1698=$z0, var731=$z2, var1181=java.nio.file.LinkOption, var2985=$r2, var3755=java.nio.file.attribute.FileAttributeView, var415=java.nio.file.Files, var557=java.nio.file.attribute.DosFileAttributeView, var3215=$r3, var765=$r10, var1766=java.lang.SecurityException, var290=$r11, var2077=java.lang.Object, var3480=$r12, var875=java.lang.Exception, var1674=null, var876=null_type, var996="the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions=var734, r0=var3356, java.nio.file.Path=var1327, r1=var148, z1=var2536, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1363, "Falling back to DosFileAttributeView"=var1528, $z0=var1698, $z2=var731, java.nio.file.LinkOption=var1181, $r2=var2985, java.nio.file.attribute.FileAttributeView=var3755, java.nio.file.Files=var415, java.nio.file.attribute.DosFileAttributeView=var557, $r3=var3215, $r10=var765, java.lang.SecurityException=var1766, $r11=var290, java.lang.Object=var2077, $r12=var3480, java.lang.Exception=var875, null=var1674, null_type=var876, "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'"=var996}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions;	r1 := @parameter0: java.nio.file.Path;	z1 := @parameter1: boolean;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView");	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= $r2 = newarray (java.nio.file.LinkOption)[0]];	$r2 = newarray (java.nio.file.LinkOption)[0];	$r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2);	$r10 = (java.nio.file.attribute.DosFileAttributeView) $r3;	if $r10 == null goto $r4 = newarray (java.lang.Object)[1];	$r11 := @caughtexception;	$r12 = newarray (java.lang.Object)[1];	$r12[0] = r1;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void maybeThrowException(java.lang.Exception,java.lang.String,java.lang.Object[])>(null, "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'", $r12);	goto [?= return];	return
;block_num 5