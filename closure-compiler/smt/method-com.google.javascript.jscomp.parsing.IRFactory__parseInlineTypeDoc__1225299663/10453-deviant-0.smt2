(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1322 0)
(declare-sort var1154 0)
(declare-sort var2266 0)
(declare-sort var612 0)
(declare-sort var766 0)
(declare-sort var1987 0)
(declare-sort var1265 0)
(declare-sort var3923 0)
(declare-sort var295 0)
(declare-sort var1162 0)
(declare-sort var201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/508785874 (var1154) String)
(declare-fun location/508785874 (var1154) var2266)
(declare-fun start/-1854350486 (var2266) var612)
(declare-fun var1322_lineno/450966871 (var612) Int)
(declare-fun var1322_charno/13928377 (var612) Int)
(declare-fun var766-init () var766)
(declare-fun var1987-init () var1987)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/-777501959 (var1987 String Int Int) void)
(declare-fun offset/-590926884 (var612) Int)
(declare-fun templateNode/179838982 (var1322) var1265)
(declare-fun config/179838982 (var1322) var3923)
(declare-fun jsDocSourceKind/179838982 (var1322) var295)
(declare-fun errorReporter/179838982 (var1322) var1162)
(declare-fun <init>/-1990791248 (var766 var1987 String Int var1265 var3923 var295 var1162) void)
(declare-fun parseInlineTypeDoc/1664246354 (var766) var201)
(declare-const null-var1322 var1322)
(declare-const null-var1154 var1154)
(declare-const var1088 var1322) ; Statement: r11 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var1088 null-var1322)))
(declare-const var937 var1154) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.Comment 
(assert (not (= var937 null-var1154)))
(define-const var494 String (value/508785874 var937)) ; Statement: r1 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: java.lang.String value> 
(define-const var835 var2266 (location/508785874 var937)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.util.SourceRange location> 
(define-const var3219 var612 (start/-1854350486 var835)) ; Statement: $r3 = $r2.<com.google.javascript.jscomp.parsing.parser.util.SourceRange: com.google.javascript.jscomp.parsing.parser.util.SourcePosition start> 
(define-const var2796 Int (var1322_lineno/450966871 var3219)) ; Statement: i0 = staticinvoke <com.google.javascript.jscomp.parsing.IRFactory: int lineno(com.google.javascript.jscomp.parsing.parser.util.SourcePosition)>($r3) 
(define-const var1992 var2266 (location/508785874 var937)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.util.SourceRange location> 
(define-const var3238 var612 (start/-1854350486 var1992)) ; Statement: $r5 = $r4.<com.google.javascript.jscomp.parsing.parser.util.SourceRange: com.google.javascript.jscomp.parsing.parser.util.SourcePosition start> 
(define-const var1277 Int (var1322_charno/13928377 var3238)) ; Statement: i1 = staticinvoke <com.google.javascript.jscomp.parsing.IRFactory: int charno(com.google.javascript.jscomp.parsing.parser.util.SourcePosition)>($r5) 
(define-const var40 var766 var766-init) ; Statement: $r6 = new com.google.javascript.jscomp.parsing.JsDocInfoParser 
(define-const var2390 var1987 var1987-init) ; Statement: $r7 = new com.google.javascript.jscomp.parsing.JsDocTokenStream 
(assert (not (and true (and (>= 3 0) (>= (str.len var494) 3)))))
(check-sat)
(get-model)
(get-unsat-core)
; {value/508785874=([com.google.javascript.jscomp.parsing.parser.trees.Comment], java.lang.String), location/508785874=([com.google.javascript.jscomp.parsing.parser.trees.Comment], com.google.javascript.jscomp.parsing.parser.util.SourceRange), start/-1854350486=([com.google.javascript.jscomp.parsing.parser.util.SourceRange], com.google.javascript.jscomp.parsing.parser.util.SourcePosition), var1322_lineno/450966871=([com.google.javascript.jscomp.parsing.parser.util.SourcePosition], int), var1322_charno/13928377=([com.google.javascript.jscomp.parsing.parser.util.SourcePosition], int), var766-init=([], com.google.javascript.jscomp.parsing.JsDocInfoParser), var1987-init=([], com.google.javascript.jscomp.parsing.JsDocTokenStream), substring/850833817=([java.lang.String, int], java.lang.String), <init>/-777501959=([com.google.javascript.jscomp.parsing.JsDocTokenStream, java.lang.String, int, int], void), offset/-590926884=([com.google.javascript.jscomp.parsing.parser.util.SourcePosition], int), templateNode/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.rhino.Node), config/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.jscomp.parsing.Config), jsDocSourceKind/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind), errorReporter/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.rhino.ErrorReporter), <init>/-1990791248=([com.google.javascript.jscomp.parsing.JsDocInfoParser, com.google.javascript.jscomp.parsing.JsDocTokenStream, java.lang.String, int, com.google.javascript.rhino.Node, com.google.javascript.jscomp.parsing.Config, com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind, com.google.javascript.rhino.ErrorReporter], void), parseInlineTypeDoc/1664246354=([com.google.javascript.jscomp.parsing.JsDocInfoParser], com.google.javascript.rhino.JSDocInfo)}
; {var1322=com.google.javascript.jscomp.parsing.IRFactory, var1088=r11, var1154=com.google.javascript.jscomp.parsing.parser.trees.Comment, var937=r0, var494=r1, var2266=com.google.javascript.jscomp.parsing.parser.util.SourceRange, var835=$r2, var612=com.google.javascript.jscomp.parsing.parser.util.SourcePosition, var3219=$r3, var2796=i0, var1992=$r4, var3238=$r5, var1277=i1, var766=com.google.javascript.jscomp.parsing.JsDocInfoParser, var40=$r6, var1987=com.google.javascript.jscomp.parsing.JsDocTokenStream, var2390=$r7, var2441=$r8, var3171=$i2, var281=$r9, var3921=$r10, var666=$i3, var1265=com.google.javascript.rhino.Node, var2016=$r15, var3923=com.google.javascript.jscomp.parsing.Config, var546=$r14, var295=com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind, var3640=$r13, var1162=com.google.javascript.rhino.ErrorReporter, var1737=$r12, var201=com.google.javascript.rhino.JSDocInfo, var20=$r16}
; {com.google.javascript.jscomp.parsing.IRFactory=var1322, r11=var1088, com.google.javascript.jscomp.parsing.parser.trees.Comment=var1154, r0=var937, r1=var494, com.google.javascript.jscomp.parsing.parser.util.SourceRange=var2266, $r2=var835, com.google.javascript.jscomp.parsing.parser.util.SourcePosition=var612, $r3=var3219, i0=var2796, $r4=var1992, $r5=var3238, i1=var1277, com.google.javascript.jscomp.parsing.JsDocInfoParser=var766, $r6=var40, com.google.javascript.jscomp.parsing.JsDocTokenStream=var1987, $r7=var2390, $r8=var2441, $i2=var3171, $r9=var281, $r10=var3921, $i3=var666, com.google.javascript.rhino.Node=var1265, $r15=var2016, com.google.javascript.jscomp.parsing.Config=var3923, $r14=var546, com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind=var295, $r13=var3640, com.google.javascript.rhino.ErrorReporter=var1162, $r12=var1737, com.google.javascript.rhino.JSDocInfo=var201, $r16=var20}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.Comment;	r1 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: java.lang.String value>;	$r2 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.util.SourceRange location>;	$r3 = $r2.<com.google.javascript.jscomp.parsing.parser.util.SourceRange: com.google.javascript.jscomp.parsing.parser.util.SourcePosition start>;	i0 = staticinvoke <com.google.javascript.jscomp.parsing.IRFactory: int lineno(com.google.javascript.jscomp.parsing.parser.util.SourcePosition)>($r3);	$r4 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.util.SourceRange location>;	$r5 = $r4.<com.google.javascript.jscomp.parsing.parser.util.SourceRange: com.google.javascript.jscomp.parsing.parser.util.SourcePosition start>;	i1 = staticinvoke <com.google.javascript.jscomp.parsing.IRFactory: int charno(com.google.javascript.jscomp.parsing.parser.util.SourcePosition)>($r5);	$r6 = new com.google.javascript.jscomp.parsing.JsDocInfoParser;	$r7 = new com.google.javascript.jscomp.parsing.JsDocTokenStream;	$r8 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(3);	$i2 = i1 + 3;	specialinvoke $r7.<com.google.javascript.jscomp.parsing.JsDocTokenStream: void <init>(java.lang.String,int,int)>($r8, i0, $i2);	$r9 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: com.google.javascript.jscomp.parsing.parser.util.SourceRange location>;	$r10 = $r9.<com.google.javascript.jscomp.parsing.parser.util.SourceRange: com.google.javascript.jscomp.parsing.parser.util.SourcePosition start>;	$i3 = $r10.<com.google.javascript.jscomp.parsing.parser.util.SourcePosition: int offset>;	$r15 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.Node templateNode>;	$r14 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.jscomp.parsing.Config config>;	$r13 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind jsDocSourceKind>;	$r12 = r11.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.ErrorReporter errorReporter>;	specialinvoke $r6.<com.google.javascript.jscomp.parsing.JsDocInfoParser: void <init>(com.google.javascript.jscomp.parsing.JsDocTokenStream,java.lang.String,int,com.google.javascript.rhino.Node,com.google.javascript.jscomp.parsing.Config,com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind,com.google.javascript.rhino.ErrorReporter)>($r7, r1, $i3, $r15, $r14, $r13, $r12);	$r16 = virtualinvoke $r6.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.rhino.JSDocInfo parseInlineTypeDoc()>();	return $r16
;block_num 1