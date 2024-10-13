(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1607 0)
(declare-sort var305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var305-init () (Array Int var305))
(declare-fun a/1808527804 (var1607) var305)
(declare-fun b/1808527804 (var1607) var305)
(declare-fun String_format/1339386452 (String (Array Int var305)) String)
(declare-const null-var1607 var1607)
(declare-const null-__Array__Int__var305__ (Array Int var305))
(declare-const var3461 var1607) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.Pair 
(assert (not (= var3461 null-var1607)))
(define-const var2478 (Array Int var305) arr-var305-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var182 var305 (a/1808527804 var3461)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Pair: java.lang.Object a> 
(declare-const var2478!1 (Array Int var305))
(assert (not (= var2478!1 null-__Array__Int__var305__)))
(assert (= (select var2478!1 0) var182)) ; Statement: $r0[0] = $r2 
(define-const var3682 var305 (b/1808527804 var3461)) ; Statement: $r3 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Pair: java.lang.Object b> 
(declare-const var2478!2 (Array Int var305))
(assert (not (= var2478!2 null-__Array__Int__var305__)))
(assert (= (select var2478!2 1) var3682)) ; Statement: $r0[1] = $r3 
(define-const var2345 String (String_format/1339386452 "(%s, %s)" var2478!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("(%s, %s)", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var305-init=([], java.lang.Object[]), a/1808527804=([com.github.jknack.handlebars.internal.antlr.misc.Pair], java.lang.Object), b/1808527804=([com.github.jknack.handlebars.internal.antlr.misc.Pair], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1607=com.github.jknack.handlebars.internal.antlr.misc.Pair, var3461=r1, var305=java.lang.Object, var2478=$r0, var182=$r2, var3682=$r3, var2345=$r4}
; {com.github.jknack.handlebars.internal.antlr.misc.Pair=var1607, r1=var3461, java.lang.Object=var305, $r0=var2478, $r2=var182, $r3=var3682, $r4=var2345}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.Pair;	$r0 = newarray (java.lang.Object)[2];	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Pair: java.lang.Object a>;	$r0[0] = $r2;	$r3 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Pair: java.lang.Object b>;	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("(%s, %s)", $r0);	return $r4
;block_num 1