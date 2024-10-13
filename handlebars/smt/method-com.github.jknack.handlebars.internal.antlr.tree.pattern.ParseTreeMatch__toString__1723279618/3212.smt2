(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2428 0)
(declare-sort var3455 0)
(declare-sort var3289 0)
(declare-sort var1057 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3455-init () (Array Int var3455))
(declare-fun succeeded/-310102240 (var2428) Bool)
(declare-fun cast-from-String-to-var3455 (String) var3455)
(declare-fun getLabels/-647420145 (var2428) var3289)
(declare-fun size/2097699827 (var1057) Int)
(declare-fun cast-from-var3289-to-var1057 (var3289) var1057)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3455 (Int) var3455)
(declare-fun String_format/1339386452 (String (Array Int var3455)) String)
(declare-const null-var2428 var2428)
(declare-const null-__Array__Int__var3455__ (Array Int var3455))
(declare-const var1992 var2428) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch 
(assert (not (= var1992 null-var2428)))
(define-const var958 (Array Int var3455) arr-var3455-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var2036 Bool (succeeded/-310102240 var1992)) ; Statement: $z0 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch: boolean succeeded()>() 
 ; Statement: if $z0 == 0 goto $r5 = "failed" 
(assert (= (ite var2036 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3381 String "failed") ; Statement: $r5 = "failed" 
(assert true) ; Non Conditional
(declare-const var958!1 (Array Int var3455))
(assert (not (= var958!1 null-__Array__Int__var3455__)))
(assert (= (select var958!1 0) (cast-from-String-to-var3455 var3381))) ; Statement: $r0[0] = $r5 
(assert true)
(define-const var3275 var3289 (getLabels/-647420145 var1992)) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch: com.github.jknack.handlebars.internal.antlr.misc.MultiMap getLabels()>() 
(assert true)
(define-const var1884 Int (size/2097699827 (cast-from-var3289-to-var1057 var3275))) ; Statement: $i0 = virtualinvoke $r2.<com.github.jknack.handlebars.internal.antlr.misc.MultiMap: int size()>() 
(define-const var1994 Int (Int_valueOf/-1371140006 var1884)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var958!2 (Array Int var3455))
(assert (not (= var958!2 null-__Array__Int__var3455__)))
(assert (= (select var958!2 1) (cast-from-Int-to-var3455 var1994))) ; Statement: $r0[1] = $r3 
(define-const var3851 String (String_format/1339386452 "Match %s; found %d labels" var958!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Match %s; found %d labels", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3455-init=([], java.lang.Object[]), succeeded/-310102240=([com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch], boolean), cast-from-String-to-var3455=([java.lang.String], java.lang.Object), getLabels/-647420145=([com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch], com.github.jknack.handlebars.internal.antlr.misc.MultiMap), size/2097699827=([java.util.HashMap], int), cast-from-var3289-to-var1057=([com.github.jknack.handlebars.internal.antlr.misc.MultiMap], java.util.HashMap), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3455=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2428=com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch, var1992=r1, var3455=java.lang.Object, var958=$r0, var2036=$z0, var3381=$r5, var3289=com.github.jknack.handlebars.internal.antlr.misc.MultiMap, var3275=$r2, var1057=java.util.HashMap, var1884=$i0, var1994=$r3, var3851=$r4}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch=var2428, r1=var1992, java.lang.Object=var3455, $r0=var958, $z0=var2036, $r5=var3381, com.github.jknack.handlebars.internal.antlr.misc.MultiMap=var3289, $r2=var3275, java.util.HashMap=var1057, $i0=var1884, $r3=var1994, $r4=var3851}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch;	$r0 = newarray (java.lang.Object)[2];	$z0 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch: boolean succeeded()>();	if $z0 == 0 goto $r5 = "failed";	$r5 = "failed";	$r0[0] = $r5;	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreeMatch: com.github.jknack.handlebars.internal.antlr.misc.MultiMap getLabels()>();	$i0 = virtualinvoke $r2.<com.github.jknack.handlebars.internal.antlr.misc.MultiMap: int size()>();	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Match %s; found %d labels", $r0);	return $r4
;block_num 3