(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2308 0)
(declare-sort var103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var103-init () (Array Int var103))
(declare-fun channel/18782971 (var2308) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var103 (Int) var103)
(declare-fun String_format/1339386452 (String (Array Int var103)) String)
(declare-const null-var2308 var2308)
(declare-const null-__Array__Int__var103__ (Array Int var103))
(declare-const var2866 var2308) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.LexerChannelAction 
(assert (not (= var2866 null-var2308)))
(define-const var2640 (Array Int var103) arr-var103-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var3897 Int (channel/18782971 var2866)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.atn.LexerChannelAction: int channel> 
(define-const var3130 Int (Int_valueOf/-1371140006 var3897)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var2640!1 (Array Int var103))
(assert (not (= var2640!1 null-__Array__Int__var103__)))
(assert (= (select var2640!1 0) (cast-from-Int-to-var103 var3130))) ; Statement: $r0[0] = $r2 
(define-const var2951 String (String_format/1339386452 "channel(%d)" var2640!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("channel(%d)", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var103-init=([], java.lang.Object[]), channel/18782971=([org.antlr.v4.runtime.atn.LexerChannelAction], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var103=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2308=org.antlr.v4.runtime.atn.LexerChannelAction, var2866=r1, var103=java.lang.Object, var2640=$r0, var3897=$i0, var3130=$r2, var2951=$r3}
; {org.antlr.v4.runtime.atn.LexerChannelAction=var2308, r1=var2866, java.lang.Object=var103, $r0=var2640, $i0=var3897, $r2=var3130, $r3=var2951}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.LexerChannelAction;	$r0 = newarray (java.lang.Object)[1];	$i0 = r1.<org.antlr.v4.runtime.atn.LexerChannelAction: int channel>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("channel(%d)", $r0);	return $r3
;block_num 1