(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var956 0)
(declare-sort var3338 0)
(declare-sort var199 0)
(declare-sort var1742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3338_getDefault/-641693464 () var3338)
(declare-fun arr-var199-init () (Array Int var199))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var199 (Int) var199)
(declare-fun String_format/-647569892 (var3338 String (Array Int var199)) String)
(declare-fun var1742-init () var1742)
(declare-fun <init>/875830710 (var1742 String) void)
(declare-const null-var956 var956)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var199__ (Array Int var199))
(declare-const var323 var956) ; Statement: r17 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer 
(assert (not (= var323 null-var956)))
(declare-const var2247 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2247 null-Int)))
(declare-const var2243 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2243 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return null;     case 1: goto $r11 = new com.github.jknack.handlebars.internal.antlr.atn.BasicState;     case 2: goto $r10 = new com.github.jknack.handlebars.internal.antlr.atn.RuleStartState;     case 3: goto $r9 = new com.github.jknack.handlebars.internal.antlr.atn.BasicBlockStartState;     case 4: goto $r8 = new com.github.jknack.handlebars.internal.antlr.atn.PlusBlockStartState;     case 5: goto $r7 = new com.github.jknack.handlebars.internal.antlr.atn.StarBlockStartState;     case 6: goto $r6 = new com.github.jknack.handlebars.internal.antlr.atn.TokensStartState;     case 7: goto $r5 = new com.github.jknack.handlebars.internal.antlr.atn.RuleStopState;     case 8: goto $r4 = new com.github.jknack.handlebars.internal.antlr.atn.BlockEndState;     case 9: goto $r3 = new com.github.jknack.handlebars.internal.antlr.atn.StarLoopbackState;     case 10: goto $r2 = new com.github.jknack.handlebars.internal.antlr.atn.StarLoopEntryState;     case 11: goto $r1 = new com.github.jknack.handlebars.internal.antlr.atn.PlusLoopbackState;     case 12: goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.LoopEndState;     default: goto $r14 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>(); } 
(assert (and (not (= var2247 12)) (and (not (= var2247 11)) (and (not (= var2247 10)) (and (not (= var2247 9)) (and (not (= var2247 8)) (and (not (= var2247 7)) (and (not (= var2247 6)) (and (not (= var2247 5)) (and (not (= var2247 4)) (and (not (= var2247 3)) (and (not (= var2247 2)) (and (not (= var2247 1)) (and (not (= var2247 0)) true)))))))))))))) ; Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 11   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional             
(define-const var2953 var3338 var3338_getDefault/-641693464) ; Statement: $r14 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var3351 (Array Int var199) arr-var199-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(define-const var1825 Int (Int_valueOf/-1371140006 var2247)) ; Statement: $r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3351!1 (Array Int var199))
(assert (not (= var3351!1 null-__Array__Int__var199__)))
(assert (= (select var3351!1 0) (cast-from-Int-to-var199 var1825))) ; Statement: $r12[0] = $r13 
(define-const var3048 String (String_format/-647569892 var2953 "The specified state type %d is not valid." var3351!1)) ; Statement: r15 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r14, "The specified state type %d is not valid.", $r12) 
(define-const var2597 var1742 var1742-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2597 var3048)) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r15) 

(declare-const var2597!1 var1742)
(declare-const var3048!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var3338_getDefault/-641693464=([], java.util.Locale), arr-var199-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var199=([java.lang.Integer], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var1742-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var956=com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer, var323=r17, var2247=i0, var2243=i1, var3338=java.util.Locale, var2953=$r14, var199=java.lang.Object, var3351=$r12, var1825=$r13, var3048=r15, var1742=java.lang.IllegalArgumentException, var2597=$r16}
; {com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer=var956, r17=var323, i0=var2247, i1=var2243, java.util.Locale=var3338, $r14=var2953, java.lang.Object=var199, $r12=var3351, $r13=var1825, r15=var3048, java.lang.IllegalArgumentException=var1742, $r16=var2597}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r17 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer;	i0 := @parameter0: int;	i1 := @parameter1: int;	tableswitch(i0) {     case 0: goto return null;     case 1: goto $r11 = new com.github.jknack.handlebars.internal.antlr.atn.BasicState;     case 2: goto $r10 = new com.github.jknack.handlebars.internal.antlr.atn.RuleStartState;     case 3: goto $r9 = new com.github.jknack.handlebars.internal.antlr.atn.BasicBlockStartState;     case 4: goto $r8 = new com.github.jknack.handlebars.internal.antlr.atn.PlusBlockStartState;     case 5: goto $r7 = new com.github.jknack.handlebars.internal.antlr.atn.StarBlockStartState;     case 6: goto $r6 = new com.github.jknack.handlebars.internal.antlr.atn.TokensStartState;     case 7: goto $r5 = new com.github.jknack.handlebars.internal.antlr.atn.RuleStopState;     case 8: goto $r4 = new com.github.jknack.handlebars.internal.antlr.atn.BlockEndState;     case 9: goto $r3 = new com.github.jknack.handlebars.internal.antlr.atn.StarLoopbackState;     case 10: goto $r2 = new com.github.jknack.handlebars.internal.antlr.atn.StarLoopEntryState;     case 11: goto $r1 = new com.github.jknack.handlebars.internal.antlr.atn.PlusLoopbackState;     case 12: goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.LoopEndState;     default: goto $r14 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>(); };	$r14 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r12 = newarray (java.lang.Object)[1];	$r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r12[0] = $r13;	r15 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r14, "The specified state type %d is not valid.", $r12);	$r16 = new java.lang.IllegalArgumentException;	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r15);	throw $r16
;block_num 2