(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3483 0)
(declare-sort var647 0)
(declare-sort var1496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentToken/-2092270909 (var3483) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun parseException/-1701408207 (var3483 String) var1496)
(declare-const null-var3483 var3483)
(declare-const null-var647 var647)
(declare-const var3279 var3483) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var3279 null-var3483)))
(declare-const var2235 var647) ; Statement: r9 := @parameter0: java.util.List 
(assert (not (= var2235 null-var647)))
(define-const var174 String (currentToken/-2092270909 var3279)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var2562 Int (length/-134980193 var174)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $i8 = 0 
(assert (not (<= var2562 0))) ; Negate: Cond: $i0 <= 0  
(define-const var3887 String (currentToken/-2092270909 var3279)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (and true (and (> (str.len var3887) 0) (<= 0 0))))
(define-const var3401 Int (charAt/698050440 var3887 0)) ; Statement: $i8 = virtualinvoke $r11.<java.lang.String: char charAt(int)>(0) 
 ; Statement: goto [?= i1 = $i8] 
(assert true) ; Non Conditional
(define-const var1063 Int var3401) ; Statement: i1 = $i8 
 ; Statement: if $i8 == 34 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (= var3401 34)) ; Cond: $i8 == 34 
(define-const var325 String (currentToken/-2092270909 var3279)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var390 Int (length/-134980193 var325)) ; Statement: $i2 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i2 < 2 goto $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("String missing ending quote.") 
(assert (< var390 2)) ; Cond: $i2 < 2 
(assert true)
(define-const var1017 var1496 (parseException/-1701408207 var3279 "String missing ending quote.")) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("String missing ending quote.") 
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), parseException/-1701408207=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException)}
; {var3483=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var3279=r0, var647=java.util.List, var2235=r9, var174=$r1, var2562=$i0, var3887=$r11, var3401=$i8, var1063=i1, var325=$r2, var390=$i2, var1496=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException, var1017=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var3483, r0=var3279, java.util.List=var647, r9=var2235, $r1=var174, $i0=var2562, $r11=var3887, $i8=var3401, i1=var1063, $r2=var325, $i2=var390, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException=var1496, $r3=var1017}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r9 := @parameter0: java.util.List;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 <= 0 goto $i8 = 0;	$r11 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$i8 = virtualinvoke $r11.<java.lang.String: char charAt(int)>(0);	goto [?= i1 = $i8];	i1 = $i8;	if $i8 == 34 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$i2 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i2 < 2 goto $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("String missing ending quote.");	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("String missing ending quote.");	throw $r3
;block_num 5