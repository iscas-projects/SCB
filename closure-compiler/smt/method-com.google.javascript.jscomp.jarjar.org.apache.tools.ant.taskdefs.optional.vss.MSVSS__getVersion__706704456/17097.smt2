(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3584 0)
(declare-sort var3703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun version/1944491110 (var3584) String)
(declare-const null-var3584 var3584)
(declare-const null-String String)
(declare-const var1507 var3584) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS 
(assert (not (= var1507 null-var3584)))
(define-const var1471 String (version/1944491110 var1507)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String version> 
 ; Statement: if $r1 == null goto $r6 = "" 
(assert (= var1471 null-String)) ; Cond: $r1 == null 
(define-const var2095 String "") ; Statement: $r6 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {version/1944491110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS], java.lang.String)}
; {var3584=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS, var1507=r0, var1471=$r1, var3703=null_type, var2095=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS=var3584, r0=var1507, $r1=var1471, null_type=var3703, $r6=var2095}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String version>;	if $r1 == null goto $r6 = "";	$r6 = "";	return $r6
;block_num 3