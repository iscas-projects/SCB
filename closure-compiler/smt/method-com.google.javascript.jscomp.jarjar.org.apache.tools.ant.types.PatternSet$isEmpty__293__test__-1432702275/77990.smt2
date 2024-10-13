(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2104 0)
(declare-sort var2746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2746-to-String (var2746) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2104 var2104)
(declare-const null-var2746 var2746)
(declare-const var355 var2104) ; Statement: $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$isEmpty__293 
(assert (not (= var355 null-var2104)))
(declare-const var3414 var2746) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3414 null-var2746)))
(define-const var231 String (cast-from-var2746-to-String var3414)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var2610 Bool (isEmpty/-1285796103 var231)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2746-to-String=([java.lang.Object], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2104=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$isEmpty__293, var355=$r0, var2746=java.lang.Object, var3414=$r1, var231=$r2, var2610=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$isEmpty__293=var2104, $r0=var355, java.lang.Object=var2746, $r1=var3414, $r2=var231, $z0=var2610}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$isEmpty__293;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	return $z0
;block_num 1