(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1942 0)
(declare-sort var3710 0)
(declare-sort var1444 0)
(declare-sort var3514 0)
(declare-sort var1149 0)
(declare-sort var1104 0)
(declare-sort var47 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3514) Int)
(declare-fun cast-from-var3710-to-var3514 (var3710) var3514)
(declare-fun var1149-init () var1149)
(declare-fun var1104_getDefault/-641693464 () var1104)
(declare-fun arr-var47-init () (Array Int var47))
(declare-fun cast-from-var3710-to-var47 (var3710) var47)
(declare-fun String_format/-647569892 (var1104 String (Array Int var47)) String)
(declare-fun <init>/875830710 (var1149 String) void)
(declare-const null-var1942 var1942)
(declare-const null-var3710 var3710)
(declare-const null-Int Int)
(declare-const var1444-$SwitchMap$org$antlr$v4$runtime$atn$LexerActionType (Array Int Int))
(declare-const null-__Array__Int__var47__ (Array Int var47))
(declare-const var871 var1942) ; Statement: r14 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer 
(assert (not (= var871 null-var1942)))
(declare-const var3441 var3710) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.LexerActionType 
(assert (not (= var3441 null-var3710)))
(declare-const var904 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var904 null-Int)))
(declare-const var3319 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3319 null-Int)))
(define-const var212 (Array Int Int) var1444-$SwitchMap$org$antlr$v4$runtime$atn$LexerActionType) ; Statement: $r1 = <com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer$1: int[] $SwitchMap$org$antlr$v4$runtime$atn$LexerActionType> 
(assert true)
(define-const var188 Int (ordinal/-291641772 (cast-from-var3710-to-var3514 var3441))) ; Statement: $i0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.LexerActionType: int ordinal()>() 
(define-const var2677 Int (select var212 var188)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r9 = new com.github.jknack.handlebars.internal.antlr.atn.LexerChannelAction;     case 2: goto $r8 = new com.github.jknack.handlebars.internal.antlr.atn.LexerCustomAction;     case 3: goto $r7 = new com.github.jknack.handlebars.internal.antlr.atn.LexerModeAction;     case 4: goto $r6 = <com.github.jknack.handlebars.internal.antlr.atn.LexerMoreAction: com.github.jknack.handlebars.internal.antlr.atn.LexerMoreAction INSTANCE>;     case 5: goto $r5 = <com.github.jknack.handlebars.internal.antlr.atn.LexerPopModeAction: com.github.jknack.handlebars.internal.antlr.atn.LexerPopModeAction INSTANCE>;     case 6: goto $r4 = new com.github.jknack.handlebars.internal.antlr.atn.LexerPushModeAction;     case 7: goto $r3 = <com.github.jknack.handlebars.internal.antlr.atn.LexerSkipAction: com.github.jknack.handlebars.internal.antlr.atn.LexerSkipAction INSTANCE>;     case 8: goto $r2 = new com.github.jknack.handlebars.internal.antlr.atn.LexerTypeAction;     default: goto $r10 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2677 8)) (and (not (= var2677 7)) (and (not (= var2677 6)) (and (not (= var2677 5)) (and (not (= var2677 4)) (and (not (= var2677 3)) (and (not (= var2677 2)) (and (not (= var2677 1)) true))))))))) ; Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional        
(define-const var2155 var1149 var1149-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var546 var1104 var1104_getDefault/-641693464) ; Statement: $r12 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var1522 (Array Int var47) arr-var47-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var1522!1 (Array Int var47))
(assert (not (= var1522!1 null-__Array__Int__var47__)))
(assert (= (select var1522!1 0) (cast-from-var3710-to-var47 var3441))) ; Statement: $r11[0] = r0 
(define-const var1409 String (String_format/-647569892 var546 "The specified lexer action type %s is not valid." var1522!1)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r12, "The specified lexer action type %s is not valid.", $r11) 
(assert true)
;(assert (<init>/875830710 var2155 var1409)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var2155!1 var1149)
(declare-const var1409!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var3710-to-var3514=([com.github.jknack.handlebars.internal.antlr.atn.LexerActionType], java.lang.Enum), var1149-init=([], java.lang.IllegalArgumentException), var1104_getDefault/-641693464=([], java.util.Locale), arr-var47-init=([], java.lang.Object[]), cast-from-var3710-to-var47=([com.github.jknack.handlebars.internal.antlr.atn.LexerActionType], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1942=com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer, var871=r14, var3710=com.github.jknack.handlebars.internal.antlr.atn.LexerActionType, var3441=r0, var904=i2, var3319=i3, var1444=com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer$1, var212=$r1, var3514=java.lang.Enum, var188=$i0, var2677=$i1, var1149=java.lang.IllegalArgumentException, var2155=$r10, var1104=java.util.Locale, var546=$r12, var47=java.lang.Object, var1522=$r11, var1409=$r13}
; {com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer=var1942, r14=var871, com.github.jknack.handlebars.internal.antlr.atn.LexerActionType=var3710, r0=var3441, i2=var904, i3=var3319, com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer$1=var1444, $r1=var212, java.lang.Enum=var3514, $i0=var188, $i1=var2677, java.lang.IllegalArgumentException=var1149, $r10=var2155, java.util.Locale=var1104, $r12=var546, java.lang.Object=var47, $r11=var1522, $r13=var1409}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r14 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.LexerActionType;	i2 := @parameter1: int;	i3 := @parameter2: int;	$r1 = <com.github.jknack.handlebars.internal.antlr.atn.ATNDeserializer$1: int[] $SwitchMap$org$antlr$v4$runtime$atn$LexerActionType>;	$i0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.LexerActionType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r9 = new com.github.jknack.handlebars.internal.antlr.atn.LexerChannelAction;     case 2: goto $r8 = new com.github.jknack.handlebars.internal.antlr.atn.LexerCustomAction;     case 3: goto $r7 = new com.github.jknack.handlebars.internal.antlr.atn.LexerModeAction;     case 4: goto $r6 = <com.github.jknack.handlebars.internal.antlr.atn.LexerMoreAction: com.github.jknack.handlebars.internal.antlr.atn.LexerMoreAction INSTANCE>;     case 5: goto $r5 = <com.github.jknack.handlebars.internal.antlr.atn.LexerPopModeAction: com.github.jknack.handlebars.internal.antlr.atn.LexerPopModeAction INSTANCE>;     case 6: goto $r4 = new com.github.jknack.handlebars.internal.antlr.atn.LexerPushModeAction;     case 7: goto $r3 = <com.github.jknack.handlebars.internal.antlr.atn.LexerSkipAction: com.github.jknack.handlebars.internal.antlr.atn.LexerSkipAction INSTANCE>;     case 8: goto $r2 = new com.github.jknack.handlebars.internal.antlr.atn.LexerTypeAction;     default: goto $r10 = new java.lang.IllegalArgumentException; };	$r10 = new java.lang.IllegalArgumentException;	$r12 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r11 = newarray (java.lang.Object)[1];	$r11[0] = r0;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r12, "The specified lexer action type %s is not valid.", $r11);	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r10
;block_num 2