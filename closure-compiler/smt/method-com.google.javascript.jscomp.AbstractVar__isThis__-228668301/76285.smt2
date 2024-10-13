(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/138269672 (var1484) String)
(declare-const null-var1484 var1484)
(declare-const var2578 var1484) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractVar 
(assert (not (= var2578 null-var1484)))
(define-const var349 String "this") ; Statement: $r2 = "this" 
(define-const var566 String (name/138269672 var2578)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractVar: java.lang.String name> 
(assert true)
(define-const var457 Bool (= var349 var566)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var457 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1438 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/138269672=([com.google.javascript.jscomp.AbstractVar], java.lang.String)}
; {var1484=com.google.javascript.jscomp.AbstractVar, var2578=r0, var349=$r2, var566=$r1, var457=$z0, var1438=$z2}
; {com.google.javascript.jscomp.AbstractVar=var1484, r0=var2578, $r2=var349, $r1=var566, $z0=var457, $z2=var1438}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractVar;	$r2 = "this";	$r1 = r0.<com.google.javascript.jscomp.AbstractVar: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3