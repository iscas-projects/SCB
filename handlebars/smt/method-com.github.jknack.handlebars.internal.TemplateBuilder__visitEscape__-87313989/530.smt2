(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var89 0)
(declare-sort var2292 0)
(declare-sort var1839 0)
(declare-sort var26 0)
(declare-sort var685 0)
(declare-sort var1962 0)
(declare-sort var3389 0)
(declare-sort var438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ESC_VAR/-1916172449 (var2292) var1839)
(declare-fun var1839_getSymbol/-1667894290 (var1839) var26)
(declare-fun var26_getText/-195748462 (var26) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var685-init () var685)
(declare-fun handlebars/564043682 (var89) var1962)
(declare-fun <init>/-415654825 (var685 var1962 String String) void)
(declare-fun source/564043682 (var89) var3389)
(declare-fun var3389_filename/-833487352 (var3389) String)
(declare-fun filename/-762062287 (var438 String) var438)
(declare-fun cast-from-var685-to-var438 (var685) var438)
(declare-fun var26_getLine/1695299143 (var26) Int)
(declare-fun var26_getCharPositionInLine/-1512232701 (var26) Int)
(declare-fun position/1553523794 (var438 Int Int) var438)
(declare-const null-var89 var89)
(declare-const null-var2292 var2292)
(declare-const var3176 var89) ; Statement: r6 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var3176 null-var89)))
(declare-const var3716 var2292) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$EscapeContext 
(assert (not (= var3716 null-var2292)))
(assert true)
(define-const var2192 var1839 (ESC_VAR/-1916172449 var3716)) ; Statement: $r1 = virtualinvoke r0.<com.github.jknack.handlebars.internal.HbsParser$EscapeContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode ESC_VAR()>() 
(define-const var2885 var26 (var1839_getSymbol/-1667894290 var2192)) ; Statement: r2 = interfaceinvoke $r1.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>() 
(define-const var151 String (var26_getText/-195748462 var2885)) ; Statement: $r3 = interfaceinvoke r2.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert (and true (and (>= 1 0) (>= (str.len var151) 1))))
(define-const var3206 String (substring/850833817 var151 1)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>(1) 
(define-const var1005 var685 var685-init) ; Statement: $r5 = new com.github.jknack.handlebars.internal.Text 
(define-const var615 var1962 (handlebars/564043682 var3176)) ; Statement: $r7 = r6.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars> 
(assert true)
;(assert (<init>/-415654825 var1005 var615 var3206 "\u005c")) ; Statement: specialinvoke $r5.<com.github.jknack.handlebars.internal.Text: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String,java.lang.String)>($r7, r4, "\\") 

(declare-const var1005!1 var685)
(declare-const var615!1 var1962)
(declare-const var3206!1 String)
(declare-const var2857 String)
(define-const var3131 var3389 (source/564043682 var3176)) ; Statement: $r8 = r6.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(define-const var188 String (var3389_filename/-833487352 var3131)) ; Statement: $r9 = interfaceinvoke $r8.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>() 
(assert true)
(define-const var486 var438 (filename/-762062287 (cast-from-var685-to-var438 var1005!1) var188)) ; Statement: $r10 = virtualinvoke $r5.<com.github.jknack.handlebars.internal.Text: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r9) 
(define-const var3298 Int (var26_getLine/1695299143 var2885)) ; Statement: $i1 = interfaceinvoke r2.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(define-const var2260 Int (var26_getCharPositionInLine/-1512232701 var2885)) ; Statement: $i0 = interfaceinvoke r2.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(assert true)
(define-const var1379 var438 (position/1553523794 var486 var3298 var2260)) ; Statement: $r11 = virtualinvoke $r10.<com.github.jknack.handlebars.internal.BaseTemplate: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i1, $i0) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {ESC_VAR/-1916172449=([com.github.jknack.handlebars.internal.HbsParser$EscapeContext], com.github.jknack.handlebars.internal.antlr.tree.TerminalNode), var1839_getSymbol/-1667894290=([com.github.jknack.handlebars.internal.antlr.tree.TerminalNode], com.github.jknack.handlebars.internal.antlr.Token), var26_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), var685-init=([], com.github.jknack.handlebars.internal.Text), handlebars/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.Handlebars), <init>/-415654825=([com.github.jknack.handlebars.internal.Text, com.github.jknack.handlebars.Handlebars, java.lang.String, java.lang.String], void), source/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.io.TemplateSource), var3389_filename/-833487352=([com.github.jknack.handlebars.io.TemplateSource], java.lang.String), filename/-762062287=([com.github.jknack.handlebars.internal.BaseTemplate, java.lang.String], com.github.jknack.handlebars.internal.BaseTemplate), cast-from-var685-to-var438=([com.github.jknack.handlebars.internal.Text], com.github.jknack.handlebars.internal.BaseTemplate), var26_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var26_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), position/1553523794=([com.github.jknack.handlebars.internal.BaseTemplate, int, int], com.github.jknack.handlebars.internal.BaseTemplate)}
; {var89=com.github.jknack.handlebars.internal.TemplateBuilder, var3176=r6, var2292=com.github.jknack.handlebars.internal.HbsParser$EscapeContext, var3716=r0, var1839=com.github.jknack.handlebars.internal.antlr.tree.TerminalNode, var2192=$r1, var26=com.github.jknack.handlebars.internal.antlr.Token, var2885=r2, var151=$r3, var3206=r4, var685=com.github.jknack.handlebars.internal.Text, var1005=$r5, var1962=com.github.jknack.handlebars.Handlebars, var615=$r7, var2857="\\", var3389=com.github.jknack.handlebars.io.TemplateSource, var3131=$r8, var188=$r9, var438=com.github.jknack.handlebars.internal.BaseTemplate, var486=$r10, var3298=$i1, var2260=$i0, var1379=$r11}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var89, r6=var3176, com.github.jknack.handlebars.internal.HbsParser$EscapeContext=var2292, r0=var3716, com.github.jknack.handlebars.internal.antlr.tree.TerminalNode=var1839, $r1=var2192, com.github.jknack.handlebars.internal.antlr.Token=var26, r2=var2885, $r3=var151, r4=var3206, com.github.jknack.handlebars.internal.Text=var685, $r5=var1005, com.github.jknack.handlebars.Handlebars=var1962, $r7=var615, "\\"=var2857, com.github.jknack.handlebars.io.TemplateSource=var3389, $r8=var3131, $r9=var188, com.github.jknack.handlebars.internal.BaseTemplate=var438, $r10=var486, $i1=var3298, $i0=var2260, $r11=var1379}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r0 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$EscapeContext;	$r1 = virtualinvoke r0.<com.github.jknack.handlebars.internal.HbsParser$EscapeContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode ESC_VAR()>();	r2 = interfaceinvoke $r1.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>();	$r3 = interfaceinvoke r2.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>(1);	$r5 = new com.github.jknack.handlebars.internal.Text;	$r7 = r6.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars>;	specialinvoke $r5.<com.github.jknack.handlebars.internal.Text: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String,java.lang.String)>($r7, r4, "\\");	$r8 = r6.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r9 = interfaceinvoke $r8.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>();	$r10 = virtualinvoke $r5.<com.github.jknack.handlebars.internal.Text: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r9);	$i1 = interfaceinvoke r2.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$i0 = interfaceinvoke r2.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	$r11 = virtualinvoke $r10.<com.github.jknack.handlebars.internal.BaseTemplate: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i1, $i0);	return $r11
;block_num 1