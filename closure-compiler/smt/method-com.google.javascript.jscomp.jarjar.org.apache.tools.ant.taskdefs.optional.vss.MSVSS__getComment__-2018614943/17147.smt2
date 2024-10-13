(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3161 0)
(declare-sort var3588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun comment/1944491110 (var3161) String)
(declare-const null-var3161 var3161)
(declare-const null-String String)
(declare-const var846 var3161) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS 
(assert (not (= var846 null-var3161)))
(define-const var1514 String (comment/1944491110 var846)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String comment> 
 ; Statement: if $r1 == null goto $r6 = "-C-" 
(assert (= var1514 null-String)) ; Cond: $r1 == null 
(define-const var865 String "-C-") ; Statement: $r6 = "-C-" 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {comment/1944491110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS], java.lang.String)}
; {var3161=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS, var846=r0, var1514=$r1, var3588=null_type, var865=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS=var3161, r0=var846, $r1=var1514, null_type=var3588, $r6=var865}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String comment>;	if $r1 == null goto $r6 = "-C-";	$r6 = "-C-";	return $r6
;block_num 3