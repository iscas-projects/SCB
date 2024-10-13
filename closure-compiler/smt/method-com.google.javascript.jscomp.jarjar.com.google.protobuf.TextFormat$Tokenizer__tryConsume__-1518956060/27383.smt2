(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1653 0)
(declare-sort var72 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentToken/-2092270909 (var1653) String)
(declare-fun nextToken/1354907678 (var1653) void)
(declare-const null-var1653 var1653)
(declare-const null-String String)
(declare-const var3408 var1653) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var3408 null-var1653)))
(declare-const var974 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var974 null-String)))
(define-const var1089 String (currentToken/-2092270909 var3408)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var1593 Bool (= var1089 var974)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var1593 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (nextToken/1354907678 var3408)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void nextToken()>() 

(declare-const var3408!1 var1653)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), nextToken/1354907678=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], void)}
; {var1653=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var3408=r0, var974=r1, var72=null_type, var1089=$r2, var1593=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var1653, r0=var3408, r1=var974, null_type=var72, $r2=var1089, $z0=var1593}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return 0;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void nextToken()>();	return 1
;block_num 2