(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1180 0)
(declare-sort var3042 0)
(declare-sort var1711 0)
(declare-sort var1851 0)
(declare-sort var3954 0)
(declare-sort var2438 0)
(declare-sort var2642 0)
(declare-sort var1255 0)
(declare-sort var1548 0)
(declare-sort var2865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getLookaheadName/-725855653 (var1180 var3042) String)
(declare-fun var3042_LT/-1327699634 (var3042 Int) var2438)
(declare-fun var2438_getLine/1695299143 (var2438) Int)
(declare-fun var2438_getCharPositionInLine/-1512232701 (var2438) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1851 String) void)
(declare-fun _input/310440123 (var1180) var3042)
(declare-fun var2642_index/-1834259531 (var2642) Int)
(declare-fun cast-from-var3042-to-var2642 (var3042) var2642)
(declare-fun _startIndex/310440123 (var1180) Int)
(declare-fun _outerContext/310440123 (var1180) var1711)
(declare-fun decisionToDFA/310440123 (var1180) (Array Int var1255))
(declare-fun _dfa/310440123 (var1180) var1255)
(declare-fun var2642_mark/222203334 (var2642) Int)
(declare-fun mergeCache/310440123 (var1180) var2865)
(declare-fun var2642_seek/-1872436025 (var2642 Int) void)
(declare-fun var2642_release/1862125072 (var2642 Int) void)
(declare-const null-var1180 var1180)
(declare-const null-var3042 var3042)
(declare-const null-Int Int)
(declare-const null-var1711 var1711)
(declare-const var1180-debug Bool)
(declare-const var3954-out var1851)
(declare-const null-var1548 var1548)
(declare-const null-var2865 var2865)
(declare-const null-var1255 var1255)
(declare-const var3285 var1180) ; Statement: r4 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var3285 null-var1180)))
(declare-const var1296 var3042) ; Statement: r5 := @parameter0: com.github.jknack.handlebars.internal.antlr.TokenStream 
(assert (not (= var1296 null-var3042)))
(declare-const var57 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var57 null-Int)))
(declare-const var2243 var1711) ; Statement: r33 := @parameter2: com.github.jknack.handlebars.internal.antlr.ParserRuleContext 
(assert (not (= var2243 null-var1711)))
(define-const var3469 Bool var1180-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var3469 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2469 var1851 var3954-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1218 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1218)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1218!1 String)
(assert (= var1218!1 ""))
(assert true)
(define-const var2886 String (append/672562846 var1218!1 "adaptivePredict decision ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("adaptivePredict decision ") 
(declare-const var1218!2 String)
(assert (= var1218!2 (str.++ var1218!1 "adaptivePredict decision ")))
(assert true)
(define-const var3039 String (append/-1001720160 var2886 var57)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2886!1 String)
(assert (str.prefixof var2886 var2886!1))
(assert true)
(define-const var1982 String (append/672562846 var3039 " exec LA(1)==")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" exec LA(1)==") 
(declare-const var3039!1 String)
(assert (= var3039!1 (str.++ var3039 " exec LA(1)==")))
(assert true)
(define-const var2041 String (getLookaheadName/-725855653 var3285 var1296)) ; Statement: $r6 = virtualinvoke r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getLookaheadName(com.github.jknack.handlebars.internal.antlr.TokenStream)>(r5) 
(assert true)
(define-const var398 String (append/672562846 var1982 var2041)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1982!1 String)
(assert (= var1982!1 (str.++ var1982 var2041)))
(assert true)
(define-const var2218 String (append/672562846 var398 " line ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ") 
(declare-const var398!1 String)
(assert (= var398!1 (str.++ var398 " line ")))
(define-const var2461 var2438 (var3042_LT/-1327699634 var1296 1)) ; Statement: $r9 = interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1) 
(define-const var3788 Int (var2438_getLine/1695299143 var2461)) ; Statement: $i1 = interfaceinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(assert true)
(define-const var1433 String (append/-1001720160 var2218 var3788)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2218!1 String)
(assert (str.prefixof var2218 var2218!1))
(assert true)
(define-const var3884 String (append/672562846 var1433 ":")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1433!1 String)
(assert (= var1433!1 (str.++ var1433 ":")))
(define-const var657 var2438 (var3042_LT/-1327699634 var1296 1)) ; Statement: $r12 = interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1) 
(define-const var2312 Int (var2438_getCharPositionInLine/-1512232701 var657)) ; Statement: $i2 = interfaceinvoke $r12.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(assert true)
(define-const var3245 String (append/-1001720160 var3884 var2312)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3884!1 String)
(assert (str.prefixof var3884 var3884!1))
(assert true)
(define-const var3144 String (toString/-2075883882 var3245)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2469 var3144)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var2469!1 var1851)
(declare-const var3144!1 String)
(assert true) ; Non Conditional
(declare-const var3285!1 var1180)
(assert (not (= var3285!1 null-var1180)))
(assert (= (_input/310440123 var3285!1) var1296)) ; Statement: r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.TokenStream _input> = r5 
(define-const var3781 Int (var2642_index/-1834259531 (cast-from-var3042-to-var2642 var1296))) ; Statement: $i5 = interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: int index()>() 
(declare-const var3285!2 var1180)
(assert (not (= var3285!2 null-var1180)))
(assert (= (_startIndex/310440123 var3285!2) var3781)) ; Statement: r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int _startIndex> = $i5 
(declare-const var3285!3 var1180)
(assert (not (= var3285!3 null-var1180)))
(assert (= (_outerContext/310440123 var3285!3) var2243)) ; Statement: r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.ParserRuleContext _outerContext> = r33 
(define-const var2205 (Array Int var1255) (decisionToDFA/310440123 var3285!3)) ; Statement: $r34 = r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFA[] decisionToDFA> 
(define-const var913 var1255 (select var2205 var57)) ; Statement: $r35 = $r34[i0] 
(declare-const var3285!4 var1180)
(assert (not (= var3285!4 null-var1180)))
(assert (= (_dfa/310440123 var3285!4) var913)) ; Statement: r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFA _dfa> = $r35 
(define-const var1293 Int (var2642_mark/222203334 (cast-from-var3042-to-var2642 var1296))) ; Statement: $i6 = interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: int mark()>() 
(define-const var738 Int (_startIndex/310440123 var3285!4)) ; Statement: $i7 = r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int _startIndex> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2542 var1548) ; Statement: $r32 := @caughtexception 
(assert (not (= var2542 null-var1548)))
(assert true) ; Non Conditional
(declare-const var3285!5 var1180)
(assert (not (= var3285!5 null-var1180)))
(assert (= (mergeCache/310440123 var3285!5) null-var2865)) ; Statement: r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.misc.DoubleKeyMap mergeCache> = null 
(declare-const var3285!6 var1180)
(assert (not (= var3285!6 null-var1180)))
(assert (= (_dfa/310440123 var3285!6) null-var1255)) ; Statement: r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFA _dfa> = null 
;(assert (var2642_seek/-1872436025 (cast-from-var3042-to-var2642 var1296) var738)) ; Statement: interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>($i7) 

(declare-const var1296!1 var3042)
(declare-const var738!1 Int)
;(assert (var2642_release/1862125072 (cast-from-var3042-to-var2642 var1296!1) var1293)) ; Statement: interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: void release(int)>($i6) 

(declare-const var1296!2 var3042)
(declare-const var1293!1 Int)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getLookaheadName/-725855653=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.TokenStream], java.lang.String), var3042_LT/-1327699634=([com.github.jknack.handlebars.internal.antlr.TokenStream, int], com.github.jknack.handlebars.internal.antlr.Token), var2438_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var2438_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), _input/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.TokenStream), var2642_index/-1834259531=([com.github.jknack.handlebars.internal.antlr.IntStream], int), cast-from-var3042-to-var2642=([com.github.jknack.handlebars.internal.antlr.TokenStream], com.github.jknack.handlebars.internal.antlr.IntStream), _startIndex/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], int), _outerContext/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.ParserRuleContext), decisionToDFA/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.dfa.DFA[]), _dfa/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.dfa.DFA), var2642_mark/222203334=([com.github.jknack.handlebars.internal.antlr.IntStream], int), mergeCache/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.misc.DoubleKeyMap), var2642_seek/-1872436025=([com.github.jknack.handlebars.internal.antlr.IntStream, int], void), var2642_release/1862125072=([com.github.jknack.handlebars.internal.antlr.IntStream, int], void)}
; {var1180=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var3285=r4, var3042=com.github.jknack.handlebars.internal.antlr.TokenStream, var1296=r5, var57=i0, var1711=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var2243=r33, var3469=$z0, var1851=java.io.PrintStream, var3954=java.lang.System, var2469=$r1, var1218=$r0, var2886=$r2, var3039=$r3, var1982=$r7, var2041=$r6, var398=$r8, var2218=$r10, var2438=com.github.jknack.handlebars.internal.antlr.Token, var2461=$r9, var3788=$i1, var1433=$r11, var3884=$r13, var657=$r12, var2312=$i2, var3245=$r14, var3144=$r15, var2642=com.github.jknack.handlebars.internal.antlr.IntStream, var3781=$i5, var1255=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var2205=$r34, var913=$r35, var1293=$i6, var738=$i7, var1548=java.lang.Throwable, var2542=$r32, var2865=com.github.jknack.handlebars.internal.antlr.misc.DoubleKeyMap}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var1180, r4=var3285, com.github.jknack.handlebars.internal.antlr.TokenStream=var3042, r5=var1296, i0=var57, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var1711, r33=var2243, $z0=var3469, java.io.PrintStream=var1851, java.lang.System=var3954, $r1=var2469, $r0=var1218, $r2=var2886, $r3=var3039, $r7=var1982, $r6=var2041, $r8=var398, $r10=var2218, com.github.jknack.handlebars.internal.antlr.Token=var2438, $r9=var2461, $i1=var3788, $r11=var1433, $r13=var3884, $r12=var657, $i2=var2312, $r14=var3245, $r15=var3144, com.github.jknack.handlebars.internal.antlr.IntStream=var2642, $i5=var3781, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var1255, $r34=var2205, $r35=var913, $i6=var1293, $i7=var738, java.lang.Throwable=var1548, $r32=var2542, com.github.jknack.handlebars.internal.antlr.misc.DoubleKeyMap=var2865}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r5 := @parameter0: com.github.jknack.handlebars.internal.antlr.TokenStream;	i0 := @parameter1: int;	r33 := @parameter2: com.github.jknack.handlebars.internal.antlr.ParserRuleContext;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out>;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("adaptivePredict decision ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" exec LA(1)==");	$r6 = virtualinvoke r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getLookaheadName(com.github.jknack.handlebars.internal.antlr.TokenStream)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ");	$r9 = interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1);	$i1 = interfaceinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r12 = interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1);	$i2 = interfaceinvoke $r12.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15);	r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.TokenStream _input> = r5;	$i5 = interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: int index()>();	r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int _startIndex> = $i5;	r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.ParserRuleContext _outerContext> = r33;	$r34 = r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFA[] decisionToDFA>;	$r35 = $r34[i0];	r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFA _dfa> = $r35;	$i6 = interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: int mark()>();	$i7 = r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int _startIndex>;	$r32 := @caughtexception;	r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.misc.DoubleKeyMap mergeCache> = null;	r4.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFA _dfa> = null;	interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>($i7);	interfaceinvoke r5.<com.github.jknack.handlebars.internal.antlr.TokenStream: void release(int)>($i6);	throw $r32
;block_num 5