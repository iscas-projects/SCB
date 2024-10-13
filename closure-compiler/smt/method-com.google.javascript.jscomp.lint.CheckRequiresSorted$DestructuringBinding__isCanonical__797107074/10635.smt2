(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exportedName/1528865275 (var572) String)
(declare-fun localName/1570916523 (var572) String)
(declare-const null-var572 var572)
(declare-const var1760 var572) ; Statement: r0 := @this: com.google.javascript.jscomp.lint.CheckRequiresSorted$DestructuringBinding 
(assert (not (= var1760 null-var572)))
(assert true)
(define-const var2168 String (exportedName/1528865275 var1760)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.lint.CheckRequiresSorted$DestructuringBinding: java.lang.String exportedName()>() 
(assert true)
(define-const var3285 String (localName/1570916523 var1760)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.lint.CheckRequiresSorted$DestructuringBinding: java.lang.String localName()>() 
(assert true)
(define-const var1898 Bool (= var2168 var3285)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $z2 = 1 
(assert (= (ite var1898 1 0) 0)) ; Cond: $z0 == 0 
(define-const var97 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {exportedName/1528865275=([com.google.javascript.jscomp.lint.CheckRequiresSorted$DestructuringBinding], java.lang.String), localName/1570916523=([com.google.javascript.jscomp.lint.CheckRequiresSorted$DestructuringBinding], java.lang.String)}
; {var572=com.google.javascript.jscomp.lint.CheckRequiresSorted$DestructuringBinding, var1760=r0, var2168=$r2, var3285=$r1, var1898=$z0, var97=$z2}
; {com.google.javascript.jscomp.lint.CheckRequiresSorted$DestructuringBinding=var572, r0=var1760, $r2=var2168, $r1=var3285, $z0=var1898, $z2=var97}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.lint.CheckRequiresSorted$DestructuringBinding;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.lint.CheckRequiresSorted$DestructuringBinding: java.lang.String exportedName()>();	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.lint.CheckRequiresSorted$DestructuringBinding: java.lang.String localName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3