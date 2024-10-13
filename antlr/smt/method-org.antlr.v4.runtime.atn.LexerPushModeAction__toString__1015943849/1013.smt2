(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3074 0)
(declare-sort var2152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2152-init () (Array Int var2152))
(declare-fun mode/140315345 (var3074) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2152 (Int) var2152)
(declare-fun String_format/1339386452 (String (Array Int var2152)) String)
(declare-const null-var3074 var3074)
(declare-const null-__Array__Int__var2152__ (Array Int var2152))
(declare-const var2556 var3074) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.LexerPushModeAction 
(assert (not (= var2556 null-var3074)))
(define-const var2079 (Array Int var2152) arr-var2152-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var1584 Int (mode/140315345 var2556)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.atn.LexerPushModeAction: int mode> 
(define-const var1579 Int (Int_valueOf/-1371140006 var1584)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var2079!1 (Array Int var2152))
(assert (not (= var2079!1 null-__Array__Int__var2152__)))
(assert (= (select var2079!1 0) (cast-from-Int-to-var2152 var1579))) ; Statement: $r0[0] = $r2 
(define-const var180 String (String_format/1339386452 "pushMode(%d)" var2079!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("pushMode(%d)", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2152-init=([], java.lang.Object[]), mode/140315345=([org.antlr.v4.runtime.atn.LexerPushModeAction], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2152=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3074=org.antlr.v4.runtime.atn.LexerPushModeAction, var2556=r1, var2152=java.lang.Object, var2079=$r0, var1584=$i0, var1579=$r2, var180=$r3}
; {org.antlr.v4.runtime.atn.LexerPushModeAction=var3074, r1=var2556, java.lang.Object=var2152, $r0=var2079, $i0=var1584, $r2=var1579, $r3=var180}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.LexerPushModeAction;	$r0 = newarray (java.lang.Object)[1];	$i0 = r1.<org.antlr.v4.runtime.atn.LexerPushModeAction: int mode>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("pushMode(%d)", $r0);	return $r3
;block_num 1