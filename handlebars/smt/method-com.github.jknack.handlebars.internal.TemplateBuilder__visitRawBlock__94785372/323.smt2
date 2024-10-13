(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3902 0)
(declare-sort var2151 0)
(declare-sort var665 0)
(declare-sort var93 0)
(declare-sort var783 0)
(declare-sort var45 0)
(declare-sort var2442 0)
(declare-sort var190 0)
(declare-sort var1975 0)
(declare-sort var658 0)
(declare-sort var3978 0)
(declare-sort var983 0)
(declare-sort var3916 0)
(declare-sort var3737 0)
(declare-sort var2587 0)
(declare-sort var327 0)
(declare-sort var2922 0)
(declare-sort var166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun level/564043682 (var3902) Int)
(declare-fun sexpr/-1172244390 (var2151) var665)
(declare-fun QID/241515671 (var665) var93)
(declare-fun var93_getSymbol/-1667894290 (var93) var783)
(declare-fun var783_getText/-195748462 (var783) String)
(declare-fun qualifier/564043682 (var3902) var45)
(declare-fun addLast/1864600108 (var45 var2442) void)
(declare-fun cast-from-String-to-var2442 (String) var2442)
(declare-fun nameEnd/-1284655937 (var2151) var783)
(declare-fun hasTag/-2046867243 (var3902 Bool) void)
(declare-fun var190-init () var190)
(declare-fun handlebars/564043682 (var3902) var1975)
(declare-fun param/1375516446 (var665) var658)
(declare-fun params/-1187292865 (var3902 var658) var658)
(declare-fun hash/1258247777 (var665) var658)
(declare-fun hash/-459617955 (var3902 var658) var3978)
(declare-fun var983_emptyList/582664469 () var658)
(declare-fun <init>/-1008510175 (var190 var1975 String Bool String var658 var3978 var658) void)
(declare-fun paramSize/-1588764717 (var3916) Int)
(declare-fun cast-from-var190-to-var3916 (var190) var3916)
(declare-fun source/564043682 (var3902) var3737)
(declare-fun var3737_filename/-833487352 (var3737) String)
(declare-fun filename/-762062287 (var2587 String) var2587)
(declare-fun cast-from-var190-to-var2587 (var190) var2587)
(declare-fun var783_getLine/1695299143 (var783) Int)
(declare-fun var783_getCharPositionInLine/-1512232701 (var783) Int)
(declare-fun position/1553523794 (var2587 Int Int) var2587)
(declare-fun start/1874176084 (var327) var783)
(declare-fun cast-from-var2151-to-var327 (var2151) var327)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun startDelimiter/-2121265389 (var190 String) var190)
(declare-fun stop/1874176084 (var327) var783)
(declare-fun endDelimiter/1877473676 (var190 String) var190)
(declare-fun thenBody/-1284655937 (var2151) var2922)
(declare-fun visitBody/348329788 (var3902 var2922) var166)
(declare-fun removeLast/1195514639 (var45) var2442)
(declare-const null-var3902 var3902)
(declare-const null-var2151 var2151)
(declare-const null-var166 var166)
(declare-const var1087 var3902) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var1087 null-var3902)))
(declare-const var582 var2151) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$RawBlockContext 
(assert (not (= var582 null-var2151)))
(define-const var1309 Int (level/564043682 var1087)) ; Statement: $i0 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> 
(define-const var1498 Int (+ var1309 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var1087!1 var3902)
(assert (not (= var1087!1 null-var3902)))
(assert (= (level/564043682 var1087!1) var1498)) ; Statement: r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i1 
(assert true)
(define-const var49 var665 (sexpr/-1172244390 var582)) ; Statement: r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$RawBlockContext: com.github.jknack.handlebars.internal.HbsParser$SexprContext sexpr()>() 
(assert true)
(define-const var20 var93 (QID/241515671 var49)) ; Statement: $r3 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode QID()>() 
(define-const var1171 var783 (var93_getSymbol/-1667894290 var20)) ; Statement: r4 = interfaceinvoke $r3.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>() 
(define-const var1612 String (var783_getText/-195748462 var1171)) ; Statement: r5 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(define-const var12 var45 (qualifier/564043682 var1087!1)) ; Statement: $r6 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier> 
(assert true)
;(assert (addLast/1864600108 var12 (cast-from-String-to-var2442 var1612))) ; Statement: virtualinvoke $r6.<java.util.LinkedList: void addLast(java.lang.Object)>(r5) 

(declare-const var12!1 var45)
(declare-const var1612!1 String)
(define-const var1188 var783 (nameEnd/-1284655937 var582)) ; Statement: $r7 = r1.<com.github.jknack.handlebars.internal.HbsParser$RawBlockContext: com.github.jknack.handlebars.internal.antlr.Token nameEnd> 
(define-const var2920 String (var783_getText/-195748462 var1188)) ; Statement: r8 = interfaceinvoke $r7.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var379 Bool (= var1612!1 var2920)) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 != 0 goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 
(assert (not (= (ite var379 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (hasTag/-2046867243 var1087!1 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 

(declare-const var1087!2 var3902)
(declare-const var3708 Int)
(define-const var3240 var190 var190-init) ; Statement: $r9 = new com.github.jknack.handlebars.internal.Block 
(define-const var2397 var1975 (handlebars/564043682 var1087!2)) ; Statement: $r10 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars> 
(assert true)
(define-const var2433 var658 (param/1375516446 var49)) ; Statement: $r11 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List param()>() 
(assert true)
(define-const var492 var658 (params/-1187292865 var1087!2 var2433)) ; Statement: $r15 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List params(java.util.List)>($r11) 
(assert true)
(define-const var3940 var658 (hash/1258247777 var49)) ; Statement: $r12 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List hash()>() 
(assert true)
(define-const var1063 var3978 (hash/-459617955 var1087!2 var3940)) ; Statement: $r14 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.Map hash(java.util.List)>($r12) 
(define-const var3170 var658 var983_emptyList/582664469) ; Statement: $r13 = staticinvoke <java.util.Collections: java.util.List emptyList()>() 
(assert true)
;(assert (<init>/-1008510175 var3240 var2397 var1612!1 (ite (= 1 0) true false) "{{" var492 var1063 var3170)) ; Statement: specialinvoke $r9.<com.github.jknack.handlebars.internal.Block: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String,boolean,java.lang.String,java.util.List,java.util.Map,java.util.List)>($r10, r5, 0, "{{", $r15, $r14, $r13) 

(declare-const var3240!1 var190)
(declare-const var2397!1 var1975)
(declare-const var1612!2 String)
(declare-const var3858 Int)
(declare-const var3451 String)
(declare-const var492!1 var658)
(declare-const var1063!1 var3978)
(declare-const var3170!1 var658)
(define-const var123 Int (paramSize/-1588764717 (cast-from-var190-to-var3916 var3240!1))) ; Statement: $i2 = $r9.<com.github.jknack.handlebars.internal.Block: int paramSize> 
 ; Statement: if $i2 <= 0 goto $r16 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(assert (<= var123 0)) ; Cond: $i2 <= 0 
(define-const var1472 var3737 (source/564043682 var1087!2)) ; Statement: $r16 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(define-const var495 String (var3737_filename/-833487352 var1472)) ; Statement: $r17 = interfaceinvoke $r16.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>() 
(assert true)
;(assert (filename/-762062287 (cast-from-var190-to-var2587 var3240!1) var495)) ; Statement: virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r17) 

(declare-const var3240!2 var190)
(declare-const var495!1 String)
(define-const var3781 Int (var783_getLine/1695299143 var1171)) ; Statement: $i4 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(define-const var1815 Int (var783_getCharPositionInLine/-1512232701 var1171)) ; Statement: $i3 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(assert true)
;(assert (position/1553523794 (cast-from-var190-to-var2587 var3240!2) var3781 var1815)) ; Statement: virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i4, $i3) 

(declare-const var3240!3 var190)
(declare-const var3781!1 Int)
(declare-const var1815!1 Int)
(define-const var2660 var783 (start/1874176084 (cast-from-var2151-to-var327 var582))) ; Statement: $r18 = r1.<com.github.jknack.handlebars.internal.HbsParser$RawBlockContext: com.github.jknack.handlebars.internal.antlr.Token start> 
(define-const var700 String (var783_getText/-195748462 var2660)) ; Statement: $r32 = interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var2538 Int (length/-134980193 var700)) ; Statement: $i5 = virtualinvoke $r32.<java.lang.String: int length()>() 
(define-const var1685 Int (- var2538 2)) ; Statement: $i6 = $i5 - 2 
(assert (and true (and (>= 0 0) (>= (str.len var700) var1685) (>= var1685 0))))
(define-const var3719 String (substring/-1240304868 var700 0 var1685)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.String: java.lang.String substring(int,int)>(0, $i6) 
(assert true)
;(assert (startDelimiter/-2121265389 var3240!3 var3719)) ; Statement: virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block startDelimiter(java.lang.String)>($r33) 

(declare-const var3240!4 var190)
(declare-const var3719!1 String)
(define-const var948 var783 (stop/1874176084 (cast-from-var2151-to-var327 var582))) ; Statement: $r19 = r1.<com.github.jknack.handlebars.internal.HbsParser$RawBlockContext: com.github.jknack.handlebars.internal.antlr.Token stop> 
(define-const var2374 String (var783_getText/-195748462 var948)) ; Statement: $r20 = interfaceinvoke $r19.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
;(assert (endDelimiter/1877473676 var3240!4 var2374)) ; Statement: virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block endDelimiter(java.lang.String)>($r20) 

(declare-const var3240!5 var190)
(declare-const var2374!1 String)
(define-const var1390 var2922 (thenBody/-1284655937 var582)) ; Statement: $r21 = r1.<com.github.jknack.handlebars.internal.HbsParser$RawBlockContext: com.github.jknack.handlebars.internal.HbsParser$BodyContext thenBody> 
(assert true)
(define-const var71 var166 (visitBody/348329788 var1087!2 var1390)) ; Statement: $r34 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Template visitBody(com.github.jknack.handlebars.internal.HbsParser$BodyContext)>($r21) 
 ; Statement: if $r34 == null goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 
(assert (= var71 null-var166)) ; Cond: $r34 == null 
(assert true)
;(assert (hasTag/-2046867243 var1087!2 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 

(declare-const var1087!3 var3902)
(declare-const var3708!1 Int)
(define-const var3073 var45 (qualifier/564043682 var1087!3)) ; Statement: $r22 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier> 
(assert true)
;(assert (removeLast/1195514639 var3073)) ; Statement: virtualinvoke $r22.<java.util.LinkedList: java.lang.Object removeLast()>() 

(declare-const var3073!1 var45)
(define-const var3482 Int (paramSize/-1588764717 (cast-from-var190-to-var3916 var3240!5))) ; Statement: $i7 = $r9.<com.github.jknack.handlebars.internal.Block: int paramSize> 
 ; Statement: if $i7 <= 0 goto $i8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> 
(assert (<= var3482 0)) ; Cond: $i7 <= 0 
(define-const var1302 Int (level/564043682 var1087!3)) ; Statement: $i8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> 
(define-const var2932 Int (- var1302 1)) ; Statement: $i9 = $i8 - 1 
(declare-const var1087!4 var3902)
(assert (not (= var1087!4 null-var3902)))
(assert (= (level/564043682 var1087!4) var2932)) ; Statement: r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i9 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {level/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], int), sexpr/-1172244390=([com.github.jknack.handlebars.internal.HbsParser$RawBlockContext], com.github.jknack.handlebars.internal.HbsParser$SexprContext), QID/241515671=([com.github.jknack.handlebars.internal.HbsParser$SexprContext], com.github.jknack.handlebars.internal.antlr.tree.TerminalNode), var93_getSymbol/-1667894290=([com.github.jknack.handlebars.internal.antlr.tree.TerminalNode], com.github.jknack.handlebars.internal.antlr.Token), var783_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), qualifier/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], java.util.LinkedList), addLast/1864600108=([java.util.LinkedList, java.lang.Object], void), cast-from-String-to-var2442=([java.lang.String], java.lang.Object), nameEnd/-1284655937=([com.github.jknack.handlebars.internal.HbsParser$RawBlockContext], com.github.jknack.handlebars.internal.antlr.Token), hasTag/-2046867243=([com.github.jknack.handlebars.internal.TemplateBuilder, boolean], void), var190-init=([], com.github.jknack.handlebars.internal.Block), handlebars/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.Handlebars), param/1375516446=([com.github.jknack.handlebars.internal.HbsParser$SexprContext], java.util.List), params/-1187292865=([com.github.jknack.handlebars.internal.TemplateBuilder, java.util.List], java.util.List), hash/1258247777=([com.github.jknack.handlebars.internal.HbsParser$SexprContext], java.util.List), hash/-459617955=([com.github.jknack.handlebars.internal.TemplateBuilder, java.util.List], java.util.Map), var983_emptyList/582664469=([], java.util.List), <init>/-1008510175=([com.github.jknack.handlebars.internal.Block, com.github.jknack.handlebars.Handlebars, java.lang.String, boolean, java.lang.String, java.util.List, java.util.Map, java.util.List], void), paramSize/-1588764717=([com.github.jknack.handlebars.internal.HelperResolver], int), cast-from-var190-to-var3916=([com.github.jknack.handlebars.internal.Block], com.github.jknack.handlebars.internal.HelperResolver), source/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.io.TemplateSource), var3737_filename/-833487352=([com.github.jknack.handlebars.io.TemplateSource], java.lang.String), filename/-762062287=([com.github.jknack.handlebars.internal.BaseTemplate, java.lang.String], com.github.jknack.handlebars.internal.BaseTemplate), cast-from-var190-to-var2587=([com.github.jknack.handlebars.internal.Block], com.github.jknack.handlebars.internal.BaseTemplate), var783_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var783_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), position/1553523794=([com.github.jknack.handlebars.internal.BaseTemplate, int, int], com.github.jknack.handlebars.internal.BaseTemplate), start/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), cast-from-var2151-to-var327=([com.github.jknack.handlebars.internal.HbsParser$RawBlockContext], com.github.jknack.handlebars.internal.antlr.ParserRuleContext), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), startDelimiter/-2121265389=([com.github.jknack.handlebars.internal.Block, java.lang.String], com.github.jknack.handlebars.internal.Block), stop/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), endDelimiter/1877473676=([com.github.jknack.handlebars.internal.Block, java.lang.String], com.github.jknack.handlebars.internal.Block), thenBody/-1284655937=([com.github.jknack.handlebars.internal.HbsParser$RawBlockContext], com.github.jknack.handlebars.internal.HbsParser$BodyContext), visitBody/348329788=([com.github.jknack.handlebars.internal.TemplateBuilder, com.github.jknack.handlebars.internal.HbsParser$BodyContext], com.github.jknack.handlebars.Template), removeLast/1195514639=([java.util.LinkedList], java.lang.Object)}
; {var3902=com.github.jknack.handlebars.internal.TemplateBuilder, var1087=r0, var2151=com.github.jknack.handlebars.internal.HbsParser$RawBlockContext, var582=r1, var1309=$i0, var1498=$i1, var665=com.github.jknack.handlebars.internal.HbsParser$SexprContext, var49=r2, var93=com.github.jknack.handlebars.internal.antlr.tree.TerminalNode, var20=$r3, var783=com.github.jknack.handlebars.internal.antlr.Token, var1171=r4, var1612=r5, var45=java.util.LinkedList, var12=$r6, var2442=java.lang.Object, var1188=$r7, var2920=r8, var379=$z0, var3708=1, var190=com.github.jknack.handlebars.internal.Block, var3240=$r9, var1975=com.github.jknack.handlebars.Handlebars, var2397=$r10, var658=java.util.List, var2433=$r11, var492=$r15, var3940=$r12, var3978=java.util.Map, var1063=$r14, var983=java.util.Collections, var3170=$r13, var3858=0, var3451="{{", var3916=com.github.jknack.handlebars.internal.HelperResolver, var123=$i2, var3737=com.github.jknack.handlebars.io.TemplateSource, var1472=$r16, var495=$r17, var2587=com.github.jknack.handlebars.internal.BaseTemplate, var3781=$i4, var1815=$i3, var327=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var2660=$r18, var700=$r32, var2538=$i5, var1685=$i6, var3719=$r33, var948=$r19, var2374=$r20, var2922=com.github.jknack.handlebars.internal.HbsParser$BodyContext, var1390=$r21, var166=com.github.jknack.handlebars.Template, var71=$r34, var3073=$r22, var3482=$i7, var1302=$i8, var2932=$i9}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var3902, r0=var1087, com.github.jknack.handlebars.internal.HbsParser$RawBlockContext=var2151, r1=var582, $i0=var1309, $i1=var1498, com.github.jknack.handlebars.internal.HbsParser$SexprContext=var665, r2=var49, com.github.jknack.handlebars.internal.antlr.tree.TerminalNode=var93, $r3=var20, com.github.jknack.handlebars.internal.antlr.Token=var783, r4=var1171, r5=var1612, java.util.LinkedList=var45, $r6=var12, java.lang.Object=var2442, $r7=var1188, r8=var2920, $z0=var379, 1=var3708, com.github.jknack.handlebars.internal.Block=var190, $r9=var3240, com.github.jknack.handlebars.Handlebars=var1975, $r10=var2397, java.util.List=var658, $r11=var2433, $r15=var492, $r12=var3940, java.util.Map=var3978, $r14=var1063, java.util.Collections=var983, $r13=var3170, 0=var3858, "{{"=var3451, com.github.jknack.handlebars.internal.HelperResolver=var3916, $i2=var123, com.github.jknack.handlebars.io.TemplateSource=var3737, $r16=var1472, $r17=var495, com.github.jknack.handlebars.internal.BaseTemplate=var2587, $i4=var3781, $i3=var1815, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var327, $r18=var2660, $r32=var700, $i5=var2538, $i6=var1685, $r33=var3719, $r19=var948, $r20=var2374, com.github.jknack.handlebars.internal.HbsParser$BodyContext=var2922, $r21=var1390, com.github.jknack.handlebars.Template=var166, $r34=var71, $r22=var3073, $i7=var3482, $i8=var1302, $i9=var2932}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$RawBlockContext;	$i0 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level>;	$i1 = $i0 + 1;	r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i1;	r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$RawBlockContext: com.github.jknack.handlebars.internal.HbsParser$SexprContext sexpr()>();	$r3 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode QID()>();	r4 = interfaceinvoke $r3.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>();	r5 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r6 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier>;	virtualinvoke $r6.<java.util.LinkedList: void addLast(java.lang.Object)>(r5);	$r7 = r1.<com.github.jknack.handlebars.internal.HbsParser$RawBlockContext: com.github.jknack.handlebars.internal.antlr.Token nameEnd>;	r8 = interfaceinvoke $r7.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>(r8);	if $z0 != 0 goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	$r9 = new com.github.jknack.handlebars.internal.Block;	$r10 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars>;	$r11 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List param()>();	$r15 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List params(java.util.List)>($r11);	$r12 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List hash()>();	$r14 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.Map hash(java.util.List)>($r12);	$r13 = staticinvoke <java.util.Collections: java.util.List emptyList()>();	specialinvoke $r9.<com.github.jknack.handlebars.internal.Block: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String,boolean,java.lang.String,java.util.List,java.util.Map,java.util.List)>($r10, r5, 0, "{{", $r15, $r14, $r13);	$i2 = $r9.<com.github.jknack.handlebars.internal.Block: int paramSize>;	if $i2 <= 0 goto $r16 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r16 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r17 = interfaceinvoke $r16.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>();	virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r17);	$i4 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$i3 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i4, $i3);	$r18 = r1.<com.github.jknack.handlebars.internal.HbsParser$RawBlockContext: com.github.jknack.handlebars.internal.antlr.Token start>;	$r32 = interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$i5 = virtualinvoke $r32.<java.lang.String: int length()>();	$i6 = $i5 - 2;	$r33 = virtualinvoke $r32.<java.lang.String: java.lang.String substring(int,int)>(0, $i6);	virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block startDelimiter(java.lang.String)>($r33);	$r19 = r1.<com.github.jknack.handlebars.internal.HbsParser$RawBlockContext: com.github.jknack.handlebars.internal.antlr.Token stop>;	$r20 = interfaceinvoke $r19.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block endDelimiter(java.lang.String)>($r20);	$r21 = r1.<com.github.jknack.handlebars.internal.HbsParser$RawBlockContext: com.github.jknack.handlebars.internal.HbsParser$BodyContext thenBody>;	$r34 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Template visitBody(com.github.jknack.handlebars.internal.HbsParser$BodyContext)>($r21);	if $r34 == null goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	$r22 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier>;	virtualinvoke $r22.<java.util.LinkedList: java.lang.Object removeLast()>();	$i7 = $r9.<com.github.jknack.handlebars.internal.Block: int paramSize>;	if $i7 <= 0 goto $i8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level>;	$i8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level>;	$i9 = $i8 - 1;	r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i9;	return $r9
;block_num 5