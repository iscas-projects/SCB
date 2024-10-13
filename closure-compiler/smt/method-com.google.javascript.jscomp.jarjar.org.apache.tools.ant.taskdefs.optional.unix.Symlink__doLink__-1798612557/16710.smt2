(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var191 0)
(declare-sort var766 0)
(declare-sort var1598 0)
(declare-sort var1158 0)
(declare-sort var773 0)
(declare-sort var1722 0)
(declare-sort var740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1158_get/935877550 (String (Array Int String)) var1598)
(declare-fun arr-var773-init () (Array Int var773))
(declare-fun var1722_exists/964052014 (var1598 (Array Int var773)) Bool)
(declare-fun overwrite/-2021631795 (var191) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var740 String Int) void)
(declare-fun cast-from-var191-to-var740 (var191) var740)
(declare-const null-var191 var191)
(declare-const null-String String)
(declare-const var773-NOFOLLOW_LINKS var773)
(declare-const null-__Array__Int__var773__ (Array Int var773))
(declare-const var1648 var191) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink 
(assert (not (= var1648 null-var191)))
(declare-const var516 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var516 null-String)))
(declare-const var1422 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1422 null-String)))
(define-const var2561 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.String)[0] 
(define-const var3879 var1598 (var1158_get/935877550 var1422 var2561)) ; Statement: r2 = staticinvoke <java.nio.file.Paths: java.nio.file.Path get(java.lang.String,java.lang.String[])>(r0, $r1) 
(define-const var3566 (Array Int String) arr-String-init) ; Statement: $r4 = newarray (java.lang.String)[0] 
(define-const var3853 var1598 (var1158_get/935877550 var516 var3566)) ; Statement: r5 = staticinvoke <java.nio.file.Paths: java.nio.file.Path get(java.lang.String,java.lang.String[])>(r3, $r4) 
(define-const var2902 (Array Int var773) arr-var773-init) ; Statement: $r6 = newarray (java.nio.file.LinkOption)[1] 
(define-const var251 var773 var773-NOFOLLOW_LINKS) ; Statement: $r7 = <java.nio.file.LinkOption: java.nio.file.LinkOption NOFOLLOW_LINKS> 
(declare-const var2902!1 (Array Int var773))
(assert (not (= var2902!1 null-__Array__Int__var773__)))
(assert (= (select var2902!1 0) var251)) ; Statement: $r6[0] = $r7 
(define-const var1694 Bool (var1722_exists/964052014 var3879 var2902!1)) ; Statement: z0 = staticinvoke <java.nio.file.Files: boolean exists(java.nio.file.Path,java.nio.file.LinkOption[])>(r2, $r6) 
 ; Statement: if z0 != 0 goto $z1 = r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink: boolean overwrite> 
(assert (not (= (ite var1694 1 0) 0))) ; Cond: z0 != 0 
(define-const var1026 Bool (overwrite/-2021631795 var1648)) ; Statement: $z1 = r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink: boolean overwrite> 
 ; Statement: if $z1 != 0 goto $r9 = interfaceinvoke r2.<java.nio.file.Path: java.io.File toFile()>() 
(assert (not (not (= (ite var1026 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3623 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3623)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3623!1 String)
(assert (= var3623!1 ""))
(assert true)
(define-const var2894 String (append/672562846 var3623!1 "Skipping symlink creation, since file at ")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping symlink creation, since file at ") 
(declare-const var3623!2 String)
(assert (= var3623!2 (str.++ var3623!1 "Skipping symlink creation, since file at ")))
(assert true)
(define-const var1637 String (append/672562846 var2894 var1422)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2894!1 String)
(assert (= var2894!1 (str.++ var2894 var1422)))
(assert true)
(define-const var1898 String (append/672562846 var1637 " already exists and overwrite is set to false")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" already exists and overwrite is set to false") 
(declare-const var1637!1 String)
(assert (= var1637!1 (str.++ var1637 " already exists and overwrite is set to false")))
(assert true)
(define-const var1116 String (toString/-2075883882 var1898)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var191-to-var740 var1648) var1116 2)) ; Statement: virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink: void log(java.lang.String,int)>($r27, 2) 

(declare-const var1648!1 var191)
(declare-const var1116!1 String)
(declare-const var1163 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.String[]), var1158_get/935877550=([java.lang.String, java.lang.String[]], java.nio.file.Path), arr-var773-init=([], java.nio.file.LinkOption[]), var1722_exists/964052014=([java.nio.file.Path, java.nio.file.LinkOption[]], boolean), overwrite/-2021631795=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var191-to-var740=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var191=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink, var1648=r8, var516=r3, var766=null_type, var1422=r0, var2561=$r1, var1598=java.nio.file.Path, var1158=java.nio.file.Paths, var3879=r2, var3566=$r4, var3853=r5, var773=java.nio.file.LinkOption, var2902=$r6, var251=$r7, var1722=java.nio.file.Files, var1694=z0, var1026=$z1, var3623=$r23, var2894=$r24, var1637=$r25, var1898=$r26, var1116=$r27, var740=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1163=2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink=var191, r8=var1648, r3=var516, null_type=var766, r0=var1422, $r1=var2561, java.nio.file.Path=var1598, java.nio.file.Paths=var1158, r2=var3879, $r4=var3566, r5=var3853, java.nio.file.LinkOption=var773, $r6=var2902, $r7=var251, java.nio.file.Files=var1722, z0=var1694, $z1=var1026, $r23=var3623, $r24=var2894, $r25=var1637, $r26=var1898, $r27=var1116, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var740, 2=var1163}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$r1 = newarray (java.lang.String)[0];	r2 = staticinvoke <java.nio.file.Paths: java.nio.file.Path get(java.lang.String,java.lang.String[])>(r0, $r1);	$r4 = newarray (java.lang.String)[0];	r5 = staticinvoke <java.nio.file.Paths: java.nio.file.Path get(java.lang.String,java.lang.String[])>(r3, $r4);	$r6 = newarray (java.nio.file.LinkOption)[1];	$r7 = <java.nio.file.LinkOption: java.nio.file.LinkOption NOFOLLOW_LINKS>;	$r6[0] = $r7;	z0 = staticinvoke <java.nio.file.Files: boolean exists(java.nio.file.Path,java.nio.file.LinkOption[])>(r2, $r6);	if z0 != 0 goto $z1 = r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink: boolean overwrite>;	$z1 = r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink: boolean overwrite>;	if $z1 != 0 goto $r9 = interfaceinvoke r2.<java.nio.file.Path: java.io.File toFile()>();	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping symlink creation, since file at ");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" already exists and overwrite is set to false");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink: void log(java.lang.String,int)>($r27, 2);	return
;block_num 3