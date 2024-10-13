(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fnName/300494156 (var1012) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1012 var1012)
(declare-const var1192 var1012) ; Statement: r0 := @this: com.google.javascript.jscomp.FunctionTypeBuilder 
(assert (not (= var1192 null-var1012)))
(define-const var3666 String (fnName/300494156 var1192)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName> 
(assert true)
(define-const var3635 Bool (isEmpty/-1285796103 var3666)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName> 
(assert (not (= (ite var3635 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var448 String "<anonymous>") ; Statement: $r2 = "<anonymous>" 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {fnName/300494156=([com.google.javascript.jscomp.FunctionTypeBuilder], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1012=com.google.javascript.jscomp.FunctionTypeBuilder, var1192=r0, var3666=$r1, var3635=$z0, var448=$r2}
; {com.google.javascript.jscomp.FunctionTypeBuilder=var1012, r0=var1192, $r1=var3666, $z0=var3635, $r2=var448}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.FunctionTypeBuilder;	$r1 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName>;	$r2 = "<anonymous>";	goto [?= return $r2];	return $r2
;block_num 3