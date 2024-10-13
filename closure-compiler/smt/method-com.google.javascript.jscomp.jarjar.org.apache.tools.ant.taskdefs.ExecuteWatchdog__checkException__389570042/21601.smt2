(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2104 0)
(declare-sort var2995 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun caught/1205304262 (var2104) var2995)
(declare-const null-var2104 var2104)
(declare-const null-var2995 var2995)
(declare-const var3544 var2104) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog 
(assert (not (= var3544 null-var2104)))
(define-const var2370 var2995 (caught/1205304262 var3544)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog: java.lang.Exception caught> 
 ; Statement: if $r1 == null goto return 
(assert (= var2370 null-var2995)) ; Cond: $r1 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {caught/1205304262=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog], java.lang.Exception)}
; {var2104=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog, var3544=r0, var2995=java.lang.Exception, var2370=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog=var2104, r0=var3544, java.lang.Exception=var2995, $r1=var2370}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog: java.lang.Exception caught>;	if $r1 == null goto return;	return
;block_num 2