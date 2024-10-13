(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentToken/-2092270909 (var2750) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun nextToken/1354907678 (var2750) void)
(declare-const null-var2750 var2750)
(declare-const var1199 var2750) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var1199 null-var2750)))
(define-const var926 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1697 String (currentToken/-2092270909 var1199)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var3322 Int (length/-134980193 var1697)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto r10 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (>= var926 var3322)) ; Cond: i2 >= $i0 
(define-const var249 String (currentToken/-2092270909 var1199)) ; Statement: r10 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
;(assert (nextToken/1354907678 var1199)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void nextToken()>() 

(declare-const var1199!1 var2750)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), length/-134980193=([java.lang.String], int), nextToken/1354907678=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], void)}
; {var2750=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var1199=r0, var926=i2, var1697=$r1, var3322=$i0, var249=r10}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var2750, r0=var1199, i2=var926, $r1=var1697, $i0=var3322, r10=var249}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	i2 = 0;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if i2 >= $i0 goto r10 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	r10 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void nextToken()>();	return r10
;block_num 3