(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2246 0)
(declare-sort var3015 0)
(declare-sort var2136 0)
(declare-sort var3839 0)
(declare-sort var2645 0)
(declare-sort var157 0)
(declare-sort var2407 0)
(declare-sort var3128 0)
(declare-sort var3310 0)
(declare-sort var1720 0)
(declare-sort var2022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2407!class ClassObject)
(declare-fun log/-1601532580 (var2136 String) void)
(declare-fun cast-from-var2246-to-var2136 (var2246) var2136)
(declare-fun isWritable/1574931003 (var2246) Bool)
(declare-fun arr-var3839-init () (Array Int var3839))
(declare-fun var157_getFileAttributeView/1064164394 (var3015 ClassObject (Array Int var3839)) var2645)
(declare-fun cast-from-var2645-to-var2407 (var2645) var2407)
(declare-fun arr-var3310-init () (Array Int var3310))
(declare-fun cast-from-var3015-to-var3310 (var3015) var3310)
(declare-fun getMessage/849299655 (var1720) String)
(declare-fun cast-from-var3128-to-var1720 (var3128) var1720)
(declare-fun cast-from-String-to-var3310 (String) var3310)
(declare-fun maybeThrowException/-18768835 (var2246 var2022 String (Array Int var3310)) void)
(declare-fun cast-from-var3128-to-var2022 (var3128) var2022)
(declare-const null-var2246 var2246)
(declare-const null-var3015 var3015)
(declare-const null-Bool Bool)
(declare-const null-var2407 var2407)
(declare-const null-var3128 var3128)
(declare-const null-__Array__Int__var3310__ (Array Int var3310))
(declare-const var711 var2246) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions 
(assert (not (= var711 null-var2246)))
(declare-const var321 var3015) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var321 null-var3015)))
(declare-const var2099 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2099 null-Bool)))
(assert true)
;(assert (log/-1601532580 (cast-from-var2246-to-var2136 var711) "Falling back to DosFileAttributeView")) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView") 

(declare-const var711!1 var2246)
(declare-const var1717 String)
(assert true)
(define-const var3915 Bool (isWritable/1574931003 var711!1)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var3915 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3906 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3618 (Array Int var3839) arr-var3839-init) ; Statement: $r2 = newarray (java.nio.file.LinkOption)[0] 
(define-const var3619 var2645 (var157_getFileAttributeView/1064164394 var321 var2407!class var3618)) ; Statement: $r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2) 
(define-const var1341 var2407 (cast-from-var2645-to-var2407 var3619)) ; Statement: $r10 = (java.nio.file.attribute.DosFileAttributeView) $r3 
 ; Statement: if $r10 == null goto $r4 = newarray (java.lang.Object)[1] 
(assert (not (= var1341 null-var2407))) ; Negate: Cond: $r10 == null  
(declare-const var993 var3128) ; Statement: $r13 := @caughtexception 
(assert (not (= var993 null-var3128)))
(define-const var763 (Array Int var3310) arr-var3310-init) ; Statement: $r14 = newarray (java.lang.Object)[2] 
(declare-const var763!1 (Array Int var3310))
(assert (not (= var763!1 null-__Array__Int__var3310__)))
(assert (= (select var763!1 0) (cast-from-var3015-to-var3310 var321))) ; Statement: $r14[0] = r1 
(assert true)
(define-const var735 String (getMessage/849299655 (cast-from-var3128-to-var1720 var993))) ; Statement: $r15 = virtualinvoke $r13.<java.io.IOException: java.lang.String getMessage()>() 
(declare-const var763!2 (Array Int var3310))
(assert (not (= var763!2 null-__Array__Int__var3310__)))
(assert (= (select var763!2 1) (cast-from-String-to-var3310 var735))) ; Statement: $r14[1] = $r15 
(assert true)
;(assert (maybeThrowException/-18768835 var711!1 (cast-from-var3128-to-var2022 var993) "Failed to set permissions on \u0027%s\u0027 due to %s" var763!2)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void maybeThrowException(java.lang.Exception,java.lang.String,java.lang.Object[])>($r13, "Failed to set permissions on \'%s\' due to %s", $r14) 

(declare-const var711!2 var2246)
(declare-const var993!1 var3128)
(declare-const var3914 String)
(declare-const var763!3 (Array Int var3310))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1601532580=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), cast-from-var2246-to-var2136=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), isWritable/1574931003=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], boolean), arr-var3839-init=([], java.nio.file.LinkOption[]), var157_getFileAttributeView/1064164394=([java.nio.file.Path, java.lang.Class, java.nio.file.LinkOption[]], java.nio.file.attribute.FileAttributeView), cast-from-var2645-to-var2407=([java.nio.file.attribute.FileAttributeView], java.nio.file.attribute.DosFileAttributeView), arr-var3310-init=([], java.lang.Object[]), cast-from-var3015-to-var3310=([java.nio.file.Path], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3128-to-var1720=([java.io.IOException], java.lang.Throwable), cast-from-String-to-var3310=([java.lang.String], java.lang.Object), maybeThrowException/-18768835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, java.lang.Exception, java.lang.String, java.lang.Object[]], void), cast-from-var3128-to-var2022=([java.io.IOException], java.lang.Exception)}
; {var2246=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, var711=r0, var3015=java.nio.file.Path, var321=r1, var2099=z1, var2136=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1717="Falling back to DosFileAttributeView", var3915=$z0, var3906=$z2, var3839=java.nio.file.LinkOption, var3618=$r2, var2645=java.nio.file.attribute.FileAttributeView, var157=java.nio.file.Files, var2407=java.nio.file.attribute.DosFileAttributeView, var3619=$r3, var1341=$r10, var3128=java.io.IOException, var993=$r13, var3310=java.lang.Object, var763=$r14, var1720=java.lang.Throwable, var735=$r15, var2022=java.lang.Exception, var3914="Failed to set permissions on \'%s\' due to %s"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions=var2246, r0=var711, java.nio.file.Path=var3015, r1=var321, z1=var2099, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2136, "Falling back to DosFileAttributeView"=var1717, $z0=var3915, $z2=var3906, java.nio.file.LinkOption=var3839, $r2=var3618, java.nio.file.attribute.FileAttributeView=var2645, java.nio.file.Files=var157, java.nio.file.attribute.DosFileAttributeView=var2407, $r3=var3619, $r10=var1341, java.io.IOException=var3128, $r13=var993, java.lang.Object=var3310, $r14=var763, java.lang.Throwable=var1720, $r15=var735, java.lang.Exception=var2022, "Failed to set permissions on \'%s\' due to %s"=var3914}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions;	r1 := @parameter0: java.nio.file.Path;	z1 := @parameter1: boolean;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView");	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	$r2 = newarray (java.nio.file.LinkOption)[0];	$r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2);	$r10 = (java.nio.file.attribute.DosFileAttributeView) $r3;	if $r10 == null goto $r4 = newarray (java.lang.Object)[1];	$r13 := @caughtexception;	$r14 = newarray (java.lang.Object)[2];	$r14[0] = r1;	$r15 = virtualinvoke $r13.<java.io.IOException: java.lang.String getMessage()>();	$r14[1] = $r15;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void maybeThrowException(java.lang.Exception,java.lang.String,java.lang.Object[])>($r13, "Failed to set permissions on \'%s\' due to %s", $r14);	goto [?= return];	return
;block_num 5