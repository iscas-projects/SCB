(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3402 0)
(declare-sort var349 0)
(declare-sort var1634 0)
(declare-sort var406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1634_of/1946376346 (var406 var406) var1634)
(declare-fun cast-from-__Array__Int____Array__Int__Int____-to-var406 ((Array Int (Array Int Int))) var406)
(declare-const null-String String)
(declare-const var349-ANY_TABLE (Array Int (Array Int Int)))
(declare-const var1751 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1751 null-String)))
(assert true)
(define-const var920 Bool (= var1751 "Any")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Any") 
 ; Statement: if $z0 == 0 goto $r1 = <com.google.javascript.jscomp.jarjar.com.google.re2j.UnicodeTables: java.util.Map CATEGORIES> 
(assert (not (= (ite var920 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1206 (Array Int (Array Int Int)) var349-ANY_TABLE) ; Statement: $r12 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Parser: int[][] ANY_TABLE> 
(define-const var1093 (Array Int (Array Int Int)) var349-ANY_TABLE) ; Statement: $r11 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Parser: int[][] ANY_TABLE> 
(define-const var1660 var1634 (var1634_of/1946376346 (cast-from-__Array__Int____Array__Int__Int____-to-var406 var1206) (cast-from-__Array__Int____Array__Int__Int____-to-var406 var1093))) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$Pair: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$Pair of(java.lang.Object,java.lang.Object)>($r12, $r11) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1634_of/1946376346=([java.lang.Object, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$Pair), cast-from-__Array__Int____Array__Int__Int____-to-var406=([int[][]], java.lang.Object)}
; {var1751=r0, var3402=null_type, var920=$z0, var349=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser, var1206=$r12, var1093=$r11, var1634=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$Pair, var406=java.lang.Object, var1660=$r13}
; {r0=var1751, null_type=var3402, $z0=var920, com.google.javascript.jscomp.jarjar.com.google.re2j.Parser=var349, $r12=var1206, $r11=var1093, com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$Pair=var1634, java.lang.Object=var406, $r13=var1660}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Any");	if $z0 == 0 goto $r1 = <com.google.javascript.jscomp.jarjar.com.google.re2j.UnicodeTables: java.util.Map CATEGORIES>;	$r12 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Parser: int[][] ANY_TABLE>;	$r11 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Parser: int[][] ANY_TABLE>;	$r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$Pair: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$Pair of(java.lang.Object,java.lang.Object)>($r12, $r11);	return $r13
;block_num 2