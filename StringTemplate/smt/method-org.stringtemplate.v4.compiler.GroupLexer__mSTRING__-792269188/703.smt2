(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2456 0)
(declare-sort var706 0)
(declare-sort var3054 0)
(declare-sort var873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun match/-963571158 (var706 Int) void)
(declare-fun cast-from-var2456-to-var706 (var2456) var706)
(declare-fun input/448264395 (var706) var3054)
(declare-fun var3054_LA/-940427205 (var3054 Int) Int)
(declare-fun getText/-1582435872 (var706) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun setText/289978986 (var706 String) void)
(declare-fun state/448264395 (var706) var873)
(declare-fun type/1780090535 (var873) Int)
(declare-fun channel/1780090535 (var873) Int)
(declare-const null-var2456 var2456)
(declare-const null-var873 var873)
(declare-const var101 var2456) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.GroupLexer 
(assert (not (= var101 null-var2456)))
(assert true)
;(assert (match/-963571158 (cast-from-var2456-to-var706 var101) 34)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(34) 

(declare-const var101!1 var2456)
(declare-const var3169 Int)
(assert true) ; Non Conditional
(define-const var3115 Int 5) ; Statement: b13 = 5 
(define-const var1261 var3054 (input/448264395 (cast-from-var2456-to-var706 var101!1))) ; Statement: $r1 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.CharStream input> 
(define-const var3160 Int (var3054_LA/-940427205 var1261 1)) ; Statement: $i5 = interfaceinvoke $r1.<org.antlr.runtime.CharStream: int LA(int)>(1) 
 ; Statement: if $i5 != 92 goto (branch) 
(assert (not (= var3160 92))) ; Cond: $i5 != 92 
 ; Statement: if $i5 != 10 goto (branch) 
(assert (not (not (= var3160 10)))) ; Negate: Cond: $i5 != 10  
(define-const var3115!1 Int 3) ; Statement: b13 = 3 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: tableswitch(b13) {     case 1: goto virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(92);     case 2: goto virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(92);     case 3: goto $r32 = new org.antlr.runtime.NoViableAltException;     case 4: goto $r2 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.CharStream input>;     default: goto goto [?= virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(34)]; } 
(assert (and (not (= var3115!1 4)) (and (not (= var3115!1 3)) (and (not (= var3115!1 2)) (and (not (= var3115!1 1)) true))))) ; Intersect: Negate: Cond: b13 == 4   and Intersect: Negate: Cond: b13 == 3   and Intersect: Negate: Cond: b13 == 2   and Intersect: Negate: Cond: b13 == 1   and Non Conditional    
 ; Statement: goto [?= virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(34)] 
(assert true) ; Non Conditional
(assert true)
;(assert (match/-963571158 (cast-from-var2456-to-var706 var101!1) 34)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(34) 

(declare-const var101!2 var2456)
(declare-const var3169!1 Int)
(assert true)
(define-const var2196 String (getText/-1582435872 (cast-from-var2456-to-var706 var101!2))) ; Statement: $r25 = virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: java.lang.String getText()>() 
(assert true)
(define-const var3008 String (replaceAll/1692887130 var2196 "\u005c\u005c\u0022" "\u0022")) ; Statement: r30 = virtualinvoke $r25.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\\"", "\"") 
(assert (= (replaceAll/1692887130 var2196 "\u005c\u005c\u0022" "\u0022") (str.replace_re_all var2196 (str.to_re "\u{005c}\u{0022}") "\u0022")))
(assert true)
;(assert (setText/289978986 (cast-from-var2456-to-var706 var101!2) var3008)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void setText(java.lang.String)>(r30) 

(declare-const var101!3 var2456)
(declare-const var3008!1 String)
(define-const var3431 var873 (state/448264395 (cast-from-var2456-to-var706 var101!3))) ; Statement: $r26 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.RecognizerSharedState state> 
(declare-const var3431!1 var873)
(assert (not (= var3431!1 null-var873)))
(assert (= (type/1780090535 var3431!1) 13)) ; Statement: $r26.<org.antlr.runtime.RecognizerSharedState: int type> = 13 
(define-const var2070 var873 (state/448264395 (cast-from-var2456-to-var706 var101!3))) ; Statement: $r27 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.RecognizerSharedState state> 
(declare-const var2070!1 var873)
(assert (not (= var2070!1 null-var873)))
(assert (= (channel/1780090535 var2070!1) 0)) ; Statement: $r27.<org.antlr.runtime.RecognizerSharedState: int channel> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {match/-963571158=([org.antlr.runtime.Lexer, int], void), cast-from-var2456-to-var706=([org.stringtemplate.v4.compiler.GroupLexer], org.antlr.runtime.Lexer), input/448264395=([org.antlr.runtime.Lexer], org.antlr.runtime.CharStream), var3054_LA/-940427205=([org.antlr.runtime.CharStream, int], int), getText/-1582435872=([org.antlr.runtime.Lexer], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), setText/289978986=([org.antlr.runtime.Lexer, java.lang.String], void), state/448264395=([org.antlr.runtime.Lexer], org.antlr.runtime.RecognizerSharedState), type/1780090535=([org.antlr.runtime.RecognizerSharedState], int), channel/1780090535=([org.antlr.runtime.RecognizerSharedState], int)}
; {var2456=org.stringtemplate.v4.compiler.GroupLexer, var101=r0, var706=org.antlr.runtime.Lexer, var3169=34, var3115=b13, var3054=org.antlr.runtime.CharStream, var1261=$r1, var3160=$i5, var2196=$r25, var3008=r30, var873=org.antlr.runtime.RecognizerSharedState, var3431=$r26, var2070=$r27}
; {org.stringtemplate.v4.compiler.GroupLexer=var2456, r0=var101, org.antlr.runtime.Lexer=var706, 34=var3169, b13=var3115, org.antlr.runtime.CharStream=var3054, $r1=var1261, $i5=var3160, $r25=var2196, r30=var3008, org.antlr.runtime.RecognizerSharedState=var873, $r26=var3431, $r27=var2070}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.GroupLexer;	virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(34);	b13 = 5;	$r1 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.CharStream input>;	$i5 = interfaceinvoke $r1.<org.antlr.runtime.CharStream: int LA(int)>(1);	if $i5 != 92 goto (branch);	if $i5 != 10 goto (branch);	b13 = 3;	goto [?= (branch)];	tableswitch(b13) {     case 1: goto virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(92);     case 2: goto virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(92);     case 3: goto $r32 = new org.antlr.runtime.NoViableAltException;     case 4: goto $r2 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.CharStream input>;     default: goto goto [?= virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(34)]; };	goto [?= virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(34)];	virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void match(int)>(34);	$r25 = virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: java.lang.String getText()>();	r30 = virtualinvoke $r25.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\\\\"", "\"");	virtualinvoke r0.<org.stringtemplate.v4.compiler.GroupLexer: void setText(java.lang.String)>(r30);	$r26 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.RecognizerSharedState state>;	$r26.<org.antlr.runtime.RecognizerSharedState: int type> = 13;	$r27 = r0.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.RecognizerSharedState state>;	$r27.<org.antlr.runtime.RecognizerSharedState: int channel> = 0;	return
;block_num 7