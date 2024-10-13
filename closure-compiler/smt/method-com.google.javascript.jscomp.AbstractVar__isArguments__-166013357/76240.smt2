(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/138269672 (var2444) String)
(declare-const null-var2444 var2444)
(declare-const var1795 var2444) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractVar 
(assert (not (= var1795 null-var2444)))
(define-const var140 String "arguments") ; Statement: $r2 = "arguments" 
(define-const var3033 String (name/138269672 var1795)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractVar: java.lang.String name> 
(assert true)
(define-const var1063 Bool (= var140 var3033)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var1063 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1477 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/138269672=([com.google.javascript.jscomp.AbstractVar], java.lang.String)}
; {var2444=com.google.javascript.jscomp.AbstractVar, var1795=r0, var140=$r2, var3033=$r1, var1063=$z0, var1477=$z2}
; {com.google.javascript.jscomp.AbstractVar=var2444, r0=var1795, $r2=var140, $r1=var3033, $z0=var1063, $z2=var1477}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractVar;	$r2 = "arguments";	$r1 = r0.<com.google.javascript.jscomp.AbstractVar: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3