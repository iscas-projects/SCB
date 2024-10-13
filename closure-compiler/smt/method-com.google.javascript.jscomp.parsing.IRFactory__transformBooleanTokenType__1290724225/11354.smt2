(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1823 0)
(declare-sort var1037 0)
(declare-sort var3345 0)
(declare-sort var1780 0)
(declare-sort var3469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3345) Int)
(declare-fun cast-from-var1823-to-var3345 (var1823) var3345)
(declare-fun var1780-init () var1780)
(declare-fun String_valueOf/-333372740 (var3469) String)
(declare-fun cast-from-var1823-to-var3469 (var1823) var3469)
(declare-fun <init>/-1092629202 (var1780 String) void)
(declare-const null-var1823 var1823)
(declare-const var1037-$SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType (Array Int Int))
(declare-const var50 var1823) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.TokenType 
(assert (not (= var50 null-var1823)))
(define-const var390 (Array Int Int) var1037-$SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType) ; Statement: $r1 = <com.google.javascript.jscomp.parsing.IRFactory$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType> 
(assert true)
(define-const var1617 Int (ordinal/-291641772 (cast-from-var1823-to-var3345 var50))) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.TokenType: int ordinal()>() 
(define-const var1104 Int (select var390 var1617)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: lookupswitch($i1) {     case 13: goto $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token FALSE>;     case 14: goto $r2 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token TRUE>;     default: goto $r4 = new java.lang.IllegalStateException; } 
(assert (and (not (= var1104 14)) (and (not (= var1104 13)) true))) ; Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Non Conditional  
(define-const var1218 var1780 var1780-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(define-const var1285 String (String_valueOf/-333372740 (cast-from-var1823-to-var3469 var50))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert true)
;(assert (<init>/-1092629202 var1218 var1285)) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var1218!1 var1780)
(declare-const var1285!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1823-to-var3345=([com.google.javascript.jscomp.parsing.parser.TokenType], java.lang.Enum), var1780-init=([], java.lang.IllegalStateException), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var1823-to-var3469=([com.google.javascript.jscomp.parsing.parser.TokenType], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1823=com.google.javascript.jscomp.parsing.parser.TokenType, var50=r0, var1037=com.google.javascript.jscomp.parsing.IRFactory$1, var390=$r1, var3345=java.lang.Enum, var1617=$i0, var1104=$i1, var1780=java.lang.IllegalStateException, var1218=$r4, var3469=java.lang.Object, var1285=$r5}
; {com.google.javascript.jscomp.parsing.parser.TokenType=var1823, r0=var50, com.google.javascript.jscomp.parsing.IRFactory$1=var1037, $r1=var390, java.lang.Enum=var3345, $i0=var1617, $i1=var1104, java.lang.IllegalStateException=var1780, $r4=var1218, java.lang.Object=var3469, $r5=var1285}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.TokenType;	$r1 = <com.google.javascript.jscomp.parsing.IRFactory$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType>;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.TokenType: int ordinal()>();	$i1 = $r1[$i0];	lookupswitch($i1) {     case 13: goto $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token FALSE>;     case 14: goto $r2 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token TRUE>;     default: goto $r4 = new java.lang.IllegalStateException; };	$r4 = new java.lang.IllegalStateException;	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r4
;block_num 2