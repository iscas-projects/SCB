(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1545 0)
(declare-sort var3255 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buildCmdLine/-1084933160 (var1545) var3255)
(declare-fun commandLine/-1805167282 (var1545) var3255)
(declare-fun run/157245086 (var1545 var3255) Int)
(declare-const null-var1545 var1545)
(declare-const var493 var1545) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS 
(assert (not (= var493 null-var1545)))
(assert true)
;(assert (buildCmdLine/-1084933160 var493)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline buildCmdLine()>() 

(declare-const var493!1 var1545)
(define-const var937 var3255 (commandLine/-1805167282 var493!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline commandLine> 
(assert true)
(define-const var2740 Int (run/157245086 var493!1 var937)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r1) 
 ; Statement: if i0 != 255 goto return 
(assert (not (= var2740 255))) ; Cond: i0 != 255 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buildCmdLine/-1084933160=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), commandLine/-1805167282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), run/157245086=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], int)}
; {var1545=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS, var493=r0, var3255=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var937=$r1, var2740=i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS=var1545, r0=var493, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var3255, $r1=var937, i0=var2740}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline buildCmdLine()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline commandLine>;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r1);	if i0 != 255 goto return;	return
;block_num 2