(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1172 0)
(declare-sort var233 0)
(declare-sort var2970 0)
(declare-sort var3071 0)
(declare-sort var3562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var233-init () var233)
(declare-fun <init>/900561260 (var233) void)
(declare-fun getCcmCommand/-1004219399 (var2970) String)
(declare-fun cast-from-var1172-to-var2970 (var1172) var2970)
(declare-fun setExecutable/491986901 (var233 String) void)
(declare-fun createArgument/-916843187 (var233) var3071)
(declare-fun getCcmAction/-1383467840 (var2970) String)
(declare-fun setValue/2115864135 (var3071 String) void)
(declare-fun checkOptions/-90761175 (var1172 var233) void)
(declare-fun run/-2115711463 (var2970 var233) Int)
(declare-fun var3562_isFailure/-2053034463 (Int) Bool)
(declare-const null-var1172 var1172)
(declare-const var1048 var1172) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure 
(assert (not (= var1048 null-var1172)))
(define-const var3964 var233 var233-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert true)
;(assert (<init>/900561260 var3964)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>() 

(declare-const var3964!1 var233)
(assert true)
(define-const var1903 String (getCcmCommand/-1004219399 (cast-from-var1172-to-var2970 var1048))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: java.lang.String getCcmCommand()>() 
(assert true)
;(assert (setExecutable/491986901 var3964!1 var1903)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r2) 

(declare-const var3964!2 var233)
(declare-const var1903!1 String)
(assert true)
(define-const var193 var3071 (createArgument/-916843187 var3964!2)) ; Statement: $r4 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(assert true)
(define-const var545 String (getCcmAction/-1383467840 (cast-from-var1172-to-var2970 var1048))) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: java.lang.String getCcmAction()>() 
(assert true)
;(assert (setValue/2115864135 var193 var545)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r3) 

(declare-const var193!1 var3071)
(declare-const var545!1 String)
(assert true)
;(assert (checkOptions/-90761175 var1048 var3964!2)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: void checkOptions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0) 

(declare-const var1048!1 var1172)
(declare-const var3964!3 var233)
(assert true)
(define-const var3641 Int (run/-2115711463 (cast-from-var1172-to-var2970 var1048!1) var3964!3)) ; Statement: i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0) 
(define-const var3587 Bool (var3562_isFailure/-2053034463 var3641)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean isFailure(int)>(i0) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3587 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var233-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), <init>/900561260=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), getCcmCommand/-1004219399=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus], java.lang.String), cast-from-var1172-to-var2970=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus), setExecutable/491986901=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, java.lang.String], void), createArgument/-916843187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), getCcmAction/-1383467840=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), checkOptions/-90761175=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), run/-2115711463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], int), var3562_isFailure/-2053034463=([int], boolean)}
; {var1172=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure, var1048=r1, var233=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var3964=$r0, var2970=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, var1903=$r2, var3071=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var193=$r4, var545=$r3, var3641=i0, var3562=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, var3587=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure=var1172, r1=var1048, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var233, $r0=var3964, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus=var2970, $r2=var1903, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var3071, $r4=var193, $r3=var545, i0=var3641, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute=var3562, $z0=var3587}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: java.lang.String getCcmCommand()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r2);	$r4 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: java.lang.String getCcmAction()>();	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r3);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: void checkOptions(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0);	i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMReconfigure: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r0);	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean isFailure(int)>(i0);	if $z0 == 0 goto return;	return
;block_num 2