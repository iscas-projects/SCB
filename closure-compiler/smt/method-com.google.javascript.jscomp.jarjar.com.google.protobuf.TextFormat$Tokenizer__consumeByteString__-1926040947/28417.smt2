(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3822 0)
(declare-sort var660 0)
(declare-sort var1208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentToken/-2092270909 (var3822) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun parseException/-1701408207 (var3822 String) var1208)
(declare-const null-var3822 var3822)
(declare-const null-var660 var660)
(declare-const var936 var3822) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var936 null-var3822)))
(declare-const var2435 var660) ; Statement: r9 := @parameter0: java.util.List 
(assert (not (= var2435 null-var660)))
(define-const var2599 String (currentToken/-2092270909 var936)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var476 Int (length/-134980193 var2599)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $i8 = 0 
(assert (not (<= var476 0))) ; Negate: Cond: $i0 <= 0  
(define-const var3226 String (currentToken/-2092270909 var936)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (and true (and (> (str.len var3226) 0) (<= 0 0))))
(define-const var1043 Int (charAt/698050440 var3226 0)) ; Statement: $i8 = virtualinvoke $r11.<java.lang.String: char charAt(int)>(0) 
 ; Statement: goto [?= i1 = $i8] 
(assert true) ; Non Conditional
(define-const var2433 Int var1043) ; Statement: i1 = $i8 
 ; Statement: if $i8 == 34 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (not (= var1043 34))) ; Negate: Cond: $i8 == 34  
 ; Statement: if $i8 == 39 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (not (= var1043 39))) ; Negate: Cond: $i8 == 39  
(assert true)
(define-const var3191 var1208 (parseException/-1701408207 var936 "Expected string.")) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("Expected string.") 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), parseException/-1701408207=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException)}
; {var3822=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var936=r0, var660=java.util.List, var2435=r9, var2599=$r1, var476=$i0, var3226=$r11, var1043=$i8, var2433=i1, var1208=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException, var3191=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var3822, r0=var936, java.util.List=var660, r9=var2435, $r1=var2599, $i0=var476, $r11=var3226, $i8=var1043, i1=var2433, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException=var1208, $r10=var3191}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r9 := @parameter0: java.util.List;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 <= 0 goto $i8 = 0;	$r11 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$i8 = virtualinvoke $r11.<java.lang.String: char charAt(int)>(0);	goto [?= i1 = $i8];	i1 = $i8;	if $i8 == 34 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	if $i8 == 39 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>("Expected string.");	throw $r10
;block_num 5