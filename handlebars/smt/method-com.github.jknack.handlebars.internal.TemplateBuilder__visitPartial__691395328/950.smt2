(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1196 0)
(declare-sort var1689 0)
(declare-sort var2797 0)
(declare-sort var18 0)
(declare-sort var1744 0)
(declare-sort var3368 0)
(declare-sort var925 0)
(declare-sort var662 0)
(declare-sort var3671 0)
(declare-sort var398 0)
(declare-sort var243 0)
(declare-sort var428 0)
(declare-sort var2115 0)
(declare-sort var1903 0)
(declare-sort var2307 0)
(declare-sort var2732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasTag/-2046867243 (var1196 Bool) void)
(declare-fun hasTag/-559360583 (var1196) Bool)
(declare-fun pexpr/-267062136 (var1689) var18)
(declare-fun visit/1717948583 (var3368 var925) var1744)
(declare-fun cast-from-var1196-to-var3368 (var1196) var3368)
(declare-fun cast-from-var18-to-var925 (var18) var925)
(declare-fun cast-from-var1744-to-var662 (var1744) var662)
(declare-fun start/1874176084 (var398) var3671)
(declare-fun cast-from-var1689-to-var398 (var1689) var398)
(declare-fun var3671_getText/-195748462 (var3671) String)
(declare-fun var243-init () var243)
(declare-fun handlebars/564043682 (var1196) var428)
(declare-fun path/-1755045971 (var662) var2115)
(declare-fun context/-1755045971 (var662) String)
(declare-fun hash/-1755045971 (var662) var1903)
(declare-fun <init>/-1405182766 (var243 var428 var2115 String var1903) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun startDelimiter/-77404269 (var243 String) var243)
(declare-fun stop/1874176084 (var398) var3671)
(declare-fun endDelimiter/-1718160884 (var243 String) var243)
(declare-fun indent/896355660 (var243 String) var243)
(declare-fun source/564043682 (var1196) var2307)
(declare-fun var2307_filename/-833487352 (var2307) String)
(declare-fun filename/-762062287 (var2732 String) var2732)
(declare-fun cast-from-var243-to-var2732 (var243) var2732)
(declare-fun token/-1755045971 (var662) var3671)
(declare-fun var3671_getLine/1695299143 (var3671) Int)
(declare-fun var3671_getCharPositionInLine/-1512232701 (var3671) Int)
(declare-fun position/1553523794 (var2732 Int Int) var2732)
(declare-const null-var1196 var1196)
(declare-const null-var1689 var1689)
(declare-const null-String String)
(declare-const var2970 var1196) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var2970 null-var1196)))
(declare-const var2659 var1689) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$PartialContext 
(assert (not (= var2659 null-var1689)))
(assert true)
;(assert (hasTag/-2046867243 var2970 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 

(declare-const var2970!1 var1196)
(declare-const var1389 Int)
(assert true)
(define-const var549 Bool (hasTag/-559360583 var2970!1)) ; Statement: $z0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: boolean hasTag()>() 
 ; Statement: if $z0 == 0 goto r4 = null 
(assert (= (ite var549 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2466 String null-String) ; Statement: r4 = null 
(assert true) ; Non Conditional
(assert true)
(define-const var3171 var18 (pexpr/-267062136 var2659)) ; Statement: $r5 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$PartialContext: com.github.jknack.handlebars.internal.HbsParser$PexprContext pexpr()>() 
(assert true)
(define-const var2352 var1744 (visit/1717948583 (cast-from-var1196-to-var3368 var2970!1) (cast-from-var18-to-var925 var3171))) ; Statement: $r6 = specialinvoke r0.<com.github.jknack.handlebars.internal.HbsParserBaseVisitor: java.lang.Object visit(com.github.jknack.handlebars.internal.antlr.tree.ParseTree)>($r5) 
(define-const var3487 var662 (cast-from-var1744-to-var662 var2352)) ; Statement: $r7 = (com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo) $r6 
(define-const var2311 var3671 (start/1874176084 (cast-from-var1689-to-var398 var2659))) ; Statement: $r8 = r1.<com.github.jknack.handlebars.internal.HbsParser$PartialContext: com.github.jknack.handlebars.internal.antlr.Token start> 
(define-const var1369 String (var3671_getText/-195748462 var2311)) ; Statement: $r9 = interfaceinvoke $r8.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(define-const var2849 var243 var243-init) ; Statement: $r10 = new com.github.jknack.handlebars.internal.Partial 
(define-const var3901 var428 (handlebars/564043682 var2970!1)) ; Statement: $r11 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars> 
(define-const var1819 var2115 (path/-1755045971 var3487)) ; Statement: $r12 = $r7.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.Template path> 
(define-const var3029 String (context/-1755045971 var3487)) ; Statement: $r13 = $r7.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.lang.String context> 
(define-const var2900 var1903 (hash/-1755045971 var3487)) ; Statement: $r14 = $r7.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.util.Map hash> 
(assert true)
;(assert (<init>/-1405182766 var2849 var3901 var1819 var3029 var2900)) ; Statement: specialinvoke $r10.<com.github.jknack.handlebars.internal.Partial: void <init>(com.github.jknack.handlebars.Handlebars,com.github.jknack.handlebars.Template,java.lang.String,java.util.Map)>($r11, $r12, $r13, $r14) 

(declare-const var2849!1 var243)
(declare-const var3901!1 var428)
(declare-const var1819!1 var2115)
(declare-const var3029!1 String)
(declare-const var2900!1 var1903)
(assert true)
(define-const var2511 Int (length/-134980193 var1369)) ; Statement: $i0 = virtualinvoke $r9.<java.lang.String: int length()>() 
(define-const var356 Int (- var2511 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (>= 0 0) (>= (str.len var1369) var356) (>= var356 0))))
(define-const var2126 String (substring/-1240304868 var1369 0 var356)) ; Statement: $r15 = virtualinvoke $r9.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
(assert true)
(define-const var1769 var243 (startDelimiter/-77404269 var2849!1 var2126)) ; Statement: $r16 = virtualinvoke $r10.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial startDelimiter(java.lang.String)>($r15) 
(define-const var334 var3671 (stop/1874176084 (cast-from-var1689-to-var398 var2659))) ; Statement: $r17 = r1.<com.github.jknack.handlebars.internal.HbsParser$PartialContext: com.github.jknack.handlebars.internal.antlr.Token stop> 
(define-const var3692 String (var3671_getText/-195748462 var334)) ; Statement: $r18 = interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var550 var243 (endDelimiter/-1718160884 var1769 var3692)) ; Statement: $r19 = virtualinvoke $r16.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial endDelimiter(java.lang.String)>($r18) 
(assert true)
(define-const var2939 var243 (indent/896355660 var550 var2466)) ; Statement: $r20 = virtualinvoke $r19.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial indent(java.lang.String)>(r4) 
(define-const var3920 var2307 (source/564043682 var2970!1)) ; Statement: $r21 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(define-const var3224 String (var2307_filename/-833487352 var3920)) ; Statement: $r22 = interfaceinvoke $r21.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>() 
(assert true)
(define-const var3793 var2732 (filename/-762062287 (cast-from-var243-to-var2732 var2939) var3224)) ; Statement: $r23 = virtualinvoke $r20.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r22) 
(define-const var1517 var3671 (token/-1755045971 var3487)) ; Statement: $r24 = $r7.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token> 
(define-const var3308 Int (var3671_getLine/1695299143 var1517)) ; Statement: $i2 = interfaceinvoke $r24.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(define-const var2071 var3671 (token/-1755045971 var3487)) ; Statement: $r25 = $r7.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token> 
(define-const var2541 Int (var3671_getCharPositionInLine/-1512232701 var2071)) ; Statement: $i3 = interfaceinvoke $r25.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(assert true)
(define-const var2233 var2732 (position/1553523794 var3793 var3308 var2541)) ; Statement: $r26 = virtualinvoke $r23.<com.github.jknack.handlebars.internal.BaseTemplate: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i2, $i3) 
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {hasTag/-2046867243=([com.github.jknack.handlebars.internal.TemplateBuilder, boolean], void), hasTag/-559360583=([com.github.jknack.handlebars.internal.TemplateBuilder], boolean), pexpr/-267062136=([com.github.jknack.handlebars.internal.HbsParser$PartialContext], com.github.jknack.handlebars.internal.HbsParser$PexprContext), visit/1717948583=([com.github.jknack.handlebars.internal.antlr.tree.AbstractParseTreeVisitor, com.github.jknack.handlebars.internal.antlr.tree.ParseTree], java.lang.Object), cast-from-var1196-to-var3368=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.internal.antlr.tree.AbstractParseTreeVisitor), cast-from-var18-to-var925=([com.github.jknack.handlebars.internal.HbsParser$PexprContext], com.github.jknack.handlebars.internal.antlr.tree.ParseTree), cast-from-var1744-to-var662=([java.lang.Object], com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo), start/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), cast-from-var1689-to-var398=([com.github.jknack.handlebars.internal.HbsParser$PartialContext], com.github.jknack.handlebars.internal.antlr.ParserRuleContext), var3671_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), var243-init=([], com.github.jknack.handlebars.internal.Partial), handlebars/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.Handlebars), path/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], com.github.jknack.handlebars.Template), context/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], java.lang.String), hash/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], java.util.Map), <init>/-1405182766=([com.github.jknack.handlebars.internal.Partial, com.github.jknack.handlebars.Handlebars, com.github.jknack.handlebars.Template, java.lang.String, java.util.Map], void), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), startDelimiter/-77404269=([com.github.jknack.handlebars.internal.Partial, java.lang.String], com.github.jknack.handlebars.internal.Partial), stop/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), endDelimiter/-1718160884=([com.github.jknack.handlebars.internal.Partial, java.lang.String], com.github.jknack.handlebars.internal.Partial), indent/896355660=([com.github.jknack.handlebars.internal.Partial, java.lang.String], com.github.jknack.handlebars.internal.Partial), source/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.io.TemplateSource), var2307_filename/-833487352=([com.github.jknack.handlebars.io.TemplateSource], java.lang.String), filename/-762062287=([com.github.jknack.handlebars.internal.BaseTemplate, java.lang.String], com.github.jknack.handlebars.internal.BaseTemplate), cast-from-var243-to-var2732=([com.github.jknack.handlebars.internal.Partial], com.github.jknack.handlebars.internal.BaseTemplate), token/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], com.github.jknack.handlebars.internal.antlr.Token), var3671_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var3671_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), position/1553523794=([com.github.jknack.handlebars.internal.BaseTemplate, int, int], com.github.jknack.handlebars.internal.BaseTemplate)}
; {var1196=com.github.jknack.handlebars.internal.TemplateBuilder, var2970=r0, var1689=com.github.jknack.handlebars.internal.HbsParser$PartialContext, var2659=r1, var1389=1, var549=$z0, var2797=null_type, var2466=r4, var18=com.github.jknack.handlebars.internal.HbsParser$PexprContext, var3171=$r5, var1744=java.lang.Object, var3368=com.github.jknack.handlebars.internal.antlr.tree.AbstractParseTreeVisitor, var925=com.github.jknack.handlebars.internal.antlr.tree.ParseTree, var2352=$r6, var662=com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo, var3487=$r7, var3671=com.github.jknack.handlebars.internal.antlr.Token, var398=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var2311=$r8, var1369=$r9, var243=com.github.jknack.handlebars.internal.Partial, var2849=$r10, var428=com.github.jknack.handlebars.Handlebars, var3901=$r11, var2115=com.github.jknack.handlebars.Template, var1819=$r12, var3029=$r13, var1903=java.util.Map, var2900=$r14, var2511=$i0, var356=$i1, var2126=$r15, var1769=$r16, var334=$r17, var3692=$r18, var550=$r19, var2939=$r20, var2307=com.github.jknack.handlebars.io.TemplateSource, var3920=$r21, var3224=$r22, var2732=com.github.jknack.handlebars.internal.BaseTemplate, var3793=$r23, var1517=$r24, var3308=$i2, var2071=$r25, var2541=$i3, var2233=$r26}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var1196, r0=var2970, com.github.jknack.handlebars.internal.HbsParser$PartialContext=var1689, r1=var2659, 1=var1389, $z0=var549, null_type=var2797, r4=var2466, com.github.jknack.handlebars.internal.HbsParser$PexprContext=var18, $r5=var3171, java.lang.Object=var1744, com.github.jknack.handlebars.internal.antlr.tree.AbstractParseTreeVisitor=var3368, com.github.jknack.handlebars.internal.antlr.tree.ParseTree=var925, $r6=var2352, com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo=var662, $r7=var3487, com.github.jknack.handlebars.internal.antlr.Token=var3671, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var398, $r8=var2311, $r9=var1369, com.github.jknack.handlebars.internal.Partial=var243, $r10=var2849, com.github.jknack.handlebars.Handlebars=var428, $r11=var3901, com.github.jknack.handlebars.Template=var2115, $r12=var1819, $r13=var3029, java.util.Map=var1903, $r14=var2900, $i0=var2511, $i1=var356, $r15=var2126, $r16=var1769, $r17=var334, $r18=var3692, $r19=var550, $r20=var2939, com.github.jknack.handlebars.io.TemplateSource=var2307, $r21=var3920, $r22=var3224, com.github.jknack.handlebars.internal.BaseTemplate=var2732, $r23=var3793, $r24=var1517, $i2=var3308, $r25=var2071, $i3=var2541, $r26=var2233}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$PartialContext;	virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	$z0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: boolean hasTag()>();	if $z0 == 0 goto r4 = null;	r4 = null;	$r5 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$PartialContext: com.github.jknack.handlebars.internal.HbsParser$PexprContext pexpr()>();	$r6 = specialinvoke r0.<com.github.jknack.handlebars.internal.HbsParserBaseVisitor: java.lang.Object visit(com.github.jknack.handlebars.internal.antlr.tree.ParseTree)>($r5);	$r7 = (com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo) $r6;	$r8 = r1.<com.github.jknack.handlebars.internal.HbsParser$PartialContext: com.github.jknack.handlebars.internal.antlr.Token start>;	$r9 = interfaceinvoke $r8.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r10 = new com.github.jknack.handlebars.internal.Partial;	$r11 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars>;	$r12 = $r7.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.Template path>;	$r13 = $r7.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.lang.String context>;	$r14 = $r7.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.util.Map hash>;	specialinvoke $r10.<com.github.jknack.handlebars.internal.Partial: void <init>(com.github.jknack.handlebars.Handlebars,com.github.jknack.handlebars.Template,java.lang.String,java.util.Map)>($r11, $r12, $r13, $r14);	$i0 = virtualinvoke $r9.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r15 = virtualinvoke $r9.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	$r16 = virtualinvoke $r10.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial startDelimiter(java.lang.String)>($r15);	$r17 = r1.<com.github.jknack.handlebars.internal.HbsParser$PartialContext: com.github.jknack.handlebars.internal.antlr.Token stop>;	$r18 = interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r19 = virtualinvoke $r16.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial endDelimiter(java.lang.String)>($r18);	$r20 = virtualinvoke $r19.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial indent(java.lang.String)>(r4);	$r21 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r22 = interfaceinvoke $r21.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>();	$r23 = virtualinvoke $r20.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r22);	$r24 = $r7.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token>;	$i2 = interfaceinvoke $r24.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$r25 = $r7.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token>;	$i3 = interfaceinvoke $r25.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	$r26 = virtualinvoke $r23.<com.github.jknack.handlebars.internal.BaseTemplate: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i2, $i3);	return $r26
;block_num 3