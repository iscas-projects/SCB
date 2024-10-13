(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1842 0)
(declare-sort var367 0)
(declare-sort var3536 0)
(declare-sort var2285 0)
(declare-sort var3876 0)
(declare-sort var1236 0)
(declare-sort var353 0)
(declare-sort var254 0)
(declare-sort var2744 0)
(declare-sort var3219 0)
(declare-sort var1943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var353!class ClassObject)
(declare-fun log/-1601532580 (var3536 String) void)
(declare-fun cast-from-var1842-to-var3536 (var1842) var3536)
(declare-fun isWritable/1574931003 (var1842) Bool)
(declare-fun arr-var2285-init () (Array Int var2285))
(declare-fun var1236_getFileAttributeView/1064164394 (var367 ClassObject (Array Int var2285)) var3876)
(declare-fun cast-from-var3876-to-var353 (var3876) var353)
(declare-fun arr-var2744-init () (Array Int var2744))
(declare-fun cast-from-var367-to-var2744 (var367) var2744)
(declare-fun maybeThrowException/-18768835 (var1842 var3219 String (Array Int var2744)) void)
(declare-const null-var1842 var1842)
(declare-const null-var367 var367)
(declare-const null-Bool Bool)
(declare-const null-var353 var353)
(declare-const null-var254 var254)
(declare-const null-__Array__Int__var2744__ (Array Int var2744))
(declare-const null-NullType var1943)
(declare-const null-var3219 var3219)
(declare-const var2120 var1842) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions 
(assert (not (= var2120 null-var1842)))
(declare-const var2577 var367) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var2577 null-var367)))
(declare-const var2464 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2464 null-Bool)))
(assert true)
;(assert (log/-1601532580 (cast-from-var1842-to-var3536 var2120) "Falling back to DosFileAttributeView")) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView") 

(declare-const var2120!1 var1842)
(declare-const var1609 String)
(assert true)
(define-const var421 Bool (isWritable/1574931003 var2120!1)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var421 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1622 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1935 (Array Int var2285) arr-var2285-init) ; Statement: $r2 = newarray (java.nio.file.LinkOption)[0] 
(define-const var3574 var3876 (var1236_getFileAttributeView/1064164394 var2577 var353!class var1935)) ; Statement: $r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2) 
(define-const var324 var353 (cast-from-var3876-to-var353 var3574)) ; Statement: $r10 = (java.nio.file.attribute.DosFileAttributeView) $r3 
 ; Statement: if $r10 == null goto $r4 = newarray (java.lang.Object)[1] 
(assert (not (= var324 null-var353))) ; Negate: Cond: $r10 == null  
(declare-const var1213 var254) ; Statement: $r11 := @caughtexception 
(assert (not (= var1213 null-var254)))
(define-const var3423 (Array Int var2744) arr-var2744-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var3423!1 (Array Int var2744))
(assert (not (= var3423!1 null-__Array__Int__var2744__)))
(assert (= (select var3423!1 0) (cast-from-var367-to-var2744 var2577))) ; Statement: $r12[0] = r1 
(assert true)
;(assert (maybeThrowException/-18768835 var2120!1 null-var3219 "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \u0027%s\u0027" var3423!1)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void maybeThrowException(java.lang.Exception,java.lang.String,java.lang.Object[])>(null, "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'", $r12) 

(declare-const var2120!2 var1842)
(declare-const var2672 var1943)
(declare-const var206 String)
(declare-const var3423!2 (Array Int var2744))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1601532580=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), cast-from-var1842-to-var3536=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), isWritable/1574931003=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], boolean), arr-var2285-init=([], java.nio.file.LinkOption[]), var1236_getFileAttributeView/1064164394=([java.nio.file.Path, java.lang.Class, java.nio.file.LinkOption[]], java.nio.file.attribute.FileAttributeView), cast-from-var3876-to-var353=([java.nio.file.attribute.FileAttributeView], java.nio.file.attribute.DosFileAttributeView), arr-var2744-init=([], java.lang.Object[]), cast-from-var367-to-var2744=([java.nio.file.Path], java.lang.Object), maybeThrowException/-18768835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, java.lang.Exception, java.lang.String, java.lang.Object[]], void)}
; {var1842=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, var2120=r0, var367=java.nio.file.Path, var2577=r1, var2464=z1, var3536=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1609="Falling back to DosFileAttributeView", var421=$z0, var1622=$z2, var2285=java.nio.file.LinkOption, var1935=$r2, var3876=java.nio.file.attribute.FileAttributeView, var1236=java.nio.file.Files, var353=java.nio.file.attribute.DosFileAttributeView, var3574=$r3, var324=$r10, var254=java.lang.SecurityException, var1213=$r11, var2744=java.lang.Object, var3423=$r12, var3219=java.lang.Exception, var2672=null, var1943=null_type, var206="the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions=var1842, r0=var2120, java.nio.file.Path=var367, r1=var2577, z1=var2464, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3536, "Falling back to DosFileAttributeView"=var1609, $z0=var421, $z2=var1622, java.nio.file.LinkOption=var2285, $r2=var1935, java.nio.file.attribute.FileAttributeView=var3876, java.nio.file.Files=var1236, java.nio.file.attribute.DosFileAttributeView=var353, $r3=var3574, $r10=var324, java.lang.SecurityException=var254, $r11=var1213, java.lang.Object=var2744, $r12=var3423, java.lang.Exception=var3219, null=var2672, null_type=var1943, "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'"=var206}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions;	r1 := @parameter0: java.nio.file.Path;	z1 := @parameter1: boolean;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView");	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	$r2 = newarray (java.nio.file.LinkOption)[0];	$r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2);	$r10 = (java.nio.file.attribute.DosFileAttributeView) $r3;	if $r10 == null goto $r4 = newarray (java.lang.Object)[1];	$r11 := @caughtexception;	$r12 = newarray (java.lang.Object)[1];	$r12[0] = r1;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void maybeThrowException(java.lang.Exception,java.lang.String,java.lang.Object[])>(null, "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'", $r12);	goto [?= return];	return
;block_num 5