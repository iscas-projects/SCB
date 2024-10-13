(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentToken/-2092270909 (var1333) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1333 var1333)
(declare-const var276 var1333) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var276 null-var1333)))
(define-const var362 String (currentToken/-2092270909 var276)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var670 Int (length/-134980193 var362)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var670 0))) ; Cond: $i0 != 0 
(define-const var3076 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1333=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var276=r0, var362=$r1, var670=$i0, var3076=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var1333, r0=var276, $r1=var362, $i0=var670, $z0=var3076}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3