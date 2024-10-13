(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1752330105 (var1055) String)
(declare-const null-var1055 var1055)
(declare-const var2836 var1055) ; Statement: r0 := @this: com.google.javascript.jscomp.JSChunk 
(assert (not (= var2836 null-var1055)))
(define-const var3271 String (name/-1752330105 var2836)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.JSChunk: java.lang.String name> 
(assert true)
(define-const var2556 Bool (= var3271 "$strong$")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("$strong$") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2556 1 0) 0))) ; Cond: $z0 != 0 
(define-const var273 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1752330105=([com.google.javascript.jscomp.JSChunk], java.lang.String)}
; {var1055=com.google.javascript.jscomp.JSChunk, var2836=r0, var3271=$r1, var2556=$z0, var273=$z2}
; {com.google.javascript.jscomp.JSChunk=var1055, r0=var2836, $r1=var3271, $z0=var2556, $z2=var273}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.JSChunk;	$r1 = r0.<com.google.javascript.jscomp.JSChunk: java.lang.String name>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("$strong$");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3