(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2675 0)
(declare-sort var3589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3589-init () (Array Int var3589))
(declare-fun mode/966113708 (var2675) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3589 (Int) var3589)
(declare-fun String_format/1339386452 (String (Array Int var3589)) String)
(declare-const null-var2675 var2675)
(declare-const null-__Array__Int__var3589__ (Array Int var3589))
(declare-const var533 var2675) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.LexerPushModeAction 
(assert (not (= var533 null-var2675)))
(define-const var11 (Array Int var3589) arr-var3589-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var1218 Int (mode/966113708 var533)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.LexerPushModeAction: int mode> 
(define-const var3251 Int (Int_valueOf/-1371140006 var1218)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var11!1 (Array Int var3589))
(assert (not (= var11!1 null-__Array__Int__var3589__)))
(assert (= (select var11!1 0) (cast-from-Int-to-var3589 var3251))) ; Statement: $r0[0] = $r2 
(define-const var806 String (String_format/1339386452 "pushMode(%d)" var11!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("pushMode(%d)", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3589-init=([], java.lang.Object[]), mode/966113708=([com.github.jknack.handlebars.internal.antlr.atn.LexerPushModeAction], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3589=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2675=com.github.jknack.handlebars.internal.antlr.atn.LexerPushModeAction, var533=r1, var3589=java.lang.Object, var11=$r0, var1218=$i0, var3251=$r2, var806=$r3}
; {com.github.jknack.handlebars.internal.antlr.atn.LexerPushModeAction=var2675, r1=var533, java.lang.Object=var3589, $r0=var11, $i0=var1218, $r2=var3251, $r3=var806}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.LexerPushModeAction;	$r0 = newarray (java.lang.Object)[1];	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.LexerPushModeAction: int mode>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("pushMode(%d)", $r0);	return $r3
;block_num 1