(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3796 0)
(declare-sort var1887 0)
(declare-sort var2041 0)
(declare-sort var1931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun match/-1386024108 (var1887 String) void)
(declare-fun cast-from-var3796-to-var1887 (var3796) var1887)
(declare-fun input/448264395 (var1887) var2041)
(declare-fun var2041_LA/-940427205 (var2041 Int) Int)
(declare-fun getText/-1582435872 (var1887) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun setText/289978986 (var1887 String) void)
(declare-fun state/448264395 (var1887) var1931)
(declare-fun type/1780090535 (var1931) Int)
(declare-fun channel/1780090535 (var1931) Int)
(declare-const null-var3796 var3796)
(declare-const null-var1931 var1931)
(declare-const var1262 var3796) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.GroupLexer 
(assert (not (= var1262 null-var3796)))
(assert true)
;(assert (match/-1386024108 (cast-from-var3796-to-var1887 var1262) "<%")) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(java.lang.String)>("<%") 

(declare-const var1262!1 var3796)
(declare-const var2039 String)
(assert true) ; Non Conditional
(define-const var1940 Int 2) ; Statement: b2 = 2 
(define-const var2718 var2041 (input/448264395 (cast-from-var3796-to-var1887 var1262!1))) ; Statement: $r1 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.CharStream input> 
(define-const var1820 Int (var2041_LA/-940427205 var2718 1)) ; Statement: $i0 = interfaceinvoke $r1.<org.antlr.runtime.CharStream: int LA(int)>(1) 
 ; Statement: if $i0 != 37 goto (branch) 
(assert (not (= var1820 37))) ; Cond: $i0 != 37 
 ; Statement: if $i0 < 0 goto (branch) 
(assert (< var1820 0)) ; Cond: $i0 < 0 
 ; Statement: if $i0 < 38 goto (branch) 
(assert (< var1820 38)) ; Cond: $i0 < 38 
 ; Statement: lookupswitch(b2) {     case 1: goto virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void matchAny()>();     default: goto goto [?= virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(java.lang.String)>("%>")]; } 
(assert (and (not (= var1940 1)) true)) ; Intersect: Negate: Cond: b2 == 1   and Non Conditional 
 ; Statement: goto [?= virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(java.lang.String)>("%>")] 
(assert true) ; Non Conditional
(assert true)
;(assert (match/-1386024108 (cast-from-var3796-to-var1887 var1262!1) "%>")) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(java.lang.String)>("%>") 

(declare-const var1262!2 var3796)
(declare-const var620 String)
(assert true)
(define-const var1437 String (getText/-1582435872 (cast-from-var3796-to-var1887 var1262!2))) ; Statement: $r2 = virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: java.lang.String getText()>() 
(assert true)
(define-const var2970 String (replaceAll/1692887130 var1437 "%\u005c\u005c>" "%>")) ; Statement: r6 = virtualinvoke $r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("%\\\\>", "%>") 
(assert (= (replaceAll/1692887130 var1437 "%\u005c\u005c>" "%>") (str.replace_re_all var1437 (str.to_re "%\u{005c}>") "%>")))
(assert true)
;(assert (setText/289978986 (cast-from-var3796-to-var1887 var1262!2) var2970)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void setText(java.lang.String)>(r6) 

(declare-const var1262!3 var3796)
(declare-const var2970!1 String)
(define-const var2340 var1931 (state/448264395 (cast-from-var3796-to-var1887 var1262!3))) ; Statement: $r3 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.RecognizerSharedState state> 
(declare-const var2340!1 var1931)
(assert (not (= var2340!1 null-var1931)))
(assert (= (type/1780090535 var2340!1) 6)) ; Statement: $r3.<org.antlr.runtime.RecognizerSharedState: int type> = 6 
(define-const var3280 var1931 (state/448264395 (cast-from-var3796-to-var1887 var1262!3))) ; Statement: $r4 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.RecognizerSharedState state> 
(declare-const var3280!1 var1931)
(assert (not (= var3280!1 null-var1931)))
(assert (= (channel/1780090535 var3280!1) 0)) ; Statement: $r4.<org.antlr.runtime.RecognizerSharedState: int channel> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {match/-1386024108=([org.antlr.runtime.Lexer, java.lang.String], void), cast-from-var3796-to-var1887=([org.stringtemplate.v4.compiler.GroupLexer], org.antlr.runtime.Lexer), input/448264395=([org.antlr.runtime.Lexer], org.antlr.runtime.CharStream), var2041_LA/-940427205=([org.antlr.runtime.CharStream, int], int), getText/-1582435872=([org.antlr.runtime.Lexer], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), setText/289978986=([org.antlr.runtime.Lexer, java.lang.String], void), state/448264395=([org.antlr.runtime.Lexer], org.antlr.runtime.RecognizerSharedState), type/1780090535=([org.antlr.runtime.RecognizerSharedState], int), channel/1780090535=([org.antlr.runtime.RecognizerSharedState], int)}
; {var3796=org.stringtemplate.v4.compiler.GroupLexer, var1262=r0, var1887=org.antlr.runtime.Lexer, var2039="<%", var1940=b2, var2041=org.antlr.runtime.CharStream, var2718=$r1, var1820=$i0, var620="%>", var1437=$r2, var2970=r6, var1931=org.antlr.runtime.RecognizerSharedState, var2340=$r3, var3280=$r4}
; {org.stringtemplate.v4.compiler.GroupLexer=var3796, r0=var1262, org.antlr.runtime.Lexer=var1887, "<%"=var2039, b2=var1940, org.antlr.runtime.CharStream=var2041, $r1=var2718, $i0=var1820, "%>"=var620, $r2=var1437, r6=var2970, org.antlr.runtime.RecognizerSharedState=var1931, $r3=var2340, $r4=var3280}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.GroupLexer;	virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(java.lang.String)>("<%");	b2 = 2;	$r1 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.CharStream input>;	$i0 = interfaceinvoke $r1.<org.antlr.runtime.CharStream: int LA(int)>(1);	if $i0 != 37 goto (branch);	if $i0 < 0 goto (branch);	if $i0 < 38 goto (branch);	lookupswitch(b2) {     case 1: goto virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void matchAny()>();     default: goto goto [?= virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(java.lang.String)>("%>")]; };	goto [?= virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(java.lang.String)>("%>")];	virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(java.lang.String)>("%>");	$r2 = virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: java.lang.String getText()>();	r6 = virtualinvoke $r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("%\\\\>", "%>");	virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void setText(java.lang.String)>(r6);	$r3 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.RecognizerSharedState state>;	$r3.<org.antlr.runtime.RecognizerSharedState: int type> = 6;	$r4 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.RecognizerSharedState state>;	$r4.<org.antlr.runtime.RecognizerSharedState: int channel> = 0;	return
;block_num 7