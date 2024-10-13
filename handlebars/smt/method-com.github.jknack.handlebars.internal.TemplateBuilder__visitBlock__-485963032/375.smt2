(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var549 0)
(declare-sort var3443 0)
(declare-sort var3381 0)
(declare-sort var613 0)
(declare-sort var1980 0)
(declare-sort var3581 0)
(declare-sort var2652 0)
(declare-sort var1241 0)
(declare-sort var224 0)
(declare-sort var2321 0)
(declare-sort var1176 0)
(declare-sort var889 0)
(declare-sort var2130 0)
(declare-sort var2618 0)
(declare-sort var98 0)
(declare-sort var3866 0)
(declare-sort var3041 0)
(declare-sort var3672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun level/564043682 (var549) Int)
(declare-fun sexpr/-1662368780 (var3443) var3381)
(declare-fun DECORATOR/-1804204285 (var3443) var613)
(declare-fun QID/241515671 (var3381) var613)
(declare-fun var613_getSymbol/-1667894290 (var613) var1980)
(declare-fun var1980_getText/-195748462 (var1980) String)
(declare-fun qualifier/564043682 (var549) var3581)
(declare-fun addLast/1864600108 (var3581 var2652) void)
(declare-fun cast-from-String-to-var2652 (String) var2652)
(declare-fun nameEnd/626416749 (var3443) var1980)
(declare-fun hasTag/-2046867243 (var549 Bool) void)
(declare-fun var1241-init () var1241)
(declare-fun handlebars/564043682 (var549) var224)
(declare-fun param/1375516446 (var3381) var2321)
(declare-fun params/-1187292865 (var549 var2321) var2321)
(declare-fun hash/1258247777 (var3381) var2321)
(declare-fun hash/-459617955 (var549 var2321) var1176)
(declare-fun blockParams/111942164 (var3443) var889)
(declare-fun blockParams/-1449160185 (var549 var889) var2321)
(declare-fun <init>/-1008510175 (var1241 var224 String Bool String var2321 var1176 var2321) void)
(declare-fun paramSize/-1588764717 (var2130) Int)
(declare-fun cast-from-var1241-to-var2130 (var1241) var2130)
(declare-fun source/564043682 (var549) var2618)
(declare-fun var2618_filename/-833487352 (var2618) String)
(declare-fun filename/-762062287 (var98 String) var98)
(declare-fun cast-from-var1241-to-var98 (var1241) var98)
(declare-fun var1980_getLine/1695299143 (var1980) Int)
(declare-fun var1980_getCharPositionInLine/-1512232701 (var1980) Int)
(declare-fun position/1553523794 (var98 Int Int) var98)
(declare-fun start/1874176084 (var3866) var1980)
(declare-fun cast-from-var3443-to-var3866 (var3443) var3866)
(declare-fun stop/1874176084 (var3866) var1980)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun startDelimiter/-2121265389 (var1241 String) var1241)
(declare-fun endDelimiter/1877473676 (var1241 String) var1241)
(declare-fun thenBody/626416749 (var3443) var3041)
(declare-fun visitBody/348329788 (var549 var3041) var3672)
(declare-fun elseBlock/-228779620 (var3443) var2321)
(declare-fun var2321_iterator/-912451715 (var2321) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun removeLast/1195514639 (var3581) var2652)
(declare-const null-var549 var549)
(declare-const null-var3443 var3443)
(declare-const null-var613 var613)
(declare-const null-var3672 var3672)
(declare-const var3691 var549) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var3691 null-var549)))
(declare-const var60 var3443) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$BlockContext 
(assert (not (= var60 null-var3443)))
(define-const var3947 Int (level/564043682 var3691)) ; Statement: $i0 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> 
(define-const var3219 Int (+ var3947 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3691!1 var549)
(assert (not (= var3691!1 null-var549)))
(assert (= (level/564043682 var3691!1) var3219)) ; Statement: r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i1 
(assert true)
(define-const var3797 var3381 (sexpr/-1662368780 var60)) ; Statement: r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.HbsParser$SexprContext sexpr()>() 
(assert true)
(define-const var1771 var613 (DECORATOR/-1804204285 var60)) ; Statement: $r3 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode DECORATOR()>() 
 ; Statement: if $r3 == null goto $z6 = 0 
(assert (not (= var1771 null-var613))) ; Negate: Cond: $r3 == null  
(define-const var2234 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z0 = $z6] 
(assert true) ; Non Conditional
(define-const var503 Bool var2234) ; Statement: z0 = $z6 
(assert true)
(define-const var2903 var613 (QID/241515671 var3797)) ; Statement: $r4 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode QID()>() 
(define-const var1164 var1980 (var613_getSymbol/-1667894290 var2903)) ; Statement: $r70 = interfaceinvoke $r4.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>() 
(define-const var1665 String (var1980_getText/-195748462 var1164)) ; Statement: $r71 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(define-const var382 var3581 (qualifier/564043682 var3691!1)) ; Statement: $r5 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier> 
(assert true)
;(assert (addLast/1864600108 var382 (cast-from-String-to-var2652 var1665))) ; Statement: virtualinvoke $r5.<java.util.LinkedList: void addLast(java.lang.Object)>($r71) 

(declare-const var382!1 var3581)
(declare-const var1665!1 String)
(define-const var1025 var1980 (nameEnd/626416749 var60)) ; Statement: $r6 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token nameEnd> 
(define-const var401 String (var1980_getText/-195748462 var1025)) ; Statement: $r72 = interfaceinvoke $r6.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var3377 Bool (= var1665!1 var401)) ; Statement: $z1 = virtualinvoke $r71.<java.lang.String: boolean equals(java.lang.Object)>($r72) 
 ; Statement: if $z1 != 0 goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 
(assert (not (= (ite var3377 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
;(assert (hasTag/-2046867243 var3691!1 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 

(declare-const var3691!2 var549)
(declare-const var2784 Int)
 ; Statement: if z0 == 0 goto $r7 = new com.github.jknack.handlebars.internal.Block 
(assert (= (ite var503 1 0) 0)) ; Cond: z0 == 0 
(define-const var3930 var1241 var1241-init) ; Statement: $r7 = new com.github.jknack.handlebars.internal.Block 
(define-const var1867 var224 (handlebars/564043682 var3691!2)) ; Statement: $r8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars> 
(assert true)
(define-const var1724 var2321 (param/1375516446 var3797)) ; Statement: $r9 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List param()>() 
(assert true)
(define-const var891 var2321 (params/-1187292865 var3691!2 var1724)) ; Statement: $r14 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List params(java.util.List)>($r9) 
(assert true)
(define-const var3669 var2321 (hash/1258247777 var3797)) ; Statement: $r10 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List hash()>() 
(assert true)
(define-const var1718 var1176 (hash/-459617955 var3691!2 var3669)) ; Statement: $r13 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.Map hash(java.util.List)>($r10) 
(assert true)
(define-const var3639 var889 (blockParams/111942164 var60)) ; Statement: $r11 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext blockParams()>() 
(assert true)
(define-const var3674 var2321 (blockParams/-1449160185 var3691!2 var3639)) ; Statement: $r12 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List blockParams(com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext)>($r11) 
(assert true)
;(assert (<init>/-1008510175 var3930 var1867 var1665!1 (ite (= 1 0) true false) "#" var891 var1718 var3674)) ; Statement: specialinvoke $r7.<com.github.jknack.handlebars.internal.Block: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String,boolean,java.lang.String,java.util.List,java.util.Map,java.util.List)>($r8, $r71, 0, "#", $r14, $r13, $r12) 

(declare-const var3930!1 var1241)
(declare-const var1867!1 var224)
(declare-const var1665!2 String)
(declare-const var3063 Int)
(declare-const var2813 String)
(declare-const var891!1 var2321)
(declare-const var1718!1 var1176)
(declare-const var3674!1 var2321)
(define-const var863 var1241 var3930!1) ; Statement: r73 = $r7 
(assert true) ; Non Conditional
(define-const var2431 Int (paramSize/-1588764717 (cast-from-var1241-to-var2130 var863))) ; Statement: $i2 = r73.<com.github.jknack.handlebars.internal.Block: int paramSize> 
 ; Statement: if $i2 <= 0 goto $r15 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(assert (<= var2431 0)) ; Cond: $i2 <= 0 
(define-const var342 var2618 (source/564043682 var3691!2)) ; Statement: $r15 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(define-const var2537 String (var2618_filename/-833487352 var342)) ; Statement: $r16 = interfaceinvoke $r15.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>() 
(assert true)
;(assert (filename/-762062287 (cast-from-var1241-to-var98 var863) var2537)) ; Statement: virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r16) 

(declare-const var863!1 var1241)
(declare-const var2537!1 String)
(define-const var2422 Int (var1980_getLine/1695299143 var1164)) ; Statement: $i4 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(define-const var2829 Int (var1980_getCharPositionInLine/-1512232701 var1164)) ; Statement: $i3 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(assert true)
;(assert (position/1553523794 (cast-from-var1241-to-var98 var863!1) var2422 var2829)) ; Statement: virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i4, $i3) 

(declare-const var863!2 var1241)
(declare-const var2422!1 Int)
(declare-const var2829!1 Int)
(define-const var1793 var1980 (start/1874176084 (cast-from-var3443-to-var3866 var60))) ; Statement: $r17 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token start> 
(define-const var1929 String (var1980_getText/-195748462 var1793)) ; Statement: $r54 = interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(define-const var2979 var1980 (stop/1874176084 (cast-from-var3443-to-var3866 var60))) ; Statement: $r18 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token stop> 
(define-const var1464 String (var1980_getText/-195748462 var2979)) ; Statement: $r55 = interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var764 Int (length/-134980193 var1929)) ; Statement: $i5 = virtualinvoke $r54.<java.lang.String: int length()>() 
(define-const var3401 Int (- var764 1)) ; Statement: $i6 = $i5 - 1 
(assert (and true (and (>= 0 0) (>= (str.len var1929) var3401) (>= var3401 0))))
(define-const var2630 String (substring/-1240304868 var1929 0 var3401)) ; Statement: $r56 = virtualinvoke $r54.<java.lang.String: java.lang.String substring(int,int)>(0, $i6) 
(assert true)
;(assert (startDelimiter/-2121265389 var863!2 var2630)) ; Statement: virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block startDelimiter(java.lang.String)>($r56) 

(declare-const var863!3 var1241)
(declare-const var2630!1 String)
(assert true)
;(assert (endDelimiter/1877473676 var863!3 var1464)) ; Statement: virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block endDelimiter(java.lang.String)>($r55) 

(declare-const var863!4 var1241)
(declare-const var1464!1 String)
(define-const var1379 var3041 (thenBody/626416749 var60)) ; Statement: $r19 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.HbsParser$BodyContext thenBody> 
(assert true)
(define-const var2405 var3672 (visitBody/348329788 var3691!2 var1379)) ; Statement: $r57 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Template visitBody(com.github.jknack.handlebars.internal.HbsParser$BodyContext)>($r19) 
 ; Statement: if $r57 == null goto r74 = r73 
(assert (= var2405 null-var3672)) ; Cond: $r57 == null 
(define-const var3391 var1241 var863!4) ; Statement: r74 = r73 
(assert true)
(define-const var379 var2321 (elseBlock/-228779620 var60)) ; Statement: $r20 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: java.util.List elseBlock()>() 
(define-const var1089 Iterator (var2321_iterator/-912451715 var379)) ; Statement: $r48 = interfaceinvoke $r20.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3778 Bool (Iterator_hasNext/-1669924200 var1089)) ; Statement: $z8 = interfaceinvoke $r48.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z8 == 0 goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 
(assert (= (ite var3778 1 0) 0)) ; Cond: $z8 == 0 
(assert true)
;(assert (hasTag/-2046867243 var3691!2 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 

(declare-const var3691!3 var549)
(declare-const var2784!1 Int)
(define-const var2207 var3581 (qualifier/564043682 var3691!3)) ; Statement: $r21 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier> 
(assert true)
;(assert (removeLast/1195514639 var2207)) ; Statement: virtualinvoke $r21.<java.util.LinkedList: java.lang.Object removeLast()>() 

(declare-const var2207!1 var3581)
(define-const var2032 Int (paramSize/-1588764717 (cast-from-var1241-to-var2130 var863!4))) ; Statement: $i7 = r73.<com.github.jknack.handlebars.internal.Block: int paramSize> 
 ; Statement: if $i7 <= 0 goto $i8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> 
(assert (<= var2032 0)) ; Cond: $i7 <= 0 
(define-const var1476 Int (level/564043682 var3691!3)) ; Statement: $i8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> 
(define-const var2448 Int (- var1476 1)) ; Statement: $i9 = $i8 - 1 
(declare-const var3691!4 var549)
(assert (not (= var3691!4 null-var549)))
(assert (= (level/564043682 var3691!4) var2448)) ; Statement: r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i9 
 ; Statement: return r73 
(check-sat)
(get-model)
(get-unsat-core)
; {level/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], int), sexpr/-1662368780=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.HbsParser$SexprContext), DECORATOR/-1804204285=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.antlr.tree.TerminalNode), QID/241515671=([com.github.jknack.handlebars.internal.HbsParser$SexprContext], com.github.jknack.handlebars.internal.antlr.tree.TerminalNode), var613_getSymbol/-1667894290=([com.github.jknack.handlebars.internal.antlr.tree.TerminalNode], com.github.jknack.handlebars.internal.antlr.Token), var1980_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), qualifier/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], java.util.LinkedList), addLast/1864600108=([java.util.LinkedList, java.lang.Object], void), cast-from-String-to-var2652=([java.lang.String], java.lang.Object), nameEnd/626416749=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.antlr.Token), hasTag/-2046867243=([com.github.jknack.handlebars.internal.TemplateBuilder, boolean], void), var1241-init=([], com.github.jknack.handlebars.internal.Block), handlebars/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.Handlebars), param/1375516446=([com.github.jknack.handlebars.internal.HbsParser$SexprContext], java.util.List), params/-1187292865=([com.github.jknack.handlebars.internal.TemplateBuilder, java.util.List], java.util.List), hash/1258247777=([com.github.jknack.handlebars.internal.HbsParser$SexprContext], java.util.List), hash/-459617955=([com.github.jknack.handlebars.internal.TemplateBuilder, java.util.List], java.util.Map), blockParams/111942164=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext), blockParams/-1449160185=([com.github.jknack.handlebars.internal.TemplateBuilder, com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext], java.util.List), <init>/-1008510175=([com.github.jknack.handlebars.internal.Block, com.github.jknack.handlebars.Handlebars, java.lang.String, boolean, java.lang.String, java.util.List, java.util.Map, java.util.List], void), paramSize/-1588764717=([com.github.jknack.handlebars.internal.HelperResolver], int), cast-from-var1241-to-var2130=([com.github.jknack.handlebars.internal.Block], com.github.jknack.handlebars.internal.HelperResolver), source/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.io.TemplateSource), var2618_filename/-833487352=([com.github.jknack.handlebars.io.TemplateSource], java.lang.String), filename/-762062287=([com.github.jknack.handlebars.internal.BaseTemplate, java.lang.String], com.github.jknack.handlebars.internal.BaseTemplate), cast-from-var1241-to-var98=([com.github.jknack.handlebars.internal.Block], com.github.jknack.handlebars.internal.BaseTemplate), var1980_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var1980_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), position/1553523794=([com.github.jknack.handlebars.internal.BaseTemplate, int, int], com.github.jknack.handlebars.internal.BaseTemplate), start/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), cast-from-var3443-to-var3866=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.antlr.ParserRuleContext), stop/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), startDelimiter/-2121265389=([com.github.jknack.handlebars.internal.Block, java.lang.String], com.github.jknack.handlebars.internal.Block), endDelimiter/1877473676=([com.github.jknack.handlebars.internal.Block, java.lang.String], com.github.jknack.handlebars.internal.Block), thenBody/626416749=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.HbsParser$BodyContext), visitBody/348329788=([com.github.jknack.handlebars.internal.TemplateBuilder, com.github.jknack.handlebars.internal.HbsParser$BodyContext], com.github.jknack.handlebars.Template), elseBlock/-228779620=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], java.util.List), var2321_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), removeLast/1195514639=([java.util.LinkedList], java.lang.Object)}
; {var549=com.github.jknack.handlebars.internal.TemplateBuilder, var3691=r0, var3443=com.github.jknack.handlebars.internal.HbsParser$BlockContext, var60=r1, var3947=$i0, var3219=$i1, var3381=com.github.jknack.handlebars.internal.HbsParser$SexprContext, var3797=r2, var613=com.github.jknack.handlebars.internal.antlr.tree.TerminalNode, var1771=$r3, var2234=$z6, var503=z0, var2903=$r4, var1980=com.github.jknack.handlebars.internal.antlr.Token, var1164=$r70, var1665=$r71, var3581=java.util.LinkedList, var382=$r5, var2652=java.lang.Object, var1025=$r6, var401=$r72, var3377=$z1, var2784=1, var1241=com.github.jknack.handlebars.internal.Block, var3930=$r7, var224=com.github.jknack.handlebars.Handlebars, var1867=$r8, var2321=java.util.List, var1724=$r9, var891=$r14, var3669=$r10, var1176=java.util.Map, var1718=$r13, var889=com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext, var3639=$r11, var3674=$r12, var3063=0, var2813="#", var863=r73, var2130=com.github.jknack.handlebars.internal.HelperResolver, var2431=$i2, var2618=com.github.jknack.handlebars.io.TemplateSource, var342=$r15, var2537=$r16, var98=com.github.jknack.handlebars.internal.BaseTemplate, var2422=$i4, var2829=$i3, var3866=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var1793=$r17, var1929=$r54, var2979=$r18, var1464=$r55, var764=$i5, var3401=$i6, var2630=$r56, var3041=com.github.jknack.handlebars.internal.HbsParser$BodyContext, var1379=$r19, var3672=com.github.jknack.handlebars.Template, var2405=$r57, var3391=r74, var379=$r20, var1089=$r48, var3778=$z8, var2207=$r21, var2032=$i7, var1476=$i8, var2448=$i9}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var549, r0=var3691, com.github.jknack.handlebars.internal.HbsParser$BlockContext=var3443, r1=var60, $i0=var3947, $i1=var3219, com.github.jknack.handlebars.internal.HbsParser$SexprContext=var3381, r2=var3797, com.github.jknack.handlebars.internal.antlr.tree.TerminalNode=var613, $r3=var1771, $z6=var2234, z0=var503, $r4=var2903, com.github.jknack.handlebars.internal.antlr.Token=var1980, $r70=var1164, $r71=var1665, java.util.LinkedList=var3581, $r5=var382, java.lang.Object=var2652, $r6=var1025, $r72=var401, $z1=var3377, 1=var2784, com.github.jknack.handlebars.internal.Block=var1241, $r7=var3930, com.github.jknack.handlebars.Handlebars=var224, $r8=var1867, java.util.List=var2321, $r9=var1724, $r14=var891, $r10=var3669, java.util.Map=var1176, $r13=var1718, com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext=var889, $r11=var3639, $r12=var3674, 0=var3063, "#"=var2813, r73=var863, com.github.jknack.handlebars.internal.HelperResolver=var2130, $i2=var2431, com.github.jknack.handlebars.io.TemplateSource=var2618, $r15=var342, $r16=var2537, com.github.jknack.handlebars.internal.BaseTemplate=var98, $i4=var2422, $i3=var2829, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var3866, $r17=var1793, $r54=var1929, $r18=var2979, $r55=var1464, $i5=var764, $i6=var3401, $r56=var2630, com.github.jknack.handlebars.internal.HbsParser$BodyContext=var3041, $r19=var1379, com.github.jknack.handlebars.Template=var3672, $r57=var2405, r74=var3391, $r20=var379, $r48=var1089, $z8=var3778, $r21=var2207, $i7=var2032, $i8=var1476, $i9=var2448}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$BlockContext;	$i0 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level>;	$i1 = $i0 + 1;	r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i1;	r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.HbsParser$SexprContext sexpr()>();	$r3 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode DECORATOR()>();	if $r3 == null goto $z6 = 0;	$z6 = 1;	goto [?= z0 = $z6];	z0 = $z6;	$r4 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode QID()>();	$r70 = interfaceinvoke $r4.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>();	$r71 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r5 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier>;	virtualinvoke $r5.<java.util.LinkedList: void addLast(java.lang.Object)>($r71);	$r6 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token nameEnd>;	$r72 = interfaceinvoke $r6.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$z1 = virtualinvoke $r71.<java.lang.String: boolean equals(java.lang.Object)>($r72);	if $z1 != 0 goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	if z0 == 0 goto $r7 = new com.github.jknack.handlebars.internal.Block;	$r7 = new com.github.jknack.handlebars.internal.Block;	$r8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars>;	$r9 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List param()>();	$r14 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List params(java.util.List)>($r9);	$r10 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List hash()>();	$r13 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.Map hash(java.util.List)>($r10);	$r11 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext blockParams()>();	$r12 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List blockParams(com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext)>($r11);	specialinvoke $r7.<com.github.jknack.handlebars.internal.Block: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String,boolean,java.lang.String,java.util.List,java.util.Map,java.util.List)>($r8, $r71, 0, "#", $r14, $r13, $r12);	r73 = $r7;	$i2 = r73.<com.github.jknack.handlebars.internal.Block: int paramSize>;	if $i2 <= 0 goto $r15 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r15 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r16 = interfaceinvoke $r15.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>();	virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r16);	$i4 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$i3 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i4, $i3);	$r17 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token start>;	$r54 = interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r18 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token stop>;	$r55 = interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$i5 = virtualinvoke $r54.<java.lang.String: int length()>();	$i6 = $i5 - 1;	$r56 = virtualinvoke $r54.<java.lang.String: java.lang.String substring(int,int)>(0, $i6);	virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block startDelimiter(java.lang.String)>($r56);	virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block endDelimiter(java.lang.String)>($r55);	$r19 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.HbsParser$BodyContext thenBody>;	$r57 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Template visitBody(com.github.jknack.handlebars.internal.HbsParser$BodyContext)>($r19);	if $r57 == null goto r74 = r73;	r74 = r73;	$r20 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: java.util.List elseBlock()>();	$r48 = interfaceinvoke $r20.<java.util.List: java.util.Iterator iterator()>();	$z8 = interfaceinvoke $r48.<java.util.Iterator: boolean hasNext()>();	if $z8 == 0 goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	$r21 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier>;	virtualinvoke $r21.<java.util.LinkedList: java.lang.Object removeLast()>();	$i7 = r73.<com.github.jknack.handlebars.internal.Block: int paramSize>;	if $i7 <= 0 goto $i8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level>;	$i8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level>;	$i9 = $i8 - 1;	r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i9;	return r73
;block_num 11