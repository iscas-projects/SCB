(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var517 0)
(declare-sort var544 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun algorithm/2026157971 (var517) String)
(declare-const null-var517 var517)
(declare-const null-String String)
(declare-const var3685 var517) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm 
(assert (not (= var3685 null-var517)))
(declare-const var3296 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3296 null-String)))
 ; Statement: if r1 == null goto $r3 = null 
(assert (= var3296 null-String)) ; Cond: r1 == null 
(define-const var3562 String null-String) ; Statement: $r3 = null 
(assert true) ; Non Conditional
(declare-const var3685!1 var517)
(assert (not (= var3685!1 null-var517)))
(assert (= (algorithm/2026157971 var3685!1) var3562)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String algorithm> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {algorithm/2026157971=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm], java.lang.String)}
; {var517=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm, var3685=r0, var3296=r1, var544=null_type, var3562=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm=var517, r0=var3685, r1=var3296, null_type=var544, $r3=var3562}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm;	r1 := @parameter0: java.lang.String;	if r1 == null goto $r3 = null;	$r3 = null;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String algorithm> = $r3;	return
;block_num 3