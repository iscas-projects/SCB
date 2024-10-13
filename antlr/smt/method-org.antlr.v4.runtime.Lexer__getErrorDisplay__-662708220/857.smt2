(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-var2136 var2136)
(declare-const null-Int Int)
(declare-const var3656 var2136) ; Statement: r0 := @this: org.antlr.v4.runtime.Lexer 
(assert (not (= var3656 null-var2136)))
(declare-const var727 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var727 null-Int)))
(define-const var869 Int (cast-from-Int-to-Int var727)) ; Statement: $c1 = (char) i0 
(define-const var757 String (String_valueOf/-371898945 var869)) ; Statement: r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1) 
 ; Statement: lookupswitch(i0) {     case -1: goto r1 = "<EOF>";     case 9: goto r1 = "\\t";     case 10: goto r1 = "\\n";     case 13: goto r1 = "\\r";     default: goto return r1; } 
(assert (and (not (= var727 13)) (and (not (= var727 10)) (and (not (= var727 9)) (and (not (= var727 (- 1))) true))))) ; Intersect: Negate: Cond: i0 == 13   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == -1   and Non Conditional    
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], char), String_valueOf/-371898945=([char], java.lang.String)}
; {var2136=org.antlr.v4.runtime.Lexer, var3656=r0, var727=i0, var869=$c1, var757=r1}
; {org.antlr.v4.runtime.Lexer=var2136, r0=var3656, i0=var727, $c1=var869, r1=var757}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.Lexer;	i0 := @parameter0: int;	$c1 = (char) i0;	r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1);	lookupswitch(i0) {     case -1: goto r1 = "<EOF>";     case 9: goto r1 = "\\t";     case 10: goto r1 = "\\n";     case 13: goto r1 = "\\r";     default: goto return r1; };	return r1
;block_num 2