(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-var2145 var2145)
(declare-const null-Int Int)
(declare-const var3344 var2145) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.Lexer 
(assert (not (= var3344 null-var2145)))
(declare-const var1923 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1923 null-Int)))
(define-const var3227 Int (cast-from-Int-to-Int var1923)) ; Statement: $c1 = (char) i0 
(define-const var1526 String (String_valueOf/-371898945 var3227)) ; Statement: r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1) 
 ; Statement: lookupswitch(i0) {     case -1: goto r1 = "<EOF>";     case 9: goto r1 = "\\t";     case 10: goto r1 = "\\n";     case 13: goto r1 = "\\r";     default: goto return r1; } 
(assert (and (not (= var1923 13)) (and (not (= var1923 10)) (and (not (= var1923 9)) (and (not (= var1923 (- 1))) true))))) ; Intersect: Negate: Cond: i0 == 13   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == -1   and Non Conditional    
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], char), String_valueOf/-371898945=([char], java.lang.String)}
; {var2145=com.github.jknack.handlebars.internal.antlr.Lexer, var3344=r0, var1923=i0, var3227=$c1, var1526=r1}
; {com.github.jknack.handlebars.internal.antlr.Lexer=var2145, r0=var3344, i0=var1923, $c1=var3227, r1=var1526}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.Lexer;	i0 := @parameter0: int;	$c1 = (char) i0;	r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1);	lookupswitch(i0) {     case -1: goto r1 = "<EOF>";     case 9: goto r1 = "\\t";     case 10: goto r1 = "\\n";     case 13: goto r1 = "\\r";     default: goto return r1; };	return r1
;block_num 2