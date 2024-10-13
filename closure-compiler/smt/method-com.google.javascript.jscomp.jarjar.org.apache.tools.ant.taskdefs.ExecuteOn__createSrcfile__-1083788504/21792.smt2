(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3394 0)
(declare-sort var262 0)
(declare-sort var2757 0)
(declare-sort var2556 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun srcFilePos/-497078696 (var3394) var262)
(declare-fun cmdl/-1956698350 (var2556) var2757)
(declare-fun cast-from-var3394-to-var2556 (var3394) var2556)
(declare-fun createMarker/-1571401619 (var2757) var262)
(declare-const null-var3394 var3394)
(declare-const null-var262 var262)
(declare-const var588 var3394) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var588 null-var3394)))
(define-const var1483 var262 (srcFilePos/-497078696 var588)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker srcFilePos> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmdl> 
(assert (= var1483 null-var262)) ; Cond: $r1 == null 
(define-const var3227 var2757 (cmdl/-1956698350 (cast-from-var3394-to-var2556 var588))) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmdl> 
(assert true)
(define-const var1548 var262 (createMarker/-1571401619 var3227)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker createMarker()>() 
(declare-const var588!1 var3394)
(assert (not (= var588!1 null-var3394)))
(assert (= (srcFilePos/-497078696 var588!1) var1548)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker srcFilePos> = $r3 
(define-const var886 var262 (srcFilePos/-497078696 var588!1)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker srcFilePos> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {srcFilePos/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker), cmdl/-1956698350=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), cast-from-var3394-to-var2556=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask), createMarker/-1571401619=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker)}
; {var3394=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var588=r0, var262=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker, var1483=$r1, var2757=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var2556=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, var3227=$r2, var1548=$r3, var886=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var3394, r0=var588, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker=var262, $r1=var1483, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var2757, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask=var2556, $r2=var3227, $r3=var1548, $r4=var886}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker srcFilePos>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmdl>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmdl>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker createMarker()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker srcFilePos> = $r3;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker srcFilePos>;	return $r4
;block_num 2