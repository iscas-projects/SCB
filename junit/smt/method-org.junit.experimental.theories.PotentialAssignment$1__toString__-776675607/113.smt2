(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var456 0)
(declare-sort var822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var822-init () (Array Int var822))
(declare-fun val$value/-29446135 (var456) var822)
(declare-fun String_format/1339386452 (String (Array Int var822)) String)
(declare-const null-var456 var456)
(declare-const null-__Array__Int__var822__ (Array Int var822))
(declare-const var1734 var456) ; Statement: r1 := @this: org.junit.experimental.theories.PotentialAssignment$1 
(assert (not (= var1734 null-var456)))
(define-const var2555 (Array Int var822) arr-var822-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var2410 var822 (val$value/-29446135 var1734)) ; Statement: $r2 = r1.<org.junit.experimental.theories.PotentialAssignment$1: java.lang.Object val$value> 
(declare-const var2555!1 (Array Int var822))
(assert (not (= var2555!1 null-__Array__Int__var822__)))
(assert (= (select var2555!1 0) var2410)) ; Statement: $r0[0] = $r2 
(define-const var2389 String (String_format/1339386452 "[%s]" var2555!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("[%s]", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var822-init=([], java.lang.Object[]), val$value/-29446135=([org.junit.experimental.theories.PotentialAssignment$1], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var456=org.junit.experimental.theories.PotentialAssignment$1, var1734=r1, var822=java.lang.Object, var2555=$r0, var2410=$r2, var2389=$r3}
; {org.junit.experimental.theories.PotentialAssignment$1=var456, r1=var1734, java.lang.Object=var822, $r0=var2555, $r2=var2410, $r3=var2389}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.junit.experimental.theories.PotentialAssignment$1;	$r0 = newarray (java.lang.Object)[1];	$r2 = r1.<org.junit.experimental.theories.PotentialAssignment$1: java.lang.Object val$value>;	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("[%s]", $r0);	return $r3
;block_num 1