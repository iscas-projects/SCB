(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun algorithm/-232008204 (var186) String)
(declare-const null-var186 var186)
(declare-const var3481 var186) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm 
(assert (not (= var3481 null-var186)))
(define-const var2346 String "CRC") ; Statement: $r2 = "CRC" 
(define-const var3958 String (algorithm/-232008204 var3481)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm: java.lang.String algorithm> 
(assert true)
(define-const var1820 Bool (= var2346 var3958)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var1820 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3426 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {algorithm/-232008204=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm], java.lang.String)}
; {var186=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm, var3481=r0, var2346=$r2, var3958=$r1, var1820=$z0, var3426=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm=var186, r0=var3481, $r2=var2346, $r1=var3958, $z0=var1820, $z2=var3426}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm;	$r2 = "CRC";	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm: java.lang.String algorithm>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3