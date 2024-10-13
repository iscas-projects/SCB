(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2934 0)
(declare-sort var3616 0)
(declare-sort var2895 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentToken/-2092270909 (var2934) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun parseException/-1701408207 (var2934 String) var2895)
(declare-const null-var2934 var2934)
(declare-const null-var3616 var3616)
(declare-const var1707 var2934) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var1707 null-var2934)))
(declare-const var2702 var3616) ; Statement: r9 := @parameter0: java.util.List 
(assert (not (= var2702 null-var3616)))
(define-const var979 String (currentToken/-2092270909 var1707)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var108 Int (length/-134980193 var979)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $i8 = 0 
(assert (<= var108 0)) ; Cond: $i0 <= 0 
(define-const var3523 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var1529 Int var3523) ; Statement: i1 = $i8 
 ; Statement: if $i8 == 34 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (= var3523 34)) ; Cond: $i8 == 34 
(define-const var1222 String (currentToken/-2092270909 var1707)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var1933 Int (length/-134980193 var1222)) ; Statement: $i2 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i2 < 2 goto $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("String missing ending quote.") 
(assert (< var1933 2)) ; Cond: $i2 < 2 
(assert true)
(define-const var92 var2895 (parseException/-1701408207 var1707 "String missing ending quote.")) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("String missing ending quote.") 
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), length/-134980193=([java.lang.String], int), parseException/-1701408207=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException)}
; {var2934=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var1707=r0, var3616=java.util.List, var2702=r9, var979=$r1, var108=$i0, var3523=$i8, var1529=i1, var1222=$r2, var1933=$i2, var2895=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException, var92=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var2934, r0=var1707, java.util.List=var3616, r9=var2702, $r1=var979, $i0=var108, $i8=var3523, i1=var1529, $r2=var1222, $i2=var1933, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException=var2895, $r3=var92}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r9 := @parameter0: java.util.List;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 <= 0 goto $i8 = 0;	$i8 = 0;	i1 = $i8;	if $i8 == 34 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$i2 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i2 < 2 goto $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("String missing ending quote.");	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("String missing ending quote.");	throw $r3
;block_num 5