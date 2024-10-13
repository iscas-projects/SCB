(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var956 0)
(declare-sort var2459 0)
(declare-sort var3244 0)
(declare-sort var3757 0)
(declare-sort var516 0)
(declare-sort var903 0)
(declare-sort var2389 0)
(declare-sort var1750 0)
(declare-sort var2261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2389!class ClassObject)
(declare-fun log/-1601532580 (var3244 String) void)
(declare-fun cast-from-var956-to-var3244 (var956) var3244)
(declare-fun isWritable/1574931003 (var956) Bool)
(declare-fun arr-var3757-init () (Array Int var3757))
(declare-fun var903_getFileAttributeView/1064164394 (var2459 ClassObject (Array Int var3757)) var516)
(declare-fun cast-from-var516-to-var2389 (var516) var2389)
(declare-fun arr-var1750-init () (Array Int var1750))
(declare-fun cast-from-var2459-to-var1750 (var2459) var1750)
(declare-fun String_format/1339386452 (String (Array Int var1750)) String)
(declare-fun var2261-init () var2261)
(declare-fun <init>/1864341934 (var2261 String) void)
(declare-const null-var956 var956)
(declare-const null-var2459 var2459)
(declare-const null-Bool Bool)
(declare-const null-var2389 var2389)
(declare-const null-__Array__Int__var1750__ (Array Int var1750))
(declare-const var3545 var956) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions 
(assert (not (= var3545 null-var956)))
(declare-const var3724 var2459) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var3724 null-var2459)))
(declare-const var3774 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3774 null-Bool)))
(assert true)
;(assert (log/-1601532580 (cast-from-var956-to-var3244 var3545) "Falling back to DosFileAttributeView")) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView") 

(declare-const var3545!1 var956)
(declare-const var3765 String)
(assert true)
(define-const var1515 Bool (isWritable/1574931003 var3545!1)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var1515 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3051 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $r2 = newarray (java.nio.file.LinkOption)[0]] 
(assert true) ; Non Conditional
(define-const var793 (Array Int var3757) arr-var3757-init) ; Statement: $r2 = newarray (java.nio.file.LinkOption)[0] 
(define-const var2080 var516 (var903_getFileAttributeView/1064164394 var3724 var2389!class var793)) ; Statement: $r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2) 
(define-const var2143 var2389 (cast-from-var516-to-var2389 var2080)) ; Statement: $r10 = (java.nio.file.attribute.DosFileAttributeView) $r3 
 ; Statement: if $r10 == null goto $r4 = newarray (java.lang.Object)[1] 
(assert (= var2143 null-var2389)) ; Cond: $r10 == null 
(define-const var3258 (Array Int var1750) arr-var1750-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(declare-const var3258!1 (Array Int var1750))
(assert (not (= var3258!1 null-__Array__Int__var1750__)))
(assert (= (select var3258!1 0) (cast-from-var2459-to-var1750 var3724))) ; Statement: $r4[0] = r1 
(define-const var1309 String (String_format/1339386452 "the associated path \u0027%s\u0027 does not support the DosFileAttributeView" var3258!1)) ; Statement: r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("the associated path \'%s\' does not support the DosFileAttributeView", $r4) 
 ; Statement: if z1 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= (ite var3774 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var78 var2261 var2261-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var78 var1309)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r16) 

(declare-const var78!1 var2261)
(declare-const var1309!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1601532580=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), cast-from-var956-to-var3244=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), isWritable/1574931003=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], boolean), arr-var3757-init=([], java.nio.file.LinkOption[]), var903_getFileAttributeView/1064164394=([java.nio.file.Path, java.lang.Class, java.nio.file.LinkOption[]], java.nio.file.attribute.FileAttributeView), cast-from-var516-to-var2389=([java.nio.file.attribute.FileAttributeView], java.nio.file.attribute.DosFileAttributeView), arr-var1750-init=([], java.lang.Object[]), cast-from-var2459-to-var1750=([java.nio.file.Path], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var2261-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var956=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, var3545=r0, var2459=java.nio.file.Path, var3724=r1, var3774=z1, var3244=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3765="Falling back to DosFileAttributeView", var1515=$z0, var3051=$z2, var3757=java.nio.file.LinkOption, var793=$r2, var516=java.nio.file.attribute.FileAttributeView, var903=java.nio.file.Files, var2389=java.nio.file.attribute.DosFileAttributeView, var2080=$r3, var2143=$r10, var1750=java.lang.Object, var3258=$r4, var1309=r16, var2261=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var78=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions=var956, r0=var3545, java.nio.file.Path=var2459, r1=var3724, z1=var3774, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3244, "Falling back to DosFileAttributeView"=var3765, $z0=var1515, $z2=var3051, java.nio.file.LinkOption=var3757, $r2=var793, java.nio.file.attribute.FileAttributeView=var516, java.nio.file.Files=var903, java.nio.file.attribute.DosFileAttributeView=var2389, $r3=var2080, $r10=var2143, java.lang.Object=var1750, $r4=var3258, r16=var1309, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2261, $r9=var78}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions;	r1 := @parameter0: java.nio.file.Path;	z1 := @parameter1: boolean;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView");	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= $r2 = newarray (java.nio.file.LinkOption)[0]];	$r2 = newarray (java.nio.file.LinkOption)[0];	$r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2);	$r10 = (java.nio.file.attribute.DosFileAttributeView) $r3;	if $r10 == null goto $r4 = newarray (java.lang.Object)[1];	$r4 = newarray (java.lang.Object)[1];	$r4[0] = r1;	r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("the associated path \'%s\' does not support the DosFileAttributeView", $r4);	if z1 == 0 goto $r5 = new java.lang.StringBuilder;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r16);	throw $r9
;block_num 5