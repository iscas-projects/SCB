(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentToken/-2092270909 (var387) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var387 var387)
(declare-const var2889 var387) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var2889 null-var387)))
(define-const var2898 String (currentToken/-2092270909 var2889)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var1144 Int (length/-134980193 var2898)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (not (not (= var1144 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var387=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var2889=r0, var2898=$r1, var1144=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var387, r0=var2889, $r1=var2898, $i0=var1144}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	return 0
;block_num 2