(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1466 0)
(declare-sort var1968 0)
(declare-sort var1311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1466 var1466)
(declare-const null-var1968 var1968)
(declare-const null-String String)
(declare-const var3145 var1466) ; Statement: r4 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var3145 null-var1466)))
(declare-const var528 var1968) ; Statement: r1 := @parameter0: com.google.javascript.rhino.StaticScope 
(assert (not (= var528 null-var1968)))
(declare-const var1576 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1576 null-String)))
(assert true)
(define-const var595 Bool (isEmpty/-1285796103 var1576)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return null 
(assert (not (= (ite var595 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1466=com.google.javascript.rhino.jstype.JSTypeRegistry, var3145=r4, var1968=com.google.javascript.rhino.StaticScope, var528=r1, var1576=r0, var1311=null_type, var595=$z0}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var1466, r4=var3145, com.google.javascript.rhino.StaticScope=var1968, r1=var528, r0=var1576, null_type=var1311, $z0=var595}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r4 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r1 := @parameter0: com.google.javascript.rhino.StaticScope;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return null;	return null
;block_num 2