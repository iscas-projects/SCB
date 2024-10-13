(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2474 0)
(declare-sort var577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var577-init () (Array Int var577))
(declare-fun type/-162540599 (var2474) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var577 (Int) var577)
(declare-fun String_format/1339386452 (String (Array Int var577)) String)
(declare-const null-var2474 var2474)
(declare-const null-__Array__Int__var577__ (Array Int var577))
(declare-const var587 var2474) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.LexerTypeAction 
(assert (not (= var587 null-var2474)))
(define-const var2903 (Array Int var577) arr-var577-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var1980 Int (type/-162540599 var587)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.LexerTypeAction: int type> 
(define-const var447 Int (Int_valueOf/-1371140006 var1980)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var2903!1 (Array Int var577))
(assert (not (= var2903!1 null-__Array__Int__var577__)))
(assert (= (select var2903!1 0) (cast-from-Int-to-var577 var447))) ; Statement: $r0[0] = $r2 
(define-const var36 String (String_format/1339386452 "type(%d)" var2903!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("type(%d)", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var577-init=([], java.lang.Object[]), type/-162540599=([com.github.jknack.handlebars.internal.antlr.atn.LexerTypeAction], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var577=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2474=com.github.jknack.handlebars.internal.antlr.atn.LexerTypeAction, var587=r1, var577=java.lang.Object, var2903=$r0, var1980=$i0, var447=$r2, var36=$r3}
; {com.github.jknack.handlebars.internal.antlr.atn.LexerTypeAction=var2474, r1=var587, java.lang.Object=var577, $r0=var2903, $i0=var1980, $r2=var447, $r3=var36}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.LexerTypeAction;	$r0 = newarray (java.lang.Object)[1];	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.LexerTypeAction: int type>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("type(%d)", $r0);	return $r3
;block_num 1