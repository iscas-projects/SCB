(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fnName/300494156 (var3923) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3923 var3923)
(declare-const var1591 var3923) ; Statement: r0 := @this: com.google.javascript.jscomp.FunctionTypeBuilder 
(assert (not (= var1591 null-var3923)))
(define-const var2441 String (fnName/300494156 var1591)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName> 
(assert true)
(define-const var1901 Bool (isEmpty/-1285796103 var2441)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName> 
(assert (= (ite var1901 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3263 String (fnName/300494156 var1591)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName> 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {fnName/300494156=([com.google.javascript.jscomp.FunctionTypeBuilder], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3923=com.google.javascript.jscomp.FunctionTypeBuilder, var1591=r0, var2441=$r1, var1901=$z0, var3263=$r2}
; {com.google.javascript.jscomp.FunctionTypeBuilder=var3923, r0=var1591, $r1=var2441, $z0=var1901, $r2=var3263}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.FunctionTypeBuilder;	$r1 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName>;	$r2 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName>;	return $r2
;block_num 3