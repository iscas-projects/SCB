(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1705 0)
(declare-sort var868 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var868-init () (Array Int var868))
(declare-fun a/-927336543 (var1705) var868)
(declare-fun b/-927336543 (var1705) var868)
(declare-fun String_format/1339386452 (String (Array Int var868)) String)
(declare-const null-var1705 var1705)
(declare-const null-__Array__Int__var868__ (Array Int var868))
(declare-const var3394 var1705) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.Pair 
(assert (not (= var3394 null-var1705)))
(define-const var1879 (Array Int var868) arr-var868-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var573 var868 (a/-927336543 var3394)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.misc.Pair: java.lang.Object a> 
(declare-const var1879!1 (Array Int var868))
(assert (not (= var1879!1 null-__Array__Int__var868__)))
(assert (= (select var1879!1 0) var573)) ; Statement: $r0[0] = $r2 
(define-const var888 var868 (b/-927336543 var3394)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.misc.Pair: java.lang.Object b> 
(declare-const var1879!2 (Array Int var868))
(assert (not (= var1879!2 null-__Array__Int__var868__)))
(assert (= (select var1879!2 1) var888)) ; Statement: $r0[1] = $r3 
(define-const var1410 String (String_format/1339386452 "(%s, %s)" var1879!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("(%s, %s)", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var868-init=([], java.lang.Object[]), a/-927336543=([org.antlr.v4.runtime.misc.Pair], java.lang.Object), b/-927336543=([org.antlr.v4.runtime.misc.Pair], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1705=org.antlr.v4.runtime.misc.Pair, var3394=r1, var868=java.lang.Object, var1879=$r0, var573=$r2, var888=$r3, var1410=$r4}
; {org.antlr.v4.runtime.misc.Pair=var1705, r1=var3394, java.lang.Object=var868, $r0=var1879, $r2=var573, $r3=var888, $r4=var1410}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.Pair;	$r0 = newarray (java.lang.Object)[2];	$r2 = r1.<org.antlr.v4.runtime.misc.Pair: java.lang.Object a>;	$r0[0] = $r2;	$r3 = r1.<org.antlr.v4.runtime.misc.Pair: java.lang.Object b>;	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("(%s, %s)", $r0);	return $r4
;block_num 1