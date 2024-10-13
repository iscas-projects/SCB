(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var776 0)
(declare-sort var3073 0)
(declare-sort var2553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/117970391 (var776) Int)
(declare-fun val$pattern/117970391 (var776) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3073_isIdentifierStart/450707217 (Int) Bool)
(declare-fun var2553-init () var2553)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/875830710 (var2553 String) void)
(declare-const null-var776 var776)
(declare-const var1638 var776) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var1638 null-var776)))
(define-const var690 Int (pos/117970391 var1638)) ; Statement: i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var2860 Int (pos/117970391 var1638)) ; Statement: i6 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1968 String (val$pattern/117970391 var1638)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(assert (not (and true (and (> (str.len var1968) var690) (<= 0 var690)))))
(check-sat)
(get-model)
(get-unsat-core)
; {pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), charAt/698050440=([java.lang.String, int], char), var3073_isIdentifierStart/450707217=([char], boolean), var2553-init=([], java.lang.IllegalArgumentException), substring/850833817=([java.lang.String, int], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var776=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var1638=r0, var690=i0, var2860=i6, var1968=$r1, var1583=$c1, var3073=com.google.javascript.jscomp.regex.RegExpTree, var2379=$z0, var2553=java.lang.IllegalArgumentException, var1271=$r18, var602=$r15, var1278=$r16, var1158=$r17}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var776, r0=var1638, i0=var690, i6=var2860, $r1=var1968, $c1=var1583, com.google.javascript.jscomp.regex.RegExpTree=var3073, $z0=var2379, java.lang.IllegalArgumentException=var2553, $r18=var1271, $r15=var602, $r16=var1278, $r17=var1158}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	i6 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(i0);	$z0 = staticinvoke <com.google.javascript.jscomp.regex.RegExpTree: boolean isIdentifierStart(char)>($c1);	if $z0 != 0 goto i7 = i6 + 1;	$r18 = new java.lang.IllegalArgumentException;	$r15 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$r16 = virtualinvoke $r15.<java.lang.String: java.lang.String substring(int)>(i0);	$r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r16) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Invalid capture group name: <\u0001");	specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17);	throw $r18
;block_num 2