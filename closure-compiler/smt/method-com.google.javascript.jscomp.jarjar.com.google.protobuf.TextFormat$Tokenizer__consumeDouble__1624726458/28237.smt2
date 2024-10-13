(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2453 0)
(declare-sort var1988 0)
(declare-sort var3615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentToken/-2092270909 (var2453) String)
(declare-fun matcher/468719934 (var1988 String) var3615)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var3615) Bool)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun nextToken/1354907678 (var2453) void)
(declare-const null-var2453 var2453)
(declare-const var2453-DOUBLE_INFINITY var1988)
(declare-const var1966 var2453) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var1966 null-var2453)))
(define-const var2504 var1988 var2453-DOUBLE_INFINITY) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.util.regex.Pattern DOUBLE_INFINITY> 
(define-const var1483 String (currentToken/-2092270909 var1966)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var3010 var3615 (matcher/468719934 var2504 (cast-from-String-to-String var1483))) ; Statement: $r3 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r1) 
(assert true)
(define-const var2569 Bool (matches/-149940873 var3010)) ; Statement: $z0 = virtualinvoke $r3.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (= (ite var2569 1 0) 0)) ; Cond: $z0 == 0 
(define-const var819 String (currentToken/-2092270909 var1966)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var3021 Bool (equalsIgnoreCase/-92311102 var819 "nan")) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("nan") 
 ; Statement: if $z1 == 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert (not (= (ite var3021 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (nextToken/1354907678 var1966)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void nextToken()>() 

(declare-const var1966!1 var2453)
 ; Statement: return #NaN 
(check-sat)
(get-model)
(get-unsat-core)
; {currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), nextToken/1354907678=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], void)}
; {var2453=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var1966=r0, var1988=java.util.regex.Pattern, var2504=$r2, var1483=$r1, var3615=java.util.regex.Matcher, var3010=$r3, var2569=$z0, var819=$r4, var3021=$z1}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var2453, r0=var1966, java.util.regex.Pattern=var1988, $r2=var2504, $r1=var1483, java.util.regex.Matcher=var3615, $r3=var3010, $z0=var2569, $r4=var819, $z1=var3021}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.util.regex.Pattern DOUBLE_INFINITY>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$r3 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r1);	$z0 = virtualinvoke $r3.<java.util.regex.Matcher: boolean matches()>();	if $z0 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$z1 = virtualinvoke $r4.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("nan");	if $z1 == 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void nextToken()>();	return #NaN
;block_num 3