(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var988 0)
(declare-sort var3075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun algorithm/-232008204 (var988) String)
(declare-const null-var988 var988)
(declare-const null-String String)
(declare-const var3841 var988) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm 
(assert (not (= var3841 null-var988)))
(declare-const var681 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var681 null-String)))
 ; Statement: if r1 == null goto $r3 = null 
(assert (= var681 null-String)) ; Cond: r1 == null 
(define-const var2394 String null-String) ; Statement: $r3 = null 
(assert true) ; Non Conditional
(declare-const var3841!1 var988)
(assert (not (= var3841!1 null-var988)))
(assert (= (algorithm/-232008204 var3841!1) var2394)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm: java.lang.String algorithm> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {algorithm/-232008204=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm], java.lang.String)}
; {var988=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm, var3841=r0, var681=r1, var3075=null_type, var2394=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm=var988, r0=var3841, r1=var681, null_type=var3075, $r3=var2394}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm;	r1 := @parameter0: java.lang.String;	if r1 == null goto $r3 = null;	$r3 = null;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm: java.lang.String algorithm> = $r3;	return
;block_num 3