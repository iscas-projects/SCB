(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1190 0)
(declare-sort var2641 0)
(declare-sort var2443 0)
(declare-sort var1761 0)
(declare-sort var621 0)
(declare-sort var1919 0)
(declare-sort var759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var1761) Int)
(declare-fun cast-from-var2641-to-var1761 (var2641) var1761)
(declare-fun var621-init () var621)
(declare-fun var1919_getDefault/-641693464 () var1919)
(declare-fun arr-var759-init () (Array Int var759))
(declare-fun cast-from-var2641-to-var759 (var2641) var759)
(declare-fun String_format/-647569892 (var1919 String (Array Int var759)) String)
(declare-fun <init>/875830710 (var621 String) void)
(declare-const null-var1190 var1190)
(declare-const null-var2641 var2641)
(declare-const null-Int Int)
(declare-const var2443-$SwitchMap$org$antlr$v4$runtime$atn$LexerActionType (Array Int Int))
(declare-const null-__Array__Int__var759__ (Array Int var759))
(declare-const var2607 var1190) ; Statement: r14 := @this: org.antlr.v4.runtime.atn.ATNDeserializer 
(assert (not (= var2607 null-var1190)))
(declare-const var2971 var2641) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.atn.LexerActionType 
(assert (not (= var2971 null-var2641)))
(declare-const var827 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var827 null-Int)))
(declare-const var1755 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var1755 null-Int)))
(define-const var3304 (Array Int Int) var2443-$SwitchMap$org$antlr$v4$runtime$atn$LexerActionType) ; Statement: $r1 = <org.antlr.v4.runtime.atn.ATNDeserializer$1: int[] $SwitchMap$org$antlr$v4$runtime$atn$LexerActionType> 
(assert true)
(define-const var39 Int (ordinal/-291641772 (cast-from-var2641-to-var1761 var2971))) ; Statement: $i0 = virtualinvoke r0.<org.antlr.v4.runtime.atn.LexerActionType: int ordinal()>() 
(define-const var546 Int (select var3304 var39)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r9 = new org.antlr.v4.runtime.atn.LexerChannelAction;     case 2: goto $r8 = new org.antlr.v4.runtime.atn.LexerCustomAction;     case 3: goto $r7 = new org.antlr.v4.runtime.atn.LexerModeAction;     case 4: goto $r6 = <org.antlr.v4.runtime.atn.LexerMoreAction: org.antlr.v4.runtime.atn.LexerMoreAction INSTANCE>;     case 5: goto $r5 = <org.antlr.v4.runtime.atn.LexerPopModeAction: org.antlr.v4.runtime.atn.LexerPopModeAction INSTANCE>;     case 6: goto $r4 = new org.antlr.v4.runtime.atn.LexerPushModeAction;     case 7: goto $r3 = <org.antlr.v4.runtime.atn.LexerSkipAction: org.antlr.v4.runtime.atn.LexerSkipAction INSTANCE>;     case 8: goto $r2 = new org.antlr.v4.runtime.atn.LexerTypeAction;     default: goto $r10 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var546 8)) (and (not (= var546 7)) (and (not (= var546 6)) (and (not (= var546 5)) (and (not (= var546 4)) (and (not (= var546 3)) (and (not (= var546 2)) (and (not (= var546 1)) true))))))))) ; Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional        
(define-const var3081 var621 var621-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var3830 var1919 var1919_getDefault/-641693464) ; Statement: $r12 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var1375 (Array Int var759) arr-var759-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var1375!1 (Array Int var759))
(assert (not (= var1375!1 null-__Array__Int__var759__)))
(assert (= (select var1375!1 0) (cast-from-var2641-to-var759 var2971))) ; Statement: $r11[0] = r0 
(define-const var498 String (String_format/-647569892 var3830 "The specified lexer action type %s is not valid." var1375!1)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r12, "The specified lexer action type %s is not valid.", $r11) 
(assert true)
;(assert (<init>/875830710 var3081 var498)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var3081!1 var621)
(declare-const var498!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var2641-to-var1761=([org.antlr.v4.runtime.atn.LexerActionType], java.lang.Enum), var621-init=([], java.lang.IllegalArgumentException), var1919_getDefault/-641693464=([], java.util.Locale), arr-var759-init=([], java.lang.Object[]), cast-from-var2641-to-var759=([org.antlr.v4.runtime.atn.LexerActionType], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1190=org.antlr.v4.runtime.atn.ATNDeserializer, var2607=r14, var2641=org.antlr.v4.runtime.atn.LexerActionType, var2971=r0, var827=i2, var1755=i3, var2443=org.antlr.v4.runtime.atn.ATNDeserializer$1, var3304=$r1, var1761=java.lang.Enum, var39=$i0, var546=$i1, var621=java.lang.IllegalArgumentException, var3081=$r10, var1919=java.util.Locale, var3830=$r12, var759=java.lang.Object, var1375=$r11, var498=$r13}
; {org.antlr.v4.runtime.atn.ATNDeserializer=var1190, r14=var2607, org.antlr.v4.runtime.atn.LexerActionType=var2641, r0=var2971, i2=var827, i3=var1755, org.antlr.v4.runtime.atn.ATNDeserializer$1=var2443, $r1=var3304, java.lang.Enum=var1761, $i0=var39, $i1=var546, java.lang.IllegalArgumentException=var621, $r10=var3081, java.util.Locale=var1919, $r12=var3830, java.lang.Object=var759, $r11=var1375, $r13=var498}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r14 := @this: org.antlr.v4.runtime.atn.ATNDeserializer;	r0 := @parameter0: org.antlr.v4.runtime.atn.LexerActionType;	i2 := @parameter1: int;	i3 := @parameter2: int;	$r1 = <org.antlr.v4.runtime.atn.ATNDeserializer$1: int[] $SwitchMap$org$antlr$v4$runtime$atn$LexerActionType>;	$i0 = virtualinvoke r0.<org.antlr.v4.runtime.atn.LexerActionType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r9 = new org.antlr.v4.runtime.atn.LexerChannelAction;     case 2: goto $r8 = new org.antlr.v4.runtime.atn.LexerCustomAction;     case 3: goto $r7 = new org.antlr.v4.runtime.atn.LexerModeAction;     case 4: goto $r6 = <org.antlr.v4.runtime.atn.LexerMoreAction: org.antlr.v4.runtime.atn.LexerMoreAction INSTANCE>;     case 5: goto $r5 = <org.antlr.v4.runtime.atn.LexerPopModeAction: org.antlr.v4.runtime.atn.LexerPopModeAction INSTANCE>;     case 6: goto $r4 = new org.antlr.v4.runtime.atn.LexerPushModeAction;     case 7: goto $r3 = <org.antlr.v4.runtime.atn.LexerSkipAction: org.antlr.v4.runtime.atn.LexerSkipAction INSTANCE>;     case 8: goto $r2 = new org.antlr.v4.runtime.atn.LexerTypeAction;     default: goto $r10 = new java.lang.IllegalArgumentException; };	$r10 = new java.lang.IllegalArgumentException;	$r12 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r11 = newarray (java.lang.Object)[1];	$r11[0] = r0;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r12, "The specified lexer action type %s is not valid.", $r11);	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r10
;block_num 2