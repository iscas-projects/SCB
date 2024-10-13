(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var60 0)
(declare-sort var298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var298-init () (Array Int var298))
(declare-fun mode/-762120425 (var60) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var298 (Int) var298)
(declare-fun String_format/1339386452 (String (Array Int var298)) String)
(declare-const null-var60 var60)
(declare-const null-__Array__Int__var298__ (Array Int var298))
(declare-const var2777 var60) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.LexerModeAction 
(assert (not (= var2777 null-var60)))
(define-const var23 (Array Int var298) arr-var298-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var3783 Int (mode/-762120425 var2777)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.atn.LexerModeAction: int mode> 
(define-const var443 Int (Int_valueOf/-1371140006 var3783)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var23!1 (Array Int var298))
(assert (not (= var23!1 null-__Array__Int__var298__)))
(assert (= (select var23!1 0) (cast-from-Int-to-var298 var443))) ; Statement: $r0[0] = $r2 
(define-const var691 String (String_format/1339386452 "mode(%d)" var23!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("mode(%d)", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var298-init=([], java.lang.Object[]), mode/-762120425=([org.antlr.v4.runtime.atn.LexerModeAction], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var298=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var60=org.antlr.v4.runtime.atn.LexerModeAction, var2777=r1, var298=java.lang.Object, var23=$r0, var3783=$i0, var443=$r2, var691=$r3}
; {org.antlr.v4.runtime.atn.LexerModeAction=var60, r1=var2777, java.lang.Object=var298, $r0=var23, $i0=var3783, $r2=var443, $r3=var691}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.LexerModeAction;	$r0 = newarray (java.lang.Object)[1];	$i0 = r1.<org.antlr.v4.runtime.atn.LexerModeAction: int mode>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("mode(%d)", $r0);	return $r3
;block_num 1