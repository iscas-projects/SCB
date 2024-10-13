(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1535 0)
(declare-sort var2137 0)
(declare-sort var2597 0)
(declare-sort var114 0)
(declare-sort var1397 0)
(declare-sort var3770 0)
(declare-sort var97 0)
(declare-sort var3887 0)
(declare-sort var188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var97!class ClassObject)
(declare-fun log/-1601532580 (var2597 String) void)
(declare-fun cast-from-var1535-to-var2597 (var1535) var2597)
(declare-fun isWritable/1574931003 (var1535) Bool)
(declare-fun arr-var114-init () (Array Int var114))
(declare-fun var3770_getFileAttributeView/1064164394 (var2137 ClassObject (Array Int var114)) var1397)
(declare-fun cast-from-var1397-to-var97 (var1397) var97)
(declare-fun arr-var3887-init () (Array Int var3887))
(declare-fun cast-from-var2137-to-var3887 (var2137) var3887)
(declare-fun String_format/1339386452 (String (Array Int var3887)) String)
(declare-fun var188-init () var188)
(declare-fun <init>/1864341934 (var188 String) void)
(declare-const null-var1535 var1535)
(declare-const null-var2137 var2137)
(declare-const null-Bool Bool)
(declare-const null-var97 var97)
(declare-const null-__Array__Int__var3887__ (Array Int var3887))
(declare-const var3655 var1535) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions 
(assert (not (= var3655 null-var1535)))
(declare-const var1552 var2137) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var1552 null-var2137)))
(declare-const var3159 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3159 null-Bool)))
(assert true)
;(assert (log/-1601532580 (cast-from-var1535-to-var2597 var3655) "Falling back to DosFileAttributeView")) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView") 

(declare-const var3655!1 var1535)
(declare-const var859 String)
(assert true)
(define-const var1363 Bool (isWritable/1574931003 var3655!1)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var1363 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3857 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1564 (Array Int var114) arr-var114-init) ; Statement: $r2 = newarray (java.nio.file.LinkOption)[0] 
(define-const var1026 var1397 (var3770_getFileAttributeView/1064164394 var1552 var97!class var1564)) ; Statement: $r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2) 
(define-const var1753 var97 (cast-from-var1397-to-var97 var1026)) ; Statement: $r10 = (java.nio.file.attribute.DosFileAttributeView) $r3 
 ; Statement: if $r10 == null goto $r4 = newarray (java.lang.Object)[1] 
(assert (= var1753 null-var97)) ; Cond: $r10 == null 
(define-const var906 (Array Int var3887) arr-var3887-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(declare-const var906!1 (Array Int var3887))
(assert (not (= var906!1 null-__Array__Int__var3887__)))
(assert (= (select var906!1 0) (cast-from-var2137-to-var3887 var1552))) ; Statement: $r4[0] = r1 
(define-const var319 String (String_format/1339386452 "the associated path \u0027%s\u0027 does not support the DosFileAttributeView" var906!1)) ; Statement: r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("the associated path \'%s\' does not support the DosFileAttributeView", $r4) 
 ; Statement: if z1 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= (ite var3159 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var1894 var188 var188-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var1894 var319)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r16) 

(declare-const var1894!1 var188)
(declare-const var319!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1601532580=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), cast-from-var1535-to-var2597=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), isWritable/1574931003=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], boolean), arr-var114-init=([], java.nio.file.LinkOption[]), var3770_getFileAttributeView/1064164394=([java.nio.file.Path, java.lang.Class, java.nio.file.LinkOption[]], java.nio.file.attribute.FileAttributeView), cast-from-var1397-to-var97=([java.nio.file.attribute.FileAttributeView], java.nio.file.attribute.DosFileAttributeView), arr-var3887-init=([], java.lang.Object[]), cast-from-var2137-to-var3887=([java.nio.file.Path], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var188-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1535=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, var3655=r0, var2137=java.nio.file.Path, var1552=r1, var3159=z1, var2597=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var859="Falling back to DosFileAttributeView", var1363=$z0, var3857=$z2, var114=java.nio.file.LinkOption, var1564=$r2, var1397=java.nio.file.attribute.FileAttributeView, var3770=java.nio.file.Files, var97=java.nio.file.attribute.DosFileAttributeView, var1026=$r3, var1753=$r10, var3887=java.lang.Object, var906=$r4, var319=r16, var188=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1894=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions=var1535, r0=var3655, java.nio.file.Path=var2137, r1=var1552, z1=var3159, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2597, "Falling back to DosFileAttributeView"=var859, $z0=var1363, $z2=var3857, java.nio.file.LinkOption=var114, $r2=var1564, java.nio.file.attribute.FileAttributeView=var1397, java.nio.file.Files=var3770, java.nio.file.attribute.DosFileAttributeView=var97, $r3=var1026, $r10=var1753, java.lang.Object=var3887, $r4=var906, r16=var319, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var188, $r9=var1894}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions;	r1 := @parameter0: java.nio.file.Path;	z1 := @parameter1: boolean;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void log(java.lang.String)>("Falling back to DosFileAttributeView");	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: boolean isWritable()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	$r2 = newarray (java.nio.file.LinkOption)[0];	$r3 = staticinvoke <java.nio.file.Files: java.nio.file.attribute.FileAttributeView getFileAttributeView(java.nio.file.Path,java.lang.Class,java.nio.file.LinkOption[])>(r1, class "Ljava/nio/file/attribute/DosFileAttributeView;", $r2);	$r10 = (java.nio.file.attribute.DosFileAttributeView) $r3;	if $r10 == null goto $r4 = newarray (java.lang.Object)[1];	$r4 = newarray (java.lang.Object)[1];	$r4[0] = r1;	r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("the associated path \'%s\' does not support the DosFileAttributeView", $r4);	if z1 == 0 goto $r5 = new java.lang.StringBuilder;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r16);	throw $r9
;block_num 5