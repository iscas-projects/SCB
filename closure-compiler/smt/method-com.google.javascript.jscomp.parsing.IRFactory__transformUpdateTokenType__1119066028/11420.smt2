(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3645 0)
(declare-sort var3141 0)
(declare-sort var550 0)
(declare-sort var3354 0)
(declare-sort var2179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var550) Int)
(declare-fun cast-from-var3645-to-var550 (var3645) var550)
(declare-fun var3354-init () var3354)
(declare-fun String_valueOf/-333372740 (var2179) String)
(declare-fun cast-from-var3645-to-var2179 (var3645) var2179)
(declare-fun <init>/-1092629202 (var3354 String) void)
(declare-const null-var3645 var3645)
(declare-const var3141-$SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType (Array Int Int))
(declare-const var2698 var3645) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.TokenType 
(assert (not (= var2698 null-var3645)))
(define-const var3235 (Array Int Int) var3141-$SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType) ; Statement: $r1 = <com.google.javascript.jscomp.parsing.IRFactory$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType> 
(assert true)
(define-const var2777 Int (ordinal/-291641772 (cast-from-var3645-to-var550 var2698))) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.TokenType: int ordinal()>() 
(define-const var3334 Int (select var3235 var2777)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: lookupswitch($i1) {     case 17: goto $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token INC>;     case 18: goto $r2 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token DEC>;     default: goto $r4 = new java.lang.IllegalStateException; } 
(assert (and (not (= var3334 18)) (and (not (= var3334 17)) true))) ; Intersect: Negate: Cond: $i1 == 18   and Intersect: Negate: Cond: $i1 == 17   and Non Conditional  
(define-const var2948 var3354 var3354-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(define-const var647 String (String_valueOf/-333372740 (cast-from-var3645-to-var2179 var2698))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert true)
;(assert (<init>/-1092629202 var2948 var647)) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var2948!1 var3354)
(declare-const var647!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var3645-to-var550=([com.google.javascript.jscomp.parsing.parser.TokenType], java.lang.Enum), var3354-init=([], java.lang.IllegalStateException), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var3645-to-var2179=([com.google.javascript.jscomp.parsing.parser.TokenType], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3645=com.google.javascript.jscomp.parsing.parser.TokenType, var2698=r0, var3141=com.google.javascript.jscomp.parsing.IRFactory$1, var3235=$r1, var550=java.lang.Enum, var2777=$i0, var3334=$i1, var3354=java.lang.IllegalStateException, var2948=$r4, var2179=java.lang.Object, var647=$r5}
; {com.google.javascript.jscomp.parsing.parser.TokenType=var3645, r0=var2698, com.google.javascript.jscomp.parsing.IRFactory$1=var3141, $r1=var3235, java.lang.Enum=var550, $i0=var2777, $i1=var3334, java.lang.IllegalStateException=var3354, $r4=var2948, java.lang.Object=var2179, $r5=var647}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.TokenType;	$r1 = <com.google.javascript.jscomp.parsing.IRFactory$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType>;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.TokenType: int ordinal()>();	$i1 = $r1[$i0];	lookupswitch($i1) {     case 17: goto $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token INC>;     case 18: goto $r2 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token DEC>;     default: goto $r4 = new java.lang.IllegalStateException; };	$r4 = new java.lang.IllegalStateException;	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r4
;block_num 2