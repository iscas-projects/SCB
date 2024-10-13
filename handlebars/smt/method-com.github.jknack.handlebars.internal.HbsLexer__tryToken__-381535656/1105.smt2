(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3882 0)
(declare-sort var1352 0)
(declare-sort var191 0)
(declare-sort var2842 0)
(declare-sort var3356 0)
(declare-sort var2623 0)
(declare-sort var993 0)
(declare-sort var3173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ahead/1052581389 (var3882 String) Bool)
(declare-fun _input/-1526528532 (var2842) var191)
(declare-fun cast-from-var3882-to-var2842 (var3882) var2842)
(declare-fun var3356_index/-1834259531 (var3356) Int)
(declare-fun cast-from-var191-to-var3356 (var191) var3356)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3356_seek/-1872436025 (var3356 Int) void)
(declare-fun getInterpreter/-100077477 (var993) var2623)
(declare-fun cast-from-var3882-to-var993 (var3882) var993)
(declare-fun cast-from-var2623-to-var3173 (var2623) var3173)
(declare-fun _tokenStartCharPositionInLine/-1526528532 (var2842) Int)
(declare-fun setCharPositionInLine/-2012408714 (var3173 Int) void)
(declare-const null-var3882 var3882)
(declare-const null-String String)
(declare-const var1160 var3882) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.HbsLexer 
(assert (not (= var1160 null-var3882)))
(declare-const var468 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var468 null-String)))
(assert true)
(define-const var2236 Bool (ahead/1052581389 var1160 var468)) ; Statement: $z0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.HbsLexer: boolean ahead(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2236 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var62 var191 (_input/-1526528532 (cast-from-var3882-to-var2842 var1160))) ; Statement: $r3 = r0.<com.github.jknack.handlebars.internal.HbsLexer: com.github.jknack.handlebars.internal.antlr.CharStream _input> 
(define-const var1903 var191 (_input/-1526528532 (cast-from-var3882-to-var2842 var1160))) ; Statement: $r2 = r0.<com.github.jknack.handlebars.internal.HbsLexer: com.github.jknack.handlebars.internal.antlr.CharStream _input> 
(define-const var1847 Int (var3356_index/-1834259531 (cast-from-var191-to-var3356 var1903))) ; Statement: $i1 = interfaceinvoke $r2.<com.github.jknack.handlebars.internal.antlr.CharStream: int index()>() 
(assert true)
(define-const var3329 Int (length/-134980193 var468)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var149 Int (+ var1847 var3329)) ; Statement: $i2 = $i1 + $i0 
(define-const var1174 Int (- var149 1)) ; Statement: $i3 = $i2 - 1 
;(assert (var3356_seek/-1872436025 (cast-from-var191-to-var3356 var62) var1174)) ; Statement: interfaceinvoke $r3.<com.github.jknack.handlebars.internal.antlr.CharStream: void seek(int)>($i3) 

(declare-const var62!1 var191)
(declare-const var1174!1 Int)
(assert true)
(define-const var1156 var2623 (getInterpreter/-100077477 (cast-from-var3882-to-var993 var1160))) ; Statement: $r4 = virtualinvoke r0.<com.github.jknack.handlebars.internal.HbsLexer: com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator getInterpreter()>() 
(define-const var2308 var3173 (cast-from-var2623-to-var3173 var1156)) ; Statement: $r5 = (com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator) $r4 
(define-const var1760 Int (_tokenStartCharPositionInLine/-1526528532 (cast-from-var3882-to-var2842 var1160))) ; Statement: $i4 = r0.<com.github.jknack.handlebars.internal.HbsLexer: int _tokenStartCharPositionInLine> 
(assert true)
(define-const var3504 Int (length/-134980193 var468)) ; Statement: $i5 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2163 Int (+ var1760 var3504)) ; Statement: $i6 = $i4 + $i5 
(define-const var3625 Int (- var2163 1)) ; Statement: $i7 = $i6 - 1 
(assert true)
;(assert (setCharPositionInLine/-2012408714 var2308 var3625)) ; Statement: virtualinvoke $r5.<com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator: void setCharPositionInLine(int)>($i7) 

(declare-const var2308!1 var3173)
(declare-const var3625!1 Int)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {ahead/1052581389=([com.github.jknack.handlebars.internal.HbsLexer, java.lang.String], boolean), _input/-1526528532=([com.github.jknack.handlebars.internal.antlr.Lexer], com.github.jknack.handlebars.internal.antlr.CharStream), cast-from-var3882-to-var2842=([com.github.jknack.handlebars.internal.HbsLexer], com.github.jknack.handlebars.internal.antlr.Lexer), var3356_index/-1834259531=([com.github.jknack.handlebars.internal.antlr.IntStream], int), cast-from-var191-to-var3356=([com.github.jknack.handlebars.internal.antlr.CharStream], com.github.jknack.handlebars.internal.antlr.IntStream), length/-134980193=([java.lang.String], int), var3356_seek/-1872436025=([com.github.jknack.handlebars.internal.antlr.IntStream, int], void), getInterpreter/-100077477=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator), cast-from-var3882-to-var993=([com.github.jknack.handlebars.internal.HbsLexer], com.github.jknack.handlebars.internal.antlr.Recognizer), cast-from-var2623-to-var3173=([com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator), _tokenStartCharPositionInLine/-1526528532=([com.github.jknack.handlebars.internal.antlr.Lexer], int), setCharPositionInLine/-2012408714=([com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator, int], void)}
; {var3882=com.github.jknack.handlebars.internal.HbsLexer, var1160=r0, var468=r1, var1352=null_type, var2236=$z0, var191=com.github.jknack.handlebars.internal.antlr.CharStream, var2842=com.github.jknack.handlebars.internal.antlr.Lexer, var62=$r3, var1903=$r2, var3356=com.github.jknack.handlebars.internal.antlr.IntStream, var1847=$i1, var3329=$i0, var149=$i2, var1174=$i3, var2623=com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator, var993=com.github.jknack.handlebars.internal.antlr.Recognizer, var1156=$r4, var3173=com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator, var2308=$r5, var1760=$i4, var3504=$i5, var2163=$i6, var3625=$i7}
; {com.github.jknack.handlebars.internal.HbsLexer=var3882, r0=var1160, r1=var468, null_type=var1352, $z0=var2236, com.github.jknack.handlebars.internal.antlr.CharStream=var191, com.github.jknack.handlebars.internal.antlr.Lexer=var2842, $r3=var62, $r2=var1903, com.github.jknack.handlebars.internal.antlr.IntStream=var3356, $i1=var1847, $i0=var3329, $i2=var149, $i3=var1174, com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator=var2623, com.github.jknack.handlebars.internal.antlr.Recognizer=var993, $r4=var1156, com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator=var3173, $r5=var2308, $i4=var1760, $i5=var3504, $i6=var2163, $i7=var3625}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: com.github.jknack.handlebars.internal.HbsLexer;	r1 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.HbsLexer: boolean ahead(java.lang.String)>(r1);	if $z0 == 0 goto return 0;	$r3 = r0.<com.github.jknack.handlebars.internal.HbsLexer: com.github.jknack.handlebars.internal.antlr.CharStream _input>;	$r2 = r0.<com.github.jknack.handlebars.internal.HbsLexer: com.github.jknack.handlebars.internal.antlr.CharStream _input>;	$i1 = interfaceinvoke $r2.<com.github.jknack.handlebars.internal.antlr.CharStream: int index()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	$i3 = $i2 - 1;	interfaceinvoke $r3.<com.github.jknack.handlebars.internal.antlr.CharStream: void seek(int)>($i3);	$r4 = virtualinvoke r0.<com.github.jknack.handlebars.internal.HbsLexer: com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator getInterpreter()>();	$r5 = (com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator) $r4;	$i4 = r0.<com.github.jknack.handlebars.internal.HbsLexer: int _tokenStartCharPositionInLine>;	$i5 = virtualinvoke r1.<java.lang.String: int length()>();	$i6 = $i4 + $i5;	$i7 = $i6 - 1;	virtualinvoke $r5.<com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator: void setCharPositionInLine(int)>($i7);	return 1
;block_num 2