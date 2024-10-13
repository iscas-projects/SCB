(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2171 0)
(declare-sort var3541 0)
(declare-sort var853 0)
(declare-sort var2328 0)
(declare-sort var1867 0)
(declare-sort var727 0)
(declare-sort var1526 0)
(declare-sort var1250 0)
(declare-sort var2248 0)
(declare-sort var1093 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _input/-1526528532 (var2171) var853)
(declare-fun _tokenStartCharIndex/-1526528532 (var2171) Int)
(declare-fun var2328_index/-1834259531 (var2328) Int)
(declare-fun cast-from-var853-to-var2328 (var853) var2328)
(declare-fun var1867_of/1114852800 (Int Int) var1867)
(declare-fun var853_getText/-507512492 (var853 var1867) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getErrorDisplay/1420490231 (var2171 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getErrorListenerDispatch/1243680242 (var1526) var727)
(declare-fun cast-from-var2171-to-var1526 (var2171) var1526)
(declare-fun _tokenStartLine/-1526528532 (var2171) Int)
(declare-fun _tokenStartCharPositionInLine/-1526528532 (var2171) Int)
(declare-fun var727_syntaxError/-1314312501 (var727 var1526 var1250 Int Int String var2248) void)
(declare-fun cast-from-var3541-to-var2248 (var3541) var2248)
(declare-const null-var2171 var2171)
(declare-const null-var3541 var3541)
(declare-const null-var1250 var1250)
(declare-const var2865 var2171) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.Lexer 
(assert (not (= var2865 null-var2171)))
(declare-const var2674 var3541) ; Statement: r12 := @parameter0: com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException 
(assert (not (= var2674 null-var3541)))
(define-const var167 var853 (_input/-1526528532 var2865)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.internal.antlr.Lexer: com.github.jknack.handlebars.internal.antlr.CharStream _input> 
(define-const var1336 Int (_tokenStartCharIndex/-1526528532 var2865)) ; Statement: $i0 = r0.<com.github.jknack.handlebars.internal.antlr.Lexer: int _tokenStartCharIndex> 
(define-const var3470 var853 (_input/-1526528532 var2865)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.Lexer: com.github.jknack.handlebars.internal.antlr.CharStream _input> 
(define-const var2678 Int (var2328_index/-1834259531 (cast-from-var853-to-var2328 var3470))) ; Statement: $i1 = interfaceinvoke $r1.<com.github.jknack.handlebars.internal.antlr.CharStream: int index()>() 
(define-const var669 var1867 (var1867_of/1114852800 var1336 var2678)) ; Statement: $r3 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>($i0, $i1) 
(define-const var2567 String (var853_getText/-507512492 var167 var669)) ; Statement: r4 = interfaceinvoke $r2.<com.github.jknack.handlebars.internal.antlr.CharStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r3) 
(define-const var859 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var859)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var859!1 String)
(assert (= var859!1 ""))
(assert true)
(define-const var2017 String (append/672562846 var859!1 "token recognition error at: \u0027")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("token recognition error at: \'") 
(declare-const var859!2 String)
(assert (= var859!2 (str.++ var859!1 "token recognition error at: \u0027")))
(assert true)
(define-const var2571 String (getErrorDisplay/1420490231 var2865 var2567)) ; Statement: $r6 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Lexer: java.lang.String getErrorDisplay(java.lang.String)>(r4) 
(assert true)
(define-const var1432 String (append/672562846 var2017 var2571)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2017!1 String)
(assert (= var2017!1 (str.++ var2017 var2571)))
(assert true)
(define-const var3878 String (append/672562846 var1432 "\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1432!1 String)
(assert (= var1432!1 (str.++ var1432 "\u0027")))
(assert true)
(define-const var1365 String (toString/-2075883882 var3878)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var592 var727 (getErrorListenerDispatch/1243680242 (cast-from-var2171-to-var1526 var2865))) ; Statement: r11 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Lexer: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var2306 Int (_tokenStartLine/-1526528532 var2865)) ; Statement: $i3 = r0.<com.github.jknack.handlebars.internal.antlr.Lexer: int _tokenStartLine> 
(define-const var2628 Int (_tokenStartCharPositionInLine/-1526528532 var2865)) ; Statement: $i2 = r0.<com.github.jknack.handlebars.internal.antlr.Lexer: int _tokenStartCharPositionInLine> 
;(assert (var727_syntaxError/-1314312501 var592 (cast-from-var2171-to-var1526 var2865) null-var1250 var2306 var2628 var1365 (cast-from-var3541-to-var2248 var2674))) ; Statement: interfaceinvoke r11.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void syntaxError(com.github.jknack.handlebars.internal.antlr.Recognizer,java.lang.Object,int,int,java.lang.String,com.github.jknack.handlebars.internal.antlr.RecognitionException)>(r0, null, $i3, $i2, r10, r12) 

(declare-const var592!1 var727)
(declare-const var2865!1 var2171)
(declare-const var1663 var1093)
(declare-const var2306!1 Int)
(declare-const var2628!1 Int)
(declare-const var1365!1 String)
(declare-const var2674!1 var3541)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_input/-1526528532=([com.github.jknack.handlebars.internal.antlr.Lexer], com.github.jknack.handlebars.internal.antlr.CharStream), _tokenStartCharIndex/-1526528532=([com.github.jknack.handlebars.internal.antlr.Lexer], int), var2328_index/-1834259531=([com.github.jknack.handlebars.internal.antlr.IntStream], int), cast-from-var853-to-var2328=([com.github.jknack.handlebars.internal.antlr.CharStream], com.github.jknack.handlebars.internal.antlr.IntStream), var1867_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), var853_getText/-507512492=([com.github.jknack.handlebars.internal.antlr.CharStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getErrorDisplay/1420490231=([com.github.jknack.handlebars.internal.antlr.Lexer, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getErrorListenerDispatch/1243680242=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener), cast-from-var2171-to-var1526=([com.github.jknack.handlebars.internal.antlr.Lexer], com.github.jknack.handlebars.internal.antlr.Recognizer), _tokenStartLine/-1526528532=([com.github.jknack.handlebars.internal.antlr.Lexer], int), _tokenStartCharPositionInLine/-1526528532=([com.github.jknack.handlebars.internal.antlr.Lexer], int), var727_syntaxError/-1314312501=([com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, com.github.jknack.handlebars.internal.antlr.Recognizer, java.lang.Object, int, int, java.lang.String, com.github.jknack.handlebars.internal.antlr.RecognitionException], void), cast-from-var3541-to-var2248=([com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException], com.github.jknack.handlebars.internal.antlr.RecognitionException)}
; {var2171=com.github.jknack.handlebars.internal.antlr.Lexer, var2865=r0, var3541=com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException, var2674=r12, var853=com.github.jknack.handlebars.internal.antlr.CharStream, var167=$r2, var1336=$i0, var3470=$r1, var2328=com.github.jknack.handlebars.internal.antlr.IntStream, var2678=$i1, var1867=com.github.jknack.handlebars.internal.antlr.misc.Interval, var669=$r3, var2567=r4, var859=$r5, var2017=$r7, var2571=$r6, var1432=$r8, var3878=$r9, var1365=r10, var727=com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, var1526=com.github.jknack.handlebars.internal.antlr.Recognizer, var592=r11, var2306=$i3, var2628=$i2, var1250=java.lang.Object, var2248=com.github.jknack.handlebars.internal.antlr.RecognitionException, var1663=null, var1093=null_type}
; {com.github.jknack.handlebars.internal.antlr.Lexer=var2171, r0=var2865, com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException=var3541, r12=var2674, com.github.jknack.handlebars.internal.antlr.CharStream=var853, $r2=var167, $i0=var1336, $r1=var3470, com.github.jknack.handlebars.internal.antlr.IntStream=var2328, $i1=var2678, com.github.jknack.handlebars.internal.antlr.misc.Interval=var1867, $r3=var669, r4=var2567, $r5=var859, $r7=var2017, $r6=var2571, $r8=var1432, $r9=var3878, r10=var1365, com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener=var727, com.github.jknack.handlebars.internal.antlr.Recognizer=var1526, r11=var592, $i3=var2306, $i2=var2628, java.lang.Object=var1250, com.github.jknack.handlebars.internal.antlr.RecognitionException=var2248, null=var1663, null_type=var1093}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.Lexer;	r12 := @parameter0: com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException;	$r2 = r0.<com.github.jknack.handlebars.internal.antlr.Lexer: com.github.jknack.handlebars.internal.antlr.CharStream _input>;	$i0 = r0.<com.github.jknack.handlebars.internal.antlr.Lexer: int _tokenStartCharIndex>;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.Lexer: com.github.jknack.handlebars.internal.antlr.CharStream _input>;	$i1 = interfaceinvoke $r1.<com.github.jknack.handlebars.internal.antlr.CharStream: int index()>();	$r3 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>($i0, $i1);	r4 = interfaceinvoke $r2.<com.github.jknack.handlebars.internal.antlr.CharStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r3);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("token recognition error at: \'");	$r6 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Lexer: java.lang.String getErrorDisplay(java.lang.String)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r11 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Lexer: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>();	$i3 = r0.<com.github.jknack.handlebars.internal.antlr.Lexer: int _tokenStartLine>;	$i2 = r0.<com.github.jknack.handlebars.internal.antlr.Lexer: int _tokenStartCharPositionInLine>;	interfaceinvoke r11.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void syntaxError(com.github.jknack.handlebars.internal.antlr.Recognizer,java.lang.Object,int,int,java.lang.String,com.github.jknack.handlebars.internal.antlr.RecognitionException)>(r0, null, $i3, $i2, r10, r12);	return
;block_num 1