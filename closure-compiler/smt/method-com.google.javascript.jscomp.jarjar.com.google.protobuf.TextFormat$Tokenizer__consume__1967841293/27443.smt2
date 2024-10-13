(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1826 0)
(declare-sort var334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tryConsume/-1518956060 (var1826 String) Bool)
(declare-const null-var1826 var1826)
(declare-const null-String String)
(declare-const var972 var1826) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var972 null-var1826)))
(declare-const var363 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var363 null-String)))
(assert true)
(define-const var1328 Bool (tryConsume/-1518956060 var972 var363)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1328 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tryConsume/-1518956060=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], boolean)}
; {var1826=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var972=r0, var363=r1, var334=null_type, var1328=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var1826, r0=var972, r1=var363, null_type=var334, $z0=var1328}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r1 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>(r1);	if $z0 != 0 goto return;	return
;block_num 2