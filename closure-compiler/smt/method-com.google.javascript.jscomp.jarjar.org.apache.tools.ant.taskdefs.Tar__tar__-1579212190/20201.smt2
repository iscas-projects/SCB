(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3884 0)
(declare-sort var2103 0)
(declare-sort var2015 0)
(declare-sort var3715 0)
(declare-sort var3868 0)
(declare-sort var2258 0)
(declare-sort var3791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1916051177 (var3715) Int)
(declare-fun getProject/416672769 (var2258) var3868)
(declare-fun cast-from-var3884-to-var2258 (var3884) var2258)
(declare-fun getFullpath/780524646 (var3715 var3868) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3791-init () var3791)
(declare-fun <init>/1864341934 (var3791 String) void)
(declare-const null-var3884 var3884)
(declare-const null-var2103 var2103)
(declare-const null-var2015 var2015)
(declare-const null-var3715 var3715)
(declare-const var1198 var3884) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar 
(assert (not (= var1198 null-var3884)))
(declare-const var3994 var2103) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection 
(assert (not (= var3994 null-var2103)))
(declare-const var752 var2015) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream 
(assert (not (= var752 null-var2015)))
(define-const var783 var3715 null-var3715) ; Statement: r17 = null 
(define-const var460 Bool true) ; Statement: $z0 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var460 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r17 == null goto $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarFileSet asTarFileSet(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet)>(r17) 
(assert (not (= var783 null-var3715))) ; Negate: Cond: r17 == null  
(assert true)
(define-const var145 Int (size/1916051177 var783)) ; Statement: $i1 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: int size()>() 
 ; Statement: if $i1 <= 1 goto $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarFileSet asTarFileSet(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet)>(r17) 
(assert (not (<= var145 1))) ; Negate: Cond: $i1 <= 1  
(assert true)
(define-const var3251 var3868 (getProject/416672769 (cast-from-var3884-to-var2258 var1198))) ; Statement: $r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var3279 String (getFullpath/780524646 var783 var3251)) ; Statement: $r15 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String getFullpath(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r14) 
(assert true)
(define-const var3964 Bool (isEmpty/-1285796103 var3279)) ; Statement: $z4 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 != 0 goto $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarFileSet asTarFileSet(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet)>(r17) 
(assert (not (not (= (ite var3964 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3943 var3791 var3791-init) ; Statement: $r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var3943 "fullpath attribute may only be specified for filesets that specify a single file.")) ; Statement: specialinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("fullpath attribute may only be specified for filesets that specify a single file.") 

(declare-const var3943!1 var3791)
(declare-const var630 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1916051177=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet], int), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3884-to-var2258=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getFullpath/780524646=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var3791-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3884=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar, var1198=r1, var2103=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection, var3994=r0, var2015=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream, var752=r3, var3715=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet, var783=r17, var460=$z0, var145=$i1, var3868=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2258=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3251=$r14, var3279=$r15, var3964=$z4, var3791=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3943=$r16, var630="fullpath attribute may only be specified for filesets that specify a single file."}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar=var3884, r1=var1198, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection=var2103, r0=var3994, com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream=var2015, r3=var752, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet=var3715, r17=var783, $z0=var460, $i1=var145, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3868, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2258, $r14=var3251, $r15=var3279, $z4=var3964, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3791, $r16=var3943, "fullpath attribute may only be specified for filesets that specify a single file."=var630}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection;	r3 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream;	r17 = null;	$z0 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet;	if $z0 == 0 goto (branch);	if r17 == null goto $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarFileSet asTarFileSet(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet)>(r17);	$i1 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: int size()>();	if $i1 <= 1 goto $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarFileSet asTarFileSet(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet)>(r17);	$r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r15 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String getFullpath(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r14);	$z4 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>();	if $z4 != 0 goto $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarFileSet asTarFileSet(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet)>(r17);	$r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("fullpath attribute may only be specified for filesets that specify a single file.");	throw $r16
;block_num 5