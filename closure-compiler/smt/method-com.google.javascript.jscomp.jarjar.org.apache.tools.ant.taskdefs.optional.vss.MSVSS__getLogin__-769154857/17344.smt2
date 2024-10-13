(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2776 0)
(declare-sort var237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun vssLogin/1944491110 (var2776) String)
(declare-const null-var2776 var2776)
(declare-const null-String String)
(declare-const var2559 var2776) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS 
(assert (not (= var2559 null-var2776)))
(define-const var1076 String (vssLogin/1944491110 var2559)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String vssLogin> 
 ; Statement: if $r1 == null goto $r6 = "" 
(assert (= var1076 null-String)) ; Cond: $r1 == null 
(define-const var985 String "") ; Statement: $r6 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {vssLogin/1944491110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS], java.lang.String)}
; {var2776=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS, var2559=r0, var1076=$r1, var237=null_type, var985=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS=var2776, r0=var2559, $r1=var1076, null_type=var237, $r6=var985}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String vssLogin>;	if $r1 == null goto $r6 = "";	$r6 = "";	return $r6
;block_num 3