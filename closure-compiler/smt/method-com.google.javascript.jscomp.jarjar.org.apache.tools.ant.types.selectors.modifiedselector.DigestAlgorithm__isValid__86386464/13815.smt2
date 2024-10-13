(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun algorithm/2026157971 (var900) String)
(declare-const null-var900 var900)
(declare-const var1727 var900) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm 
(assert (not (= var1727 null-var900)))
(define-const var3060 String "SHA") ; Statement: $r2 = "SHA" 
(define-const var1688 String (algorithm/2026157971 var1727)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String algorithm> 
(assert true)
(define-const var3117 Bool (= var3060 var1688)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var3117 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3770 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {algorithm/2026157971=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm], java.lang.String)}
; {var900=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm, var1727=r0, var3060=$r2, var1688=$r1, var3117=$z0, var3770=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm=var900, r0=var1727, $r2=var3060, $r1=var1688, $z0=var3117, $z2=var3770}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm;	$r2 = "SHA";	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String algorithm>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3