(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1710 0)
(declare-sort var1518 0)
(declare-sort var2776 0)
(declare-sort var3823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1518-init () (Array Int var1518))
(declare-fun succeeded/-310102240 (var1710) Bool)
(declare-fun cast-from-String-to-var1518 (String) var1518)
(declare-fun getLabels/-647420145 (var1710) var2776)
(declare-fun size/2097699827 (var3823) Int)
(declare-fun cast-from-var2776-to-var3823 (var2776) var3823)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1518 (Int) var1518)
(declare-fun String_format/1339386452 (String (Array Int var1518)) String)
(declare-const null-var1710 var1710)
(declare-const null-__Array__Int__var1518__ (Array Int var1518))
(declare-const var2608 var1710) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch 
(assert (not (= var2608 null-var1710)))
(define-const var1600 (Array Int var1518) arr-var1518-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var242 Bool (succeeded/-310102240 var2608)) ; Statement: $z0 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch: boolean succeeded()>() 
 ; Statement: if $z0 == 0 goto $r5 = "failed" 
(assert (not (= (ite var242 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var349 String "succeeded") ; Statement: $r5 = "succeeded" 
 ; Statement: goto [?= $r0[0] = $r5] 
(assert true) ; Non Conditional
(declare-const var1600!1 (Array Int var1518))
(assert (not (= var1600!1 null-__Array__Int__var1518__)))
(assert (= (select var1600!1 0) (cast-from-String-to-var1518 var349))) ; Statement: $r0[0] = $r5 
(assert true)
(define-const var2196 var2776 (getLabels/-647420145 var2608)) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch: com.github.jknack.handlebars.internal.antlr.misc.MultiMap getLabels()>() 
(assert true)
(define-const var1006 Int (size/2097699827 (cast-from-var2776-to-var3823 var2196))) ; Statement: $i0 = virtualinvoke $r2.<com.github.jknack.handlebars.internal.antlr.misc.MultiMap: int size()>() 
(define-const var2130 Int (Int_valueOf/-1371140006 var1006)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var1600!2 (Array Int var1518))
(assert (not (= var1600!2 null-__Array__Int__var1518__)))
(assert (= (select var1600!2 1) (cast-from-Int-to-var1518 var2130))) ; Statement: $r0[1] = $r3 
(define-const var2327 String (String_format/1339386452 "Match %s; found %d labels" var1600!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Match %s; found %d labels", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1518-init=([], java.lang.Object[]), succeeded/-310102240=([com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch], boolean), cast-from-String-to-var1518=([java.lang.String], java.lang.Object), getLabels/-647420145=([com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch], com.github.jknack.handlebars.internal.antlr.misc.MultiMap), size/2097699827=([java.util.HashMap], int), cast-from-var2776-to-var3823=([com.github.jknack.handlebars.internal.antlr.misc.MultiMap], java.util.HashMap), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1518=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1710=com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch, var2608=r1, var1518=java.lang.Object, var1600=$r0, var242=$z0, var349=$r5, var2776=com.github.jknack.handlebars.internal.antlr.misc.MultiMap, var2196=$r2, var3823=java.util.HashMap, var1006=$i0, var2130=$r3, var2327=$r4}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch=var1710, r1=var2608, java.lang.Object=var1518, $r0=var1600, $z0=var242, $r5=var349, com.github.jknack.handlebars.internal.antlr.misc.MultiMap=var2776, $r2=var2196, java.util.HashMap=var3823, $i0=var1006, $r3=var2130, $r4=var2327}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch;	$r0 = newarray (java.lang.Object)[2];	$z0 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch: boolean succeeded()>();	if $z0 == 0 goto $r5 = "failed";	$r5 = "succeeded";	goto [?= $r0[0] = $r5];	$r0[0] = $r5;	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch: com.github.jknack.handlebars.internal.antlr.misc.MultiMap getLabels()>();	$i0 = virtualinvoke $r2.<com.github.jknack.handlebars.internal.antlr.misc.MultiMap: int size()>();	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Match %s; found %d labels", $r0);	return $r4
;block_num 3