(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1058 0)
(declare-sort var1345 0)
(declare-sort var2377 0)
(declare-sort var3414 0)
(declare-sort var3987 0)
(declare-sort var2085 0)
(declare-sort var2863 0)
(declare-sort var3217 0)
(declare-sort var2278 0)
(declare-sort var3096 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _input/-104741295 (var1058) var2377)
(declare-fun _tokenStartCharIndex/-104741295 (var1058) Int)
(declare-fun var3414_index/-178705198 (var3414) Int)
(declare-fun cast-from-var2377-to-var3414 (var2377) var3414)
(declare-fun var3987_of/-1711527236 (Int Int) var3987)
(declare-fun var2377_getText/-1694482458 (var2377 var3987) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getErrorDisplay/-1618544710 (var1058 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getErrorListenerDispatch/-1594005314 (var2863) var2085)
(declare-fun cast-from-var1058-to-var2863 (var1058) var2863)
(declare-fun _tokenStartLine/-104741295 (var1058) Int)
(declare-fun _tokenStartCharPositionInLine/-104741295 (var1058) Int)
(declare-fun var2085_syntaxError/1404970572 (var2085 var2863 var3217 Int Int String var2278) void)
(declare-fun cast-from-var1345-to-var2278 (var1345) var2278)
(declare-const null-var1058 var1058)
(declare-const null-var1345 var1345)
(declare-const null-var3217 var3217)
(declare-const var1187 var1058) ; Statement: r0 := @this: org.antlr.v4.runtime.Lexer 
(assert (not (= var1187 null-var1058)))
(declare-const var3178 var1345) ; Statement: r12 := @parameter0: org.antlr.v4.runtime.LexerNoViableAltException 
(assert (not (= var3178 null-var1345)))
(define-const var584 var2377 (_input/-104741295 var1187)) ; Statement: $r2 = r0.<org.antlr.v4.runtime.Lexer: org.antlr.v4.runtime.CharStream _input> 
(define-const var384 Int (_tokenStartCharIndex/-104741295 var1187)) ; Statement: $i0 = r0.<org.antlr.v4.runtime.Lexer: int _tokenStartCharIndex> 
(define-const var3225 var2377 (_input/-104741295 var1187)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.Lexer: org.antlr.v4.runtime.CharStream _input> 
(define-const var2699 Int (var3414_index/-178705198 (cast-from-var2377-to-var3414 var3225))) ; Statement: $i1 = interfaceinvoke $r1.<org.antlr.v4.runtime.CharStream: int index()>() 
(define-const var2411 var3987 (var3987_of/-1711527236 var384 var2699)) ; Statement: $r3 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>($i0, $i1) 
(define-const var3662 String (var2377_getText/-1694482458 var584 var2411)) ; Statement: r4 = interfaceinvoke $r2.<org.antlr.v4.runtime.CharStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r3) 
(define-const var2042 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2042)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2042!1 String)
(assert (= var2042!1 ""))
(assert true)
(define-const var3538 String (append/672562846 var2042!1 "token recognition error at: \u0027")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("token recognition error at: \'") 
(declare-const var2042!2 String)
(assert (= var2042!2 (str.++ var2042!1 "token recognition error at: \u0027")))
(assert true)
(define-const var3385 String (getErrorDisplay/-1618544710 var1187 var3662)) ; Statement: $r6 = virtualinvoke r0.<org.antlr.v4.runtime.Lexer: java.lang.String getErrorDisplay(java.lang.String)>(r4) 
(assert true)
(define-const var1844 String (append/672562846 var3538 var3385)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3538!1 String)
(assert (= var3538!1 (str.++ var3538 var3385)))
(assert true)
(define-const var3305 String (append/672562846 var1844 "\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1844!1 String)
(assert (= var1844!1 (str.++ var1844 "\u0027")))
(assert true)
(define-const var2723 String (toString/-2075883882 var3305)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2799 var2085 (getErrorListenerDispatch/-1594005314 (cast-from-var1058-to-var2863 var1187))) ; Statement: r11 = virtualinvoke r0.<org.antlr.v4.runtime.Lexer: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var3362 Int (_tokenStartLine/-104741295 var1187)) ; Statement: $i3 = r0.<org.antlr.v4.runtime.Lexer: int _tokenStartLine> 
(define-const var1807 Int (_tokenStartCharPositionInLine/-104741295 var1187)) ; Statement: $i2 = r0.<org.antlr.v4.runtime.Lexer: int _tokenStartCharPositionInLine> 
;(assert (var2085_syntaxError/1404970572 var2799 (cast-from-var1058-to-var2863 var1187) null-var3217 var3362 var1807 var2723 (cast-from-var1345-to-var2278 var3178))) ; Statement: interfaceinvoke r11.<org.antlr.v4.runtime.ANTLRErrorListener: void syntaxError(org.antlr.v4.runtime.Recognizer,java.lang.Object,int,int,java.lang.String,org.antlr.v4.runtime.RecognitionException)>(r0, null, $i3, $i2, r10, r12) 

(declare-const var2799!1 var2085)
(declare-const var1187!1 var1058)
(declare-const var2726 var3096)
(declare-const var3362!1 Int)
(declare-const var1807!1 Int)
(declare-const var2723!1 String)
(declare-const var3178!1 var1345)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_input/-104741295=([org.antlr.v4.runtime.Lexer], org.antlr.v4.runtime.CharStream), _tokenStartCharIndex/-104741295=([org.antlr.v4.runtime.Lexer], int), var3414_index/-178705198=([org.antlr.v4.runtime.IntStream], int), cast-from-var2377-to-var3414=([org.antlr.v4.runtime.CharStream], org.antlr.v4.runtime.IntStream), var3987_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), var2377_getText/-1694482458=([org.antlr.v4.runtime.CharStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getErrorDisplay/-1618544710=([org.antlr.v4.runtime.Lexer, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getErrorListenerDispatch/-1594005314=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.ANTLRErrorListener), cast-from-var1058-to-var2863=([org.antlr.v4.runtime.Lexer], org.antlr.v4.runtime.Recognizer), _tokenStartLine/-104741295=([org.antlr.v4.runtime.Lexer], int), _tokenStartCharPositionInLine/-104741295=([org.antlr.v4.runtime.Lexer], int), var2085_syntaxError/1404970572=([org.antlr.v4.runtime.ANTLRErrorListener, org.antlr.v4.runtime.Recognizer, java.lang.Object, int, int, java.lang.String, org.antlr.v4.runtime.RecognitionException], void), cast-from-var1345-to-var2278=([org.antlr.v4.runtime.LexerNoViableAltException], org.antlr.v4.runtime.RecognitionException)}
; {var1058=org.antlr.v4.runtime.Lexer, var1187=r0, var1345=org.antlr.v4.runtime.LexerNoViableAltException, var3178=r12, var2377=org.antlr.v4.runtime.CharStream, var584=$r2, var384=$i0, var3225=$r1, var3414=org.antlr.v4.runtime.IntStream, var2699=$i1, var3987=org.antlr.v4.runtime.misc.Interval, var2411=$r3, var3662=r4, var2042=$r5, var3538=$r7, var3385=$r6, var1844=$r8, var3305=$r9, var2723=r10, var2085=org.antlr.v4.runtime.ANTLRErrorListener, var2863=org.antlr.v4.runtime.Recognizer, var2799=r11, var3362=$i3, var1807=$i2, var3217=java.lang.Object, var2278=org.antlr.v4.runtime.RecognitionException, var2726=null, var3096=null_type}
; {org.antlr.v4.runtime.Lexer=var1058, r0=var1187, org.antlr.v4.runtime.LexerNoViableAltException=var1345, r12=var3178, org.antlr.v4.runtime.CharStream=var2377, $r2=var584, $i0=var384, $r1=var3225, org.antlr.v4.runtime.IntStream=var3414, $i1=var2699, org.antlr.v4.runtime.misc.Interval=var3987, $r3=var2411, r4=var3662, $r5=var2042, $r7=var3538, $r6=var3385, $r8=var1844, $r9=var3305, r10=var2723, org.antlr.v4.runtime.ANTLRErrorListener=var2085, org.antlr.v4.runtime.Recognizer=var2863, r11=var2799, $i3=var3362, $i2=var1807, java.lang.Object=var3217, org.antlr.v4.runtime.RecognitionException=var2278, null=var2726, null_type=var3096}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.Lexer;	r12 := @parameter0: org.antlr.v4.runtime.LexerNoViableAltException;	$r2 = r0.<org.antlr.v4.runtime.Lexer: org.antlr.v4.runtime.CharStream _input>;	$i0 = r0.<org.antlr.v4.runtime.Lexer: int _tokenStartCharIndex>;	$r1 = r0.<org.antlr.v4.runtime.Lexer: org.antlr.v4.runtime.CharStream _input>;	$i1 = interfaceinvoke $r1.<org.antlr.v4.runtime.CharStream: int index()>();	$r3 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>($i0, $i1);	r4 = interfaceinvoke $r2.<org.antlr.v4.runtime.CharStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r3);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("token recognition error at: \'");	$r6 = virtualinvoke r0.<org.antlr.v4.runtime.Lexer: java.lang.String getErrorDisplay(java.lang.String)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r11 = virtualinvoke r0.<org.antlr.v4.runtime.Lexer: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>();	$i3 = r0.<org.antlr.v4.runtime.Lexer: int _tokenStartLine>;	$i2 = r0.<org.antlr.v4.runtime.Lexer: int _tokenStartCharPositionInLine>;	interfaceinvoke r11.<org.antlr.v4.runtime.ANTLRErrorListener: void syntaxError(org.antlr.v4.runtime.Recognizer,java.lang.Object,int,int,java.lang.String,org.antlr.v4.runtime.RecognitionException)>(r0, null, $i3, $i2, r10, r12);	return
;block_num 1