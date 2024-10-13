(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1043 0)
(declare-sort var2570 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2570-init () (Array Int var2570))
(declare-fun channel/183968960 (var1043) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2570 (Int) var2570)
(declare-fun String_format/1339386452 (String (Array Int var2570)) String)
(declare-const null-var1043 var1043)
(declare-const null-__Array__Int__var2570__ (Array Int var2570))
(declare-const var2017 var1043) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.LexerChannelAction 
(assert (not (= var2017 null-var1043)))
(define-const var2450 (Array Int var2570) arr-var2570-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var1823 Int (channel/183968960 var2017)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.LexerChannelAction: int channel> 
(define-const var39 Int (Int_valueOf/-1371140006 var1823)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var2450!1 (Array Int var2570))
(assert (not (= var2450!1 null-__Array__Int__var2570__)))
(assert (= (select var2450!1 0) (cast-from-Int-to-var2570 var39))) ; Statement: $r0[0] = $r2 
(define-const var2022 String (String_format/1339386452 "channel(%d)" var2450!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("channel(%d)", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2570-init=([], java.lang.Object[]), channel/183968960=([com.github.jknack.handlebars.internal.antlr.atn.LexerChannelAction], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2570=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1043=com.github.jknack.handlebars.internal.antlr.atn.LexerChannelAction, var2017=r1, var2570=java.lang.Object, var2450=$r0, var1823=$i0, var39=$r2, var2022=$r3}
; {com.github.jknack.handlebars.internal.antlr.atn.LexerChannelAction=var1043, r1=var2017, java.lang.Object=var2570, $r0=var2450, $i0=var1823, $r2=var39, $r3=var2022}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.LexerChannelAction;	$r0 = newarray (java.lang.Object)[1];	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.LexerChannelAction: int channel>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("channel(%d)", $r0);	return $r3
;block_num 1