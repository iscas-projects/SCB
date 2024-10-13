(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2862 0)
(declare-sort var251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var251-init () (Array Int var251))
(declare-fun a/-1981969563 (var2862) var251)
(declare-fun b/-1981969563 (var2862) var251)
(declare-fun c/-1981969563 (var2862) var251)
(declare-fun String_format/1339386452 (String (Array Int var251)) String)
(declare-const null-var2862 var2862)
(declare-const null-__Array__Int__var251__ (Array Int var251))
(declare-const var3498 var2862) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.Triple 
(assert (not (= var3498 null-var2862)))
(define-const var1652 (Array Int var251) arr-var251-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(define-const var408 var251 (a/-1981969563 var3498)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.misc.Triple: java.lang.Object a> 
(declare-const var1652!1 (Array Int var251))
(assert (not (= var1652!1 null-__Array__Int__var251__)))
(assert (= (select var1652!1 0) var408)) ; Statement: $r0[0] = $r2 
(define-const var1686 var251 (b/-1981969563 var3498)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.misc.Triple: java.lang.Object b> 
(declare-const var1652!2 (Array Int var251))
(assert (not (= var1652!2 null-__Array__Int__var251__)))
(assert (= (select var1652!2 1) var1686)) ; Statement: $r0[1] = $r3 
(define-const var1996 var251 (c/-1981969563 var3498)) ; Statement: $r4 = r1.<org.antlr.v4.runtime.misc.Triple: java.lang.Object c> 
(declare-const var1652!3 (Array Int var251))
(assert (not (= var1652!3 null-__Array__Int__var251__)))
(assert (= (select var1652!3 2) var1996)) ; Statement: $r0[2] = $r4 
(define-const var2707 String (String_format/1339386452 "(%s, %s, %s)" var1652!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("(%s, %s, %s)", $r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var251-init=([], java.lang.Object[]), a/-1981969563=([org.antlr.v4.runtime.misc.Triple], java.lang.Object), b/-1981969563=([org.antlr.v4.runtime.misc.Triple], java.lang.Object), c/-1981969563=([org.antlr.v4.runtime.misc.Triple], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2862=org.antlr.v4.runtime.misc.Triple, var3498=r1, var251=java.lang.Object, var1652=$r0, var408=$r2, var1686=$r3, var1996=$r4, var2707=$r5}
; {org.antlr.v4.runtime.misc.Triple=var2862, r1=var3498, java.lang.Object=var251, $r0=var1652, $r2=var408, $r3=var1686, $r4=var1996, $r5=var2707}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.Triple;	$r0 = newarray (java.lang.Object)[3];	$r2 = r1.<org.antlr.v4.runtime.misc.Triple: java.lang.Object a>;	$r0[0] = $r2;	$r3 = r1.<org.antlr.v4.runtime.misc.Triple: java.lang.Object b>;	$r0[1] = $r3;	$r4 = r1.<org.antlr.v4.runtime.misc.Triple: java.lang.Object c>;	$r0[2] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("(%s, %s, %s)", $r0);	return $r5
;block_num 1