(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2733 0)
(declare-sort var3198 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentToken/-2092270909 (var2733) String)
(declare-const null-var2733 var2733)
(declare-const null-String String)
(declare-const var3291 var2733) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var3291 null-var2733)))
(declare-const var3110 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3110 null-String)))
(define-const var2833 String (currentToken/-2092270909 var3291)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var1498 Bool (= var2833 var3110)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String)}
; {var2733=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var3291=r0, var3110=r1, var3198=null_type, var2833=$r2, var1498=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var2733, r0=var3291, r1=var3110, null_type=var3198, $r2=var2833, $z0=var1498}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 1