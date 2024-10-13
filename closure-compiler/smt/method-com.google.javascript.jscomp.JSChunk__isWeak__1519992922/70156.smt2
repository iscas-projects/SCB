(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3425 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1752330105 (var3425) String)
(declare-const null-var3425 var3425)
(declare-const var972 var3425) ; Statement: r0 := @this: com.google.javascript.jscomp.JSChunk 
(assert (not (= var972 null-var3425)))
(define-const var3352 String (name/-1752330105 var972)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.JSChunk: java.lang.String name> 
(assert true)
(define-const var3671 Bool (= var3352 "$weak$")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("$weak$") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1752330105=([com.google.javascript.jscomp.JSChunk], java.lang.String)}
; {var3425=com.google.javascript.jscomp.JSChunk, var972=r0, var3352=$r1, var3671=$z0}
; {com.google.javascript.jscomp.JSChunk=var3425, r0=var972, $r1=var3352, $z0=var3671}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.JSChunk;	$r1 = r0.<com.google.javascript.jscomp.JSChunk: java.lang.String name>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("$weak$");	return $z0
;block_num 1