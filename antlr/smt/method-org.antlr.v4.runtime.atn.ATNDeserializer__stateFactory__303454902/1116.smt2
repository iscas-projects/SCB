(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2001 0)
(declare-sort var1168 0)
(declare-sort var705 0)
(declare-sort var3016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1168_getDefault/-641693464 () var1168)
(declare-fun arr-var705-init () (Array Int var705))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var705 (Int) var705)
(declare-fun String_format/-647569892 (var1168 String (Array Int var705)) String)
(declare-fun var3016-init () var3016)
(declare-fun <init>/875830710 (var3016 String) void)
(declare-const null-var2001 var2001)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var705__ (Array Int var705))
(declare-const var3467 var2001) ; Statement: r17 := @this: org.antlr.v4.runtime.atn.ATNDeserializer 
(assert (not (= var3467 null-var2001)))
(declare-const var3502 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3502 null-Int)))
(declare-const var3397 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3397 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return null;     case 1: goto $r11 = new org.antlr.v4.runtime.atn.BasicState;     case 2: goto $r10 = new org.antlr.v4.runtime.atn.RuleStartState;     case 3: goto $r9 = new org.antlr.v4.runtime.atn.BasicBlockStartState;     case 4: goto $r8 = new org.antlr.v4.runtime.atn.PlusBlockStartState;     case 5: goto $r7 = new org.antlr.v4.runtime.atn.StarBlockStartState;     case 6: goto $r6 = new org.antlr.v4.runtime.atn.TokensStartState;     case 7: goto $r5 = new org.antlr.v4.runtime.atn.RuleStopState;     case 8: goto $r4 = new org.antlr.v4.runtime.atn.BlockEndState;     case 9: goto $r3 = new org.antlr.v4.runtime.atn.StarLoopbackState;     case 10: goto $r2 = new org.antlr.v4.runtime.atn.StarLoopEntryState;     case 11: goto $r1 = new org.antlr.v4.runtime.atn.PlusLoopbackState;     case 12: goto $r0 = new org.antlr.v4.runtime.atn.LoopEndState;     default: goto $r14 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>(); } 
(assert (and (not (= var3502 12)) (and (not (= var3502 11)) (and (not (= var3502 10)) (and (not (= var3502 9)) (and (not (= var3502 8)) (and (not (= var3502 7)) (and (not (= var3502 6)) (and (not (= var3502 5)) (and (not (= var3502 4)) (and (not (= var3502 3)) (and (not (= var3502 2)) (and (not (= var3502 1)) (and (not (= var3502 0)) true)))))))))))))) ; Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 11   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional             
(define-const var2515 var1168 var1168_getDefault/-641693464) ; Statement: $r14 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var927 (Array Int var705) arr-var705-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(define-const var2021 Int (Int_valueOf/-1371140006 var3502)) ; Statement: $r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var927!1 (Array Int var705))
(assert (not (= var927!1 null-__Array__Int__var705__)))
(assert (= (select var927!1 0) (cast-from-Int-to-var705 var2021))) ; Statement: $r12[0] = $r13 
(define-const var1670 String (String_format/-647569892 var2515 "The specified state type %d is not valid." var927!1)) ; Statement: r15 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r14, "The specified state type %d is not valid.", $r12) 
(define-const var11 var3016 var3016-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var11 var1670)) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r15) 

(declare-const var11!1 var3016)
(declare-const var1670!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var1168_getDefault/-641693464=([], java.util.Locale), arr-var705-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var705=([java.lang.Integer], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var3016-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2001=org.antlr.v4.runtime.atn.ATNDeserializer, var3467=r17, var3502=i0, var3397=i1, var1168=java.util.Locale, var2515=$r14, var705=java.lang.Object, var927=$r12, var2021=$r13, var1670=r15, var3016=java.lang.IllegalArgumentException, var11=$r16}
; {org.antlr.v4.runtime.atn.ATNDeserializer=var2001, r17=var3467, i0=var3502, i1=var3397, java.util.Locale=var1168, $r14=var2515, java.lang.Object=var705, $r12=var927, $r13=var2021, r15=var1670, java.lang.IllegalArgumentException=var3016, $r16=var11}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r17 := @this: org.antlr.v4.runtime.atn.ATNDeserializer;	i0 := @parameter0: int;	i1 := @parameter1: int;	tableswitch(i0) {     case 0: goto return null;     case 1: goto $r11 = new org.antlr.v4.runtime.atn.BasicState;     case 2: goto $r10 = new org.antlr.v4.runtime.atn.RuleStartState;     case 3: goto $r9 = new org.antlr.v4.runtime.atn.BasicBlockStartState;     case 4: goto $r8 = new org.antlr.v4.runtime.atn.PlusBlockStartState;     case 5: goto $r7 = new org.antlr.v4.runtime.atn.StarBlockStartState;     case 6: goto $r6 = new org.antlr.v4.runtime.atn.TokensStartState;     case 7: goto $r5 = new org.antlr.v4.runtime.atn.RuleStopState;     case 8: goto $r4 = new org.antlr.v4.runtime.atn.BlockEndState;     case 9: goto $r3 = new org.antlr.v4.runtime.atn.StarLoopbackState;     case 10: goto $r2 = new org.antlr.v4.runtime.atn.StarLoopEntryState;     case 11: goto $r1 = new org.antlr.v4.runtime.atn.PlusLoopbackState;     case 12: goto $r0 = new org.antlr.v4.runtime.atn.LoopEndState;     default: goto $r14 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>(); };	$r14 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r12 = newarray (java.lang.Object)[1];	$r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r12[0] = $r13;	r15 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r14, "The specified state type %d is not valid.", $r12);	$r16 = new java.lang.IllegalArgumentException;	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r15);	throw $r16
;block_num 2