(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1747 0)
(declare-sort var400 0)
(declare-sort var336 0)
(declare-sort var688 0)
(declare-sort var2050 0)
(declare-sort var3430 0)
(declare-sort var3445 0)
(declare-sort var240 0)
(declare-sort var2676 0)
(declare-sort var1593 0)
(declare-sort var3540 0)
(declare-sort var2810 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/508785874 (var400) String)
(declare-fun location/508785874 (var400) var336)
(declare-fun start/-1854350486 (var336) var688)
(declare-fun var1747_lineno/450966871 (var688) Int)
(declare-fun var1747_charno/13928377 (var688) Int)
(declare-fun offset/-590926884 (var688) Int)
(declare-fun var2050-init () var2050)
(declare-fun var3430-init () var3430)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/-777501959 (var3430 String Int Int) void)
(declare-fun templateNode/179838982 (var1747) var3445)
(declare-fun config/179838982 (var1747) var240)
(declare-fun jsDocSourceKind/179838982 (var1747) var2676)
(declare-fun errorReporter/179838982 (var1747) var1593)
(declare-fun <init>/-1990791248 (var2050 var3430 String Int var3445 var240 var2676 var1593) void)
(declare-fun firstFileoverview/179838982 (var1747) var3540)
(declare-fun setFileOverviewJSDocInfo/1857493190 (var2050 var3540) void)
(declare-fun type/508785874 (var400) var2810)
(declare-fun parse/-528091035 (var2050) Bool)
(declare-const null-var1747 var1747)
(declare-const null-var400 var400)
(declare-const var2810-IMPORTANT var2810)
(declare-const var2451 var1747) ; Statement: r11 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var2451 null-var1747)))
(declare-const var1879 var400) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.Comment 
(assert (not (= var1879 null-var400)))
(define-const var3503 String (value/508785874 var1879)) ; Statement: r1 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: java.lang.String value> 
(define-const var3078 var336 (location/508785874 var1879)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.util.SourceRange location> 
(define-const var2880 var688 (start/-1854350486 var3078)) ; Statement: $r3 = $r2.<com.google.javascript.jscomp.parsing.parser.util.SourceRange: com.google.javascript.jscomp.parsing.parser.util.SourcePosition start> 
(define-const var3589 Int (var1747_lineno/450966871 var2880)) ; Statement: i0 = staticinvoke <com.google.javascript.jscomp.parsing.IRFactory: int lineno(com.google.javascript.jscomp.parsing.parser.util.SourcePosition)>($r3) 
(define-const var2767 var336 (location/508785874 var1879)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.util.SourceRange location> 
(define-const var1434 var688 (start/-1854350486 var2767)) ; Statement: $r5 = $r4.<com.google.javascript.jscomp.parsing.parser.util.SourceRange: com.google.javascript.jscomp.parsing.parser.util.SourcePosition start> 
(define-const var1294 Int (var1747_charno/13928377 var1434)) ; Statement: i1 = staticinvoke <com.google.javascript.jscomp.parsing.IRFactory: int charno(com.google.javascript.jscomp.parsing.parser.util.SourcePosition)>($r5) 
(define-const var3093 var336 (location/508785874 var1879)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.util.SourceRange location> 
(define-const var3321 var688 (start/-1854350486 var3093)) ; Statement: $r7 = $r6.<com.google.javascript.jscomp.parsing.parser.util.SourceRange: com.google.javascript.jscomp.parsing.parser.util.SourcePosition start> 
(define-const var734 Int (offset/-590926884 var3321)) ; Statement: i2 = $r7.<com.google.javascript.jscomp.parsing.parser.util.SourcePosition: int offset> 
(define-const var2054 var2050 var2050-init) ; Statement: $r8 = new com.google.javascript.jscomp.parsing.JsDocInfoParser 
(define-const var1948 var3430 var3430-init) ; Statement: $r9 = new com.google.javascript.jscomp.parsing.JsDocTokenStream 
(assert (and true (and (>= 3 0) (>= (str.len var3503) 3))))
(define-const var1428 String (substring/850833817 var3503 3)) ; Statement: $r10 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(3) 
(define-const var3774 Int (+ var1294 3)) ; Statement: $i3 = i1 + 3 
(assert true)
;(assert (<init>/-777501959 var1948 var1428 var3589 var3774)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.parsing.JsDocTokenStream: void <init>(java.lang.String,int,int)>($r10, i0, $i3) 

(declare-const var1948!1 var3430)
(declare-const var1428!1 String)
(declare-const var3589!1 Int)
(declare-const var3774!1 Int)
(define-const var2394 var3445 (templateNode/179838982 var2451)) ; Statement: $r15 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.Node templateNode> 
(define-const var3205 var240 (config/179838982 var2451)) ; Statement: $r14 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.jscomp.parsing.Config config> 
(define-const var2571 var2676 (jsDocSourceKind/179838982 var2451)) ; Statement: $r13 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind jsDocSourceKind> 
(define-const var3805 var1593 (errorReporter/179838982 var2451)) ; Statement: $r12 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.ErrorReporter errorReporter> 
(assert true)
;(assert (<init>/-1990791248 var2054 var1948!1 var3503 var734 var2394 var3205 var2571 var3805)) ; Statement: specialinvoke $r8.<com.google.javascript.jscomp.parsing.JsDocInfoParser: void <init>(com.google.javascript.jscomp.parsing.JsDocTokenStream,java.lang.String,int,com.google.javascript.rhino.Node,com.google.javascript.jscomp.parsing.Config,com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind,com.google.javascript.rhino.ErrorReporter)>($r9, r1, i2, $r15, $r14, $r13, $r12) 

(declare-const var2054!1 var2050)
(declare-const var1948!2 var3430)
(declare-const var3503!1 String)
(declare-const var734!1 Int)
(declare-const var2394!1 var3445)
(declare-const var3205!1 var240)
(declare-const var2571!1 var2676)
(declare-const var3805!1 var1593)
(define-const var3760 var3540 (firstFileoverview/179838982 var2451)) ; Statement: $r16 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.JSDocInfo firstFileoverview> 
(assert true)
;(assert (setFileOverviewJSDocInfo/1857493190 var2054!1 var3760)) ; Statement: virtualinvoke $r8.<com.google.javascript.jscomp.parsing.JsDocInfoParser: void setFileOverviewJSDocInfo(com.google.javascript.rhino.JSDocInfo)>($r16) 

(declare-const var2054!2 var2050)
(declare-const var3760!1 var3540)
(define-const var3626 var2810 (type/508785874 var1879)) ; Statement: $r18 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.trees.Comment$Type type> 
(define-const var3467 var2810 var2810-IMPORTANT) ; Statement: $r17 = <com.google.javascript.jscomp.parsing.parser.trees.Comment$Type: com.google.javascript.jscomp.parsing.parser.trees.Comment$Type IMPORTANT> 
 ; Statement: if $r18 != $r17 goto virtualinvoke $r8.<com.google.javascript.jscomp.parsing.JsDocInfoParser: boolean parse()>() 
(assert (not (= var3626 var3467))) ; Cond: $r18 != $r17 
(assert true)
;(assert (parse/-528091035 var2054!2)) ; Statement: virtualinvoke $r8.<com.google.javascript.jscomp.parsing.JsDocInfoParser: boolean parse()>() 

(declare-const var2054!3 var2050)
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {value/508785874=([com.google.javascript.jscomp.parsing.parser.trees.Comment], java.lang.String), location/508785874=([com.google.javascript.jscomp.parsing.parser.trees.Comment], com.google.javascript.jscomp.parsing.parser.util.SourceRange), start/-1854350486=([com.google.javascript.jscomp.parsing.parser.util.SourceRange], com.google.javascript.jscomp.parsing.parser.util.SourcePosition), var1747_lineno/450966871=([com.google.javascript.jscomp.parsing.parser.util.SourcePosition], int), var1747_charno/13928377=([com.google.javascript.jscomp.parsing.parser.util.SourcePosition], int), offset/-590926884=([com.google.javascript.jscomp.parsing.parser.util.SourcePosition], int), var2050-init=([], com.google.javascript.jscomp.parsing.JsDocInfoParser), var3430-init=([], com.google.javascript.jscomp.parsing.JsDocTokenStream), substring/850833817=([java.lang.String, int], java.lang.String), <init>/-777501959=([com.google.javascript.jscomp.parsing.JsDocTokenStream, java.lang.String, int, int], void), templateNode/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.rhino.Node), config/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.jscomp.parsing.Config), jsDocSourceKind/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind), errorReporter/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.rhino.ErrorReporter), <init>/-1990791248=([com.google.javascript.jscomp.parsing.JsDocInfoParser, com.google.javascript.jscomp.parsing.JsDocTokenStream, java.lang.String, int, com.google.javascript.rhino.Node, com.google.javascript.jscomp.parsing.Config, com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind, com.google.javascript.rhino.ErrorReporter], void), firstFileoverview/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.rhino.JSDocInfo), setFileOverviewJSDocInfo/1857493190=([com.google.javascript.jscomp.parsing.JsDocInfoParser, com.google.javascript.rhino.JSDocInfo], void), type/508785874=([com.google.javascript.jscomp.parsing.parser.trees.Comment], com.google.javascript.jscomp.parsing.parser.trees.Comment$Type), parse/-528091035=([com.google.javascript.jscomp.parsing.JsDocInfoParser], boolean)}
; {var1747=com.google.javascript.jscomp.parsing.IRFactory, var2451=r11, var400=com.google.javascript.jscomp.parsing.parser.trees.Comment, var1879=r0, var3503=r1, var336=com.google.javascript.jscomp.parsing.parser.util.SourceRange, var3078=$r2, var688=com.google.javascript.jscomp.parsing.parser.util.SourcePosition, var2880=$r3, var3589=i0, var2767=$r4, var1434=$r5, var1294=i1, var3093=$r6, var3321=$r7, var734=i2, var2050=com.google.javascript.jscomp.parsing.JsDocInfoParser, var2054=$r8, var3430=com.google.javascript.jscomp.parsing.JsDocTokenStream, var1948=$r9, var1428=$r10, var3774=$i3, var3445=com.google.javascript.rhino.Node, var2394=$r15, var240=com.google.javascript.jscomp.parsing.Config, var3205=$r14, var2676=com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind, var2571=$r13, var1593=com.google.javascript.rhino.ErrorReporter, var3805=$r12, var3540=com.google.javascript.rhino.JSDocInfo, var3760=$r16, var2810=com.google.javascript.jscomp.parsing.parser.trees.Comment$Type, var3626=$r18, var3467=$r17}
; {com.google.javascript.jscomp.parsing.IRFactory=var1747, r11=var2451, com.google.javascript.jscomp.parsing.parser.trees.Comment=var400, r0=var1879, r1=var3503, com.google.javascript.jscomp.parsing.parser.util.SourceRange=var336, $r2=var3078, com.google.javascript.jscomp.parsing.parser.util.SourcePosition=var688, $r3=var2880, i0=var3589, $r4=var2767, $r5=var1434, i1=var1294, $r6=var3093, $r7=var3321, i2=var734, com.google.javascript.jscomp.parsing.JsDocInfoParser=var2050, $r8=var2054, com.google.javascript.jscomp.parsing.JsDocTokenStream=var3430, $r9=var1948, $r10=var1428, $i3=var3774, com.google.javascript.rhino.Node=var3445, $r15=var2394, com.google.javascript.jscomp.parsing.Config=var240, $r14=var3205, com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind=var2676, $r13=var2571, com.google.javascript.rhino.ErrorReporter=var1593, $r12=var3805, com.google.javascript.rhino.JSDocInfo=var3540, $r16=var3760, com.google.javascript.jscomp.parsing.parser.trees.Comment$Type=var2810, $r18=var3626, $r17=var3467}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.Comment;	r1 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: java.lang.String value>;	$r2 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.util.SourceRange location>;	$r3 = $r2.<com.google.javascript.jscomp.parsing.parser.util.SourceRange: com.google.javascript.jscomp.parsing.parser.util.SourcePosition start>;	i0 = staticinvoke <com.google.javascript.jscomp.parsing.IRFactory: int lineno(com.google.javascript.jscomp.parsing.parser.util.SourcePosition)>($r3);	$r4 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.util.SourceRange location>;	$r5 = $r4.<com.google.javascript.jscomp.parsing.parser.util.SourceRange: com.google.javascript.jscomp.parsing.parser.util.SourcePosition start>;	i1 = staticinvoke <com.google.javascript.jscomp.parsing.IRFactory: int charno(com.google.javascript.jscomp.parsing.parser.util.SourcePosition)>($r5);	$r6 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.util.SourceRange location>;	$r7 = $r6.<com.google.javascript.jscomp.parsing.parser.util.SourceRange: com.google.javascript.jscomp.parsing.parser.util.SourcePosition start>;	i2 = $r7.<com.google.javascript.jscomp.parsing.parser.util.SourcePosition: int offset>;	$r8 = new com.google.javascript.jscomp.parsing.JsDocInfoParser;	$r9 = new com.google.javascript.jscomp.parsing.JsDocTokenStream;	$r10 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(3);	$i3 = i1 + 3;	specialinvoke $r9.<com.google.javascript.jscomp.parsing.JsDocTokenStream: void <init>(java.lang.String,int,int)>($r10, i0, $i3);	$r15 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.Node templateNode>;	$r14 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.jscomp.parsing.Config config>;	$r13 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind jsDocSourceKind>;	$r12 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.ErrorReporter errorReporter>;	specialinvoke $r8.<com.google.javascript.jscomp.parsing.JsDocInfoParser: void <init>(com.google.javascript.jscomp.parsing.JsDocTokenStream,java.lang.String,int,com.google.javascript.rhino.Node,com.google.javascript.jscomp.parsing.Config,com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind,com.google.javascript.rhino.ErrorReporter)>($r9, r1, i2, $r15, $r14, $r13, $r12);	$r16 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.JSDocInfo firstFileoverview>;	virtualinvoke $r8.<com.google.javascript.jscomp.parsing.JsDocInfoParser: void setFileOverviewJSDocInfo(com.google.javascript.rhino.JSDocInfo)>($r16);	$r18 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.trees.Comment$Type type>;	$r17 = <com.google.javascript.jscomp.parsing.parser.trees.Comment$Type: com.google.javascript.jscomp.parsing.parser.trees.Comment$Type IMPORTANT>;	if $r18 != $r17 goto virtualinvoke $r8.<com.google.javascript.jscomp.parsing.JsDocInfoParser: boolean parse()>();	virtualinvoke $r8.<com.google.javascript.jscomp.parsing.JsDocInfoParser: boolean parse()>();	return $r8
;block_num 3