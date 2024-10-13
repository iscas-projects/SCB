(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2235 0)
(declare-sort var3932 0)
(declare-sort var380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentToken/-2092270909 (var2235) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun parseException/-1701408207 (var2235 String) var380)
(declare-const null-var2235 var2235)
(declare-const null-var3932 var3932)
(declare-const var1048 var2235) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var1048 null-var2235)))
(declare-const var3441 var3932) ; Statement: r9 := @parameter0: java.util.List 
(assert (not (= var3441 null-var3932)))
(define-const var3518 String (currentToken/-2092270909 var1048)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var3031 Int (length/-134980193 var3518)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $i8 = 0 
(assert (<= var3031 0)) ; Cond: $i0 <= 0 
(define-const var1301 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var1850 Int var1301) ; Statement: i1 = $i8 
 ; Statement: if $i8 == 34 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (not (= var1301 34))) ; Negate: Cond: $i8 == 34  
 ; Statement: if $i8 == 39 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (not (= var1301 39))) ; Negate: Cond: $i8 == 39  
(assert true)
(define-const var587 var380 (parseException/-1701408207 var1048 "Expected string.")) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("Expected string.") 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), length/-134980193=([java.lang.String], int), parseException/-1701408207=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException)}
; {var2235=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var1048=r0, var3932=java.util.List, var3441=r9, var3518=$r1, var3031=$i0, var1301=$i8, var1850=i1, var380=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException, var587=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var2235, r0=var1048, java.util.List=var3932, r9=var3441, $r1=var3518, $i0=var3031, $i8=var1301, i1=var1850, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException=var380, $r10=var587}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r9 := @parameter0: java.util.List;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 <= 0 goto $i8 = 0;	$i8 = 0;	i1 = $i8;	if $i8 == 34 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	if $i8 == 39 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("Expected string.");	throw $r10
;block_num 5