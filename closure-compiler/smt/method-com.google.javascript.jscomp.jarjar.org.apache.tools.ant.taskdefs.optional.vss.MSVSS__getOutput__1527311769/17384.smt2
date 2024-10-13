(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2597 0)
(declare-sort var1360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun outputFileName/1944491110 (var2597) String)
(declare-const null-var2597 var2597)
(declare-const null-String String)
(declare-const var112 var2597) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS 
(assert (not (= var112 null-var2597)))
(define-const var1409 String (outputFileName/1944491110 var112)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String outputFileName> 
 ; Statement: if $r1 == null goto $r6 = "" 
(assert (= var1409 null-String)) ; Cond: $r1 == null 
(define-const var3616 String "") ; Statement: $r6 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {outputFileName/1944491110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS], java.lang.String)}
; {var2597=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS, var112=r0, var1409=$r1, var1360=null_type, var3616=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS=var2597, r0=var112, $r1=var1409, null_type=var1360, $r6=var3616}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String outputFileName>;	if $r1 == null goto $r6 = "";	$r6 = "";	return $r6
;block_num 3