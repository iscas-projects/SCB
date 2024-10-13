(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentToken/-2092270909 (var3335) String)
(declare-fun nextToken/1354907678 (var3335) void)
(declare-const null-var3335 var3335)
(declare-const var2354 var3335) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var2354 null-var3335)))
(define-const var962 String (currentToken/-2092270909 var2354)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var1401 Bool (= var962 "true")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("true") 
 ; Statement: if $z0 != 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void nextToken()>() 
(assert (not (= (ite var1401 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (nextToken/1354907678 var2354)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void nextToken()>() 

(declare-const var2354!1 var3335)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), nextToken/1354907678=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], void)}
; {var3335=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var2354=r0, var962=$r1, var1401=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var3335, r0=var2354, $r1=var962, $z0=var1401}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("true");	if $z0 != 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void nextToken()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void nextToken()>();	return 1
;block_num 2