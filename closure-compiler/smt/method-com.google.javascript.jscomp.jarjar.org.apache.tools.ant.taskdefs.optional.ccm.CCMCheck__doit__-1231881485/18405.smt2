(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1131 0)
(declare-sort var1165 0)
(declare-sort var1808 0)
(declare-sort var653 0)
(declare-sort var3747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1165-init () var1165)
(declare-fun <init>/900561260 (var1165) void)
(declare-fun getCcmCommand/-1004219399 (var1808) String)
(declare-fun cast-from-var1131-to-var1808 (var1131) var1808)
(declare-fun setExecutable/491986901 (var1165 String) void)
(declare-fun createArgument/-916843187 (var1165) var653)
(declare-fun getCcmAction/-1383467840 (var1808) String)
(declare-fun setValue/2115864135 (var653 String) void)
(declare-fun checkOptions/-1227740514 (var1131 var1165) void)
(declare-fun run/-2115711463 (var1808 var1165) Int)
(declare-fun var3747_isFailure/-2053034463 (Int) Bool)
(declare-const null-var1131 var1131)
(declare-const var1207 var1131) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck 
(assert (not (= var1207 null-var1131)))
(define-const var829 var1165 var1165-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert true)
;(assert (<init>/900561260 var829)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>() 

(declare-const var829!1 var1165)
(assert true)
(define-const var3536 String (getCcmCommand/-1004219399 (cast-from-var1131-to-var1808 var1207))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: java.lang.String getCcmCommand()>() 
(assert true)
;(assert (setExecutable/491986901 var829!1 var3536)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r2) 

(declare-const var829!2 var1165)
(declare-const var3536!1 String)
(assert true)
(define-const var3765 var653 (createArgument/-916843187 var829!2)) ; Statement: $r4 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(assert true)
(define-const var1795 String (getCcmAction/-1383467840 (cast-from-var1131-to-var1808 var1207))) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: java.lang.String getCcmAction()>() 
(assert true)
;(assert (setValue/2115864135 var3765 var1795)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r3) 

(declare-const var3765!1 var653)
(declare-const var1795!1 String)
(assert true)
;(assert (checkOptions/-1227740514 var1207 var829!2)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: void checkOptions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0) 

(declare-const var1207!1 var1131)
(declare-const var829!3 var1165)
(assert true)
(define-const var27 Int (run/-2115711463 (cast-from-var1131-to-var1808 var1207!1) var829!3)) ; Statement: i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0) 
(define-const var377 Bool (var3747_isFailure/-2053034463 var27)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean isFailure(int)>(i0) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var377 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1165-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), <init>/900561260=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), getCcmCommand/-1004219399=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus], java.lang.String), cast-from-var1131-to-var1808=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus), setExecutable/491986901=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, java.lang.String], void), createArgument/-916843187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), getCcmAction/-1383467840=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), checkOptions/-1227740514=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), run/-2115711463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], int), var3747_isFailure/-2053034463=([int], boolean)}
; {var1131=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck, var1207=r1, var1165=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var829=$r0, var1808=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, var3536=$r2, var653=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var3765=$r4, var1795=$r3, var27=i0, var3747=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, var377=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck=var1131, r1=var1207, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var1165, $r0=var829, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus=var1808, $r2=var3536, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var653, $r4=var3765, $r3=var1795, i0=var27, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute=var3747, $z0=var377}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: java.lang.String getCcmCommand()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r2);	$r4 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: java.lang.String getCcmAction()>();	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r3);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: void checkOptions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0);	i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0);	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean isFailure(int)>(i0);	if $z0 == 0 goto return;	return
;block_num 2