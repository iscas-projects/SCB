(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2651 0)
(declare-sort var1151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1151-init () (Array Int var1151))
(declare-fun mode/-1626125454 (var2651) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1151 (Int) var1151)
(declare-fun String_format/1339386452 (String (Array Int var1151)) String)
(declare-const null-var2651 var2651)
(declare-const null-__Array__Int__var1151__ (Array Int var1151))
(declare-const var851 var2651) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.LexerModeAction 
(assert (not (= var851 null-var2651)))
(define-const var3743 (Array Int var1151) arr-var1151-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var2143 Int (mode/-1626125454 var851)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.LexerModeAction: int mode> 
(define-const var239 Int (Int_valueOf/-1371140006 var2143)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var3743!1 (Array Int var1151))
(assert (not (= var3743!1 null-__Array__Int__var1151__)))
(assert (= (select var3743!1 0) (cast-from-Int-to-var1151 var239))) ; Statement: $r0[0] = $r2 
(define-const var2850 String (String_format/1339386452 "mode(%d)" var3743!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("mode(%d)", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1151-init=([], java.lang.Object[]), mode/-1626125454=([com.github.jknack.handlebars.internal.antlr.atn.LexerModeAction], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1151=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2651=com.github.jknack.handlebars.internal.antlr.atn.LexerModeAction, var851=r1, var1151=java.lang.Object, var3743=$r0, var2143=$i0, var239=$r2, var2850=$r3}
; {com.github.jknack.handlebars.internal.antlr.atn.LexerModeAction=var2651, r1=var851, java.lang.Object=var1151, $r0=var3743, $i0=var2143, $r2=var239, $r3=var2850}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.LexerModeAction;	$r0 = newarray (java.lang.Object)[1];	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.LexerModeAction: int mode>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("mode(%d)", $r0);	return $r3
;block_num 1