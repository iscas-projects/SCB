(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var748 0)
(declare-sort var2622 0)
(declare-sort var375 0)
(declare-sort var2806 0)
(declare-sort var82 0)
(declare-sort var277 0)
(declare-sort var1848 0)
(declare-sort var2750 0)
(declare-sort var2205 0)
(declare-sort var618 0)
(declare-sort var1087 0)
(declare-sort var1359 0)
(declare-sort var198 0)
(declare-sort var690 0)
(declare-sort var1956 0)
(declare-sort var2537 0)
(declare-sort var2685 0)
(declare-sort var708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun level/564043682 (var748) Int)
(declare-fun hasTag/-2046867243 (var748 Bool) void)
(declare-fun sexpr/437012935 (var2622) var375)
(declare-fun QID/241515671 (var375) var2806)
(declare-fun var2806_getSymbol/-1667894290 (var2806) var82)
(declare-fun var82_getText/-195748462 (var82) String)
(declare-fun qualifier/564043682 (var748) var277)
(declare-fun addLast/1864600108 (var277 var1848) void)
(declare-fun cast-from-String-to-var1848 (String) var1848)
(declare-fun nameEnd/2024229618 (var2622) var82)
(declare-fun var2750-init () var2750)
(declare-fun handlebars/564043682 (var748) var2205)
(declare-fun var1087_emptyList/582664469 () var618)
(declare-fun var1087_emptyMap/401053835 () var1359)
(declare-fun blockParams/99416935 (var2622) var198)
(declare-fun blockParams/-1449160185 (var748 var198) var618)
(declare-fun <init>/-1008510175 (var2750 var2205 String Bool String var618 var1359 var618) void)
(declare-fun source/564043682 (var748) var690)
(declare-fun var690_filename/-833487352 (var690) String)
(declare-fun filename/-762062287 (var1956 String) var1956)
(declare-fun cast-from-var2750-to-var1956 (var2750) var1956)
(declare-fun var82_getLine/1695299143 (var82) Int)
(declare-fun var82_getCharPositionInLine/-1512232701 (var82) Int)
(declare-fun position/1553523794 (var1956 Int Int) var1956)
(declare-fun start/1874176084 (var2537) var82)
(declare-fun cast-from-var2622-to-var2537 (var2622) var2537)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun startDelimiter/-2121265389 (var2750 String) var2750)
(declare-fun stop/1874176084 (var2537) var82)
(declare-fun endDelimiter/1877473676 (var2750 String) var2750)
(declare-fun body/1432661313 (var2622) var2685)
(declare-fun visitBody/348329788 (var748 var2685) var708)
(declare-const null-var748 var748)
(declare-const null-var2622 var2622)
(declare-const null-var708 var708)
(declare-const var2840 var748) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var2840 null-var748)))
(declare-const var1389 var2622) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$UnlessContext 
(assert (not (= var1389 null-var2622)))
(define-const var2712 Int (level/564043682 var2840)) ; Statement: $i0 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> 
(define-const var872 Int (+ var2712 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var2840!1 var748)
(assert (not (= var2840!1 null-var748)))
(assert (= (level/564043682 var2840!1) var872)) ; Statement: r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i1 
(assert true)
;(assert (hasTag/-2046867243 var2840!1 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 

(declare-const var2840!2 var748)
(declare-const var2597 Int)
(assert true)
(define-const var403 var375 (sexpr/437012935 var1389)) ; Statement: r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$UnlessContext: com.github.jknack.handlebars.internal.HbsParser$SexprContext sexpr()>() 
(assert true)
(define-const var2255 var2806 (QID/241515671 var403)) ; Statement: $r3 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode QID()>() 
(define-const var1235 var82 (var2806_getSymbol/-1667894290 var2255)) ; Statement: r4 = interfaceinvoke $r3.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>() 
(define-const var354 String (var82_getText/-195748462 var1235)) ; Statement: r5 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(define-const var2897 var277 (qualifier/564043682 var2840!2)) ; Statement: $r6 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier> 
(assert true)
;(assert (addLast/1864600108 var2897 (cast-from-String-to-var1848 var354))) ; Statement: virtualinvoke $r6.<java.util.LinkedList: void addLast(java.lang.Object)>(r5) 

(declare-const var2897!1 var277)
(declare-const var354!1 String)
(define-const var779 var82 (nameEnd/2024229618 var1389)) ; Statement: $r7 = r1.<com.github.jknack.handlebars.internal.HbsParser$UnlessContext: com.github.jknack.handlebars.internal.antlr.Token nameEnd> 
(define-const var1898 String (var82_getText/-195748462 var779)) ; Statement: r8 = interfaceinvoke $r7.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var2649 Bool (= var354!1 var1898)) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 != 0 goto $r9 = new com.github.jknack.handlebars.internal.Block 
(assert (not (= (ite var2649 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1425 var2750 var2750-init) ; Statement: $r9 = new com.github.jknack.handlebars.internal.Block 
(define-const var2920 var2205 (handlebars/564043682 var2840!2)) ; Statement: $r10 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars> 
(define-const var1231 var618 var1087_emptyList/582664469) ; Statement: $r14 = staticinvoke <java.util.Collections: java.util.List emptyList()>() 
(define-const var3996 var1359 var1087_emptyMap/401053835) ; Statement: $r13 = staticinvoke <java.util.Collections: java.util.Map emptyMap()>() 
(assert true)
(define-const var886 var198 (blockParams/99416935 var1389)) ; Statement: $r11 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$UnlessContext: com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext blockParams()>() 
(assert true)
(define-const var1283 var618 (blockParams/-1449160185 var2840!2 var886)) ; Statement: $r12 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List blockParams(com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext)>($r11) 
(assert true)
;(assert (<init>/-1008510175 var1425 var2920 var354!1 (ite (= 1 1) true false) "^" var1231 var3996 var1283)) ; Statement: specialinvoke $r9.<com.github.jknack.handlebars.internal.Block: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String,boolean,java.lang.String,java.util.List,java.util.Map,java.util.List)>($r10, r5, 1, "^", $r14, $r13, $r12) 

(declare-const var1425!1 var2750)
(declare-const var2920!1 var2205)
(declare-const var354!2 String)
(declare-const var2597!1 Int)
(declare-const var3805 String)
(declare-const var1231!1 var618)
(declare-const var3996!1 var1359)
(declare-const var1283!1 var618)
(define-const var2084 var690 (source/564043682 var2840!2)) ; Statement: $r15 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(define-const var3771 String (var690_filename/-833487352 var2084)) ; Statement: $r16 = interfaceinvoke $r15.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>() 
(assert true)
;(assert (filename/-762062287 (cast-from-var2750-to-var1956 var1425!1) var3771)) ; Statement: virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r16) 

(declare-const var1425!2 var2750)
(declare-const var3771!1 String)
(define-const var2378 Int (var82_getLine/1695299143 var1235)) ; Statement: $i3 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(define-const var809 Int (var82_getCharPositionInLine/-1512232701 var1235)) ; Statement: $i2 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(assert true)
;(assert (position/1553523794 (cast-from-var2750-to-var1956 var1425!2) var2378 var809)) ; Statement: virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i3, $i2) 

(declare-const var1425!3 var2750)
(declare-const var2378!1 Int)
(declare-const var809!1 Int)
(define-const var3319 var82 (start/1874176084 (cast-from-var2622-to-var2537 var1389))) ; Statement: $r17 = r1.<com.github.jknack.handlebars.internal.HbsParser$UnlessContext: com.github.jknack.handlebars.internal.antlr.Token start> 
(define-const var1856 String (var82_getText/-195748462 var3319)) ; Statement: $r26 = interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var2414 Int (length/-134980193 var1856)) ; Statement: $i4 = virtualinvoke $r26.<java.lang.String: int length()>() 
(define-const var2048 Int (- var2414 1)) ; Statement: $i5 = $i4 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var1856) var2048) (>= var2048 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {level/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], int), hasTag/-2046867243=([com.github.jknack.handlebars.internal.TemplateBuilder, boolean], void), sexpr/437012935=([com.github.jknack.handlebars.internal.HbsParser$UnlessContext], com.github.jknack.handlebars.internal.HbsParser$SexprContext), QID/241515671=([com.github.jknack.handlebars.internal.HbsParser$SexprContext], com.github.jknack.handlebars.internal.antlr.tree.TerminalNode), var2806_getSymbol/-1667894290=([com.github.jknack.handlebars.internal.antlr.tree.TerminalNode], com.github.jknack.handlebars.internal.antlr.Token), var82_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), qualifier/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], java.util.LinkedList), addLast/1864600108=([java.util.LinkedList, java.lang.Object], void), cast-from-String-to-var1848=([java.lang.String], java.lang.Object), nameEnd/2024229618=([com.github.jknack.handlebars.internal.HbsParser$UnlessContext], com.github.jknack.handlebars.internal.antlr.Token), var2750-init=([], com.github.jknack.handlebars.internal.Block), handlebars/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.Handlebars), var1087_emptyList/582664469=([], java.util.List), var1087_emptyMap/401053835=([], java.util.Map), blockParams/99416935=([com.github.jknack.handlebars.internal.HbsParser$UnlessContext], com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext), blockParams/-1449160185=([com.github.jknack.handlebars.internal.TemplateBuilder, com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext], java.util.List), <init>/-1008510175=([com.github.jknack.handlebars.internal.Block, com.github.jknack.handlebars.Handlebars, java.lang.String, boolean, java.lang.String, java.util.List, java.util.Map, java.util.List], void), source/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.io.TemplateSource), var690_filename/-833487352=([com.github.jknack.handlebars.io.TemplateSource], java.lang.String), filename/-762062287=([com.github.jknack.handlebars.internal.BaseTemplate, java.lang.String], com.github.jknack.handlebars.internal.BaseTemplate), cast-from-var2750-to-var1956=([com.github.jknack.handlebars.internal.Block], com.github.jknack.handlebars.internal.BaseTemplate), var82_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var82_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), position/1553523794=([com.github.jknack.handlebars.internal.BaseTemplate, int, int], com.github.jknack.handlebars.internal.BaseTemplate), start/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), cast-from-var2622-to-var2537=([com.github.jknack.handlebars.internal.HbsParser$UnlessContext], com.github.jknack.handlebars.internal.antlr.ParserRuleContext), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), startDelimiter/-2121265389=([com.github.jknack.handlebars.internal.Block, java.lang.String], com.github.jknack.handlebars.internal.Block), stop/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), endDelimiter/1877473676=([com.github.jknack.handlebars.internal.Block, java.lang.String], com.github.jknack.handlebars.internal.Block), body/1432661313=([com.github.jknack.handlebars.internal.HbsParser$UnlessContext], com.github.jknack.handlebars.internal.HbsParser$BodyContext), visitBody/348329788=([com.github.jknack.handlebars.internal.TemplateBuilder, com.github.jknack.handlebars.internal.HbsParser$BodyContext], com.github.jknack.handlebars.Template)}
; {var748=com.github.jknack.handlebars.internal.TemplateBuilder, var2840=r0, var2622=com.github.jknack.handlebars.internal.HbsParser$UnlessContext, var1389=r1, var2712=$i0, var872=$i1, var2597=1, var375=com.github.jknack.handlebars.internal.HbsParser$SexprContext, var403=r2, var2806=com.github.jknack.handlebars.internal.antlr.tree.TerminalNode, var2255=$r3, var82=com.github.jknack.handlebars.internal.antlr.Token, var1235=r4, var354=r5, var277=java.util.LinkedList, var2897=$r6, var1848=java.lang.Object, var779=$r7, var1898=r8, var2649=$z0, var2750=com.github.jknack.handlebars.internal.Block, var1425=$r9, var2205=com.github.jknack.handlebars.Handlebars, var2920=$r10, var618=java.util.List, var1087=java.util.Collections, var1231=$r14, var1359=java.util.Map, var3996=$r13, var198=com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext, var886=$r11, var1283=$r12, var3805="^", var690=com.github.jknack.handlebars.io.TemplateSource, var2084=$r15, var3771=$r16, var1956=com.github.jknack.handlebars.internal.BaseTemplate, var2378=$i3, var809=$i2, var2537=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var3319=$r17, var1856=$r26, var2414=$i4, var2048=$i5, var388=$r18, var144=$r19, var2089=$r20, var2685=com.github.jknack.handlebars.internal.HbsParser$BodyContext, var2242=$r21, var708=com.github.jknack.handlebars.Template, var239=$r27, var1159=$i6, var3691=$i7}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var748, r0=var2840, com.github.jknack.handlebars.internal.HbsParser$UnlessContext=var2622, r1=var1389, $i0=var2712, $i1=var872, 1=var2597, com.github.jknack.handlebars.internal.HbsParser$SexprContext=var375, r2=var403, com.github.jknack.handlebars.internal.antlr.tree.TerminalNode=var2806, $r3=var2255, com.github.jknack.handlebars.internal.antlr.Token=var82, r4=var1235, r5=var354, java.util.LinkedList=var277, $r6=var2897, java.lang.Object=var1848, $r7=var779, r8=var1898, $z0=var2649, com.github.jknack.handlebars.internal.Block=var2750, $r9=var1425, com.github.jknack.handlebars.Handlebars=var2205, $r10=var2920, java.util.List=var618, java.util.Collections=var1087, $r14=var1231, java.util.Map=var1359, $r13=var3996, com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext=var198, $r11=var886, $r12=var1283, "^"=var3805, com.github.jknack.handlebars.io.TemplateSource=var690, $r15=var2084, $r16=var3771, com.github.jknack.handlebars.internal.BaseTemplate=var1956, $i3=var2378, $i2=var809, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var2537, $r17=var3319, $r26=var1856, $i4=var2414, $i5=var2048, $r18=var388, $r19=var144, $r20=var2089, com.github.jknack.handlebars.internal.HbsParser$BodyContext=var2685, $r21=var2242, com.github.jknack.handlebars.Template=var708, $r27=var239, $i6=var1159, $i7=var3691}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$UnlessContext;	$i0 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level>;	$i1 = $i0 + 1;	r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i1;	virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$UnlessContext: com.github.jknack.handlebars.internal.HbsParser$SexprContext sexpr()>();	$r3 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode QID()>();	r4 = interfaceinvoke $r3.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>();	r5 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r6 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier>;	virtualinvoke $r6.<java.util.LinkedList: void addLast(java.lang.Object)>(r5);	$r7 = r1.<com.github.jknack.handlebars.internal.HbsParser$UnlessContext: com.github.jknack.handlebars.internal.antlr.Token nameEnd>;	r8 = interfaceinvoke $r7.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>(r8);	if $z0 != 0 goto $r9 = new com.github.jknack.handlebars.internal.Block;	$r9 = new com.github.jknack.handlebars.internal.Block;	$r10 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars>;	$r14 = staticinvoke <java.util.Collections: java.util.List emptyList()>();	$r13 = staticinvoke <java.util.Collections: java.util.Map emptyMap()>();	$r11 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$UnlessContext: com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext blockParams()>();	$r12 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List blockParams(com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext)>($r11);	specialinvoke $r9.<com.github.jknack.handlebars.internal.Block: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String,boolean,java.lang.String,java.util.List,java.util.Map,java.util.List)>($r10, r5, 1, "^", $r14, $r13, $r12);	$r15 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r16 = interfaceinvoke $r15.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>();	virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r16);	$i3 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$i2 = interfaceinvoke r4.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i3, $i2);	$r17 = r1.<com.github.jknack.handlebars.internal.HbsParser$UnlessContext: com.github.jknack.handlebars.internal.antlr.Token start>;	$r26 = interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$i4 = virtualinvoke $r26.<java.lang.String: int length()>();	$i5 = $i4 - 1;	$r18 = virtualinvoke $r26.<java.lang.String: java.lang.String substring(int,int)>(0, $i5);	virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block startDelimiter(java.lang.String)>($r18);	$r19 = r1.<com.github.jknack.handlebars.internal.HbsParser$UnlessContext: com.github.jknack.handlebars.internal.antlr.Token stop>;	$r20 = interfaceinvoke $r19.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	virtualinvoke $r9.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block endDelimiter(java.lang.String)>($r20);	$r21 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$UnlessContext: com.github.jknack.handlebars.internal.HbsParser$BodyContext body()>();	$r27 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Template visitBody(com.github.jknack.handlebars.internal.HbsParser$BodyContext)>($r21);	if $r27 == null goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	$i6 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level>;	$i7 = $i6 - 1;	r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i7;	return $r9
;block_num 3