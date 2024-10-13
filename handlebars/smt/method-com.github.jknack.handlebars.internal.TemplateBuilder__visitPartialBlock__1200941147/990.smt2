(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1393 0)
(declare-sort var1772 0)
(declare-sort var364 0)
(declare-sort var1664 0)
(declare-sort var270 0)
(declare-sort var3533 0)
(declare-sort var3311 0)
(declare-sort var2760 0)
(declare-sort var2349 0)
(declare-sort var1524 0)
(declare-sort var3435 0)
(declare-sort var855 0)
(declare-sort var2961 0)
(declare-sort var3539 0)
(declare-sort var1759 0)
(declare-sort var1647 0)
(declare-sort var1776 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasTag/-2046867243 (var1393 Bool) void)
(declare-fun currentText/564043682 (var1393) String)
(declare-fun hasTag/-559360583 (var1393) Bool)
(declare-fun pexpr/-763391039 (var1772) var1664)
(declare-fun visit/1717948583 (var3533 var3311) var270)
(declare-fun cast-from-var1393-to-var3533 (var1393) var3533)
(declare-fun cast-from-var1664-to-var3311 (var1664) var3311)
(declare-fun cast-from-var270-to-var2760 (var270) var2760)
(declare-fun thenBody/-2080737768 (var1772) var2349)
(declare-fun visitBody/348329788 (var1393 var2349) var1524)
(declare-fun start/1874176084 (var855) var3435)
(declare-fun cast-from-var1772-to-var855 (var1772) var855)
(declare-fun var3435_getText/-195748462 (var3435) String)
(declare-fun var2961-init () var2961)
(declare-fun handlebars/564043682 (var1393) var3539)
(declare-fun path/-1755045971 (var2760) var1524)
(declare-fun context/-1755045971 (var2760) String)
(declare-fun hash/-1755045971 (var2760) var1759)
(declare-fun <init>/-1405182766 (var2961 var3539 var1524 String var1759) void)
(declare-fun setDecorate/1987623674 (var2961 Bool) var2961)
(declare-fun setPartial/-177600414 (var2961 var1524) var2961)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun startDelimiter/-77404269 (var2961 String) var2961)
(declare-fun stop/1874176084 (var855) var3435)
(declare-fun endDelimiter/-1718160884 (var2961 String) var2961)
(declare-fun indent/896355660 (var2961 String) var2961)
(declare-fun source/564043682 (var1393) var1647)
(declare-fun var1647_filename/-833487352 (var1647) String)
(declare-fun filename/-762062287 (var1776 String) var1776)
(declare-fun cast-from-var2961-to-var1776 (var2961) var1776)
(declare-fun token/-1755045971 (var2760) var3435)
(declare-fun var3435_getLine/1695299143 (var3435) Int)
(declare-fun var3435_getCharPositionInLine/-1512232701 (var3435) Int)
(declare-fun position/1553523794 (var1776 Int Int) var1776)
(declare-const null-var1393 var1393)
(declare-const null-var1772 var1772)
(declare-const null-String String)
(declare-const var115 var1393) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var115 null-var1393)))
(declare-const var1781 var1772) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext 
(assert (not (= var1781 null-var1772)))
(assert true)
;(assert (hasTag/-2046867243 var115 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 

(declare-const var115!1 var1393)
(declare-const var1538 Int)
(define-const var1131 String (currentText/564043682 var115!1)) ; Statement: r3 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.lang.String currentText> 
(assert true)
(define-const var2142 Bool (hasTag/-559360583 var115!1)) ; Statement: $z0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: boolean hasTag()>() 
 ; Statement: if $z0 == 0 goto r3 = null 
(assert (= (ite var2142 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1131!1 String null-String) ; Statement: r3 = null 
(assert true) ; Non Conditional
(assert true)
(define-const var823 var1664 (pexpr/-763391039 var1781)) ; Statement: $r4 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext: com.github.jknack.handlebars.internal.HbsParser$PexprContext pexpr()>() 
(assert true)
(define-const var2918 var270 (visit/1717948583 (cast-from-var1393-to-var3533 var115!1) (cast-from-var1664-to-var3311 var823))) ; Statement: $r5 = specialinvoke r0.<com.github.jknack.handlebars.internal.HbsParserBaseVisitor: java.lang.Object visit(com.github.jknack.handlebars.internal.antlr.tree.ParseTree)>($r4) 
(define-const var2733 var2760 (cast-from-var270-to-var2760 var2918)) ; Statement: $r6 = (com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo) $r5 
(define-const var1411 var2349 (thenBody/-2080737768 var1781)) ; Statement: $r7 = r1.<com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext: com.github.jknack.handlebars.internal.HbsParser$BodyContext thenBody> 
(assert true)
(define-const var2866 var1524 (visitBody/348329788 var115!1 var1411)) ; Statement: $r8 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Template visitBody(com.github.jknack.handlebars.internal.HbsParser$BodyContext)>($r7) 
(define-const var3201 var3435 (start/1874176084 (cast-from-var1772-to-var855 var1781))) ; Statement: $r9 = r1.<com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext: com.github.jknack.handlebars.internal.antlr.Token start> 
(define-const var714 String (var3435_getText/-195748462 var3201)) ; Statement: $r10 = interfaceinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(define-const var2628 var2961 var2961-init) ; Statement: $r11 = new com.github.jknack.handlebars.internal.Partial 
(define-const var1903 var3539 (handlebars/564043682 var115!1)) ; Statement: $r12 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars> 
(define-const var290 var1524 (path/-1755045971 var2733)) ; Statement: $r13 = $r6.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.Template path> 
(define-const var1124 String (context/-1755045971 var2733)) ; Statement: $r14 = $r6.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.lang.String context> 
(define-const var1177 var1759 (hash/-1755045971 var2733)) ; Statement: $r15 = $r6.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.util.Map hash> 
(assert true)
;(assert (<init>/-1405182766 var2628 var1903 var290 var1124 var1177)) ; Statement: specialinvoke $r11.<com.github.jknack.handlebars.internal.Partial: void <init>(com.github.jknack.handlebars.Handlebars,com.github.jknack.handlebars.Template,java.lang.String,java.util.Map)>($r12, $r13, $r14, $r15) 

(declare-const var2628!1 var2961)
(declare-const var1903!1 var3539)
(declare-const var290!1 var1524)
(declare-const var1124!1 String)
(declare-const var1177!1 var1759)
(assert true)
(define-const var2812 var2961 (setDecorate/1987623674 var2628!1 (ite (= 1 1) true false))) ; Statement: $r16 = virtualinvoke $r11.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial setDecorate(boolean)>(1) 
(assert true)
(define-const var9 var2961 (setPartial/-177600414 var2812 var2866)) ; Statement: $r17 = virtualinvoke $r16.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial setPartial(com.github.jknack.handlebars.Template)>($r8) 
(assert true)
(define-const var2725 Int (length/-134980193 var714)) ; Statement: $i0 = virtualinvoke $r10.<java.lang.String: int length()>() 
(define-const var2475 Int (- var2725 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (>= 0 0) (>= (str.len var714) var2475) (>= var2475 0))))
(define-const var3232 String (substring/-1240304868 var714 0 var2475)) ; Statement: $r18 = virtualinvoke $r10.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
(assert true)
(define-const var924 var2961 (startDelimiter/-77404269 var9 var3232)) ; Statement: $r19 = virtualinvoke $r17.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial startDelimiter(java.lang.String)>($r18) 
(define-const var720 var3435 (stop/1874176084 (cast-from-var1772-to-var855 var1781))) ; Statement: $r20 = r1.<com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext: com.github.jknack.handlebars.internal.antlr.Token stop> 
(define-const var1153 String (var3435_getText/-195748462 var720)) ; Statement: $r21 = interfaceinvoke $r20.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var3508 var2961 (endDelimiter/-1718160884 var924 var1153)) ; Statement: $r22 = virtualinvoke $r19.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial endDelimiter(java.lang.String)>($r21) 
(assert true)
(define-const var3464 var2961 (indent/896355660 var3508 var1131!1)) ; Statement: $r23 = virtualinvoke $r22.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial indent(java.lang.String)>(r3) 
(define-const var2679 var1647 (source/564043682 var115!1)) ; Statement: $r24 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(define-const var3001 String (var1647_filename/-833487352 var2679)) ; Statement: $r25 = interfaceinvoke $r24.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>() 
(assert true)
(define-const var697 var1776 (filename/-762062287 (cast-from-var2961-to-var1776 var3464) var3001)) ; Statement: $r26 = virtualinvoke $r23.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r25) 
(define-const var2200 var3435 (token/-1755045971 var2733)) ; Statement: $r27 = $r6.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token> 
(define-const var2618 Int (var3435_getLine/1695299143 var2200)) ; Statement: $i2 = interfaceinvoke $r27.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(define-const var1792 var3435 (token/-1755045971 var2733)) ; Statement: $r28 = $r6.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token> 
(define-const var1850 Int (var3435_getCharPositionInLine/-1512232701 var1792)) ; Statement: $i3 = interfaceinvoke $r28.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(assert true)
(define-const var1631 var1776 (position/1553523794 var697 var2618 var1850)) ; Statement: $r29 = virtualinvoke $r26.<com.github.jknack.handlebars.internal.BaseTemplate: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i2, $i3) 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {hasTag/-2046867243=([com.github.jknack.handlebars.internal.TemplateBuilder, boolean], void), currentText/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], java.lang.String), hasTag/-559360583=([com.github.jknack.handlebars.internal.TemplateBuilder], boolean), pexpr/-763391039=([com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext], com.github.jknack.handlebars.internal.HbsParser$PexprContext), visit/1717948583=([com.github.jknack.handlebars.internal.antlr.tree.AbstractParseTreeVisitor, com.github.jknack.handlebars.internal.antlr.tree.ParseTree], java.lang.Object), cast-from-var1393-to-var3533=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.internal.antlr.tree.AbstractParseTreeVisitor), cast-from-var1664-to-var3311=([com.github.jknack.handlebars.internal.HbsParser$PexprContext], com.github.jknack.handlebars.internal.antlr.tree.ParseTree), cast-from-var270-to-var2760=([java.lang.Object], com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo), thenBody/-2080737768=([com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext], com.github.jknack.handlebars.internal.HbsParser$BodyContext), visitBody/348329788=([com.github.jknack.handlebars.internal.TemplateBuilder, com.github.jknack.handlebars.internal.HbsParser$BodyContext], com.github.jknack.handlebars.Template), start/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), cast-from-var1772-to-var855=([com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext], com.github.jknack.handlebars.internal.antlr.ParserRuleContext), var3435_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), var2961-init=([], com.github.jknack.handlebars.internal.Partial), handlebars/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.Handlebars), path/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], com.github.jknack.handlebars.Template), context/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], java.lang.String), hash/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], java.util.Map), <init>/-1405182766=([com.github.jknack.handlebars.internal.Partial, com.github.jknack.handlebars.Handlebars, com.github.jknack.handlebars.Template, java.lang.String, java.util.Map], void), setDecorate/1987623674=([com.github.jknack.handlebars.internal.Partial, boolean], com.github.jknack.handlebars.internal.Partial), setPartial/-177600414=([com.github.jknack.handlebars.internal.Partial, com.github.jknack.handlebars.Template], com.github.jknack.handlebars.internal.Partial), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), startDelimiter/-77404269=([com.github.jknack.handlebars.internal.Partial, java.lang.String], com.github.jknack.handlebars.internal.Partial), stop/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), endDelimiter/-1718160884=([com.github.jknack.handlebars.internal.Partial, java.lang.String], com.github.jknack.handlebars.internal.Partial), indent/896355660=([com.github.jknack.handlebars.internal.Partial, java.lang.String], com.github.jknack.handlebars.internal.Partial), source/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.io.TemplateSource), var1647_filename/-833487352=([com.github.jknack.handlebars.io.TemplateSource], java.lang.String), filename/-762062287=([com.github.jknack.handlebars.internal.BaseTemplate, java.lang.String], com.github.jknack.handlebars.internal.BaseTemplate), cast-from-var2961-to-var1776=([com.github.jknack.handlebars.internal.Partial], com.github.jknack.handlebars.internal.BaseTemplate), token/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], com.github.jknack.handlebars.internal.antlr.Token), var3435_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var3435_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), position/1553523794=([com.github.jknack.handlebars.internal.BaseTemplate, int, int], com.github.jknack.handlebars.internal.BaseTemplate)}
; {var1393=com.github.jknack.handlebars.internal.TemplateBuilder, var115=r0, var1772=com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext, var1781=r1, var1538=1, var1131=r3, var2142=$z0, var364=null_type, var1664=com.github.jknack.handlebars.internal.HbsParser$PexprContext, var823=$r4, var270=java.lang.Object, var3533=com.github.jknack.handlebars.internal.antlr.tree.AbstractParseTreeVisitor, var3311=com.github.jknack.handlebars.internal.antlr.tree.ParseTree, var2918=$r5, var2760=com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo, var2733=$r6, var2349=com.github.jknack.handlebars.internal.HbsParser$BodyContext, var1411=$r7, var1524=com.github.jknack.handlebars.Template, var2866=$r8, var3435=com.github.jknack.handlebars.internal.antlr.Token, var855=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var3201=$r9, var714=$r10, var2961=com.github.jknack.handlebars.internal.Partial, var2628=$r11, var3539=com.github.jknack.handlebars.Handlebars, var1903=$r12, var290=$r13, var1124=$r14, var1759=java.util.Map, var1177=$r15, var2812=$r16, var9=$r17, var2725=$i0, var2475=$i1, var3232=$r18, var924=$r19, var720=$r20, var1153=$r21, var3508=$r22, var3464=$r23, var1647=com.github.jknack.handlebars.io.TemplateSource, var2679=$r24, var3001=$r25, var1776=com.github.jknack.handlebars.internal.BaseTemplate, var697=$r26, var2200=$r27, var2618=$i2, var1792=$r28, var1850=$i3, var1631=$r29}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var1393, r0=var115, com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext=var1772, r1=var1781, 1=var1538, r3=var1131, $z0=var2142, null_type=var364, com.github.jknack.handlebars.internal.HbsParser$PexprContext=var1664, $r4=var823, java.lang.Object=var270, com.github.jknack.handlebars.internal.antlr.tree.AbstractParseTreeVisitor=var3533, com.github.jknack.handlebars.internal.antlr.tree.ParseTree=var3311, $r5=var2918, com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo=var2760, $r6=var2733, com.github.jknack.handlebars.internal.HbsParser$BodyContext=var2349, $r7=var1411, com.github.jknack.handlebars.Template=var1524, $r8=var2866, com.github.jknack.handlebars.internal.antlr.Token=var3435, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var855, $r9=var3201, $r10=var714, com.github.jknack.handlebars.internal.Partial=var2961, $r11=var2628, com.github.jknack.handlebars.Handlebars=var3539, $r12=var1903, $r13=var290, $r14=var1124, java.util.Map=var1759, $r15=var1177, $r16=var2812, $r17=var9, $i0=var2725, $i1=var2475, $r18=var3232, $r19=var924, $r20=var720, $r21=var1153, $r22=var3508, $r23=var3464, com.github.jknack.handlebars.io.TemplateSource=var1647, $r24=var2679, $r25=var3001, com.github.jknack.handlebars.internal.BaseTemplate=var1776, $r26=var697, $r27=var2200, $i2=var2618, $r28=var1792, $i3=var1850, $r29=var1631}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext;	virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	r3 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.lang.String currentText>;	$z0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: boolean hasTag()>();	if $z0 == 0 goto r3 = null;	r3 = null;	$r4 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext: com.github.jknack.handlebars.internal.HbsParser$PexprContext pexpr()>();	$r5 = specialinvoke r0.<com.github.jknack.handlebars.internal.HbsParserBaseVisitor: java.lang.Object visit(com.github.jknack.handlebars.internal.antlr.tree.ParseTree)>($r4);	$r6 = (com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo) $r5;	$r7 = r1.<com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext: com.github.jknack.handlebars.internal.HbsParser$BodyContext thenBody>;	$r8 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Template visitBody(com.github.jknack.handlebars.internal.HbsParser$BodyContext)>($r7);	$r9 = r1.<com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext: com.github.jknack.handlebars.internal.antlr.Token start>;	$r10 = interfaceinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r11 = new com.github.jknack.handlebars.internal.Partial;	$r12 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars>;	$r13 = $r6.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.Template path>;	$r14 = $r6.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.lang.String context>;	$r15 = $r6.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.util.Map hash>;	specialinvoke $r11.<com.github.jknack.handlebars.internal.Partial: void <init>(com.github.jknack.handlebars.Handlebars,com.github.jknack.handlebars.Template,java.lang.String,java.util.Map)>($r12, $r13, $r14, $r15);	$r16 = virtualinvoke $r11.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial setDecorate(boolean)>(1);	$r17 = virtualinvoke $r16.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial setPartial(com.github.jknack.handlebars.Template)>($r8);	$i0 = virtualinvoke $r10.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r18 = virtualinvoke $r10.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	$r19 = virtualinvoke $r17.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial startDelimiter(java.lang.String)>($r18);	$r20 = r1.<com.github.jknack.handlebars.internal.HbsParser$PartialBlockContext: com.github.jknack.handlebars.internal.antlr.Token stop>;	$r21 = interfaceinvoke $r20.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r22 = virtualinvoke $r19.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial endDelimiter(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.Partial indent(java.lang.String)>(r3);	$r24 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r25 = interfaceinvoke $r24.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>();	$r26 = virtualinvoke $r23.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r25);	$r27 = $r6.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token>;	$i2 = interfaceinvoke $r27.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$r28 = $r6.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token>;	$i3 = interfaceinvoke $r28.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	$r29 = virtualinvoke $r26.<com.github.jknack.handlebars.internal.BaseTemplate: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i2, $i3);	return $r29
;block_num 3