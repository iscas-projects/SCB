(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3380 0)
(declare-sort var2657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2657-init () (Array Int var2657))
(declare-fun type/701464430 (var3380) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2657 (Int) var2657)
(declare-fun String_format/1339386452 (String (Array Int var2657)) String)
(declare-const null-var3380 var3380)
(declare-const null-__Array__Int__var2657__ (Array Int var2657))
(declare-const var522 var3380) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.LexerTypeAction 
(assert (not (= var522 null-var3380)))
(define-const var3619 (Array Int var2657) arr-var2657-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var1155 Int (type/701464430 var522)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.atn.LexerTypeAction: int type> 
(define-const var1872 Int (Int_valueOf/-1371140006 var1155)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var3619!1 (Array Int var2657))
(assert (not (= var3619!1 null-__Array__Int__var2657__)))
(assert (= (select var3619!1 0) (cast-from-Int-to-var2657 var1872))) ; Statement: $r0[0] = $r2 
(define-const var197 String (String_format/1339386452 "type(%d)" var3619!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("type(%d)", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2657-init=([], java.lang.Object[]), type/701464430=([org.antlr.v4.runtime.atn.LexerTypeAction], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2657=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3380=org.antlr.v4.runtime.atn.LexerTypeAction, var522=r1, var2657=java.lang.Object, var3619=$r0, var1155=$i0, var1872=$r2, var197=$r3}
; {org.antlr.v4.runtime.atn.LexerTypeAction=var3380, r1=var522, java.lang.Object=var2657, $r0=var3619, $i0=var1155, $r2=var1872, $r3=var197}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.LexerTypeAction;	$r0 = newarray (java.lang.Object)[1];	$i0 = r1.<org.antlr.v4.runtime.atn.LexerTypeAction: int type>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("type(%d)", $r0);	return $r3
;block_num 1